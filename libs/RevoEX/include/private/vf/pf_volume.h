#ifndef PRIVATE_PF_VOLUME_H
#define PRIVATE_PF_VOLUME_H

#include <revolution/types.h>

#include <private/vf/pf_entry.h>
#include <private/vf/pf_cache.h>
#include <private/vf/pf_fat.h>
#include <private/vf/pf_charcode.h>

typedef void (*PF_VOL_CALLBACK)();

typedef struct PF_CUR_DIR {
    u32 stat;               // 0x00
    s32 context_id;         // 0x04

    PF_DIR_ENT directory;   // 0x08
} PF_CUR_DIR;

typedef struct PF_CURSOR {
    u32 position;           // 0x0
    u32 sector;             // 0x4
    u32 file_sector_index;  // 0x8
    u16 offset_in_sector;   // 0xC
} PF_CURSOR;

typedef struct PF_DIR_CURSOR {
    u32 physical_entry_index;   // 0x00
    u32 logical_entry_index;    // 0x04
    u32 logical_seek_index;     // 0x08
} PF_DIR_CURSOR;

typedef struct PF_SDD {
    u32         stat;           // 0x00

    u16         num_handlers;   // 0x04

    PF_FFD      ffd;            // 0x08
    PF_DIR_ENT  dir_entry;      // 0x3C
} PF_SDD;

typedef struct PF_FILE PF_FILE;
typedef struct PF_LOCK {
    u16 mode;       // 0x00

    u16 count;      // 0x02
    u32 wcount;     // 0x04

    PF_FILE* owner; // 0x08
    
    long resource;  // 0x0C
} PF_LOCK;

typedef struct PF_SFD {
    u32         stat;           // 0x00

    PF_FFD      ffd;            // 0x04

    PF_DIR_ENT  dir_entry;      // 0x38

    PF_LOCK     lock;           // 0x278

    u16         num_handlers;   // 0x288
} PF_SFD;

typedef struct PF_BPB {
    u16         bytes_per_sector;           // 0x00

    u16         num_reserved_sectors;       // 0x02
    u16         num_root_dir_entries;       // 0x04

    u8          sectors_per_cluster;        // 0x06

    u8          num_FATs;                   // 0x07

    u32         total_sectors;              // 0x08
    u32         sectors_per_FAT;            // 0x0C

    u32         root_dir_cluster;           // 0x10

    u16         fs_info_sector;             // 0x14
    u16         backup_boot_sector;         // 0x16

    u16         ext_flags;                  // 0x18

    u8          media;                      // 0x1A

    PF_FAT_TYPE fat_type;                   // 0x1C

    u8          log2_bytes_per_sector;      // 0x20
    u8          log2_sectors_per_cluster;   // 0x21

    u8          num_active_FATs;            // 0x22
    u16         num_root_dir_sectors;       // 0x24

    u32         active_FAT_sector;          // 0x28

    u32         first_root_dir_sector;      // 0x2C
    u32         first_data_sector;          // 0x30

    u32         num_clusters;               // 0x34
} PF_BPB;

typedef struct PF_FILE {
    u32         stat;           // 0x00

    u32         open_mode;      // 0x04

    PF_SFD*     p_sfd;          // 0x08

    PF_FAT_HINT hint;           // 0x0C

    PF_FAT_HINT last_access;    // 0x14
    s32         last_error;     // 0x1C

    PF_CURSOR   cursor;         // 0x20

    u16         lock_count;     // 0x30
} PF_FILE;

typedef struct PF_DIR {
    u32             stat;   // 0x00

    PF_SDD*         p_sdd;  // 0x04

    PF_FAT_HINT     hint;   // 0x08
    PF_DIR_CURSOR   cursor; // 0x10
} PF_DIR;

typedef struct PF_CONTEXT {
    u32 stat;       // 0x00
    s32 context_id; // 0x04
} PF_CONTEXT;

typedef struct PF_VOLUME {
    PF_BPB              bpb;                    // 0x00

    u32                 num_free_clusters;      // 0x38
    u32                 last_free_cluster;      // 0x3C

    PF_SFD              sfds[5];                // 0x40
    PF_FILE             ufds[5];                // 0xCFC
    PF_SDD              sdds[3];                // 0xE00
    PF_DIR              udds[3];                // 0x1574

    s32                 num_opened_files;       // 0x15C8
    s32                 num_opened_directories; // 0x15CC

    PF_SECTOR_CACHE     cache;                  // 0x15D0

    s8                  label[12];              // 0x15F4

    PF_CUR_DIR          current_dir[1];         // 0x1600

    PF_DIR_TAIL         tail_entry;             // 0x1848

    s32                 last_error;             // 0x1854
    s32                 last_driver_error;      // 0x1858

    u32                 file_config;            // 0x185C
    u16                 flags;                  // 0x1860
    s8                  drv_char;               // 0x1862
    u16                 fsi_flag;               // 0x1864

    PF_CLUSTER_LINK_VOL cluster_link;           // 0x1868

    void*               p_part;                 // 0x1874
    PF_VOL_CALLBACK     p_callback;             // 0x1878

    const u8*           format_param;           // 0x187C
} PF_VOLUME;

typedef struct PF_CUR_VOLUME {
    u32         stat;       // 0x00
    s32         context_id; // 0x04
    PF_VOLUME*  p_vol;      // 0x08
} PF_CUR_VOLUME;

typedef struct PF_VOLUME_SET {
    PF_CUR_VOLUME   current_vol[1];         // 0x00

    s32             num_attached_drives;    // 0x0C
    s32             num_mounted_volumes;    // 0x10

    u32             config;                 // 0x14

    void*           param;                  // 0x18

    s32             last_error;             // 0x1C
    s32             last_driver_error;      // 0x20

    PF_CHARCODE     codeset;                // 0x24
    u32             setting;                // 0x3C

    PF_CONTEXT      context[1];             // 0x40
    PF_VOLUME       volumes[26];            // 0x48
} PF_VOLUME_SET;

extern PF_VOLUME_SET VFipf_vol_set;

#endif // PRIVATE_PF_VOLUME_H
