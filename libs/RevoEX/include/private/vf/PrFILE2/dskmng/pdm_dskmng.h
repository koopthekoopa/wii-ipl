#ifndef PRFILE2_VFMOD_PDM_DISK_MANAGER_H
#define PRFILE2_VFMOD_PDM_DISK_MANAGER_H

#include <private/vf/PrFILE2/dskmng/pdm_types.h>

typedef struct PDM_PARTITION PDM_PARTITION;

struct PDM_PARTITION {
    pf_u32 status;                    // 0x00
    PDM_DISK* p_disk;                 // 0x04
    pf_u32 signature;                 // 0x08
    pf_u16 part_id;                   // 0x0C
    pf_u16 open_part_cnt;             // 0x0E
    PDM_PARTITION* part_lock_handle;  // 0x10
    pf_u32 start_sector;              // 0x14
    pf_u32 total_sector;              // 0x18
    pf_u32 mbr_sector;                // 0x1C
    pf_u8 partition_type;             // 0x20
    pf_s32 driver_last_error;         // 0x24
    void* p_vol;                      // 0x28
};

/*typedef*/ struct PDM_DISK {
    pf_u32 status;                   // 0x00
    PDM_DISK_TBL disk_tbl;           // 0x04
    pf_u32 signature;                // 0x0C
    pf_u16 open_disk_cnt;            // 0x10
    pf_u16 disk_lock_cnt;            // 0x12
    PDM_DISK* disk_lock_handle;      // 0x14
    PDM_DISK_INFO disk_info;         // 0x18
    PDM_INIT_DISK* p_init_disk_tbl;  // 0x2C
    PDM_PARTITION* p_cur_part;       // 0x30
#ifdef PF_IPL_BUILD
    pf_u32 unk_0x34;
#endif
} /*PDM_DISK*/;

typedef struct PDM_DISK_HANDLE {
    pf_u32 signature;  // 0x00
    PDM_DISK* handle;  // 0x04
} PDM_DISK_HANDLE;

typedef struct PDM_PARTITION_HANDLE {
    pf_u32 signature;       // 0x00
    PDM_PARTITION* handle;  // 0x04
} PDM_PARTITION_HANDLE;

typedef struct PDM_DISK_SET {
    pf_u16 num_partition;                                    // 0x00
    pf_u16 num_allocated_disk;                               // 0x02
    PDM_DISK_HANDLE disk_handle[PDM_DRIVE_COUNT];            // 0x04
    PDM_PARTITION_HANDLE partition_handle[PDM_DRIVE_COUNT];  // 0xD4
    PDM_DISK disk[PDM_DRIVE_COUNT];                          // 0x1A4
    PDM_PARTITION partition[PDM_DRIVE_COUNT];                // 0x6EC
} PDM_DISK_SET;

extern PDM_DISK_SET VFipdm_disk_set;

pf_s32 VFipdm_init_diskmanager(pf_u32 config, void* param);
pf_s32 VFipdm_open_disk(PDM_INIT_DISK* p_init_disk_tbl, PDM_DISK** pp_disk);
pf_s32 VFipdm_close_disk(PDM_DISK* p_disk);
pf_s32 VFipdm_open_partition(PDM_DISK* p_disk, pf_s32 part_id, PDM_PARTITION** pp_part);
pf_s32 VFipdm_close_partition(PDM_PARTITION* p_part);

#endif  // PRFILE2_VFMOD_PDM_DISK_MANAGER_H
