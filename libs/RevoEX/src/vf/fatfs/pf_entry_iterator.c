#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

static pf_s32 VFiPFENT_ITER_RecalcEntryIterator(PF_ENT_ITER* p_iter, pf_u32 may_allocate) {
    pf_s32 err;
    pf_u32 file_sector_index;
    pf_u32 is_initialize;

    err = 0;
    file_sector_index = p_iter->index >> p_iter->log2_entries_per_sector;
    is_initialize = p_iter->file_sector_index;
    if (file_sector_index != p_iter->file_sector_index) {
        p_iter->file_sector_index = file_sector_index;
        err = VFiPFFAT_GetSectorSpecified(&p_iter->ffd, file_sector_index, 0U, &p_iter->sector);
        if ((err == 0) && (p_iter->sector == -1U) && (may_allocate != 0)) {
            err = VFiPFFAT_GetSectorSpecified(&p_iter->ffd, file_sector_index, 1U, &p_iter->sector);
            if ((err == 0) && (p_iter->sector != -1U) && is_initialize != -1U) {
                err = VFiPFENT_FillVoidEntryToSectors(p_iter->p_vol, p_iter->sector, p_iter->p_vol->bpb.sectors_per_cluster, 0U, PF_NULL, PF_NULL);
            }
        }
    }
    if (err == 0) {
        p_iter->offset = (p_iter->index & p_iter->offset_mask) * 0x20;
    }
    return err;
}

static pf_s32 VFiPFENT_ITER_DoMoveTo(PF_ENT_ITER* p_iter, pf_u32 index, pf_u32 may_allocate) {
    pf_u32 prev_index = p_iter->index;
    pf_s32 err;

    p_iter->index = index;
    err = VFiPFENT_ITER_RecalcEntryIterator(p_iter, may_allocate);
    if (err != 0) {
        p_iter->index = prev_index;
        VFiPFENT_ITER_RecalcEntryIterator(p_iter, 0U);
        return err;
    }
    err = VFiPFENT_ITER_LoadEntry(p_iter);
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_bool VFiPFENT_ITER_IsAtPhysicalEnd(PF_ENT_ITER* p_iter) {
    if (p_iter->sector == -1) {
        return PF_TRUE;
    }
    return PF_FALSE;
}

static void VFiPFENT_ITER_MakeLongFileName(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent) {
    pf_s32 lengthName;
    signed char filename[13];

    lengthName = 0;
    VFiPFPATH_getLongNameformShortName(p_ent->short_name, filename, p_iter->buf[0xC]);
    lengthName = VFiPFPATH_transformInUnicode(p_ent->long_name, filename);
    p_ent->num_entry_LFNs = ((lengthName % 13) ? 1 : 0) + (lengthName / 13);
    p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
    p_ent->ordinal = 1;
}

static pf_s32 VFiPFENT_ITER_GetEntry(PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter, PF_STR* p_pattern, pf_u8 attr_required, pf_u32* p_lpos,
                                     pf_u32 is_reverse) {
    pf_s32 err;
    pf_s32 is_match;
    pf_u32 is_valid;
    pf_u8 attr;

    is_match = 1;
    is_valid = 1;
    attr = p_iter->buf[0xB];
    if ((attr & 0xF) == 0xF) {
        is_match = 1;
    } else {
        is_valid = VFiPFENT_CompareAttr(attr, (pf_u8)attr_required);
        if (is_valid == 0) {
            is_match = 1;
        } else {
            if ((attr & 8) != 0) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
            }
            VFiPFENT_LoadShortNameFromBuf(p_ent, p_iter->buf);
            if ((p_ent->num_entry_LFNs != 0) && (p_ent->check_sum != VFiPFENT_CalcCheckSum(p_ent))) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
            }
            if (((VFipf_vol_set.setting & 2) == 2) && (p_ent->num_entry_LFNs == 0) && ((p_iter->buf[0xC] & 0x18) != 0)) {
                VFiPFENT_ITER_MakeLongFileName(p_iter, p_ent);
            }
            is_match = VFiPFENT_compareEntryName(p_ent, p_pattern, attr);
            if ((is_match == 1) && (p_lpos != PF_NULL)) {
                *p_lpos += 1;
            }
        }
    }
    if (is_match == 1) {
        if ((attr & 0xF) == 0xF) {
            err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf, is_reverse);
            if (err != 0) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
            }
        } else {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
        }
        err = -1;
    } else {
        if (((VFipf_vol_set.setting & 2) != 2) && (p_ent->num_entry_LFNs == 0) && ((p_iter->buf[0xC] & 0x18) != 0)) {
            VFiPFENT_ITER_MakeLongFileName(p_iter, p_ent);
        }
        VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
        p_ent->entry_sector = p_iter->sector;
        p_ent->entry_offset = p_iter->offset;
        if (((p_ent->attr & 0x10) != 0) && (p_ent->start_cluster == 0)) {
            p_ent->start_cluster = 1;
        }
        err = 0;
    }
    return err;
}

static pf_s32 VFiPFENT_ITER_DoFindEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr_required, pf_u32* p_is_found,
                                        pf_u32* p_ppos, pf_u32* p_lpos, pf_u32 is_skip) {
    pf_s32 err;
    pf_u32 index_search_from;
    pf_u32 is_extsfn;

    err = 0;
    *p_is_found = 0;
    if (p_ppos != PF_NULL) {
        *p_ppos = 0xF423F;
    }
    if (p_lpos != PF_NULL) {
        *p_lpos = 0xF423F;
    }
    is_extsfn = 0;

    if ((*p_iter->ffd.p_start_cluster == (p_iter->ffd.p_vol->bpb.fat_type == FAT_32 ? p_iter->ffd.p_vol->bpb.root_dir_cluster : 1)) &&
        ((VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"..\\", 1U, 0, 3U) == 0) || (VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"../", 1U, 0, 3U) == 0) ||
         (VFiPFSTR_StrCmp(p_pattern, (pf_s8*)"..") == 0))) {
        return 2;
    }
    if ((VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)".\\", 1U, 0, 2U) == 0) || (VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"./", 1U, 0, 2U) == 0) ||
        (VFiPFSTR_StrCmp(p_pattern, (pf_s8*)".") == 0)) {
        if (VFiPFENT_CompareAttr(0x10U, attr_required & 0xFF) != 0) {
            if ((is_skip == 0) &&
                ((*p_iter->ffd.p_start_cluster == 1) ||
                 ((p_iter->ffd.p_vol->bpb.fat_type == FAT_32) && (*p_iter->ffd.p_start_cluster == p_iter->ffd.p_vol->bpb.root_dir_cluster)))) {
                err = VFiPFENT_GetRootDir(p_iter->p_vol, p_ent);
                if (err != 0) {
                    return err;
                }
                is_skip = 1;
            }
            if (is_skip != 0) {
                if (p_ppos != PF_NULL) {
                    *p_ppos = 0;
                }
                if (p_lpos != PF_NULL) {
                    *p_lpos = 0;
                }
                *p_is_found = 1;

                return 0;
            }
        } else {
            return 0;
        }
    }
    p_ent->num_entry_LFNs = 0;
    p_ent->ordinal = 0;
    p_ent->check_sum = 0;
    p_ent->long_name[0] = 0;
    if ((VFipf_vol_set.setting & 2) == 2) {
        is_extsfn = VFiPFPATH_GetExtShortNameIndex(p_pattern, &index_search_from);
    }
    if (is_extsfn != 0) {
        for (err = VFiPFENT_ITER_IteratorInitialize(p_iter, index_search_from - 1);; err = VFiPFENT_ITER_Retreat(p_iter, 0U)) {
            if (err != 0) {
                return err;
            }
            if (VFiPFENT_ITER_GetEntry(p_ent, p_iter, p_pattern, attr_required, p_lpos, 1U) == 0) {
                return 3;
            }
            if ((p_iter->buf[0] & 0x40) != 0) {
                err = VFiPFENT_ITER_IteratorInitialize(p_iter, index_search_from);
                if (err != 0) {
                    return err;
                }
                if (VFiPFENT_ITER_GetEntry(p_ent, p_iter, p_pattern, attr_required, p_lpos, 1U) == 0) {
                    p_ent->p_vol = p_iter->ffd.p_vol;
                    if (p_ppos != PF_NULL) {
                        *p_ppos = p_iter->index;
                    }
                    *p_is_found = 1;

                    return 0;
                }

                return 3;
            }
        }
    }
    for (; VFiPFENT_ITER_IsAtLogicalEnd(p_iter) == PF_FALSE; err = VFiPFENT_ITER_Advance(p_iter, PF_FALSE)) {
        if (err != 0) {
            return err;
        }
        if (p_iter->buf[0] == 0) {
            break;
        }
        if (p_iter->buf[0] == 0xE5) {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
        } else if (VFiPFENT_ITER_GetEntry(p_ent, p_iter, p_pattern, attr_required, p_lpos, 0U) == 0) {
            p_ent->p_vol = p_iter->ffd.p_vol;
            if (p_ppos != PF_NULL) {
                *p_ppos = p_iter->index;
            }
            *p_is_found = 1;

            return 0;
        }
    }
    return 0;
}

// I'm tired
static pf_s32 VFiPFENT_ITER_DoAllocateEntry(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_prev_chain, PF_STR* p_filename,
                                            pf_u8 attr_required, pf_u32* p_pos) {
    pf_s32 err;
    pf_u32 is_found;
    PF_DIR_ENT wk_ent;
    pf_u32 wk_sector;
    pf_u16 wk_offset;
    pf_u32 current_sector;
    pf_u32 prev_sector0;
    pf_u32 prev_sector1;
    pf_u32 num_free_entries;
    pf_u32 sector;
    PF_ENT_ITER iter;

    is_found = 0;
    wk_sector = -1U;
    wk_offset = 0;
    current_sector = -1U;
    prev_sector0 = -1U;
    prev_sector1 = -1U;
    num_free_entries = 0;
    if (p_pos != PF_NULL) {
        *p_pos = 0xF423F;
    }
    p_prev_chain[0] = p_prev_chain[1] = -1U;
    iter.ffd = *p_ffd;
    err = VFiPFENT_ITER_IteratorInitialize(&iter, 0U);
loop_3:
    if (err != 0) {
        if (err != 0x10) {
            return err;
        }
        goto block_33;
    }
    if (is_found == 0) {
        if (num_free_entries == 0) {
            current_sector = iter.sector;
        }
        if ((iter.buf[0] == 0) || (iter.buf[0] == 0xE5)) {
            if (current_sector != iter.sector) {
                prev_sector1 = prev_sector0;
                prev_sector0 = current_sector;
                current_sector = iter.sector;
            }
            num_free_entries += 1;
            if (num_free_entries >= num_entries) {
                if (p_pos != PF_NULL) {
                    *p_pos = iter.index;
                }
                wk_sector = iter.sector;
                wk_offset = iter.offset;
                is_found = 1;
            }
        } else {
            num_free_entries = 0;
            prev_sector0 = -1U;
            prev_sector1 = -1U;
        }
    }
    if (p_filename != PF_NULL) {
        if ((is_found == 0) || (iter.buf[0] != 0)) {
            if ((iter.buf[0] != 0) && (iter.buf[0] != 0xE5) &&
                (VFiPFENT_ITER_GetEntry(&wk_ent, &iter, p_filename, attr_required, PF_NULL, 0U) == 0)) {
                *p_ent = wk_ent;
                p_ent->p_vol = p_ffd->p_vol;

                return 8;
            }
            if ((is_found != 0) && ((iter.offset + 0x20) == p_ffd->p_vol->bpb.bytes_per_sector)) {
                err = VFiPFFAT_GetSectorSpecified(p_ffd, iter.file_sector_index + 1, 0U, &sector);
                if (err != 0) {
                    return err;
                }
                if (sector == -1U) {
                    goto block_33;
                }
                goto block_32;
            }
            goto block_32;
        }
        goto block_33;
    }
    if (is_found == 0) {
    block_32:
        err = VFiPFENT_ITER_Advance(&iter, 1U);
        goto loop_3;
    }
block_33:
    if (is_found == 0) {
        return 5;
    }
    p_prev_chain[0] = prev_sector0;
    p_prev_chain[1] = prev_sector1;
    p_ent->entry_sector = wk_sector;
    p_ent->entry_offset = wk_offset;

    return 0;
}

static pf_s32 VFiPFENT_ITER_DoGetEntryOfPath(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path, pf_u32 wildcard,
                                             pf_u32 is_parent) {
    pf_s32 err;
    signed char* p;
    PF_STR token;
    pf_u32 is_found;
    PF_FAT_HINT hint;
    pf_u32 code_mode;
    pf_u32 ppos;
    pf_u32 lpos;
    pf_u32 start_cluster;
    pf_u32 name_len;
    PF_DIR_ENT current_ent;

    if (VFiPFSTR_StrNCmp(p_path, (pf_s8*)":", 1U, 1, 1U) == 0) {
        VFiPFSTR_MoveStrPos(p_path, 2);
    }
    if ((VFiPFSTR_StrNCmp(p_path, (pf_s8*)"\\", 1U, 0, 1U) == 0) || (VFiPFSTR_StrNCmp(p_path, (pf_s8*)"/", 1U, 0, 1U) == 0)) {
        err = VFiPFENT_GetRootDir(p_vol, p_ent);
        if (err != 0) {
            return err;
        }
        if ((VFiPFSTR_StrNumChar(p_path, 1U) == 1) && (VFiPFSTR_StrNCmp(p_path, (pf_s8*)"\0", 2U, 0, 1U) == 0)) {
            return 0;
        }
        goto block_11;
    }
    err = VFiPFVOL_GetCurrentDir(p_vol, p_ent);
    if (err != 0) {
        return err;
    }
block_11:
    p = VFiPFSTR_GetStrPos(p_path, 1U);
    VFiPFFAT_InitFFD(&p_iter->ffd, &hint, p_vol, &p_iter->ffd.start_cluster);
    p_iter->ffd.start_cluster = p_ent->start_cluster;
    code_mode = VFiPFSTR_GetCodeMode(p_path);
    VFiPFPATH_InitTokenOfPath(&token, p, code_mode);

    for (err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard); token.p_head != 0; err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard)) {
        if (err != 0) {
            return err;
        }
        if ((is_parent != 0) && (VFiPFSTR_StrNCmp(&token, (pf_s8*)"\0", 2U, 0, 1U) == 0)) {
            break;
        }

        if ((p_ent->attr & 0x10) == 0) {
            return 2;
        }
        if (VFiPFSTR_StrLen(&token) == 0) {
            return 2;
        }
        p_iter->ffd.start_cluster = p_ent->start_cluster;
        VFiPFFAT_ResetFFD(&p_iter->ffd, &p_iter->ffd.start_cluster);
        err = VFiPFENT_ITER_IteratorInitialize(p_iter, 0U);
        if (err != 0) {
            return err;
        }
        start_cluster = *p_iter->ffd.p_start_cluster;
        name_len = 0;
        if (((VFiPFSTR_StrNCmp(&token, (pf_s8*)"..\\", 1U, 0, 3U) == 0) || (VFiPFSTR_StrNCmp(&token, (pf_s8*)"../", 1U, 0, 3U) == 0) ||
             (VFiPFSTR_StrCmp(&token, (pf_s8*)"..") == 0)) &&
            (VFipf_strcmp(p_ent->short_name, (pf_s8*)"..") != 0)) {
            if (p_ent->num_entry_LFNs != 0) {
                name_len = VFiPFPATH_GetLengthFromUnicode(p_ent->long_name) + 1;
            } else {
                name_len = VFiPFPATH_GetLengthFromShortname(p_ent->short_name) + 1;
            }
        }
        err = VFiPFENT_ITER_DoFindEntry(p_iter, p_ent, &token, 0x77U, &is_found, &ppos, &lpos, 1U);
        if (err != 0) {
            return err;
        }
        if (is_found == 0) {
            if (VFiPFSTR_StrNumChar(&token, 2U) != 0) {
                err = 2;
            } else {
                err = 3;
            }

            return err;
        }
        if (wildcard == 0) {
            if (((p_ent->attr & 0x10) != 0) && (p_ent->start_cluster == 1)) {
                p_ent->path_len = 3;
                continue;
            }
            if (((p_ent->attr & 0x10) != 0) && (VFipf_strcmp(p_ent->short_name, (pf_s8*)"..") == 0)) {
                if (name_len != 0) {
                    p_ent->path_len -= name_len;
                    continue;
                }
                current_ent.start_cluster = p_ent->start_cluster;
                VFiPFFAT_ResetFFD(&p_iter->ffd, &current_ent.start_cluster);
                err = VFiPFENT_ITER_IteratorInitialize(p_iter, 0U);
                if (err != 0) {
                    return err;
                }
                err = VFiPFENT_ITER_FindCluster(p_iter, &current_ent, start_cluster, &is_found);
                if (err != 0) {
                    return err;
                }
                if (is_found == 0) {
                    return 2;
                }
                if (current_ent.num_entry_LFNs != 0) {
                    p_ent->path_len -= VFiPFPATH_GetLengthFromUnicode(current_ent.long_name) + 1;
                } else {
                    p_ent->path_len -= VFiPFPATH_GetLengthFromShortname(&current_ent.short_name[0]) + 1;
                }
                continue;
            }
            if (((p_ent->attr & 0x10) == 0) || (p_ent->short_name[0] != 0x2E)) {
                p_ent->path_len += VFiPFSTR_StrNumChar(&token, 1U) + 1;
                if (VFiPFSTR_StrNCmp(&token, (pf_s8*)"\0", 2U, 0, 1U) != 0) {
                    p_ent->path_len -= VFiPFSTR_StrNumChar(&token, 2U);
                }
            }
            continue;
        }
    }

    return 0;
}

pf_s32 VFiPFENT_ITER_IteratorInitialize(PF_ENT_ITER* p_iter, pf_u32 index_start_from) {
    pf_s32 err;

    p_iter->p_vol = p_iter->ffd.p_vol;
    if (p_iter->p_vol == PF_NULL) {
        return 10;
    }
    p_iter->log2_entries_per_sector = p_iter->p_vol->bpb.log2_bytes_per_sector - 5;
    p_iter->offset_mask = (1 << p_iter->log2_entries_per_sector) - 1;
    p_iter->file_sector_index = -1;
    err = VFiPFENT_ITER_DoMoveTo(p_iter, index_start_from, 0U);
    return err;
}

pf_s32 VFiPFENT_ITER_LoadEntry(PF_ENT_ITER* p_iter) {
    pf_u32 success_size;
    pf_s32 err;

    p_iter = p_iter;
    if (p_iter->sector == -1) {
        return 16;
    }
    err = VFiPFSEC_ReadData(p_iter->p_vol, p_iter->buf, p_iter->sector, p_iter->offset, 0x20U, &success_size, 0U);
    if (success_size != 0x20) {
        return 17;
    }
    return err;
}

static pf_s32 VFiPFENT_ITER_DoGetEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path, pf_bool wildcard,
                                       pf_bool no_look_last_token) {
    pf_s8* p;
    PF_STR token;
    pf_bool is_found;
    PF_FAT_HINT hint;
    pf_u32 start_cluster;
    pf_u32 name_len;
    PF_DIR_ENT current_ent;
    pf_s32 err;
    pf_u32 code_mode;

    if (VFiPFSTR_StrNCmp(p_path, (pf_s8*)":", 1, 1, 1) == 0) {
        VFiPFSTR_MoveStrPos(p_path, 2);
    }
    if (PF_IS_PATH_SEPERATOR(p_path, 1, 0)) {
        err = VFiPFENT_GetRootDir(p_vol, p_ent);
        if (err != 0) {
            return err;
        }
        if (VFiPFSTR_StrNumChar(p_path, 1) == 1 && PF_IS_PATH_NULL(p_path, 2, 0)) {
            return 0;
        }
    } else {
        err = VFiPFVOL_GetCurrentDir(p_vol, p_ent);
        if (err != 0) {
            return err;
        }
    }
    p = VFiPFSTR_GetStrPos(p_path, 1);
    VFiPFFAT_InitFFD(&p_iter->ffd, &hint, p_vol, &p_iter->ffd.start_cluster);
    p_iter->ffd.start_cluster = p_ent->start_cluster;
    code_mode = VFiPFSTR_GetCodeMode(p_path);
    VFiPFPATH_InitTokenOfPath(&token, p, code_mode);

    for (err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard); token.p_head != 0; err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard)) {
        if (err != 0) {
            return err;
        }
        if (no_look_last_token != 0 && PF_IS_PATH_NULL(&token, 2, 0)) {
            break;
        }

        if ((p_ent->attr & 0x10) == 0) {
            return 2;
        }
        if (VFiPFSTR_StrLen(&token) == 0) {
            return 2;
        }
        p_iter->ffd.start_cluster = p_ent->start_cluster;
        VFiPFFAT_ResetFFD(&p_iter->ffd, &p_iter->ffd.start_cluster);
        err = VFiPFENT_ITER_IteratorInitialize(p_iter, 0);
        if (err != 0) {
            return err;
        }
        start_cluster = *p_iter->ffd.p_start_cluster;
        name_len = 0;
        if ((VFiPFSTR_StrNCmp(&token, (pf_s8*)"..\\", 1, 0, 3) == 0 || VFiPFSTR_StrNCmp(&token, (pf_s8*)"../", 1, 0, 3) == 0 ||
             VFiPFSTR_StrCmp(&token, (pf_s8*)"..") == 0) &&
            VFipf_strcmp(p_ent->short_name, (pf_s8*)"..") != 0) {
            if (p_ent->num_entry_LFNs != 0) {
                name_len = VFiPFPATH_GetLengthFromUnicode(p_ent->long_name) + 1;
            } else {
                name_len = VFiPFPATH_GetLengthFromShortname(p_ent->short_name) + 1;
            }
        }
        // err = VFiPFENT_ITER_DoFindEntry(p_iter, p_ent, &token, 0x7F, 0, &is_found, PF_TRUE);
        if (err != 0) {
            return err;
        }
        if (!is_found) {
            err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard);
            if (err != 0) {
                return err;
            }
            if (token.p_head) {
                return 2;
            }
            return 3;
        }
        if (!wildcard) {
            if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 1) {
                p_ent->path_len = 3;
                continue;
            }
            if ((p_ent->attr & 0x10) != 0 && VFipf_strcmp(p_ent->short_name, (pf_s8*)"..") == 0) {
                if (name_len != 0) {
                    p_ent->path_len -= name_len;
                    continue;
                }
                current_ent.start_cluster = p_ent->start_cluster;
                VFiPFFAT_ResetFFD(&p_iter->ffd, &current_ent.start_cluster);
                err = VFiPFENT_ITER_IteratorInitialize(p_iter, 0);
                if (err != 0) {
                    return err;
                }
                err = VFiPFENT_ITER_FindCluster(p_iter, &current_ent, start_cluster, &is_found);
                if (err != 0) {
                    return err;
                }
                if (is_found == 0) {
                    return 2;
                }
                if (current_ent.num_entry_LFNs != 0) {
                    p_ent->path_len -= VFiPFPATH_GetLengthFromUnicode(current_ent.long_name) + 1;
                } else {
                    p_ent->path_len -= VFiPFPATH_GetLengthFromShortname(&current_ent.short_name[0]) + 1;
                }
                continue;
            }
            if ((p_ent->attr & 0x10) == 0 || p_ent->short_name[0] != '.') {
                p_ent->path_len = (VFiPFSTR_StrNumChar(&token, 1) + 1) + p_ent->path_len;
                if (PF_IS_PATH_NOT_NULL(&token, 2, 0)) {
                    p_ent->path_len -= VFiPFSTR_StrNumChar(&token, 2);
                }
            }
            continue;
        }
    }

    return 0;
}

pf_bool VFiPFENT_ITER_IsAtLogicalEnd(PF_ENT_ITER* p_iter) {
    pf_s32 err;
    pf_u32 save_index;
    pf_u32 save_fsindex;

    if (VFiPFENT_ITER_IsAtPhysicalEnd(p_iter) != 0 || p_iter->buf[0] == 0 || p_iter->index >= (1000000 - 1)) {
        save_index = p_iter->index;
        save_fsindex = p_iter->file_sector_index;
        p_iter->index = (p_iter->file_sector_index + 1) << p_iter->log2_entries_per_sector;
        err = VFiPFENT_ITER_RecalcEntryIterator(p_iter, PF_FALSE);
        if (err != 0) {
            p_iter->index = save_index;
            p_iter->file_sector_index = save_fsindex;
            return PF_TRUE;
        }
        if (p_iter->sector != -1) {
            err = VFiPFENT_ITER_LoadEntry(p_iter);
            if (err != 0) {
                return PF_TRUE;
            }
            return PF_FALSE;
        }
        return PF_TRUE;
    }
    return PF_FALSE;
}

pf_s32 VFiPFENT_ITER_MoveTo(PF_ENT_ITER* p_iter, pf_u32 index, pf_u32 may_allocate) {
    pf_s32 err;

    if (p_iter->index != index || VFiPFENT_ITER_IsAtPhysicalEnd(p_iter) == PF_FALSE || may_allocate == PF_FALSE) {
        err = VFiPFENT_ITER_DoMoveTo(p_iter, index, may_allocate);
        if (err != 0) {
            return err;
        }
    }
    return 0;
}

pf_s32 VFiPFENT_ITER_Advance(PF_ENT_ITER* p_iter, pf_u32 may_allocate) {
    return VFiPFENT_ITER_MoveTo(p_iter, p_iter->index + 1, may_allocate);
}

pf_s32 VFiPFENT_ITER_Retreat(PF_ENT_ITER* p_iter, pf_u32 may_allocate) {
    pf_u32 before_cluster;
    pf_u32 cur_cluster;
    pf_s32 err;

    if (p_iter == PF_NULL) {
        return 10;
    }
    if (p_iter->index == 0) {
        return 0;
    }
    if (p_iter->file_sector_index != ((p_iter->index - 1) >> p_iter->log2_entries_per_sector)) {
        cur_cluster = ((p_iter->sector - p_iter->p_vol->bpb.first_data_sector) >> p_iter->p_vol->bpb.log2_sectors_per_cluster) + 2;
        if ((p_iter->file_sector_index % p_iter->p_vol->bpb.sectors_per_cluster) == 0 || p_iter->p_vol->bpb.sectors_per_cluster == 1) {
            if (p_iter->p_vol->bpb.fat_type == FAT_32 ||
                (*p_iter->ffd.p_start_cluster > 1 && p_iter->p_vol->bpb.first_data_sector <= p_iter->sector)) {
                err = VFiPFFAT_GetBeforeChain(p_iter->p_vol, cur_cluster, cur_cluster, &before_cluster);
                if (err != 0) {
                    return err;
                }
                if (before_cluster == -1) {
                    return 14;
                }
            } else {
                before_cluster = *p_iter->ffd.p_start_cluster;
            }
        } else {
            before_cluster = cur_cluster;
        }
        p_iter->index--;
        p_iter->file_sector_index--;
        if (p_iter->p_vol->bpb.fat_type == FAT_32 || *p_iter->ffd.p_start_cluster > 1 && p_iter->p_vol->bpb.first_data_sector <= p_iter->sector) {
            p_iter->sector = (p_iter->p_vol->bpb.first_data_sector + ((before_cluster - 2) << p_iter->p_vol->bpb.log2_sectors_per_cluster)) +
                             (p_iter->file_sector_index & (p_iter->p_vol->bpb.sectors_per_cluster - 1));
        } else {
            p_iter->sector--;
        }
        p_iter->offset = (p_iter->index & p_iter->offset_mask) * 0x20;
        return VFiPFENT_ITER_MoveTo(p_iter, p_iter->index, may_allocate);
    }
    return VFiPFENT_ITER_MoveTo(p_iter, p_iter->index - 1, may_allocate);
}

pf_s32 VFiPFENT_ITER_FindEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr_required, pf_u32* p_is_found, pf_u32* p_ppos,
                               pf_u32* p_lpos, pf_bool is_skip) {
    pf_s32 err;

    if (p_ppos != PF_NULL) {
        *p_ppos = 0xF423F;
    }
    if (p_lpos != PF_NULL) {
        *p_lpos = 0xF423F;
    }
    if (p_ent == PF_NULL || p_is_found == PF_NULL) {
        return 10;
    }
    if (p_pattern->p_head == PF_NULL) {
        return 10;
    }
    if (VFiPFSTR_StrLen(p_pattern) == 0) {
        return 10;
    }
    *p_is_found = 0;
    err = VFiPFENT_ITER_DoFindEntry(p_iter, p_ent, p_pattern, attr_required, p_is_found, p_ppos, p_lpos, is_skip);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFENT_ITER_AllocateEntry(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_prev_chain, PF_STR* p_filename, pf_u8 attr_required,
                                   pf_u32* p_pos) {
    pf_s32 err;

    if (p_pos != PF_NULL) {
        *p_pos = 0xF423F;
    }
    if ((p_ffd == PF_NULL) || (p_ffd->p_vol == PF_NULL)) {
        return 0xA;
    }
    if ((p_filename != PF_NULL) && p_filename->p_head == PF_NULL) {
        return 0xA;
    }
    if ((num_entries == 0) || (num_entries > 0x15U)) {
        return 0xA;
    }
    if ((p_filename != PF_NULL) && ((VFipf_vol_set.setting & 2) == 2) && (VFiPFPATH_CheckExtShortNameSignature(p_filename) != 0)) {
        return 1;
    }
    err = VFiPFENT_ITER_DoAllocateEntry(p_ent, num_entries, p_ffd, p_prev_chain, p_filename, attr_required, p_pos);

    return err;
}

pf_s32 VFiPFENT_ITER_GetEntryOfPath(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path, pf_u32 no_look_last_token) {
    if (p_iter == PF_NULL || p_ent == PF_NULL || p_vol == PF_NULL) {
        return 10;
    }
    if (p_path->p_head == PF_NULL) {
        return 10;
    }
    if (VFiPFSTR_StrLen(p_path) == 0) {
        return 10;
    }
    return VFiPFENT_ITER_DoGetEntryOfPath(p_iter, p_ent, p_vol, p_path, PF_FALSE, no_look_last_token);
}

pf_s32 VFiPFENT_ITER_GetEntryOfPattern(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path) {
    if ((p_iter == PF_NULL) || (p_ent == PF_NULL) || (p_vol == PF_NULL)) {
        return 0xA;
    }
    if (p_path->p_head == PF_NULL) {
        return 0xA;
    }
    if (VFiPFSTR_StrLen(p_path) == 0) {
        return 0xA;
    }

    return VFiPFENT_ITER_DoGetEntryOfPath(p_iter, p_ent, p_vol, p_path, 1U, 1U);
}

pf_s32 VFiPFENT_ITER_FindCluster(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, pf_u32 cluster, pf_bool* p_is_found) {
    pf_u8 attr;
    pf_s32 err = 0;
    pf_s8 filename[13];

    if (p_iter == PF_NULL || p_ent == PF_NULL) {
        return 10;
    }
    *p_is_found = PF_FALSE;
    p_ent->num_entry_LFNs = 0;
    p_ent->ordinal = 0;
    p_ent->check_sum = 0;
    for (; VFiPFENT_ITER_IsAtLogicalEnd(p_iter) == PF_FALSE; err = VFiPFENT_ITER_Advance(p_iter, PF_FALSE)) {
        if (err != 0) {
            return err;
        }
        if (p_iter->buf[0] == 0xE5) {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
            continue;
        }
        attr = p_iter->buf[0xB];
        if ((attr & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08)) {
            err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf, 0);
            if (err != 0) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
            }
            continue;
        }
        if ((attr & 0x08) != 0) {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
            continue;
        }
        if ((attr & 0x10) == 0) {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
            continue;
        }
        if (cluster != ((PF_SWAP_16(*(pf_u16*)&p_iter->buf[0x14]) << 16) | PF_SWAP_16(*(pf_u16*)&p_iter->buf[0x1A]))) {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
            continue;
        }
        *p_is_found = PF_TRUE;
        VFiPFENT_LoadShortNameFromBuf(p_ent, p_iter->buf);
        if (p_ent->num_entry_LFNs != 0 && p_ent->ordinal == 1 && p_ent->check_sum == VFiPFENT_CalcCheckSum(p_ent)) {
            VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
            p_ent->entry_sector = p_iter->sector;
            p_ent->entry_offset = p_iter->offset;
            p_ent->p_vol = p_iter->ffd.p_vol;
            if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster != cluster) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
                continue;
            }
            if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 0) {
                p_ent->start_cluster = 1;
            }
        }
        if ((p_iter->buf[0xC] & (0x10 | 0x08)) != 0) {
            VFiPFENT_ITER_MakeLongFileName(p_iter, p_ent);
        }
        VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
        p_ent->entry_sector = p_iter->sector;
        p_ent->entry_offset = p_iter->offset;
        p_ent->p_vol = p_iter->ffd.p_vol;

        return 0;
    }

    return 0;
}
