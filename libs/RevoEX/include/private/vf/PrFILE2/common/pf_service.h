#ifndef PRFILE2_VFMOD_PF_SERVICE_H
#define PRFILE2_VFMOD_PF_SERVICE_H

#include <private/vf/PrFILE2/pf_types.h>

pf_u16 VFiPF_GET_LE_U16(const pf_u8* buf);
void VFiPF_LE16_TO_U16_STR(pf_u8* sSrc, pf_u32 num);

#endif  // PRFILE2_VFMOD_PF_SERVICE_H
