#ifndef PRFILE2_VFMOD_PF_ENTRY_H
#define PRFILE2_VFMOD_PF_ENTRY_H

#include <private/vf/PrFILE2/fatfs/pf_fat.h>
#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_ENT_ITER PF_ENT_ITER;

typedef struct PF_DIR_ENT {
    pf_u16 long_name[261];    // 0x00
    pf_u8 num_entry_LFNs;     // 0x20A
    pf_u8 ordinal;            // 0x20B
    pf_u8 check_sum;          // 0x20C
    pf_u8 align_pad[1];       // 0x20D
    pf_s8 short_name[13];     // 0x20E
    pf_u8 small_letter_flag;  // 0x21B
    pf_u8 attr;               // 0x21C
    pf_u8 create_time_ms;     // 0x21D
    pf_u16 create_time;       // 0x21E
    pf_u16 create_date;       // 0x220
    pf_u16 access_date;       // 0x222
    pf_u16 modify_time;       // 0x224
    pf_u16 modify_date;       // 0x226
    pf_u32 file_size;         // 0x228
    PF_VOLUME* p_vol;         // 0x22C
    pf_u32 path_len;          // 0x230
    pf_u32 start_cluster;     // 0x234
    pf_u32 entry_sector;      // 0x238
    pf_u16 entry_offset;      // 0x23C
} PF_DIR_ENT;

void VFiPFENT_SetDotEntry(pf_u8* entry);
void VFiPFENT_SetDotDotEntry(pf_u8* entry);
pf_u8 VFiPFENT_CalcCheckSum(PF_DIR_ENT* p_ent);
void VFiPFENT_LoadShortNameFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf);
void VFiPFENT_loadEntryNumericFieldsFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf);
void VFiPFENT_StoreEntryNumericFieldsToBuf(pf_u8* buf, const PF_DIR_ENT* p_ent);
pf_s32 VFiPFENT_LoadLFNEntryFieldsFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf, pf_bool is_reverse);
void VFiPFENT_storeLFNEntryFieldsToBuf(pf_u8* buf, PF_DIR_ENT* p_ent, pf_u8 ord, pf_u8 sum, pf_bool is_last);
pf_s32 VFiPFENT_GetEntryOfPath(PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path);
pf_s32 VFiPFENT_GetParentEntryOfPath(PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path);
pf_s32 VFiPFENT_findEntry(PF_FFD* p_ffd, PF_DIR_ENT* p_ent, pf_u32 index_search_from, PF_STR* p_pattern, pf_u8 attr_required, pf_u32* p_lpos,
                          pf_u32* p_ppos);
pf_s32 VFiPFENT_allocateEntry(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_prev_chain, PF_STR* p_filename, pf_u8 attr_required,
                              pf_u32* p_pos);
pf_s32 VFiPFENT_GetRootDir(PF_VOLUME* p_vol, PF_DIR_ENT* p_ent);
pf_s32 VFiPFENT_MakeRootDir(PF_VOLUME* p_vol);
pf_u32 VFiPFENT_CompareAttr(pf_u8 attr, pf_u32 attr_required);
pf_s32 VFiPFENT_compareEntryName(PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr);
pf_s32 VFiPFENT_AdjustSFN(PF_DIR_ENT* p_ent, pf_s8* p_short_name);
pf_s32 VFiPFENT_RemoveEntry(PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter);
pf_u8 VFiPFENT_getcurrentDateTimeForEnt(pf_u16* p_date, pf_u16* p_time);
pf_s32 VFiPFENT_UpdateSFNEntry(PF_DIR_ENT* p_ent, pf_bool flag);

pf_s32 VFiPFENT_UpdateEntry(PF_DIR_ENT* p_ent, pf_u32* p_prev_chain, pf_bool is_set_ARCH);

pf_s32 VFiPFENT_InitENT(PF_DIR_ENT* p_ent, PF_STR* p_filename, pf_u8 attr, pf_u32 is_set_time, PF_DIR_ENT* p_dir_ent, PF_VOLUME* p_vol);
pf_s32 VFiPFENT_FillVoidEntryToSectors(PF_VOLUME* p_vol, pf_u32 start_sector, pf_u32 num_sectors, pf_u32 is_make_new_directory, PF_DIR_ENT* p_ent,
                                       PF_DIR_ENT* p_parent_ent);

#endif  // PRFILE2_VFMOD_PF_ENTRY_H
