#ifndef PRFILE2_VFMOD_PDM_UNSORTED_TYPES_H
#define PRFILE2_VFMOD_PDM_UNSORTED_TYPES_H

#include <private/vf/PrFILE2/pf_types.h>

typedef enum {
    PDM_FAT_12 = 0,
    PDM_FAT_16 = 1,
    PDM_FAT_32 = 2,
    PDM_FAT_ERR = -1,
} PDM_FAT_TYPE;

typedef struct PDM_DISK PDM_DISK;
typedef struct PDM_DISK_INFO PDM_DISK_INFO;

typedef struct PDM_FUNCTBL {
    pf_s32 (*init)(PDM_DISK*);                  // 0x00
    pf_s32 (*finalize)(PDM_DISK*);              // 0x04
    pf_s32 (*mount)(PDM_DISK*);                 // 0x08
    pf_s32 (*unmount)(PDM_DISK*);               // 0x0C
    pf_s32 (*format)(PDM_DISK*, const pf_u8*);  // 0x10
#ifndef PF_IPL_BUILD
    pf_s32 (*physical_read)(PDM_DISK*, pf_u8*, pf_u32, pf_u32, pf_u32*);         // 0x14
    pf_s32 (*physical_write)(PDM_DISK*, const pf_u8*, pf_u32, pf_u32, pf_u32*);  // 0x18
#else
    pf_s32 (*physical_read)(PDM_DISK*, pf_u8*, pf_u32, pf_u32);         // 0x14
    pf_s32 (*physical_write)(PDM_DISK*, const pf_u8*, pf_u32, pf_u32);  // 0x18
#endif
    pf_s32 (*get_disk_info)(PDM_DISK*, PDM_DISK_INFO*);  // 0x1C
} PDM_FUNCTBL;

typedef struct PDM_DISK_TBL {
    PDM_FUNCTBL* p_func;  // 0x00
    pf_u32 ui_ext;        // 0x04
} PDM_DISK_TBL;

typedef struct PDM_INIT_DISK {
    pf_s32 (*p_func)(PDM_DISK_TBL*, pf_u32);  // 0x00
    pf_u32 ui_ext;                            // 0x04
} PDM_INIT_DISK;

typedef struct PDM_PART_TBL {
    pf_u8 boot_flag;          // 0x00
    pf_u8 partition_type;     // 0x01
    pf_u16 s_cylinder;        // 0x02
    pf_u8 s_head;             // 0x04
    pf_u8 s_sector;           // 0x05
    pf_u16 e_cylinder;        // 0x06
    pf_u8 e_head;             // 0x08
    pf_u8 e_sector;           // 0x09
    pf_u8 pad[2];             // 0x0A
    pf_u32 lba_start_sector;  // 0x0C
    pf_u32 lba_num_sectors;   // 0x10
} PDM_PART_TBL;

typedef struct PDM_FSINFO {
    pf_u32 free_count;  // 0x00
    pf_u32 next_free;   // 0x04
} PDM_FSINFO;

/*typedef*/ struct PDM_DISK_INFO {
    pf_u32 total_sectors;     // 0x00
    pf_u16 cylinders;         // 0x04
    pf_u8 heads;              // 0x06
    pf_u8 sectors_per_track;  // 0x07
    pf_u16 bytes_per_sector;  // 0x08
    pf_u32 media_attr;        // 0x0C
    void* format_param;       // 0x10
} /*PDM_DISK_INFO*/;

#define PDM_DRIVE_COUNT 26

#define PDM_U16_FROM_BUF(buf, off) ((pf_u16)buf[off] | ((pf_u16)buf[off + 1] << 8))
#define PDM_U32_FROM_BUF(buf, off) (((pf_u32)buf[off + 3] << 24) | (((pf_u32)buf[off + 2] << 16) | ((pf_u32)buf[off] | ((pf_u32)buf[off + 1] << 8))))

#endif  // PRFILE2_VFMOD_PDM_UNSORTED_TYPES_H
