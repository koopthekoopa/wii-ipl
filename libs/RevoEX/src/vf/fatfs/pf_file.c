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
    err = VFiPFSEC_ReadDataSector(p_vol, p_buf, p_file->cursor.sector, size, &success_size, 1);
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

    *p_size_read = 0;
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    VFiPFCLUSTER_SetLastAccessCluster(p_file);
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
    err = VFiPFSEC_WriteData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, 0, 1);
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
    pf_bool is_append;

    *p_size_write = 0;
    if (p_file->cursor.position == p_file->p_sfd->dir_entry.file_size) {
        is_append = PF_TRUE;
    } else {
        is_append = PF_FALSE;
    }
    err = VFiPFSEC_WriteDataSector(p_vol, p_buf, p_file->cursor.sector, size, &success_size, is_append, 1);
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
    pf_bool is_append;

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
    if (p_file->cursor.position == p_file->p_sfd->dir_entry.file_size) {
        is_append = PF_TRUE;
    } else {
        is_append = PF_FALSE;
    }
    err = VFiPFSEC_WriteData(p_vol, p_buf, p_file->cursor.sector, p_file->cursor.offset_in_sector, size, &success_size, is_append, 1);
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

    *p_size_write = 0;
    if ((0xFFFFFFFF - p_file->cursor.position) < size) {
        size = 0xFFFFFFFF - p_file->cursor.position;
        p_file->last_error = p_file->p_sfd->ffd.p_vol->last_error = VFipf_vol_set.last_error = 0x25;
    }
    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    VFiPFCLUSTER_SetLastAccessCluster(p_file);
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
    p_sfd->stat = 0x10000003;
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
    p_sfd->stat &= ~0x7;
    VFiPFFAT_FinalizeFFD(&p_sfd->ffd);
}

static void VFiPFFILE_InitUFD(PF_FILE* p_file, pf_s32 open_mode) {
    p_file->stat = 0x20000001;
    p_file->open_mode = open_mode;
    p_file->last_error = 0;
    p_file->lock_count = 0;
    VFiPFFAT_InitHint(&p_file->hint);
    VFiPFFILE_Cursor_Initialize(p_file);
    VFiPFCLUSTER_InitLastAccessCluster(p_file);
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

pf_bool VFiPFFILE_CheckUFD(PF_FILE* p_file) {
    pf_bool is_valid = PF_TRUE;
    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)&VFipf_vol_set + sizeof(VFipf_vol_set) < (pf_u32)p_file ||
        (p_file->stat & 0x20000000) != 0x20000000U) {
        is_valid = PF_FALSE;
    }
    return is_valid;
}

static pf_s32 VFiPFFILE_createEmptyFile(PF_VOLUME* p_vol, PF_DIR_ENT* p_ent, PF_STR* p_fname, PF_DIR_ENT* p_parent_ent, pf_u32 namelength) {
    pf_s32 err;
    PF_FFD ffd;
    PF_FAT_HINT hint;
    pf_u32 prev_chain[2];
    pf_u32 pos;

    (void)namelength;

    // stinky fakematch
#ifdef DEBUG
    err = 0;
#endif
    if (p_vol->num_opened_files >= 5) {
        return 0x15;
    }

#ifdef DEBUG
    err = VFiPFENT_InitENT(p_ent, p_fname, 0x20U, 1U, p_parent_ent, p_vol);
    if (err == 0)
#else
    if (VFiPFENT_InitENT(p_ent, p_fname, 0x20U, 1U, p_parent_ent, p_vol) == 0)
#endif
    {
        VFiPFFAT_InitFFD(&ffd, &hint, p_vol, &p_parent_ent->start_cluster);
#ifdef DEBUG
        err = VFiPFENT_allocateEntry(p_ent, (p_ent->num_entry_LFNs + 1), &ffd, prev_chain, p_fname, 0x77U, &pos);
        if (err == 0)
#else
        if (VFiPFENT_allocateEntry(p_ent, (p_ent->num_entry_LFNs + 1), &ffd, prev_chain, p_fname, 0x77U, &pos) == 0)
#endif
        {
            p_ent->start_cluster = 0;
            if ((p_ent->long_name[0] != 0) && ((VFipf_vol_set.setting & 2) == 2)) {
                VFiPFPATH_AdjustExtShortName(p_ent->short_name, pos);
                p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
            }
            err = VFiPFENT_UpdateEntry(p_ent, prev_chain, 0U);
        }
    }
    return err;
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
    PF_FAT_HINT hint;

    err = VFiPFENT_ITER_GetEntryOfPath(&iter, &ent, p_vol, p_path_str, 0);
    if (err != 0) {
        return err;
    }
    VFiPFFAT_InitFFD(&iter.ffd, &hint, p_vol, iter.ffd.p_start_cluster);
    err = VFiPFFILE_RemoveFile(p_vol, &ent, &iter);
    if (err != 0) {
        return err;
    }
    return err;
}

static pf_s32 VFiPFFILE_p_fopen(PF_VOLUME* p_vol, PF_STR* p_path_str, pf_s32 mode, PF_FILE** pp_file) {
    pf_s32 err;
    PF_DIR_ENT ent;
    PF_DIR_ENT parent_ent;
    PF_SFD* p_sfd;
    PF_FILE* p_file;
    pf_u16 access_time;
    PF_STR file_str;
    PF_STR dir_str;
    PF_FFD ffd;
    PF_FAT_HINT hint;
    pf_s32 namelength;

    *pp_file = PF_NULL;
    err = VFiPFENT_GetParentEntryOfPath(&parent_ent, p_vol, p_path_str);
    if (err != 0) {
        return err;
    }
    if ((parent_ent.attr & 0x10) == 0) {
        return 1;
    }
    err = VFiPFPATH_SplitPath(p_path_str, &dir_str, &file_str);
    if (err != 0) {
        return 1;
    }
    namelength = VFiPFSTR_StrNumChar(&file_str, 1U);
    if (namelength > 0xFF) {
        return 1;
    }
    if ((mode & 2) != 0) {
        VFiPFFAT_InitFFD(&ffd, &hint, p_vol, &parent_ent.start_cluster);
        err = VFiPFENT_findEntry(&ffd, &ent, 0U, &file_str, 0x67U, PF_NULL, PF_NULL);
        if (err != 0) {
            return 3;
        }
        if (((mode & 8) != 0) && ((ent.attr & 1) != 0)) {
            return 0xA;
        }
        VFiPFENT_getcurrentDateTimeForEnt(&ent.access_date, &access_time);
        goto block_35;
    }
    if ((namelength + parent_ent.path_len) > 0x103U) {
        return 1;
    }
    err = VFiPFFILE_createEmptyFile(p_vol, &ent, &file_str, &parent_ent, namelength);
    if (err == 8) {
        if ((mode & 0x10) != 0) {
            return 8;
        }
        if (((mode & 1) != 0) && (VFiPFFILE_IsOpened(&ent) != 0)) {
            return 8;
        }
        if (((ent.attr & 1) != 0) && (((mode & 1) != 0) || ((mode & 4) != 0) || ((mode & 8) != 0))) {
            return 0xA;
        }
        if ((ent.attr & 0x10) != 0) {
            return 0x17;
        }
        if ((mode & 1) != 0) {
            VFiPFFAT_InitFFD(&ffd, &hint, ent.p_vol, &ent.start_cluster);
            VFiPFFILE_EmptyFile(&ffd, &ent);
        } else {
            VFiPFENT_getcurrentDateTimeForEnt(&ent.access_date, &access_time);
        }
        goto block_35;
    }
    if (err != 0) {
        return err;
    }
block_35:
    p_vol = ent.p_vol;
    p_sfd = VFiPFFILE_GetSFD(p_vol, &ent);
    if (p_sfd == PF_NULL) {
        return 0x15;
    }
    p_file = VFiPFFILE_GetFreeUFD(p_vol);
    if (p_file == PF_NULL) {
        VFiPFFILE_ReleaseSFD(p_sfd);
        return 0x16;
    }
    p_file->p_sfd = p_sfd;
    VFiPFFILE_InitUFD(p_file, mode);
    if (((mode & 1) != 0) && ((p_vol->cache.mode & 1) == 0)) {
        p_file->p_sfd->stat = p_file->p_sfd->stat | 4;
    }
    if ((p_file->open_mode & 4) != 0) {
        VFiPFFILE_Cursor_MoveToEnd(p_file);
    }
    *pp_file = p_file;
    return 0;
}

static pf_s32 VFiPFFILE_p_fread(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_read) {
    pf_s32 err;
    pf_u32 size_read = 0;
    pf_u32 base_pos;
    pf_u32 adjust_pos;

    *p_count_read = 0;
    if ((p_file->open_mode & 0x08) == 0 && ((p_file->open_mode & 0x01) != 0 || (p_file->open_mode & 0x04) != 0)) {
        return 10;
    }
    if ((p_file->p_sfd->lock.mode & 0x3) != 0 && p_file->lock_count == 0) {
        return 25;
    }
    if (VFiPFFILE_Cursor_IsOutOfFile(p_file)) {
        return 28;
    }

    VFiPFFAT_SetHint(&p_file->p_sfd->ffd, &p_file->hint);
    base_pos = p_file->cursor.position;
    err = VFiPFFILE_Cursor_Read(p_file, p_buf, size * count, &size_read);
    *p_count_read = size_read / size;
    if (*p_count_read != count) {
        adjust_pos = base_pos + (*p_count_read * size);
        VFiPFFILE_Cursor_SetPosition(p_file, adjust_pos);
    }
    if (err != 0) {
        return err;
    }

    return 0;
}

static pf_s32 VFiPFFILE_p_fwrite(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file, pf_u32* p_count_written) {
    pf_s32 err;
    PF_CACHE_PAGE* p_page;
    pf_u32 append_size;
    pf_u32 size_written = 0;
    pf_u32 base_pos;
    pf_u32 base_size;
    pf_u32 adjust_pos;
    pf_s32 err2 = 0;
    PF_CURSOR save_cursor = {0};
    PF_FAT_HINT save_hint = {0};

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
    VFiPFFAT_SetHint(&p_file->p_sfd->ffd, &p_file->hint);
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
    base_size = p_file->p_sfd->dir_entry.file_size;
    base_pos = p_file->cursor.position;
    err = VFiPFFILE_Cursor_Write(p_file, p_buf, size * count, &size_written);
    *p_count_written = size_written / size;
    if (*p_count_written != count) {
        if (p_file->p_sfd->dir_entry.file_size > base_size) {
            if ((base_pos + (*p_count_written * size)) > base_size) {
                p_file->p_sfd->dir_entry.file_size = base_pos + (*p_count_written * size);
            } else {
                p_file->p_sfd->dir_entry.file_size = base_size;
            }
            save_cursor = p_file->cursor;
            save_hint = p_file->hint;
            VFiPFFAT_SetHint(&p_file->p_sfd->ffd, &p_file->hint);
            err2 = VFiPFCLUSTER_AdjustCluster(p_file);
            if (err2 != 0) {
                err = err2;
            }
            p_file->cursor = save_cursor;
            p_file->hint = save_hint;
        }
        adjust_pos = base_pos + (*p_count_written * size);
        VFiPFFILE_Cursor_SetPosition(p_file, adjust_pos);
    }
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFFILE_p_finfo(PF_FILE* p_file, PF_INFO* p_info) {
    PF_VOLUME* p_vol;
    pf_u32 cluster_size;
    pf_s32 err;

    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    VFiPFFAT_SetHint(&p_file->p_sfd->ffd, &p_file->hint);
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
    err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, PF_NULL);
    if (err != 0) {
        p_vol->last_error = VFipf_vol_set.last_error = err;
    } else {
        err = VFiPFCACHE_FlushFATCache(p_vol);
        if (err != 0) {
            VFipf_vol_set.last_error = err;
            p_vol->last_error = err;
        }
    }
    return err;
}

pf_s32 VFiPFFILE_fopen(PF_STR* p_path_str, pf_u32 mode, PF_FILE** pp_file) {
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
        return p_vol->last_error = VFipf_vol_set.last_error = 11;
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

    if (!VFiPFFILE_CheckUFD(p_file)) {
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
        err = VFiPFENT_UpdateSFNEntry(&p_file->p_sfd->dir_entry, 1U);
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
    if (!VFiPFFILE_CheckUFD(p_file)) {
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
    if (!VFiPFFILE_CheckUFD(p_file)) {
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
        if ((p_vol->cache.mode & 1) != 0) {
            err = VFiPFENT_UpdateSFNEntry(&p_file->p_sfd->dir_entry, 1U);
        } else {
            p_file->p_sfd->stat = p_file->p_sfd->stat | 4;
        }
    }
    return err;
}

pf_s32 VFiPFFILE_fseek(PF_FILE* p_file, pf_s32 lOffset, pf_s32 nOrigin) {
    PF_VOLUME* p_vol;
    pf_s32 err = 0;
    pf_u32 file_io;
    pf_u32 wk_offset;

    if (!VFiPFFILE_CheckUFD(p_file)) {
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

    if (!VFiPFFILE_CheckUFD(p_file)) {
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
