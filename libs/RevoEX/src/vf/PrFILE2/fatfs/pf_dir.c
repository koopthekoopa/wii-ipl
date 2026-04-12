#include <private/vf/PrFILE2/fatfs/pf_dir.h>

#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>

static void VFiPFDIR_FinalizeSDD(PF_SDD* p_sdd) {
    p_sdd->stat = 0;
    VFiPFFAT_FinalizeFFD(&p_sdd->ffd);
}

static void VFiPFDIR_FinalizeUDD(PF_DIR* p_dir) {
    p_dir->stat &= ~0x01;
}

// DEBUG NON MATCHING
static pf_s32 VFiPFDIR_p_mkdir(PF_VOLUME* p_vol /* r29 */, PF_STR* p_path /* r1+0x8 */, pf_u32 option /* r1+0xC */, PF_DTA* p_dta /* r31 */) {
    PF_STR dir_path;           // r1+0x70
    PF_STR filename;           // r1+0x60
    pf_u32 is_found;           // r1+0x44
    PF_DIR_ENT entry_dir;      // r1+0x588
    PF_ENT_ITER iter;          // r1+0xD8
    pf_u32 i;                  // r1+0x40
    pf_u32 spc_cnt;            // r1+0x3C
    PF_DIR_ENT entry;          // r1+0x348
    pf_u8 buf[32];             // r1+0x80
    PF_CACHE_PAGE* p_page;     // r1+0x38
    pf_u8 num_entry_LFNs = 0;  // r1+0x11
    pf_u8 sum;                 // r1+0x10
    pf_u32 OldSector = 0;      // r1+0x34
    pf_s32 pozIdx = 0;         // r1+0x30
    pf_u32 NextChain[2];       // r1+0x48
    pf_s32 err = 0;            // r30
    pf_u16 filename_size;      // r1+0x12
    PF_FFD ffd;                // r1+0xA0
    PF_FAT_HINT fat_hint;      // r1+0x50
    pf_u32 SVSect = 0;         // r1+0x2C
    pf_u32 sector = 0;         // r1+0x28
    pf_u32 success_size;       // r1+0x24
    pf_u32 save_offset;        // r1+0x20
    pf_s8 tmp_local[512];      // r1+0x148
    pf_u32 position;           // r1+0x1C

    // unused
    (void)option;

    err = VFiPFPATH_SplitPath(p_path, &dir_path, &filename);
    if (err != 0) {
        return err;
    }
    err = VFiPFENT_ITER_GetEntryOfPath(&iter, &entry_dir, p_vol, &dir_path, PF_TRUE);
    if (err != 0) {
        return err;
    }
    if ((entry_dir.attr & 0x10) == 0) {
        return 20;
    }
    filename_size = VFiPFSTR_StrNumChar(&filename, 1);
    if (filename_size > 0xFF) {
        return 1;
    }
    if ((filename_size + entry_dir.path_len) > 0x103) {
        return 2;
    }
    if (VFiPFSTR_GetCodeMode(&filename) == 2) {
        VFiPFPATH_transformFromUnicodeToNormal((pf_s8*)&tmp_local, (pf_u16*)VFiPFSTR_GetStrPos(&filename, 1));
    }
    VFiPFSTR_SetLocalStr(&filename, (pf_s8*)&tmp_local);
    if (p_dta != PF_NULL) {
        p_dta->p_file = PF_NULL;
        p_dta->p_dir = PF_NULL;
        p_dta->parent_start_cluster = entry_dir.start_cluster;
        p_dta->p_vol = entry_dir.p_vol;
        p_dta->attr = 0x10;
        if (VFiPFSTR_GetCodeMode(&filename) == 1) {
            VFiPFPATH_SetSearchPattern(p_dta->reg_exp, PF_NULL, &filename);
            p_dta->status |= 0x01;
        } else {
            VFiPFPATH_SetSearchPattern(p_dta->reg_exp, ((PF_DTAW*)p_dta)->reg_expW, &filename);
            p_dta->status |= 0x02;
        }
    }
    VFiPFFAT_InitFFD(&ffd, &fat_hint, p_vol, &entry_dir.start_cluster);
    iter.ffd = ffd;
    VFiPFFAT_ResetFFD(&iter.ffd, &entry_dir.start_cluster);
    err = VFiPFENT_ITER_IteratorInitialize(&iter, 0);
    if (err != 0) {
        return err;
    }
    VFipf_memcpy(&entry, &entry_dir, 0x240);
    err = VFiPFENT_ITER_FindEntry(&iter, &entry, &filename, 0x10, 0, &is_found, PF_TRUE);
    if (err != 0) {
        return err;
    }
    if (is_found != 0) {
        return 8;
    }
    err = VFiPFPATH_parseShortName(&*entry.short_name, &filename);
    if (err != 0 && *entry.short_name == 0) {
        return 1;
    }
    if (err != 0) {
        err = VFiPFENT_AdjustSFN(&entry_dir, &*entry.short_name);
        if (err != 0) {
            return err;
        }
        if (VFiPFSTR_GetCodeMode(&filename) == 1) {
            filename_size = VFiPFPATH_transformInUnicode(entry.long_name, VFiPFSTR_GetStrPos(&filename, 1));
        } else {
            VFipf_w_strcpy(entry.long_name, (pf_u16*)VFiPFSTR_GetStrPos(&filename, 1));
        }
    } else {
        *entry.long_name = 0;
    }

    entry.start_cluster = 0;
    entry.file_size = 0;
    entry.p_vol = p_vol;
    entry.small_letter_flag = 0;
    entry.attr = 0x10;
    entry.create_time_ms = VFiPFENT_getcurrentDateTimeForEnt(&entry.create_date, &entry.create_time);
    entry.access_date = entry.create_date;
    entry.modify_time = entry.create_time;
    entry.modify_date = entry.create_date;
    save_offset = entry.entry_offset;
    if ((*entry.long_name != 0) && ((entry.small_letter_flag & 0x18) == 0)) {
        num_entry_LFNs = (filename_size / 13U) + ((filename_size % 13U) != 0 ? 1 : 0);
        err = VFiPFENT_allocateEntryPos(&entry, (pf_u8)(num_entry_LFNs + 1), &ffd, (pf_u32*)&NextChain, &filename, &position);
        if (err != 0) {
            return err;
        }
        if ((VFipf_vol_set.setting & 0x02) == 2) {
            VFiPFPATH_AdjustExtShortName(&*entry.short_name, position);
        }
    } else {
        err = VFiPFENT_allocateEntryPos(&entry, 1, &ffd, (pf_u32*)&NextChain, &filename, &position);
        if (err != 0) {
            return err;
        }
    }

    VFiPFFAT_ResetFFD(&ffd, &entry.start_cluster);
    err = VFiPFFAT_GetSectorSpecified(&ffd, 0, PF_TRUE, &sector);
    if (err != 0) {
        return err;
    }
    if (sector == -1) {
        return 6;
    }
    SVSect = ffd.p_hint->cluster;
    if (p_vol->bpb.fat_type == FAT_32 && *iter.ffd.p_start_cluster == p_vol->bpb.root_dir_cluster && save_offset == 0 &&
        SVSect == p_vol->bpb.root_dir_cluster) {
        iter.ffd = ffd;
        err = VFiPFENT_ITER_IteratorInitialize(&iter, num_entry_LFNs);
        if (err != 0) {
            return err;
        }
        if (*iter.buf == 0) {
            VFiPFFAT_ResetFFD(&ffd, &entry.start_cluster);
            *ffd.p_start_cluster = 0;
            ffd.p_hint->cluster = 0;
            SVSect = p_vol->bpb.root_dir_cluster + 1;
            err = VFiPFFAT_GetSectorSpecified(&ffd, 0, PF_TRUE, &sector);
            if (err != 0) {
                return err;
            }
        }
    }

    err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
    if (err != 0) {
        return err;
    }
    VFipf_memset(p_page->p_buf, 0, p_vol->bpb.bytes_per_sector);

    for (spc_cnt = p_vol->bpb.sectors_per_cluster; spc_cnt != 0; spc_cnt--) {
        if (spc_cnt == 1) {
            VFiPFENT_SetDotEntry(p_page->p_buf);
            VFiPFENT_StoreEntryNumericFieldsToBuf(p_page->p_buf, &entry);
            VFiPFENT_SetDotDotEntry(p_page->p_buf + 32);
            if (entry_dir.entry_sector == -1) {
                entry.start_cluster = 0;
            } else {
                entry.start_cluster = entry_dir.start_cluster;
            }
            VFiPFENT_StoreEntryNumericFieldsToBuf(p_page->p_buf + 32, &entry);
        }
        err = VFiPFSEC_WriteData(p_vol, p_page->p_buf, (sector + spc_cnt) - 1, 0, p_vol->bpb.bytes_per_sector, &success_size, PF_FALSE);
        if (err == 0) {
            if (success_size != p_vol->bpb.bytes_per_sector) {
                err = 17;
                break;
            }
        } else {
            break;
        }
    }
    VFiPFCACHE_FreeDataPage(p_vol, p_page);
    if (err != 0) {
        return err;
    }
    OldSector = entry.entry_sector;
    entry.num_entry_LFNs = num_entry_LFNs;
    sum = VFiPFENT_CalcCheckSum(&entry);
    if ((entry.small_letter_flag & (0x10 | 0x08)) == 0) {
        for (i = num_entry_LFNs; i >= 1; i--) {
            VFiPFENT_storeLFNEntryFieldsToBuf((pf_u8*)&buf, &entry, (pf_u8)i, sum, i == num_entry_LFNs ? PF_TRUE : PF_FALSE);
            err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&buf, OldSector, (pf_u16)entry.entry_offset, 32, &success_size, PF_FALSE);
            if (err != 0) {
                return err;
            }
            if (success_size != 32) {
                return 17;
            }

            entry.entry_offset += 32;

            if (entry.entry_offset >= p_vol->bpb.bytes_per_sector) {
                entry.entry_offset = 0;
                OldSector = (NextChain)[pozIdx];
                pozIdx++;
            }
        }
        entry.entry_sector = OldSector;
    }
    entry.start_cluster = SVSect;
    err = VFiPFENT_updateEntry(&entry, 0);
    if (err != 0) {
        return err;
    }
    if (p_dta != PF_NULL) {
        p_dta->parent_pos = position + 1;
        VFipf_strcpy(p_dta->FileName, &*entry.short_name);
        if ((p_dta->status & 0x02) == 0x02) {
            VFiPFPATH_transformInUnicode(((PF_DTAW*)p_dta)->FileNameW, p_dta->FileName);
        }
        if (*entry.long_name != 0) {
            if ((VFipf_vol_set.setting & 0x02) == 2) {
                VFipf_vol_set.setting &= ~(0x01 | 0x02);
                VFipf_vol_set.setting |= 0x01;
                VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, entry.long_name);
                VFipf_vol_set.setting &= ~(0x01 | 0x02);
                VFipf_vol_set.setting |= 0x02;
            } else {
                VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, entry.long_name);
            }
            if ((p_dta->status & 0x02) == 0x02) {
                VFipf_w_strcpy(((PF_DTAW*)p_dta)->LongNameW, entry.long_name);
            }
            p_dta->ordinal = 1;
            p_dta->check_sum = sum;
        } else {
            *p_dta->LongName = 0;
            if ((p_dta->status & 0x02) == 0x02) {
                *((PF_DTAW*)p_dta)->LongNameW = 0;
            }
            p_dta->ordinal = 0;
            p_dta->check_sum = 0;
        }
        p_dta->FileSize = entry.file_size;
        p_dta->Time = entry.modify_time;
        p_dta->Date = entry.modify_date;
        p_dta->Attribute = entry.attr;
        p_dta->num_entry_LFNs = entry.num_entry_LFNs;
    }
    return 0;
}

void VFiPFDIR_FinalizeAllDirs(PF_VOLUME* p_vol) {
    pf_u16 i;

    for (i = 0; i < 3; i++) {
        VFiPFDIR_FinalizeSDD(&p_vol->sdds[i]);
    }
    for (i = 0; i < 3; i++) {
        VFiPFDIR_FinalizeUDD(&p_vol->udds[i]);
    }
    p_vol->num_opened_directories = 0;
}

pf_s32 VFiPFDIR_mkdir(PF_STR* p_path_str) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    if (PF_IS_PATH_NULL(p_path_str, 1, 0)) {
        return VFipf_vol_set.last_error = 10;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 9;
    }
    err = VFiPFVOL_CheckForWrite(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
        return err;
    }
    p_vol->cache.signature = PF_NULL;
    err = VFiPFDIR_p_mkdir(p_vol, p_path_str, 0, PF_NULL);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
    } else {
        err = VFiPFCACHE_FlushFATCache(p_vol);
        if (err != 0) {
            VFipf_vol_set.last_error = err;
            p_vol->last_error = err;
        } else {
            err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, PF_NULL);
            if (err != 0) {
                VFipf_vol_set.last_error = err;
                p_vol->last_error = err;
            }
        }
    }
    p_vol->cache.signature = PF_NULL;
    return err;
}
