#ifndef PRFILE2_VFMOD_PF_ENTRY_ITERATOR_H
#define PRFILE2_VFMOD_PF_ENTRY_ITERATOR_H

#include <private/vf/PrFILE2/common/pf_str.h>
#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/pf_types.h>

struct PF_ENT_ITER {
    pf_u32 index;                   // 0x00
    PF_VOLUME* p_vol;               // 0x04
    PF_FFD ffd;                     // 0x08
    pf_u32 file_sector_index;       // 0x40
    pf_u32 sector;                  // 0x44
    pf_u16 offset;                  // 0x48
    pf_u16 offset_mask;             // 0x4A
    pf_u8 buf[32];                  // 0x4C
    pf_u8 log2_entries_per_sector;  // 0x6C
};

pf_s32 VFiPFENT_ITER_IteratorInitialize(PF_ENT_ITER* p_iter, pf_u32 index_start_from);
pf_bool VFiPFENT_ITER_IsAtLogicalEnd(PF_ENT_ITER* p_iter);
pf_s32 VFiPFENT_ITER_MoveTo(PF_ENT_ITER* p_iter, pf_u32 index, pf_bool may_allocate);
pf_s32 VFiPFENT_ITER_Advance(PF_ENT_ITER* p_iter, pf_bool may_allocate);
pf_s32 VFiPFENT_ITER_Retreat(PF_ENT_ITER* p_iter, pf_bool may_allocate);
pf_s32 VFiPFENT_ITER_FindEntry(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted,
                               pf_bool* p_is_found, pf_bool is_skip);
pf_s32 VFiPFENT_ITER_GetEntryOfPath(PF_ENT_ITER* p_iter, PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path, pf_bool no_look_last_token);

#endif  // PRFILE2_VFMOD_PF_ENTRY_ITERATOR_H
