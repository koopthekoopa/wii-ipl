#ifndef PRFILE2_VFMOD_PF_CODE_H
#define PRFILE2_VFMOD_PF_CODE_H

#include <private/vf/PrFILE2/pf_types.h>

extern const pf_u8 VFipf_valid_fn_char[96];

pf_s32 VFiPFCODE_Combine_Width(pf_s16 oem_width, pf_s16 uni_width);
void VFiPFCODE_Divide_Width(pf_s32 width, pf_s16* oem_width, pf_s16* uni_width);

#define PF_CODE_C_TO_WC(x0, x1) ((pf_u16)(((pf_u8)(x0) << 8) + (pf_u8)(x1)))
#define PF_CODE_C_TO_WC_ARR(x, i) PF_CODE_C_TO_WC(x[i], x[i + 1])

#endif  // PRFILE2_VFMOD_PF_CODE_H
