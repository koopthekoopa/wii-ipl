#ifndef PRFILE2_VFMOD_PF_VOLUME_H
#define PRFILE2_VFMOD_PF_VOLUME_H

#include <private/vf/PrFILE2/driver/pf_driver.h>
#include <private/vf/PrFILE2/fatfs/pf_cache.h>
#include <private/vf/PrFILE2/fatfs/pf_devinf.h>
#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_CHARCODE {
    pf_s32 (*oem2unicode)(const pf_s8*, pf_u16*);          // 0x00
    pf_s32 (*unicode2oem)(const pf_u16*, pf_s8*);          // 0x04
    pf_s32 (*oem_char_width)(const pf_s8*);                // 0x08
    pf_bool (*is_oem_mb_char)(const pf_s8, pf_bool);       // 0x0C
    pf_s32 (*unicode_char_width)(const pf_u16*);           // 0x10
    pf_bool (*is_unicode_mb_char)(const pf_u16, pf_bool);  // 0x14
} PF_CHARCODE;

typedef struct PF_CONTEXT {
    pf_u32 stat;        // 0x00
    pf_s32 context_id;  // 0x04
} PF_CONTEXT;

typedef struct PF_BPB {
    pf_u16 bytes_per_sector;         // 0x00
    pf_u16 num_reserved_sectors;     // 0x02
    pf_u16 num_root_dir_entries;     // 0x04
    pf_u8 sectors_per_cluster;       // 0x06
    pf_u8 num_FATs;                  // 0x07
    pf_u32 total_sectors;            // 0x08
    pf_u32 sectors_per_FAT;          // 0x0C
    pf_u32 root_dir_cluster;         // 0x10
    pf_u16 fs_info_sector;           // 0x14
    pf_u16 backup_boot_sector;       // 0x16
    pf_u16 ext_flags;                // 0x18
    pf_u8 media;                     // 0x1A
    PF_FAT_TYPE fat_type;            // 0x1C
    pf_u8 log2_bytes_per_sector;     // 0x20
    pf_u8 log2_sectors_per_cluster;  // 0x21
    pf_u8 num_active_FATs;           // 0x22
    pf_u16 num_root_dir_sectors;     // 0x24
    pf_u32 active_FAT_sector;        // 0x28
    pf_u32 first_root_dir_sector;    // 0x2C
    pf_u32 first_data_sector;        // 0x30
    pf_u32 num_clusters;             // 0x34
} PF_BPB;

typedef struct PF_CURSOR {
    pf_u32 position;           // 0x00
    pf_u32 sector;             // 0x04
    pf_u32 file_sector_index;  // 0x08
    pf_u16 offset_in_sector;   // 0x0C
} PF_CURSOR;

typedef struct PF_SFD PF_SFD;
typedef struct PF_FILE {
    pf_u32 stat;        // 0x00
    pf_s32 open_mode;   // 0x04
    PF_SFD* p_sfd;      // 0x08
    PF_FAT_HINT hint;   // 0x0C
    pf_s32 last_error;  // 0x18
    PF_CURSOR cursor;   // 0x1C
    pf_u16 lock_count;  // 0x2C
} PF_FILE;

typedef struct PF_INFO {
    pf_u32 file_size;       // 0x00
    pf_u32 io_pointer;      // 0x04
    pf_u32 empty_size;      // 0x08
    pf_u32 allocated_size;  // 0x0C
    pf_u32 lock_mode;       // 0x10
    PF_FILE* lock_owner;    // 0x14
    pf_u32 lock_count;      // 0x18
    pf_u32 lock_tcount;     // 0x1C
} PF_INFO;

typedef struct PF_DIR_CURSOR {
    pf_u32 physical_entry_index;  // 0x00
    pf_u32 logical_entry_index;   // 0x04
    pf_u32 logical_seek_index;    // 0x08
} PF_DIR_CURSOR;

typedef struct PF_LOCK {
    pf_u16 mode;      // 0x00
    pf_u16 count;     // 0x02
    pf_u32 wcount;    // 0x04
    PF_FILE* owner;   // 0x08
    pf_s32 resource;  // 0x0C
} PF_LOCK;

typedef struct PF_CUR_VOLUME {
    pf_u32 stat;        // 0x00
    pf_s32 context_id;  // 0x04
    PF_VOLUME* p_vol;   // 0x08
} PF_CUR_VOLUME;

struct PF_SFD {
    pf_u32 stat;           // 0x00
    PF_FFD ffd;            // 0x04
    PF_DIR_ENT dir_entry;  // 0x3C
    PF_LOCK lock;          // 0x27C
    pf_u16 num_handlers;   // 0x28C
};

typedef struct PF_SDD {
    pf_u32 stat;           // 0x00
    pf_u16 num_handlers;   // 0x04
    PF_FFD ffd;            // 0x08
    PF_DIR_ENT dir_entry;  // 0x40
} PF_SDD;

typedef struct PF_DIR_TAIL {
    pf_u32 tracker_size;     // 0x00
    pf_u32 tracker_buff[1];  // 0x04
    pf_u32* tracker_bits;    // 0x08
} PF_DIR_TAIL;

typedef struct PF_CUR_DIR {
    pf_u32 stat;           // 0x00
    pf_s32 context_id;     // 0x04
    PF_DIR_ENT directory;  // 0x08
} PF_CUR_DIR;

typedef struct PF_DIR {
    pf_u32 stat;           // 0x00
    PF_SDD* p_sdd;         // 0x04
    PF_FAT_HINT hint;      // 0x08
    PF_DIR_CURSOR cursor;  // 0x14
} PF_DIR;

typedef pf_s32 (*PF_VOLUME_CB)(pf_s32);

/*typedef*/ struct PF_VOLUME {
    PF_BPB bpb;                        // 0x00
    pf_u32 num_free_clusters;          // 0x38
    pf_u32 last_free_cluster;          // 0x3C
    PF_SFD sfds[5];                    // 0x40
    PF_FILE ufds[5];                   // 0xD10
    PF_SDD sdds[3];                    // 0xE00
    PF_DIR udds[3];                    // 0x1580
    pf_s32 num_opened_files;           // 0x15E0
    pf_s32 num_opened_directories;     // 0x15E4
    PF_SECTOR_CACHE cache;             // 0x15E8
    pf_s8 label[12];                   // 0x160C
    PF_CUR_DIR current_dir[1];         // 0x1618
    PF_DIR_TAIL tail_entry;            // 0x1860
    pf_s32 last_error;                 // 0x186C
    pf_s32 last_driver_error;          // 0x1870
    pf_u32 file_config;                // 0x1874
    pf_u16 flags;                      // 0x1878
    pf_s8 drv_char;                    // 0x187A
    pf_u16 fsi_flag;                   // 0x187C
    PF_CLUSTER_LINK_VOL cluster_link;  // 0x1880
    void* p_part;                      // 0x188C
    void (*p_callback)();              // 0x1890
    const pf_u8* format_param;         // 0x1894
} /*PF_VOLUME*/;

#define PF_DRIVE_COUNT 26

typedef struct PF_VOLUME_SET {
    PF_CUR_VOLUME current_vol[1];       // 0x00
    pf_s32 num_attached_drives;         // 0x0C
    pf_s32 num_mounted_volumes;         // 0x10
    pf_u32 config;                      // 0x14
    void* param;                        // 0x18
    pf_s32 last_error;                  // 0x1C
    pf_s32 last_driver_error;           // 0x20
    PF_CHARCODE codeset;                // 0x24
    pf_u32 setting;                     // 0x3C
    PF_CONTEXT context[1];              // 0x40
    PF_VOLUME volumes[PF_DRIVE_COUNT];  // 0x48
} PF_VOLUME_SET;

extern PF_VOLUME_SET VFipf_vol_set;

pf_s32 VFiPFVOL_InitModule(pf_u32 config, void* param);
pf_s32 VFiPFVOL_CheckForRead(PF_VOLUME* p_vol);
pf_s32 VFiPFVOL_CheckForWrite(PF_VOLUME* p_vol);
pf_s32 VFiPFVOL_GetCurrentDir(PF_VOLUME* p_vol, PF_DIR_ENT* p_current_dir);
void VFiPFVOL_SetCurrentVolume(PF_VOLUME* p_vol);
PF_VOLUME* VFiPFVOL_GetCurrentVolume();
PF_VOLUME* VFiPFVOL_GetVolumeFromDrvChar(pf_s8 drv_char);
void VFiPFVOL_LoadVolumeLabelFromBuf(const pf_u8* buf, PF_VOLUME* p_vol);
pf_s32 VFiPFVOL_errnum();
pf_s32 VFiPFVOL_getdev(pf_s8 drv_char, PF_DEV_INF* dev_inf);
pf_s32 VFiPFVOL_attach(PF_DRV_TBL* p_drv);
pf_s32 VFiPFVOL_detach(pf_s8 drv_char);
pf_s32 VFiPFVOL_format(pf_s8 drv_char, const pf_u8* param);
pf_s32 VFiPFVOL_unmount(pf_s8 drv_char, pf_u32 mode);

#endif  // PRFILE2_VFMOD_PF_VOLUME_H
