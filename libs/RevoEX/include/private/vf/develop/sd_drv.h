#ifndef VF_SD_DRIVER_H
#define VF_SD_DRIVER_H

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <revolution/nand.h>

void VFi_InitSDWrok();
s32 VFi_sddrv_init_drv_tbl(PDM_DISK_TBL* p_disk_tbl, u32 ui_ext);

#endif  // VF_SD_DRIVER_H
