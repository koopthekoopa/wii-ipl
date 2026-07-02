#include <private/vf/PrFILE2/fatfs/pf_dir.h>

#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>

static pf_s32 VFiPFDIR_CheckDirIsEmpty(PF_ENT_ITER* p_iter, pf_u32* p_is_empty) {
    pf_u8 attr;
    pf_s32 err;

    err = 0;
    if ((*p_iter->ffd.p_start_cluster != 1) &&
        ((p_iter->ffd.p_vol->bpb.fat_type != FAT_32) || (*p_iter->ffd.p_start_cluster != p_iter->ffd.p_vol->bpb.root_dir_cluster))) {
        err = VFiPFENT_ITER_MoveTo(p_iter, 2U, 0U);
        if (err != 0) {
            if (err == 0xD) {
                return 0;
            }

            return err;
        }
    }
    *p_is_empty = 1;

    while (VFiPFENT_ITER_IsAtLogicalEnd(p_iter) == 0) {
        if (err != 0) {
            if (err == 0xD) {
                return 0;
            }

            return err;
        }
        if (p_iter->buf[0] != 0xE5) {
            attr = p_iter->buf[0xB];
            if (((attr & 0xF) != 0xF) && ((attr & 8) == 0)) {
                if (p_iter->buf[0] == 0) {
                    *p_is_empty = 1;
                } else {
                    *p_is_empty = 0;
                }
                break;
            }
        }
        err = VFiPFENT_ITER_Advance(p_iter, 0U);
    }
    return 0;
}

static pf_s32 VFiPFDIR_GetOpenedDir(PF_DIR_ENT* p_ent, PF_DIR_ENT** pp_open_ent) {
    pf_s32 i;

    *pp_open_ent = PF_NULL;
    for (i = 0; i < 3; i++) {
        if (((p_ent->p_vol->sdds[i].stat & 1) != 0) && ((p_ent->p_vol->sdds[i].stat & 2) != 0) &&
            (p_ent->p_vol == p_ent->p_vol->sdds[i].dir_entry.p_vol) && (p_ent->entry_sector == p_ent->p_vol->sdds[i].dir_entry.entry_sector) &&
            (p_ent->entry_offset == p_ent->p_vol->sdds[i].dir_entry.entry_offset)) {
            *pp_open_ent = &p_ent->p_vol->sdds[i].dir_entry;
        }
    }
    return 0;
}

static pf_u32 VFiPFDIR_IsOpened(struct PF_DIR_ENT* p_ent) {
    struct PF_DIR_ENT* p_open_ent;
    pf_u32 is_open;

    VFiPFDIR_GetOpenedDir(p_ent, &p_open_ent);
    if (p_open_ent == PF_NULL) {
        is_open = 0;
    } else {
        is_open = 1;
    }
    return is_open;
}

static void VFiPFDIR_FinalizeSDD(PF_SDD* p_sdd) {
    p_sdd->stat &= ~0x3;
    VFiPFFAT_FinalizeFFD(&p_sdd->ffd);
}

static void VFiPFDIR_FinalizeUDD(PF_DIR* p_dir) {
    p_dir->stat &= ~0x01;
}

static pf_s32 VFiPFDIR_DoRemoveDir(struct PF_DIR_ENT* p_ent, struct PF_ENT_ITER* p_iter) {
    pf_s32 err;
    pf_u32 start_cluster;

    start_cluster = p_ent->start_cluster;
    err = VFiPFENT_RemoveEntry(p_ent, p_iter);
    if (err != 0) {
        return err;
    }
    err = VFiPFFAT_FreeChain(&p_iter->ffd, start_cluster, -1U, -1U);
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFDIR_RemoveDir(struct PF_VOLUME* p_vol, struct PF_DIR_ENT* p_ent, struct PF_ENT_ITER* p_iter) {
    struct PF_FAT_HINT hint;
    struct PF_ENT_ITER find_iter;
    pf_u32 is_empty;
    pf_s32 err;

    is_empty = 0;
    if (VFiPFDIR_IsOpened(p_ent) != 0) {
        return 0x13;
    }
    if (VFiPFVOL_CheckCurrentDir(p_vol, p_ent->start_cluster) != 0) {
        return 0x1C;
    }
    VFiPFFAT_InitFFD(&find_iter.ffd, &hint, p_vol, &p_ent->start_cluster);
    err = VFiPFENT_ITER_IteratorInitialize(&find_iter, 0U);
    if (err != 0) {
        return err;
    }
    err = VFiPFDIR_CheckDirIsEmpty(&find_iter, &is_empty);
    if (err != 0) {
        return err;
    }
    if (is_empty == 0) {
        return 0x1D;
    }
    err = VFiPFDIR_DoRemoveDir(p_ent, p_iter);
    if (err != 0) {
        return err;
    }

    return 0;
}

static pf_s32 VFiPFDIR_p_mkdir(PF_VOLUME* p_vol, PF_STR* p_path, pf_u32 option, PF_DTA* p_dta) {
    pf_s32 err;
    PF_STR full_path;
    PF_STR dirname;
    pf_u16 dirname_len;
    PF_DIR_ENT entry;
    PF_DIR_ENT parent_entry;
    PF_FFD ffd;
    pf_u32 pos;
    PF_FAT_HINT fat_hint;
    pf_u32 prev_chain[2];
    pf_u32 new_sector;

    (void)option;

    err = 0;
    new_sector = 0;

    err = VFiPFPATH_SplitPath(p_path, &full_path, &dirname);
    if (err != 0) {
        return err;
    }
    err = VFiPFENT_GetParentEntryOfPath(&parent_entry, p_vol, &full_path);
    if (err != 0) {
        return err;
    }
    if ((parent_entry.attr & 0x10) == 0) {
        err = 0x14;
    }
    if (p_dta != PF_NULL) {
        p_dta->parent_start_cluster = parent_entry.start_cluster;
    }
    VFiPFFAT_InitFFD(&ffd, &fat_hint, p_vol, &parent_entry.start_cluster);
    err = VFiPFENT_findEntry(&ffd, &entry, 0U, &dirname, 0x77U, PF_NULL, PF_NULL);
    if (err == 0) {
        return 8;
    }
    if (err != 3) {
        return err;
    }
    dirname_len = VFiPFSTR_StrNumChar(&dirname, 1U);
    if ((dirname_len > 0xFFU) || ((dirname_len + parent_entry.path_len) > 0x103U)) {
        return 2;
    }
    err = VFiPFENT_InitENT(&entry, &dirname, 0x10U, 1U, &parent_entry, p_vol);
    if (err == 0) {
        VFiPFFAT_InitFFD(&ffd, &fat_hint, p_vol, &parent_entry.start_cluster);
        err = VFiPFENT_allocateEntry(&entry, (entry.num_entry_LFNs + 1), &ffd, prev_chain, PF_NULL, 0x77U, &pos);
        if (err == 0) {
            entry.start_cluster = 0;
            VFiPFFAT_InitFFD(&ffd, &fat_hint, p_vol, &entry.start_cluster);
            err = VFiPFFAT_GetSectorSpecified(&ffd, 0U, 1U, &new_sector);
            if (new_sector == -1U) {
                err = 6;
            }
            if (err == 0) {
                err = VFiPFENT_FillVoidEntryToSectors(p_vol, new_sector, p_vol->bpb.sectors_per_cluster, 1U, &entry, &parent_entry);
                if (err == 0) {
                    if ((entry.long_name[0] != 0) && ((VFipf_vol_set.setting & 2) == 2)) {
                        VFiPFPATH_AdjustExtShortName(&entry.short_name[0], pos);
                        entry.check_sum = VFiPFENT_CalcCheckSum(&entry);
                    }
                    err = VFiPFENT_UpdateEntry(&entry, prev_chain, 0U);
                }
                if (err != 0) {
                    VFiPFFAT_FreeChain(&ffd, entry.start_cluster, -1U, -1U);
                } else if (p_dta != PF_NULL) {
                    p_dta->p_file = PF_NULL;
                    p_dta->p_dir = PF_NULL;
                    p_dta->p_vol = p_vol;
                    p_dta->parent_pos = pos + 1;
                    p_dta->num_entry_LFNs = entry.num_entry_LFNs;
                    p_dta->attr = entry.attr;
                    p_dta->Time = entry.modify_time;
                    p_dta->Date = entry.modify_date;
                    p_dta->FileSize = entry.file_size;
                    p_dta->Attribute = entry.attr;
                    if (VFiPFSTR_GetCodeMode(&dirname) == 1) {
                        VFiPFPATH_SetSearchPattern(p_dta->reg_exp, PF_NULL, &dirname);
                        p_dta->status |= 1;
                    } else {
                        VFiPFPATH_SetSearchPattern(p_dta->reg_exp, ((PF_DTAW*)p_dta)->reg_expW, &dirname);
                        p_dta->status |= 2;
                    }
                    VFipf_strcpy(p_dta->FileName, &entry.short_name[0]);
                    if ((p_dta->status & 2) == 2) {
                        VFiPFPATH_transformInUnicode(((PF_DTAW*)p_dta)->FileNameW, p_dta->FileName);
                    }
                    if (entry.long_name[0] == 0) {
                        p_dta->ordinal = 0;
                        p_dta->check_sum = 0;
                        p_dta->LongName[0] = 0;
                        if ((p_dta->status & 2) == 2) {
                            ((PF_DTAW*)p_dta)->LongNameW[0] = 0;
                        }
                    } else {
                        p_dta->ordinal = 1;
                        p_dta->check_sum = entry.check_sum;
                        if ((VFipf_vol_set.setting & 2) == 2) {
                            VFipf_vol_set.setting &= 0xFFFFFFFC;
                            VFipf_vol_set.setting |= 1;
                            VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, entry.long_name);
                            VFipf_vol_set.setting &= 0xFFFFFFFC;
                            VFipf_vol_set.setting |= 2;
                        } else {
                            VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, entry.long_name);
                        }
                        if ((p_dta->status & 2) == 2) {
                            VFipf_w_strcpy(((PF_DTAW*)p_dta)->LongNameW, entry.long_name);
                        }
                    }
                }
            }
        }
    }

exit:
    return err;
}

static pf_s32 VFiPFDIR_p_chdir(PF_VOLUME* p_vol, PF_STR* p_path_str) {
    pf_s32 err;
    PF_DIR_ENT entry_dir;

    if (((VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\\", 1U, 0, 1U) == 0) || (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"/", 1U, 0, 1U) == 0)) &&
        (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\0", 1U, 1, 1U) == 0)) {
        err = VFiPFENT_GetRootDir(p_vol, &entry_dir);
        if (err != 0) {
            return err;
        }
        err = VFiPFVOL_SetCurrentDir(p_vol, &entry_dir);
        if (err != 0) {
            return err;
        }

        return 0;
    }
    if ((VFiPFSTR_StrNumChar(p_path_str, 1U) == 2) && (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)":", 1U, 1, 1U) == 0)) {
        return 0;
    }
    if ((VFiPFSTR_StrNumChar(p_path_str, 1U) == 3) && (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)":", 1U, 1, 1U) == 0) &&
        ((VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\\", 1U, 2, 1U) == 0) || (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"/", 1U, 2, 1U) == 0))) {
        err = VFiPFENT_GetRootDir(p_vol, &entry_dir);
        if (err != 0) {
            return err;
        }
        err = VFiPFVOL_SetCurrentDir(p_vol, &entry_dir);
        if (err != 0) {
            return err;
        }

        return 0;
    }
    if ((VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)":", 1U, 1, 1U) == 0) &&
        ((VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\\", 1U, 2, 1U) == 0) || (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"/", 1U, 2, 1U) == 0))) {
        VFiPFSTR_MoveStrPos(p_path_str, 2);
    }
    err = VFiPFENT_GetEntryOfPath(&entry_dir, p_vol, p_path_str);
    if (err != 0) {
        return err;
    }
    if ((entry_dir.attr & 0x10) == 0) {
        return 0x14;
    }
    err = VFiPFVOL_SetCurrentDir(p_vol, &entry_dir);
    if (err != 0) {
        return err;
    }

    return 0;
}

static pf_s32 VFiPFDIR_p_rmdir(struct PF_VOLUME* p_vol, struct PF_STR* p_path_str) {
    struct PF_DIR_ENT entry_dir;
    struct PF_ENT_ITER iter;
    pf_s32 err;

    err = 0;
    err = VFiPFENT_ITER_GetEntryOfPath(&iter, &entry_dir, p_vol, p_path_str, 0U);
    if (err != 0) {
        return err;
    }
    if (((entry_dir.attr & 0x10) == 0) || ((entry_dir.attr & 1) != 0)) {
        return 0x14;
    }
    if ((entry_dir.start_cluster == 1) || ((p_vol->bpb.fat_type == FAT_32) && (entry_dir.start_cluster == p_vol->bpb.root_dir_cluster))) {
        return 0x1C;
    }
    err = VFiPFDIR_RemoveDir(p_vol, &entry_dir, &iter);
    if (err != 0) {
        return err;
    }

    return 0;
}

static pf_s32 VFiPFDIR_p_fsnext(PF_DTA* p_dta) {
    pf_s32 err;
    PF_FFD ffd;
    PF_FAT_HINT fat_hint;
    PF_DIR_ENT ent;
    PF_DIR_ENT* p_ent;
    pf_s32 last_file_error;
    pf_u32 ppos;
    PF_STR pattern;
    pf_u32 code_mode;

    last_file_error = 0;
    ppos = 0;
    if ((p_dta->status & 1) == 1) {
        code_mode = 1;
        err = VFiPFSTR_InitStr(&pattern, p_dta->reg_exp, code_mode);
    } else {
        code_mode = 2;
        err = VFiPFSTR_InitStr(&pattern, (pf_s8*)((PF_DTAW*)p_dta)->reg_expW, code_mode);
    }
    if (err != 0) {
        return err;
    }

    // :sob:
    while (ppos < 0xF423FU) {
        if (p_dta->parent_pos >= 0xF423FU) {
            return 0xA;
        }
        ent.start_cluster = p_dta->parent_start_cluster;
        VFiPFFAT_InitFFD(&ffd, &fat_hint, p_dta->p_vol, &ent.start_cluster);
        last_file_error = VFiPFENT_findEntry(&ffd, &ent, p_dta->parent_pos, &pattern, p_dta->attr, PF_NULL, &ppos);
        if (last_file_error != 0) {
            return last_file_error;
        }
        p_dta->parent_pos = ppos + 1;
        if (ppos == 0xF423FU) {
            return 3;
        }
        break;
    }
    VFipf_strcpy(p_dta->FileName, &ent.short_name[0]);
    if ((p_dta->status & 2) == 2) {
        VFiPFPATH_transformInUnicode(((PF_DTAW*)p_dta)->FileNameW, p_dta->FileName);
    }
    if (ent.long_name[0] != 0) {
        if ((VFipf_vol_set.setting & 2) == 2) {
            VFipf_vol_set.setting &= 0xFFFFFFFC;
            VFipf_vol_set.setting |= 1;
            VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, ent.long_name);
            VFipf_vol_set.setting &= 0xFFFFFFFC;
            VFipf_vol_set.setting |= 2;
        } else {
            VFiPFPATH_transformFromUnicodeToNormal(p_dta->LongName, ent.long_name);
        }
        if ((p_dta->status & 2) == 2) {
            VFipf_w_strcpy(((PF_DTAW*)p_dta)->LongNameW, ent.long_name);
        }
    } else {
        p_dta->LongName[0] = 0;
        if ((p_dta->status & 2) == 2) {
            ((PF_DTAW*)p_dta)->LongNameW[0] = 0;
        }
    }
    p_ent = PF_NULL;
    if (((ent.attr & 0x10) != 0) && (p_dta->p_vol->num_opened_directories != 0)) {
        VFiPFDIR_GetOpenedDir(&ent, &p_ent);
    } else if (p_dta->p_vol->num_opened_files != 0) {
        VFiPFFILE_GetOpenedFile(&ent, &p_ent);
    }
    if (p_ent == PF_NULL) {
        p_ent = &ent;
    }
    p_dta->FileSize = p_ent->file_size;
    p_dta->Time = p_ent->modify_time;
    p_dta->Date = p_ent->modify_date;
    p_dta->Attribute = p_ent->attr;
    if (p_dta->Attribute == 0) {
        p_dta->Attribute = 0x40;
    }
    p_dta->num_entry_LFNs = p_ent->num_entry_LFNs;
    p_dta->ordinal = p_ent->ordinal;
    p_dta->check_sum = p_ent->check_sum;

    return 0;
}

static pf_s32 VFiPFDIR_p_fsfirst(PF_VOLUME* p_vol, PF_STR* p_path_str, pf_u8 attr, PF_DTA* p_dta) {
    PF_STR sDir;
    PF_STR sPattern;
    PF_DIR_ENT ent;
    PF_ENT_ITER iter;
    pf_s32 err;

    err = 0;
    err = VFiPFPATH_SplitPathPattern(p_path_str, &sDir, &sPattern);
    if (err != 0) {
        return err;
    }
    err = VFiPFENT_ITER_GetEntryOfPattern(&iter, &ent, p_vol, &sDir);
    if (err != 0) {
        return err;
    }
    if ((ent.attr & 0x10) == 0) {
        return 0x14;
    }
    p_dta->parent_start_cluster = ent.start_cluster;
    p_dta->parent_pos = 0;
    p_dta->p_vol = ent.p_vol;
    p_dta->attr = attr;
    p_dta->status = 0;
    if (VFiPFSTR_GetCodeMode(&sPattern) == 1) {
        VFiPFPATH_SetSearchPattern(p_dta->reg_exp, PF_NULL, &sPattern);
        p_dta->status |= 1;
    } else {
        VFiPFPATH_SetSearchPattern(p_dta->reg_exp, ((PF_DTAW*)p_dta)->reg_expW, &sPattern);
        p_dta->status |= 2;
    }

    return VFiPFDIR_p_fsnext(p_dta);
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

pf_s32 VFiPFDIR_fsfirst(PF_STR* p_path_str, pf_u8 attr, PF_DTA* p_dta) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 0xA;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == 0) {
        return VFipf_vol_set.last_error = 9;
    }
    if (p_dta == PF_NULL) {
        return p_vol->last_error = VFipf_vol_set.last_error = 0xA;
    }
    if ((attr != 0x7F) && (((attr & 0xFFFFFF00) != 0) || ((attr & 0x18) == 0x18))) {
        return p_vol->last_error = VFipf_vol_set.last_error = 0xA;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;

        return err;
    }
    err = VFiPFDIR_p_fsfirst(p_vol, p_path_str, attr, p_dta);
    if (err != 0) {
        p_dta->p_vol = PF_NULL;
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
    }

    return err;
}

pf_s32 VFiPFDIR_fsnext(PF_DTA* p_dta) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_dta == PF_NULL) {
        return VFipf_vol_set.last_error = 0xA;
    }
    p_vol = p_dta->p_vol;
    if (p_vol == 0) {
        return VFipf_vol_set.last_error = 0xA;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;

        return err;
    }
    err = VFiPFDIR_p_fsnext(p_dta);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
    }

    return err;
}

pf_s32 VFiPFDIR_rmdir(PF_STR* p_path_str) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 0xA;
    }
    if (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\0", 1U, 0, 1U) == 0) {
        return VFipf_vol_set.last_error = 0xA;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == 0) {
        return VFipf_vol_set.last_error = 9;
    }
    err = VFiPFVOL_CheckForWrite(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;

        return err;
    }
    p_vol->cache.signature = PF_NULL;
    err = VFiPFDIR_p_rmdir(p_vol, p_path_str);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
    } else {
        err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, PF_NULL);
        if (err != 0) {
            VFipf_vol_set.last_error = err;
            p_vol->last_error = err;
        } else {
            err = VFiPFCACHE_FlushFATCache(p_vol);
            if (err != 0) {
                VFipf_vol_set.last_error = err;
                p_vol->last_error = err;
            }
        }
    }
    p_vol->cache.signature = PF_NULL;

    return err;
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

pf_s32 VFiPFDIR_chdir(PF_STR* p_path_str) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    if (p_path_str == PF_NULL) {
        return VFipf_vol_set.last_error = 0xA;
    }
    if (VFiPFSTR_StrNCmp(p_path_str, (pf_s8*)"\0", 1U, 0, 1U) == 0) {
        return VFipf_vol_set.last_error = 0xA;
    }
    p_vol = VFiPFPATH_GetVolumeFromPath(p_path_str);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 9;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
        return err;
    }
    err = VFiPFDIR_p_chdir(p_vol, p_path_str);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
    } else {
        VFiPFVOL_SetCurrentVolume(p_vol);
    }
    return err;
}
