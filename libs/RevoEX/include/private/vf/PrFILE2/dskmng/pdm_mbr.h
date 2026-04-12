#ifndef PRFILE2_VFMOD_PDM_MBR_H
#define PRFILE2_VFMOD_PDM_MBR_H

#include <private/vf/PrFILE2/dskmng/pdm_types.h>

#define PDM_MBR_PARTITION_COUNT 4
#define PDM_MBR_PARTITION_TBL_LEN 0x10

typedef struct PDM_MBR {
    pf_u32 current_sector;                                  // 0x00
    pf_u32 epbr_base_sector;                                // 0x04
    PDM_PART_TBL partition_table[PDM_MBR_PARTITION_COUNT];  // 0x08
} PDM_MBR;

#define PDM_MBR_BOOT_PROGRAM_LENGTH 0x1BE

typedef struct PDM_MBR_SEC {
    pf_u8 bootprg[PDM_MBR_BOOT_PROGRAM_LENGTH];                                // 0x00
    pf_u8 partition_tbl[PDM_MBR_PARTITION_TBL_LEN * PDM_MBR_PARTITION_COUNT];  // 0x1BE
    pf_u8 signature1;                                                          // 0x1FE
    pf_u8 signature2;                                                          // 0x1FF
} PDM_MBR_SEC;

pf_s32 VFipdm_mbr_get_table(pf_u8* buf, pf_u32 sector, PDM_MBR* p_mbr_tbl);
pf_s32 VFipdm_mbr_get_mbr_part_table(PDM_DISK* p_disk, PDM_MBR* p_mbr_tbl);
pf_s32 VFipdm_mbr_get_epbr_part_table(PDM_DISK* p_disk, PDM_MBR* p_mbr_tbl);
pf_s32 VFipdm_mbr_check_master_boot_record(PDM_DISK* p_disk, pf_u8* buf, pf_bool* is_master_boot);

#endif  // PRFILE2_VFMOD_PDM_MBR_H
