#ifndef VF_PF2_GETDEV_H
#define VF_PF2_GETDEV_H

#include <private/vf/PrFILE2/fatfs/pf_devinf.h>
#include <private/vf/PrFILE2/pf_types.h>

int VFipf2_devinf(pf_ch8 drv_char, PF_DEV_INF* dev_inf);

#endif  // VF_PF2_GETDEV_H
