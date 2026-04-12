#ifndef PRFILE2_VFMOD_PF_DEV_INFO_H
#define PRFILE2_VFMOD_PF_DEV_INFO_H

#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_DEV_INF {
    pf_u32 cls;  // 0x00
    pf_u32 ecl;  // 0x04
    pf_u32 bps;  // 0x08
    pf_u32 spc;  // 0x0C
} PF_DEV_INF;

#endif  // PRFILE2_VFMOD_PF_DEV_INFO_H
