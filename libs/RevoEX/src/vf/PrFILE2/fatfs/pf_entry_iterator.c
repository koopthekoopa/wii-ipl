#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

static pf_s32 VFiPFENT_RecalcEntryIterator(PF_ENT_ITER* p_iter, pf_u32 may_allocate) {
    pf_s32 err;
    pf_u32 file_sector_index = p_iter->index >> p_iter->log2_entries_per_sector;
    PF_CACHE_PAGE* p_page;
    pf_u32 num_sectors;
    pf_u32 success_size;
    pf_u32 is_initialize = p_iter->file_sector_index;

    if (file_sector_index != p_iter->file_sector_index) {
        p_iter->file_sector_index = file_sector_index;
        err = VFiPFFAT_GetSectorSpecified(&p_iter->ffd, file_sector_index, PF_FALSE, &p_iter->sector);
        if (err != 0) {
            return err;
        }
        if (p_iter->sector == -1 && may_allocate) {
            err = VFiPFFAT_GetSectorSpecified(&p_iter->ffd, file_sector_index, PF_TRUE, &p_iter->sector);
            if (err != 0) {
                return err;
            }
            if (p_iter->sector != -1 && is_initialize != -1) {
                err = VFiPFCACHE_AllocateDataPage(p_iter->p_vol, -1, &p_page);
                if (err != 0) {
                    return err;
                }
                VFipf_memset(p_page->p_buf, 0, p_iter->p_vol->bpb.bytes_per_sector);

                for (num_sectors = 0; num_sectors < p_iter->p_vol->bpb.sectors_per_cluster; num_sectors++) {
                    err = VFiPFSEC_WriteData(p_iter->p_vol, p_page->p_buf, p_iter->sector + num_sectors, 0, p_iter->p_vol->bpb.bytes_per_sector,
                                             &success_size, PF_FALSE);
                    if (err != 0) {
                        VFiPFCACHE_FreeDataPage(p_iter->p_vol, p_page);
                        return err;
                    }
                    if (success_size != p_iter->p_vol->bpb.bytes_per_sector) {
                        VFiPFCACHE_FreeDataPage(p_iter->p_vol, p_page);
                        return 17;
                    }
                }
                VFiPFCACHE_FreeDataPage(p_iter->p_vol, p_page);
            }
        }
    }
    p_iter->offset = (p_iter->index & p_iter->offset_mask) * 0x20;
    return 0;
}

static pf_s32 VFiPFENT_ITER_LoadEntry(PF_ENT_ITER* p_iter) {
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

static pf_s32 VFiPFENT_ITER_DoMoveTo(PF_ENT_ITER* p_iter, pf_u32 index, pf_u32 may_allocate) {
    pf_u32 prev_index = p_iter->index;
    pf_s32 err;

    p_iter->index = index;
    err = VFiPFENT_RecalcEntryIterator(p_iter, may_allocate);
    if (err != 0) {
        p_iter->index = prev_index;
        VFiPFENT_RecalcEntryIterator(p_iter, 0U);
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

static pf_s32 VFiPFENT_ITER_FindCluster(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, pf_u32 cluster, pf_bool* p_is_found) {
    pf_u8 attr;
    pf_s32 err = 0;
    pf_s32 lengthName = 0;
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
            err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf);
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
            VFiPFPATH_getLongNameformShortName(p_ent->short_name, (pf_s8*)&filename, p_iter->buf[0xC]);
            lengthName = VFiPFPATH_transformInUnicode(p_ent->long_name, (pf_s8*)&filename);
            p_ent->num_entry_LFNs = (lengthName / 13) + (lengthName % 13 ? 1 : 0);
            p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
            p_ent->ordinal = 1;
        }
        VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
        p_ent->entry_sector = p_iter->sector;
        p_ent->entry_offset = p_iter->offset;
        p_ent->p_vol = p_iter->ffd.p_vol;

        return 0;
    }

    return 0;
}

static pf_s32 VFiPFENT_ITER_DoFindEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted,
                                        pf_bool* p_is_found, pf_bool is_skip) {
    pf_u8 attr;
    pf_s32 err = 0;
    pf_s32 lengthName = 0;
    pf_s8 filename[13];
    pf_u32 index_search_from;
    pf_bool is_extsfn = PF_FALSE;

    *p_is_found = PF_FALSE;
    if (*p_iter->ffd.p_start_cluster == 1 &&
        (VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"..\\", 1, 0, 3) == 0 || VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"../", 1, 0, 3) == 0 ||
         VFiPFSTR_StrCmp(p_pattern, (pf_s8*)"..") == 0)) {
        return 2;
    }
    if ((VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)".\\", 1, 0, 2) == 0) || (VFiPFSTR_StrCmp(p_pattern, (pf_s8*)".") == 0)) {
        if (is_skip == PF_FALSE && (*p_iter->ffd.p_start_cluster == 1 || (p_iter->ffd.p_vol->bpb.fat_type == FAT_32 &&
                                                                          *p_iter->ffd.p_start_cluster == p_iter->ffd.p_vol->bpb.root_dir_cluster))) {
            err = VFiPFENT_GetRootDir(p_iter->p_vol, p_ent);
            if (err != 0) {
                return err;
            }
            is_skip = PF_TRUE;
        }
        if (is_skip == PF_TRUE) {
            *p_is_found = PF_TRUE;
            return 0;
        }
    }

    p_ent->num_entry_LFNs = 0;
    p_ent->ordinal = 0;
    p_ent->check_sum = 0;
    p_ent->long_name[0] = 0;
    if ((VFipf_vol_set.setting & 0x02) == 0x02) {
        is_extsfn = VFiPFPATH_GetExtShortNameIndex(p_pattern, &index_search_from);
    }
    if (is_extsfn == PF_TRUE) {
        for (err = VFiPFENT_ITER_IteratorInitialize(p_iter, index_search_from - 1);; err = VFiPFENT_ITER_Retreat(p_iter, PF_FALSE)) {
            if (err != 0) {
                return err;
            }
            attr = p_iter->buf[0xB];
            if ((attr & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08)) {
                err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf);
                if (err != 0) {
                    p_ent->num_entry_LFNs = 0;
                    p_ent->long_name[0] = 0;
                    continue;
                }
                if ((p_iter->buf[0] & 0x40) == 0) {
                    continue;
                }
            } else {
                return 0;
            }
            err = VFiPFENT_ITER_IteratorInitialize(p_iter, index_search_from);
            if (err != 0) {
                return err;
            }
            attr = p_iter->buf[0xB];
            if (attr == 0) {
                attr = 0x40;
            }
            if ((attr_required & 0x80) != 0) {
                attr_required &= ~0x80;
                attr_unwanted &= ~0x80;
                if ((attr_required != 0 && attr_required != (attr & attr_required)) ||
                    (attr_unwanted != 0 && attr_unwanted == (attr & attr_unwanted))) {
                    err = -1;
                }
            } else if (attr_required != 0x7F && attr != attr_required && ((attr & attr_required) == 0 || (attr & attr_unwanted) != 0)) {
                err = -1;
            }
            if (err == -1) {
                return 0;
            }
            if ((attr & 0x08) != 0) {
                return 3;
            }
            VFiPFENT_LoadShortNameFromBuf(p_ent, p_iter->buf);
            if (VFiPFPATH_MatchFileNameWithPattern(p_ent->short_name, p_pattern, PF_FALSE) == 0) {
                break;
            }

            VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
            p_ent->entry_sector = p_iter->sector;
            p_ent->entry_offset = p_iter->offset;
            p_ent->p_vol = p_iter->ffd.p_vol;
            if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 0) {
                p_ent->start_cluster = 1;
            }
            *p_is_found = PF_TRUE;
            return 0;
        }
    } else {
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
                continue;
            }
            attr = p_iter->buf[0xB];
            if ((attr & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08)) {
                err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf);
                if (err != 0) {
                    p_ent->num_entry_LFNs = 0;
                    p_ent->long_name[0] = 0;
                }
                continue;
            }
            if (attr == 0) {
                attr = 0x40;
            }
            if ((attr_required & 0x80) != 0) {
                attr_required &= ~0x80;
                attr_unwanted &= ~0x80;
                if ((attr_required != 0 && attr_required != (attr & attr_required)) ||
                    (attr_unwanted != 0 && attr_unwanted == (attr & attr_unwanted))) {
                    err = -1;
                }
            } else if (attr_required != 0x7F && attr != attr_required && ((attr & attr_required) == 0 || (attr & attr_unwanted) != 0)) {
                err = -1;
            }
            if (err == -1) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
                continue;
            }
            if ((attr & 0x08) != 0) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
            }
            VFiPFENT_LoadShortNameFromBuf(p_ent, p_iter->buf);
            if (p_ent->num_entry_LFNs != 0 && p_ent->ordinal == 1 && p_ent->check_sum == VFiPFENT_CalcCheckSum(p_ent) &&
                VFiPFPATH_MatchFileNameWithPattern((pf_s8*)p_ent->long_name, p_pattern, 1) != 0) {
                VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
                p_ent->entry_sector = p_iter->sector;
                p_ent->entry_offset = p_iter->offset;
                p_ent->p_vol = p_iter->ffd.p_vol;
                if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 0) {
                    p_ent->start_cluster = 1;
                }
                *p_is_found = PF_TRUE;
                return 0;
            }
            if (VFiPFPATH_MatchFileNameWithPattern(p_ent->short_name, p_pattern, 0U) != 0) {
                if ((p_iter->buf[0xC] & (0x10 | 0x08)) != 0) {
                    VFiPFPATH_getLongNameformShortName(p_ent->short_name, (pf_s8*)&filename, p_iter->buf[0xC]);
                    lengthName = VFiPFPATH_transformInUnicode(p_ent->long_name, (pf_s8*)&filename);
                    p_ent->num_entry_LFNs = (lengthName / 13) + (lengthName % 13 ? 1 : 0);
                    p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
                    p_ent->ordinal = 1;
                }
                VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
                p_ent->entry_sector = p_iter->sector;
                p_ent->entry_offset = p_iter->offset;
                p_ent->p_vol = p_iter->ffd.p_vol;
                if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 0) {
                    p_ent->start_cluster = 1;
                }
                *p_is_found = PF_TRUE;
                return 0;
            }
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
        }
    }
    return 0;
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
        err = VFiPFENT_ITER_DoFindEntry(p_iter, p_ent, &token, 0x7F, 0, &is_found, PF_TRUE);
        if (err != 0) {
            return err;
        }
        if (!is_found) {
            err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard);
            if (err != 0) {
                return err;
            }
            if (token.p_head != 0) {
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

pf_bool VFiPFENT_ITER_IsAtLogicalEnd(PF_ENT_ITER* p_iter) {
    pf_s32 err;
    pf_u32 save_index;
    pf_u32 save_fsindex;

    if (VFiPFENT_ITER_IsAtPhysicalEnd(p_iter) != 0 || p_iter->buf[0] == 0 || p_iter->index >= (1000000 - 1)) {
        save_index = p_iter->index;
        save_fsindex = p_iter->file_sector_index;
        p_iter->index = (p_iter->file_sector_index + 1) << p_iter->log2_entries_per_sector;
        err = VFiPFENT_RecalcEntryIterator(p_iter, PF_FALSE);
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

pf_s32 VFiPFENT_ITER_FindEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted,
                               pf_u32* p_is_found, pf_u32 is_skip) {
    pf_s32 err;

    if (p_ent == PF_NULL) {
        return 10;
    }
    if (p_pattern->p_head == PF_NULL) {
        return 10;
    }
    if (VFiPFSTR_StrLen(p_pattern) == 0) {
        return 10;
    }
    if (p_is_found == PF_NULL) {
        return 10;
    }
    *p_is_found = 0;
    if ((attr_required & attr_unwanted) != 0) {
        return 10;
    }
    err = VFiPFENT_ITER_DoFindEntry(p_iter, p_ent, p_pattern, attr_required, attr_unwanted, p_is_found, is_skip);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFENT_ITER_GetEntryOfPath(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path, pf_u32 no_look_last_token) {
    return VFiPFENT_ITER_DoGetEntry(p_iter, p_ent, p_vol, p_path, PF_FALSE, no_look_last_token);
}
