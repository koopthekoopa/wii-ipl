#ifndef PRFILE2_VFMOD_PF_STRING_H
#define PRFILE2_VFMOD_PF_STRING_H

#include <private/vf/PrFILE2/common/pf_code.h>
#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_STR {
    const pf_s8* p_head;  // 0x00
    const pf_s8* p_tail;  // 0x04
#if PF_VERSION >= 2009
    const pf_s8* p_local;  // 0x08
#endif
    pf_u32 code_mode;  // 0x0C
} PF_STR;

void VFiPFSTR_SetCodeMode(PF_STR* p_str, pf_u32 code_mode);
pf_u32 VFiPFSTR_GetCodeMode(PF_STR* p_str);

#if PF_VERSION >= 2009
void VFiPFSTR_SetLocalStr(PF_STR* p_str, pf_s8* p_local);
#endif  // PF_VERSION

pf_s8* VFiPFSTR_GetStrPos(PF_STR* p_str, pf_u32 target);
void VFiPFSTR_MoveStrPos(PF_STR* p_str, pf_s16 num_char);

pf_s32 VFiPFSTR_InitStr(PF_STR* p_str, const pf_s8* s, pf_u32 code_mode);

pf_u16 VFiPFSTR_StrLen(PF_STR* p_str);
pf_u16 VFiPFSTR_StrNumChar(PF_STR* p_str, pf_u32 target);

pf_s32 VFiPFSTR_StrCmp(const PF_STR* p_str, const pf_s8* s);
pf_s32 VFiPFSTR_StrNCmp(PF_STR* p_str, const pf_s8* s, pf_u32 target, pf_s16 offset, pf_u16 num);

void VFiPFSTR_ToUpperNStr(PF_STR* p_str, pf_u16 num, pf_s8* dest);

#endif  // PRFILE2_VFMOD_PF_STRING_H
