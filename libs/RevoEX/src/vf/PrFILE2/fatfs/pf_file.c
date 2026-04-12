#include <private/vf/PrFILE2/fatfs/pf_file.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/driver/pf_driver.h>
#include <private/vf/PrFILE2/fatfs/pf_cluster.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/system/pf_filelock.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>

#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>

static void VFiPFFILE_Cursor_Recalc(PF_FILE* p_file) {
    PF_VOLUME* p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;

    p_file->cursor.file_sector_index = p_file->cursor.position >> p_vol->bpb.log2_bytes_per_sector;
    p_file->cursor.offset_in_sector = p_file->cursor.position & (p_vol->bpb.bytes_per_sector - 1);
}

static void VFiPFFILE_Cursor_SetPosition(PF_FILE* p_file, pf_u32 pos) {
    PF_VOLUME* p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    pf_u32 pre_sec_off =
        (p_file->cursor.position >> p_vol->bpb.log2_bytes_per_sector) + ((p_file->cursor.position & (p_vol->bpb.bytes_per_sector - 1)) != 0 ? 1 : 0);
    pf_u32 post_sec_off = (pos >> p_vol->bpb.log2_bytes_per_sector) + ((pos & (p_vol->bpb.bytes_per_sector - 1)) != 0 ? 1 : 0);

    if (pre_sec_off != post_sec_off) {
        p_file->cursor.sector = -1;
    }
    p_file->cursor.position = pos;
    VFiPFFILE_Cursor_Recalc(p_file);
}

static pf_bool VFiPFFILE_Cursor_AdvanceToRead(PF_FILE* p_file, pf_u32 n, pf_u32 sector) {
    pf_bool res = PF_TRUE;
    PF_VOLUME* p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    pf_u32 wk_sector = sector + ((p_file->cursor.offset_in_sector + n) >> p_vol->bpb.log2_bytes_per_sector);

    if ((p_file->cursor.position + n) < p_file->p_sfd->dir_entry.file_size) {
        if (((p_vol->bpb.bytes_per_sector - 1) & (p_file->cursor.offset_in_sector + n)) != 0) {
            p_file->cursor.sector = sector + ((p_file->cursor.offset_in_sector + n) >> p_vol->bpb.log2_bytes_per_sector);
        } else {
            p_file->cursor.sector = -1;
        }
        p_file->cursor.position += n;
    } else if (p_file->p_sfd->dir_entry.file_size == 0) {
        p_file->cursor.sector = -1;
        p_file->cursor.position = 0;
        if (n != 0) {
            res = PF_FALSE;
        }
    } else {
        p_file->cursor.sector = -1;
        p_file->cursor.position = p_file->p_sfd->dir_entry.file_size;
        res = PF_FALSE;
    }
    VFiPFFILE_Cursor_Recalc(p_file);
    VFiPFCLUSTER_UpdateLastAccessCluster(p_file, wk_sector);
    return res;
}

static pf_u32 VFiPFFILE_Cursor_AdvanceToWrite(PF_FILE* p_file, pf_u32 n, pf_u32 sector) {
    pf_bool res = PF_TRUE;
    PF_VOLUME* p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    pf_u32 wk_sector = sector + ((p_file->cursor.offset_in_sector + n) >> p_vol->bpb.log2_bytes_per_sector);

    if (((p_vol->bpb.bytes_per_sector - 1) & (p_file->cursor.offset_in_sector + n)) != 0) {
        p_file->cursor.sector = sector + ((p_file->cursor.offset_in_sector + n) >> p_vol->bpb.log2_bytes_per_sector);
    } else {
        p_file->cursor.sector = -1;
    }
    p_file->cursor.position += n;
    if (p_file->cursor.position > p_file->p_sfd->dir_entry.file_size) {
        p_file->p_sfd->dir_entry.file_size = p_file->cursor.position;
    }
    VFiPFFILE_Cursor_Recalc(p_file);
    VFiPFCLUSTER_UpdateLastAccessCluster(p_file, wk_sector);
    return res;
}

static void VFiPFFILE_Cursor_Initialize(PF_FILE* p_file) {
    p_file->cursor.sector = -1;
    VFiPFFILE_Cursor_SetPosition(p_file, 0);
}

static pf_bool VFiPFFILE_Cursor_IsOutOfFile(PF_FILE* p_file) {
    if (p_file->cursor.position >= p_file->p_sfd->dir_entry.file_size) {
        return PF_TRUE;
    }
    return PF_FALSE;
}

static pf_s32 VFiPFFILE_Cursor_ReadHeadSector(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_read) {
    pf_s32 err;
    pf_u32 max_readable_size;
    pf_u32 success_size;

    *p_size_read = 0;
    if (p_file->cursor.offset_in_sector == 0) {
        return 0;
    }
    max_readable_size = p_vol->bpb.bytes_per_sector - p_file->cursor.offset_in_sector;
    if (size > max_readable_size) {
        size = max_readable_size;
    }
    if ((p_file->cursor.position + size) > p_file->p_sfd->dir_entry.file_size) {
        size = p_file->p_sfd->dir_entry.file_size - p_file->cursor.position;
        if (size < max_readable_size) {
            return 0;
        }
    }
    if (p_file->cursor.sector == -1) {
        err = VFiPFFAT_GetSectorSpecified(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, 0, &p_file->cursor.sector);
        if (err != 0) {
            return err;
        }
        if (p_file->cursor.sector == -1) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 28;
        }
        if ((p_file->cursor.position + size) > p_file->p_sfd->dir_entry.file_size) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 27;
        }
    }
    err = VFiPFSEC_ReadData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_read = success_size;
    VFiPFFILE_Cursor_AdvanceToRead(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_ReadBodySectors(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_read) {
    pf_s32 err;
    pf_u32 num_sector;
    pf_u32 max_readable_size;
    pf_u32 success_size;

    *p_size_read = 0;
    num_sector = 0;
    err = VFiPFFAT_GetContinuousSector(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, size, &p_file->cursor.sector, &num_sector);
    if (err != 0) {
        return err;
    }
    if (p_file->cursor.sector == -1) {
        VFiPFFILE_Cursor_MoveToEnd(p_file);
        return 28;
    }
    max_readable_size = num_sector << p_vol->bpb.log2_bytes_per_sector;
    if (size > max_readable_size) {
        size = max_readable_size;
    }
    if ((p_file->cursor.position + size) > p_file->p_sfd->dir_entry.file_size) {
        size = p_file->p_sfd->dir_entry.file_size - p_file->cursor.position;
        size -= size & (p_vol->bpb.bytes_per_sector - 1);
        if (size < p_vol->bpb.bytes_per_sector) {
            return 0;
        }
    }
    err = VFiPFSEC_ReadData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_read = success_size;
    VFiPFFILE_Cursor_AdvanceToRead(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_ReadTailSector(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_read) {
    pf_s32 err;
    pf_u32 success_size;

    *p_size_read = 0;
    if (size == 0) {
        return 0;
    }
    if ((p_file->cursor.position + size) > p_file->p_sfd->dir_entry.file_size) {
        size = p_file->p_sfd->dir_entry.file_size - p_file->cursor.position;
        if (size == 0) {
            return 0;
        }
    }
    if (p_file->cursor.sector == -1) {
        err = VFiPFFAT_GetSectorSpecified(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, 0, &p_file->cursor.sector);
        if (err != 0) {
            return err;
        }
        if (p_file->cursor.sector == -1) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 28;
        }
        if ((p_file->cursor.position + size) > p_file->p_sfd->dir_entry.file_size) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 27;
        }
    }
    err = VFiPFSEC_ReadData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_read = success_size;
    VFiPFFILE_Cursor_AdvanceToRead(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_Read(PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_read) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    pf_u32 size_read;

    p_file->p_sfd->ffd.p_hint = &p_file->hint;
    *p_size_read = 0;
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    err = VFiPFFILE_Cursor_ReadHeadSector(p_vol, p_file, p_buf, size, &size_read);
    *p_size_read += size_read;
    if (err != 0) {
        return err;
    }
    if (size_read >= size) {
        return 0;
    }
    for (size -= size_read; size >= p_vol->bpb.bytes_per_sector; size -= size_read) {
        err = VFiPFFILE_Cursor_ReadBodySectors(p_vol, p_file, &p_buf[*p_size_read], size, &size_read);
        *p_size_read += size_read;
        if (err != 0) {
            return err;
        }
        if (size_read == 0) {
            break;
        }
    }
    err = VFiPFFILE_Cursor_ReadTailSector(p_vol, p_file, &p_buf[*p_size_read], size, &size_read);
    *p_size_read += size_read;
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_WriteHeadSector(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_write) {
    pf_s32 err;
    pf_u32 max_writable_size;
    pf_u32 success_size;

    *p_size_write = 0;
    if (p_file->cursor.offset_in_sector == 0) {
        return 0;
    }
    max_writable_size = p_vol->bpb.bytes_per_sector - p_file->cursor.offset_in_sector;
    if (size > max_writable_size) {
        size = max_writable_size;
    }
    if (p_file->cursor.sector == -1) {
        err = VFiPFFAT_GetSectorSpecified(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, 0, &p_file->cursor.sector);
        if (err != 0) {
            return err;
        }
        if (p_file->cursor.sector == -1) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 28;
        }
    }
    err = VFiPFSEC_WriteData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_write = success_size;
    VFiPFFILE_Cursor_AdvanceToWrite(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_WriteBodySectors(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_write) {
    pf_s32 err;
    pf_u32 success_size;

    *p_size_write = 0;
    err = VFiPFSEC_WriteData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_write = success_size;
    VFiPFFILE_Cursor_AdvanceToWrite(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_WriteTailSector(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32 append_size,
                                               pf_u32* p_size_write) {
    pf_s32 err;
    pf_u32 sector;
    pf_u32 success_size;

    *p_size_write = 0;
    if (size == 0) {
        return 0;
    }
    if ((size > (p_vol->bpb.bytes_per_sector - p_file->cursor.offset_in_sector)) || (size > p_vol->bpb.bytes_per_sector)) {
        return 26;
    }
    if (append_size != 0) {
        err = VFiPFCLUSTER_AppendCluster(p_file, append_size, &size, &sector);
        if (err != 0) {
            return err;
        }
        if (size == 0) {
            return 0;
        }
        p_file->cursor.sector = sector;
    } else if (p_file->cursor.sector == -1) {
        err = VFiPFFAT_GetSectorSpecified(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, 0, &p_file->cursor.sector);
        if (err != 0) {
            return err;
        }
        if (p_file->cursor.sector == -1) {
            VFiPFFILE_Cursor_MoveToEnd(p_file);
            return 28;
        }
    }
    err = VFiPFSEC_WriteData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 1);
    if (err != 0 && success_size == 0) {
        return err;
    }
    *p_size_write = success_size;
    VFiPFFILE_Cursor_AdvanceToWrite(p_file, success_size, p_file->cursor.sector);
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_Write_Overwrite(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_write) {
    pf_s32 err;
    pf_u32 success_size;
    pf_u32 num_sector;
    pf_u32 max_writable_size;

    *p_size_write = 0;
    err = VFiPFFAT_GetContinuousSector(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, size, &p_file->cursor.sector, &num_sector);
    if (err != 0) {
        return err;
    }
    if (num_sector == 0 || p_file->cursor.sector == -1) {
        VFiPFFILE_Cursor_MoveToEnd(p_file);
        return 28;
    }
    max_writable_size = num_sector << p_vol->bpb.log2_bytes_per_sector;
    if (size > max_writable_size) {
        size = max_writable_size;
    }
    err = VFiPFFILE_Cursor_WriteBodySectors(p_vol, p_file, &p_buf[*p_size_write], size, &success_size);
    *p_size_write = success_size;
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_Write_Append(PF_VOLUME* p_vol, PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_write,
                                            pf_u32* p_append_size) {
    pf_s32 err;
    pf_u32 sector;
    pf_u32 append_size;
    pf_u32 success_size;

    *p_size_write = 0;
    *p_append_size = 0;
    err = VFiPFCLUSTER_AppendCluster(p_file, size, &append_size, &sector);
    if (err != 0) {
        return err;
    }
    p_file->cursor.sector = sector;
    if (append_size == 0) {
        return 0;
    }
    *p_append_size = append_size;
    err = VFiPFFILE_Cursor_WriteBodySectors(p_vol, p_file, &p_buf[*p_size_write], append_size, &success_size);
    *p_size_write += success_size;
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_Cursor_Write(PF_FILE* p_file, pf_u8* p_buf, pf_u32 size, pf_u32* p_size_write) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    pf_u32 size_write;
    pf_u32 size_request;
    pf_u32 num_cluster;
    pf_u32 append_size;

    p_file->p_sfd->ffd.p_hint = &p_file->hint;
    *p_size_write = 0;
    if ((0xFFFFFFFF - p_file->cursor.position) < size) {
        size = 0xFFFFFFFF - p_file->cursor.position;
        p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 0x25;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    err = VFiPFFILE_Cursor_WriteHeadSector(p_vol, p_file, p_buf, size, &size_write);
    *p_size_write += size_write;
    if (err != 0) {
        return err;
    }
    if (size_write >= size) {
        return 0;
    }
    size -= size_write;
    err = VFiPFFAT_CountAllocatedClusters(&p_file->p_sfd->ffd, p_file->cursor.position + size, &num_cluster);
    if (err != 0) {
        return err;
    }
    if ((p_file->cursor.position + size) > (num_cluster << (p_vol->bpb.log2_bytes_per_sector + p_vol->bpb.log2_sectors_per_cluster))) {
        size_request = (size + p_file->cursor.position) - (num_cluster << (p_vol->bpb.log2_bytes_per_sector + p_vol->bpb.log2_sectors_per_cluster));
        append_size = size - size_request;
    } else {
        size_request = 0;
        append_size = size;
    }

    while (append_size != 0 && append_size >= p_vol->bpb.bytes_per_sector) {
        err = VFiPFFILE_Cursor_Write_Overwrite(p_vol, p_file, &p_buf[*p_size_write], append_size, &size_write);
        *p_size_write += size_write;
        if (err != 0) {
            return err;
        }
        append_size -= size_write;
        size -= size_write;
    }

    while (size_request != 0 && size >= p_vol->bpb.bytes_per_sector) {
        err = VFiPFFILE_Cursor_Write_Append(p_vol, p_file, &p_buf[*p_size_write], size_request, &size_write, &append_size);
        *p_size_write += size_write;
        if (err != 0) {
            return err;
        }
        if (append_size == 0) {
            return 0;
        }
        size_request -= append_size;
        size -= size_write;
    }
    err = VFiPFFILE_Cursor_WriteTailSector(p_vol, p_file, &p_buf[*p_size_write], size, size_request, &size_write);
    *p_size_write += size_write;
    if (err != 0) {
        return err;
    }
    return 0;
}

/* these were supposed to be static, right? */

void VFiPFFILE_Cursor_MoveToEnd(PF_FILE* p_file) {
    VFiPFFILE_Cursor_SetPosition(p_file, p_file->p_sfd->dir_entry.file_size);
}

void VFiPFFILE_Cursor_MoveToClusterEnd(PF_FILE* p_file, pf_u32 size) {
    pf_u32 cluster;
    PF_VOLUME* p_vol;

    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    VFiPFFAT_CountAllocatedClusters(&p_file->p_sfd->ffd, size, &cluster);
    if (cluster > (0xFFFFFFFF >> (p_vol->bpb.log2_bytes_per_sector + p_vol->bpb.log2_sectors_per_cluster))) {
        VFiPFFILE_Cursor_SetPosition(p_file, -1);
        return;
    }
    VFiPFFILE_Cursor_SetPosition(p_file, cluster << (p_vol->bpb.log2_bytes_per_sector + p_vol->bpb.log2_sectors_per_cluster));
}

static void VFiPFFILE_InitSFD(PF_SFD* p_sfd, PF_DIR_ENT* p_dir_entry) {
    p_sfd = p_sfd;
    p_dir_entry = p_dir_entry;
    p_sfd->stat = 3;
    p_sfd->num_handlers = 1;
    p_sfd->dir_entry = *p_dir_entry;
    p_sfd->lock.mode = 0;
    p_sfd->lock.count = 0;
    p_sfd->lock.wcount = 0;
    p_sfd->lock.owner = PF_NULL;
    p_sfd->lock.resource = 0;
    VFiPFFAT_InitFFD(&p_sfd->ffd, PF_NULL, p_dir_entry->p_vol, &p_sfd->dir_entry.start_cluster);
}

static void VFiPFFILE_FinalizeSFD(PF_SFD* p_sfd) {
    p_sfd->stat = 0;
    VFiPFFAT_FinalizeFFD(&p_sfd->ffd);
}

static void VFiPFFILE_InitUFD(PF_FILE* p_file, pf_s32 open_mode) {
    p_file->stat = 1;
    p_file->open_mode = open_mode;
    p_file->last_error = 0;
    p_file->lock_count = 0;
    VFiPFFAT_InitHint(&p_file->hint);
    VFiPFFILE_Cursor_Initialize(p_file);
}

static void VFiPFFILE_FinalizeUFD(PF_FILE* p_file) {
    p_file->stat &= ~0x01;
}

static PF_SFD* VFiPFFILE_GetSFD(PF_VOLUME* p_vol, PF_DIR_ENT* p_ent) {
    pf_u32 i;
    pf_u32 sfd_num;
    PF_SFD* p_first_free_SFD;

    sfd_num = 0;
    p_first_free_SFD = PF_NULL;
    for (i = 0; i < 5; i++) {
        if ((p_vol->sfds[i].stat & 0x01) == 0 || ((p_vol->sfds[i].stat & 0x01) != 0 && (((p_vol->sfds[i].stat == 0) & 0x02) != 0))) {
            if (p_first_free_SFD == PF_NULL) {
                p_first_free_SFD = &p_vol->sfds[i];
                sfd_num = i;
            }
            continue;
        }
        if (p_ent->p_vol == p_vol->sfds[i].dir_entry.p_vol && p_ent->entry_sector == p_vol->sfds[i].dir_entry.entry_sector &&
            p_ent->entry_offset == p_vol->sfds[i].dir_entry.entry_offset) {
            p_vol->sfds[i].num_handlers++;
            return &p_vol->sfds[i];
        }
    }

    if (p_first_free_SFD == PF_NULL) {
        return PF_NULL;
    }
    VFiPFFILE_InitSFD(p_first_free_SFD, p_ent);
    if ((p_vol->cluster_link.flag & 0x01) != 0) {
        p_first_free_SFD->ffd.cluster_link.buffer = &p_vol->cluster_link.buffer[sfd_num * p_vol->cluster_link.link_max];
        VFipf_memset(p_first_free_SFD->ffd.cluster_link.buffer, 0, p_vol->cluster_link.link_max * 4);
        p_first_free_SFD->ffd.cluster_link.max_count = p_vol->cluster_link.link_max;
        p_first_free_SFD->ffd.cluster_link.interval = p_vol->cluster_link.interval;
        p_first_free_SFD->ffd.cluster_link.interval_offset = 0;
        p_first_free_SFD->ffd.cluster_link.position = 0;
        p_first_free_SFD->ffd.cluster_link.save_index = 0;
        if (p_ent->file_size != 0 && p_first_free_SFD->ffd.cluster_link.max_count != 0) {
            *p_first_free_SFD->ffd.cluster_link.buffer = p_ent->start_cluster;
            p_first_free_SFD->ffd.cluster_link.position += 1;
        }
    }
    return p_first_free_SFD;
}

static pf_s32 VFiPFFILE_ReleaseSFD(PF_SFD* p_sfd) {
    p_sfd->num_handlers--;
    if (p_sfd->num_handlers == 0) {
        p_sfd->stat &= ~0x01;
        p_sfd->ffd.cluster_link.buffer = PF_NULL;
    }
    return 0;
}

static PF_FILE* VFiPFFILE_GetFreeUFD(PF_VOLUME* p_vol) {
    pf_s32 i;

    for (i = 0; i < 5; i++) {
        if ((p_vol->ufds[i].stat & 0x01) == 0) {
            return &p_vol->ufds[i];
        }
    }
    return PF_NULL;
}

static pf_s32 VFiPFFILE_ReleaseUFD(PF_FILE* p_file) {
    p_file->stat &= ~0x01;
    return 0;
}

static pf_s32 VFiPFFILE_createEmptyFile(PF_VOLUME* p_vol, PF_DIR_ENT* p_file_ent, PF_STR* p_filename, pf_u32 namelength) {
    PF_DIR_ENT ent;
    pf_u8 buf[32];
    pf_u8 num_entry_LFNs = 0;
    pf_u32 i = 0;
    pf_u8 sum;
    pf_u32 OldSector = 0;
    pf_s32 pozIdx = 0;
    pf_u32 NextChain[2];
    pf_s32 err = 0;
    PF_FFD ffd;
    PF_FAT_HINT hint;
    pf_u32 success_size;
    pf_u32 position;

    ent = *p_file_ent;
    VFiPFFAT_InitFFD(&ffd, &hint, ent.p_vol, &ent.start_cluster);
    if (p_vol->num_opened_files >= 5) {
        return 21;
    }
    err = VFiPFPATH_parseShortName(p_file_ent->short_name, p_filename);
    if (err != 0 && p_file_ent->short_name[0] == 0) {
        return 1;
    }
    if (err != 0) {
        err = VFiPFENT_AdjustSFN(&ent, p_file_ent->short_name);
        if (err != 0) {
            return err;
        }
        if (VFiPFSTR_GetCodeMode(p_filename) == 1) {
            VFiPFPATH_transformInUnicode(p_file_ent->long_name, VFiPFSTR_GetStrPos(p_filename, 1));
        } else {
            VFipf_w_strcpy(p_file_ent->long_name, (pf_u16*)VFiPFSTR_GetStrPos(p_filename, 1));
        }
    } else {
        p_file_ent->long_name[0] = 0;
    }

    if (p_vol->bpb.fat_type == FAT_32) {
        p_file_ent->start_cluster = 1;
    } else {
        p_file_ent->start_cluster = 0;
    }
    p_file_ent->file_size = 0;
    p_file_ent->p_vol = p_vol;
    p_file_ent->small_letter_flag = 0;
    p_file_ent->attr = 0x20;
    p_file_ent->create_time_ms = VFiPFENT_getcurrentDateTimeForEnt(&p_file_ent->create_date, &p_file_ent->create_time);
    p_file_ent->access_date = p_file_ent->create_date;
    p_file_ent->modify_time = p_file_ent->create_time;
    p_file_ent->modify_date = p_file_ent->create_date;
    if (p_file_ent->long_name[0] != 0 && (p_file_ent->small_letter_flag & 0x18) == 0) {
        num_entry_LFNs = (namelength / 13) + ((namelength % 13) != 0 ? 1 : 0);
        err = VFiPFENT_allocateEntryPos(p_file_ent, (num_entry_LFNs + 1), &ffd, (pf_u32*)&NextChain, p_filename, &position);
        if (err != 0) {
            if (err == 8) {
                return err;
            }
            return err;
        }
        if ((VFipf_vol_set.setting & 0x02) == 0x02) {
            VFiPFPATH_AdjustExtShortName(p_file_ent->short_name, position);
        }
        p_file_ent->num_entry_LFNs = num_entry_LFNs;
        OldSector = p_file_ent->entry_sector;
        sum = VFiPFENT_CalcCheckSum(p_file_ent);

        for (i = num_entry_LFNs; i >= 1; i--) {
            VFiPFENT_storeLFNEntryFieldsToBuf((pf_u8*)&buf, p_file_ent, i, sum, i == num_entry_LFNs);
            err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&buf, OldSector, (pf_u16)p_file_ent->entry_offset, 0x20, &success_size, 0);
            if (err != 0) {
                return err;
            }
            if (success_size != 0x20) {
                return 17;
            }
            p_file_ent->entry_offset += 0x20;
            if (p_file_ent->entry_offset >= p_vol->bpb.bytes_per_sector) {
                p_file_ent->entry_offset = 0;
                OldSector = NextChain[pozIdx];
                pozIdx += 1;
            }
        }
        p_file_ent->entry_sector = OldSector;
    } else {
        err = VFiPFENT_allocateEntry(p_file_ent, 1, &ffd, (pf_u32*)&NextChain, p_filename);
        if (err != 0) {
            if (err == 8) {
                return err;
            }
            return err;
        }
    }

    if (p_file_ent->start_cluster == 1) {
        p_file_ent->start_cluster = 0;
    }
    return VFiPFENT_updateEntry(p_file_ent, 1);
}

static void VFiPFFILE_EmptyFile(PF_FFD* p_ffd, PF_DIR_ENT* p_ent) {
    if (p_ent->start_cluster >= 2 && p_ent->start_cluster != -1 && p_ent->file_size != 0) {
        VFiPFFAT_FreeChain(p_ffd, p_ent->start_cluster, -1, p_ent->file_size);
    }
    p_ent->start_cluster = 0;
    p_ent->file_size = 0;
    VFiPFENT_getcurrentDateTimeForEnt(&p_ent->modify_date, &p_ent->modify_time);
    p_ent->access_date = p_ent->modify_date;
}

static pf_s32 VFiPFFILE_p_remove(PF_VOLUME* p_vol, PF_STR* p_path_str) {
    PF_ENT_ITER iter;
    PF_DIR_ENT ent;
    pf_s32 err;

    err = VFiPFENT_ITER_GetEntryOfPath(&iter, &ent, p_vol, p_path_str, 0);
    if (err != 0) {
        return err;
    }
    p_vol = ent.p_vol;
    err = VFiPFFILE_RemoveFile(p_vol, &ent, &iter);
    if (err != 0) {
        return err;
    }
    return err;
}

static pf_s32 VFiPFFILE_p_fopen(PF_VOLUME* p_vol, PF_STR* p_path_str, pf_s32 mode, PF_FILE** pp_file) {
    PF_DIR_ENT ent;
    PF_ENT_ITER iter;
    PF_SFD* p_sfd;
    PF_FILE* p_file;
    pf_s32 err;
    pf_u16 access_time;
    PF_STR file_str;
    PF_STR dir_str;
    PF_FFD ffd;
    PF_FAT_HINT hint;
    pf_s8 tmp_local[512];
    pf_s32 namelength;

    *pp_file = PF_NULL;
    err = VFiPFENT_ITER_GetEntryOfPath(&iter, &ent, p_vol, p_path_str, 1);
    if (err != 0) {
        return err;
    }
    if ((ent.attr & 0x10) == 0) {
        return 1;
    }
    err = VFiPFPATH_SplitPath(p_path_str, &dir_str, &file_str);
    if (err != 0) {
        return 1;
    }
    namelength = VFiPFSTR_StrNumChar(&file_str, 1);
    if (namelength > 0xFF) {
        return 1;
    }
    if (VFiPFSTR_GetCodeMode(&file_str) == 2) {
        VFiPFPATH_transformFromUnicodeToNormal((pf_s8*)&tmp_local, (pf_u16*)VFiPFSTR_GetStrPos(&file_str, 1));
    }
    VFiPFSTR_SetLocalStr(&file_str, (pf_s8*)&tmp_local);
    if ((mode & 0x02) != 0) {
        VFiPFFAT_InitFFD(&ffd, &hint, ent.p_vol, &ent.start_cluster);
        err = VFiPFENT_findEntry(&ffd, &ent, 0, &file_str, 0x7FU, 0);
        if (err != 0) {
            return 3;
        }
        if ((mode & 0x08) != 0 && (ent.attr & 0x01) != 0) {
            return 10;
        }
        if ((ent.attr & 0x10) != 0) {
            return 23;
        }
        VFiPFENT_getcurrentDateTimeForEnt(&ent.access_date, &access_time);
    } else {
        if ((namelength + ent.path_len) > 0x103U) {
            return 1;
        }
        err = VFiPFFILE_createEmptyFile(p_vol, &ent, &file_str, namelength);
        if (err == 8) {
            if ((mode & 0x10) != 0) {
                return 8;
            }
            if ((mode & 0x01) != 0 && VFiPFFILE_IsOpened(&ent) != 0) {
                return 8;
            }
            if ((ent.attr & 0x01) != 0 && ((mode & 0x01) != 0 || (mode & 0x04) != 0 || (mode & 0x08) != 0)) {
                return 10;
            }
            if ((ent.attr & 0x10) != 0) {
                return 23;
            }
            if ((mode & 0x01) != 0) {
                VFiPFFILE_EmptyFile(&iter.ffd, &ent);
            } else {
                VFiPFENT_getcurrentDateTimeForEnt(&ent.access_date, &access_time);
            }
        } else {
            if (err != 0) {
                return err;
            }
        }
    }
    p_vol = ent.p_vol;
    p_sfd = VFiPFFILE_GetSFD(p_vol, &ent);
    if (p_sfd == PF_NULL) {
        return 21;
    }
    p_file = VFiPFFILE_GetFreeUFD(p_vol);
    if (p_file == PF_NULL) {
        VFiPFFILE_ReleaseSFD(p_sfd);
        return 22;
    }
    p_file->p_sfd = p_sfd;
    VFiPFFILE_InitUFD(p_file, mode);
    if ((mode & 0x01) != 0) {
        p_file->p_sfd->stat = p_file->p_sfd->stat | 4;
    }
    if ((p_file->open_mode & 0x04) != 0) {
        VFiPFFILE_Cursor_MoveToEnd(p_file);
    }
    *pp_file = p_file;
    return 0;
}

static pf_s32 VFiPFFILE_p_fread(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_read) {
    pf_u32 size_read = 0;
    pf_u32 total_size = 0;
    pf_s32 err;

    (void)p_vol;  // unused

    *p_count_read = 0;
    if ((p_file->open_mode & 0x08) == 0 && ((p_file->open_mode & 0x01) != 0 || (p_file->open_mode & 0x04) != 0)) {
        return 10;
    }
    if ((p_file->p_sfd->lock.mode & 0x3) != 0 && p_file->lock_count == 0) {
        return 25;
    }
    if (VFiPFFILE_Cursor_IsOutOfFile(p_file) != 0) {
        return 28;
    }
    total_size = size * count;
    err = VFiPFFILE_Cursor_Read(p_file, p_buf, total_size, &size_read);
    *p_count_read = size_read / size;
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_p_fwrite(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_written) {
    pf_u32 append_size;
    PF_CACHE_PAGE* p_page;
    pf_u32 size_written = 0;
    pf_s32 err;

    *p_count_written = 0;
    if ((p_file->open_mode & 0x08) == 0 && (p_file->open_mode & 0x02) != 0) {
        return 10;
    }
    if ((p_file->p_sfd->lock.mode & 0x3) != 0 &&
        ((p_file->p_sfd->lock.mode & 0x01) != 0 || ((p_file->p_sfd->lock.mode & 0x02) != 0 && p_file->lock_count == 0))) {
        return 25;
    }
    if ((p_file->open_mode & 0x04) != 0) {
        VFiPFFILE_Cursor_MoveToEnd(p_file);
    }
    if (p_file->cursor.position > p_file->p_sfd->dir_entry.file_size) {
        append_size = p_file->cursor.position - p_file->p_sfd->dir_entry.file_size;
        p_file->cursor.position = p_file->p_sfd->dir_entry.file_size;
        p_file->cursor.file_sector_index = p_file->cursor.position >> p_vol->bpb.log2_bytes_per_sector;
        p_file->cursor.offset_in_sector = p_file->cursor.position & (p_vol->bpb.bytes_per_sector - 1);
        err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
        if (err != 0) {
            return err;
        }
        VFipf_memset(p_page->p_buf, 0, p_vol->bpb.bytes_per_sector);

        while (append_size != 0) {
            if (append_size > p_vol->bpb.bytes_per_sector) {
                err = VFiPFFILE_Cursor_Write(p_file, p_page->p_buf, p_vol->bpb.bytes_per_sector, &size_written);
                if (err != 0) {
                    return err;
                }
            } else {
                err = VFiPFFILE_Cursor_Write(p_file, p_page->p_buf, append_size, &size_written);
                if (err != 0) {
                    return err;
                }
                break;
            }
            append_size -= p_vol->bpb.bytes_per_sector;
        }

        VFiPFCACHE_FreeDataPage(p_vol, p_page);
    }
    err = VFiPFFILE_Cursor_Write(p_file, p_buf, size * count, &size_written);
    *p_count_written = size_written / size;
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_p_finfo(PF_FILE* p_file, PF_INFO* p_info) {
    PF_VOLUME* p_vol;
    pf_u32 cluster_size;
    pf_s32 err;

    p_file->p_sfd->ffd.p_hint = &p_file->hint;
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    p_info->file_size = p_file->p_sfd->dir_entry.file_size;
    p_info->io_pointer = p_file->cursor.position;
    cluster_size = p_vol->bpb.bytes_per_sector << p_vol->bpb.log2_sectors_per_cluster;
    if (p_file->p_sfd->dir_entry.start_cluster != 0) {
        err = VFiPFCLUSTER_GetAppendSize(p_file, &p_info->allocated_size);
        if (err != 0) {
            return err;
        }
        p_info->empty_size =
            p_info->allocated_size +
            ((p_file->p_sfd->dir_entry.file_size % cluster_size) != 0 ? (cluster_size - (p_file->p_sfd->dir_entry.file_size % cluster_size)) : 0);
    } else {
        p_info->allocated_size = 0;
        p_info->empty_size = 0;
    }
    p_info->lock_mode = p_file->p_sfd->lock.mode & 0x3;
    p_info->lock_owner = p_file->p_sfd->lock.owner;
    p_info->lock_count = p_file->lock_count;
    p_info->lock_tcount = p_file->p_sfd->lock.count;
    return 0;
}

pf_s32 VFiPFFILE_GetOpenedFile(PF_DIR_ENT* p_ent, PF_DIR_ENT** pp_open_ent) {
    pf_s32 i;

    if (p_ent == PF_NULL || pp_open_ent == PF_NULL || p_ent->p_vol == 0) {
        return 10;
    }
    *pp_open_ent = PF_NULL;
    for (i = 0; i < 5; i++) {
        if ((p_ent->p_vol->sfds[i].stat & 0x01) != 0 && (p_ent->p_vol->sfds[i].stat & 0x02) != 0 &&
            p_ent->p_vol == p_ent->p_vol->sfds[i].dir_entry.p_vol && p_ent->entry_sector == p_ent->p_vol->sfds[i].dir_entry.entry_sector &&
            p_ent->entry_offset == p_ent->p_vol->sfds[i].dir_entry.entry_offset) {
            *pp_open_ent = &p_ent->p_vol->sfds[i].dir_entry;
        }
    }
    return 0;
}

pf_bool VFiPFFILE_IsOpened(PF_DIR_ENT* p_ent) {
    PF_DIR_ENT* p_open_ent = PF_NULL;
    pf_bool is_open;

    if (p_ent == PF_NULL) {
        return PF_FALSE;
    }
    VFiPFFILE_GetOpenedFile(p_ent, &p_open_ent);
    if (p_open_ent == PF_NULL) {
        is_open = PF_FALSE;
    } else {
        is_open = PF_TRUE;
    }
    return is_open;
}

void VFiPFFILE_FinalizeAllFiles(PF_VOLUME* p_vol) {
    pf_u16 i;

    for (i = 0; i < 5; i++) {
        VFiPFFILE_FinalizeSFD(&p_vol->sfds[i]);
    }

    for (i = 0; i < 5; i++) {
        VFiPFFILE_FinalizeUFD(&p_vol->ufds[i]);
    }

    p_vol->num_opened_files = 0;
}

pf_s32 VFiPFFILE_DoRemoveFile(PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter) {
    pf_u32 start_cluster;
    pf_s32 err;

    start_cluster = p_ent->start_cluster;
    err = VFiPFENT_RemoveEntry(p_ent, p_iter);
    if (err != 0) {
        return err;
    }
    err = VFiPFFAT_FreeChain(&p_iter->ffd, start_cluster, -1, p_ent->file_size);
    if (err != 0) {
        return err;
    }
    return err;
}

pf_s32 VFiPFFILE_RemoveFile(PF_VOLUME* p_vol, PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter) {
    pf_s32 err;

    (void)p_vol;  // unused

    if ((p_ent->attr & 0x19) != 0) {
        return 11;
    }
    if (VFiPFFILE_IsOpened(p_ent) != 0) {
        return 19;
    }
    err = VFiPFFILE_DoRemoveFile(p_ent, p_iter);
    if (err != 0) {
        return err;
    }
    return err;
}

pf_s32 VFiPFFILE_remove(PF_STR* p_path_str) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    err = VFiPFVOL_CheckForWrite(p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    p_vol->cache.signature = PF_NULL;
    err = VFiPFFILE_p_remove(&*p_vol, p_path_str);
    if (err != 0) {
        p_vol->last_error = VFipf_vol_set.last_error = err;
        return err;
    }
    err = VFiPFCACHE_FlushFATCache(p_vol);
    if (err != 0) {
        p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    return err;
}

pf_s32 VFiPFFILE_fopen(PF_STR* p_path_str, pf_s32 mode, PF_FILE** pp_file) {
    PF_VOLUME* p_vol;
    pf_s32 err = 0;

    if (pp_file == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    *pp_file = PF_NULL;
    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (VFiPFDRV_IsWProtected(p_vol) != 0 && mode != 2) {
        return 11;
    }
    err = VFiPFFILE_p_fopen(&*p_vol, p_path_str, mode, pp_file);
    if (err != 0) {
        p_vol->last_error = VFipf_vol_set.last_error = err;
    } else {
        p_vol->num_opened_files += 1;
    }
    return err;
}

pf_s32 VFiPFFILE_fclose(PF_FILE* p_file) {
    PF_VOLUME* p_vol;
    pf_s32 err = 0;

    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (VFiPFDRV_IsWProtected(p_vol) != 0 && p_file->open_mode != 2) {
        return 11;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    p_vol->cache.signature = p_file;
    if (((p_file->p_sfd->num_handlers - 1) <= 0) && ((p_file->p_sfd->dir_entry.attr & 0x19) == 0) && (VFiPFDRV_IsWProtected(p_vol) == 0) &&
        (((p_file->p_sfd->stat & 0x04) != 0) || ((p_vol->file_config & 0x01) != 1))) {
        err = VFiPFENT_updateEntry(&p_file->p_sfd->dir_entry, 1);
    }
    if (p_file->lock_count != 0) {
        if ((p_file->p_sfd->lock.mode & 0x01) != 0) {
            p_file->p_sfd->lock.count -= p_file->lock_count;
            p_file->lock_count = 0;
            if (p_file->p_sfd->lock.count == 0) {
                VFiPF_UnLockFile(p_file);
            }
            p_file->p_sfd->lock.mode &= (pf_u16) ~(0x01 | 0x02);
        } else if (p_file->p_sfd->lock.owner != p_file) {
            err = 0x19;
        } else {
            p_file->p_sfd->lock.count = 0;
            p_file->lock_count = 0;
            p_file->p_sfd->lock.owner = PF_NULL;
            VFiPF_UnLockFile(p_file);
            p_file->p_sfd->lock.mode &= (pf_u16) ~(0x01 | 0x02);
        }
    }
    if (err != 0) {
        p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
    } else {
        if ((p_vol->cache.mode & 0x02) != 0) {
            err = VFiPFCACHE_FlushFATCache(p_vol);
            if (err != 0) {
                p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
            } else {
                err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, p_file);
                if (err != 0) {
                    p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
                }
            }
        }
        if (err == 0) {
            VFiPFFILE_ReleaseSFD(p_file->p_sfd);
            VFiPFFILE_ReleaseUFD(p_file);
            p_vol->num_opened_files--;
        }
    }
    p_vol->cache.signature = PF_NULL;
    return err;
}

pf_s32 VFiPFFILE_fread(pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_read) {
    PF_VOLUME* p_vol;
    pf_u32 count_read;
    pf_s32 err;

    if (p_count_read == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    *p_count_read = 0;
    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    err = VFiPFVOL_CheckForRead(&*p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if (p_buf == PF_NULL || count == 0 || size == 0) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    p_vol->cache.signature = p_file;
    err = VFiPFFILE_p_fread(p_vol, p_buf, size, count, &*p_file, &count_read);
    *p_count_read = count_read;
    p_vol->cache.signature = PF_NULL;
    if (err != 0) {
        p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    return err;
}

pf_s32 VFiPFFILE_fwrite(pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_written) {
    PF_VOLUME* p_vol;
    pf_u32 count_written;
    pf_s32 err;

    if (p_count_written == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    *p_count_written = 0;
    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    err = VFiPFVOL_CheckForWrite(&*p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if (p_buf == PF_NULL || count == 0 || size == 0) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    p_vol->cache.signature = p_file;
    err = VFiPFFILE_p_fwrite(p_vol, p_buf, size, count, &*p_file, &count_written);
    *p_count_written = count_written;
    p_vol->cache.signature = PF_NULL;
    if (err != 0) {
        p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (count_written != 0) {
        VFiPFENT_getcurrentDateTimeForEnt(&p_file->p_sfd->dir_entry.modify_date, &p_file->p_sfd->dir_entry.modify_time);
        p_file->p_sfd->dir_entry.access_date = p_file->p_sfd->dir_entry.modify_date;
        p_file->p_sfd->stat = p_file->p_sfd->stat | 4;
    }
    return err;
}

pf_s32 VFiPFFILE_fseek(PF_FILE* p_file, pf_s32 lOffset, pf_s32 nOrigin) {
    PF_VOLUME* p_vol;
    pf_s32 err = 0;
    pf_u32 file_io;
    pf_u32 wk_offset;

    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 38;
    }
    err = VFiPFVOL_CheckForRead(&*p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    switch (nOrigin) {
        case 1: {
            file_io = p_file->cursor.position;
            break;
        }
        case 0: {
            file_io = 0;
            break;
        }
        case 2: {
            file_io = p_file->p_sfd->dir_entry.file_size;
            break;
        }
        default: {
            return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 10;
        }
    }

    if ((lOffset & 0x080000000) != 0) {
        wk_offset = ~(lOffset | lOffset) & 0x7FFFFFFF;
        wk_offset += 1;
        if (file_io < wk_offset) {
            return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 10;
        }
        file_io -= wk_offset;
    } else {
        wk_offset = 0xFFFFFFFF - file_io;
        if (lOffset > wk_offset) {
            return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 0x25;
        }
        file_io += lOffset;
    }
    VFiPFFILE_Cursor_Initialize(&*p_file);
    VFiPFFILE_Cursor_SetPosition(&*p_file, file_io);
    return err;
}

pf_s32 VFiPFFILE_finfo(PF_FILE* p_file, PF_INFO* p_info) {
    PF_VOLUME* p_vol;
    PF_CURSOR save_cursor;
    PF_FAT_HINT save_hint;
    pf_s32 err;

    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 38;
    }
    err = VFiPFVOL_CheckForRead(&*p_vol);
    if (err != 0) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 38;
    }
    if (p_info == PF_NULL) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    p_vol->cache.signature = p_file;
    save_cursor = p_file->cursor;
    save_hint = p_file->hint;

    err = VFiPFFILE_p_finfo(p_file, p_info);

    p_file->cursor = save_cursor;
    p_file->hint = save_hint;
    p_vol->cache.signature = PF_NULL;
    if (err != 0) {
        return p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    return 0;
}
