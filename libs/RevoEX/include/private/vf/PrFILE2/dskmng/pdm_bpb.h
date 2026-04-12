#ifndef PRFILE2_VFMOD_PDM_BPB_H
#define PRFILE2_VFMOD_PDM_BPB_H

#include <private/vf/PrFILE2/dskmng/pdm_types.h>

typedef struct PDM_BPB {
    pf_u8 oem_name[8];               // 0x00
    pf_u16 bytes_per_sector;         // 0x08
    pf_u8 sectors_per_cluster;       // 0x0A
    pf_u8 num_FATs;                  // 0x0B
    pf_u16 num_reserved_sectors;     // 0x0C
    pf_u16 num_root_dir_entries;     // 0x0E
    pf_u16 total_sectors16;          // 0x10
    pf_u16 sectors_per_FAT16;        // 0x12
    pf_u16 sector_per_track;         // 0x14
    pf_u32 num_hidden_sectors;       // 0x18
    pf_u32 total_sectors32;          // 0x1C
    pf_u16 num_heads;                // 0x20
    pf_u8 media;                     // 0x22
    pf_u8 drive;                     // 0x23
    pf_u32 vol_id;                   // 0x24
    pf_u8 boot_sig;                  // 0x28
    pf_u8 vol_label[11];             // 0x29
    pf_u8 fs_type[8];                // 0x34
    pf_u32 sectors_per_FAT32;        // 0x3C
    pf_u16 ext_flags;                // 0x40
    pf_u16 fs_version;               // 0x42
    pf_u32 root_dir_cluster;         // 0x44
    pf_u16 fs_info_sector;           // 0x48
    pf_u16 backup_boot_sector;       // 0x4A
    pf_u8 jump_boot[3];              // 0x4C
    pf_u8 num_active_FATs;           // 0x4F
    PDM_FAT_TYPE fat_type;           // 0x50
    pf_u8 log2_bytes_per_sector;     // 0x54
    pf_u8 log2_sectors_per_cluster;  // 0x55
    pf_u16 num_root_dir_sectors;     // 0x56
    pf_u32 active_FAT_sector;        // 0x58
    pf_u32 first_root_dir_sector;    // 0x5C
    pf_u32 first_data_sector;        // 0x60
    pf_u32 num_clusters;             // 0x64
    pf_u32 total_sectors;            // 0x68
    pf_u32 sectors_per_FAT;          // 0x6C
} PDM_BPB;

pf_s32 VFipdm_bpb_load_string(const pf_u8* buf, pf_u32 length, pf_u8* p_string);
pf_s32 VFipdm_bpb_get_bpb_information(pf_u8* buf, PDM_BPB* p_bpb);
pf_s32 VFipdm_bpb_get_fsinfo_information(pf_u8* buf, PDM_FSINFO* p_fsinfo);
pf_s32 VFipdm_bpb_set_fsinfo_information(PDM_FSINFO* p_fsinfo, pf_u8* buf);
pf_s32 VFipdm_bpb_check_boot_sector(pf_u8* buf, pf_bool* is_boot);
pf_s32 VFipdm_bpb_check_fsinfo_sector(pf_u8* buf, pf_bool* is_fsinfo);

#endif  // PRFILE2_VFMOD_PDM_BPB_H
