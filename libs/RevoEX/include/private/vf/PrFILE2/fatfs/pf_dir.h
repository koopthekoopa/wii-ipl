#ifndef PRFILE2_VFMOD_PF_DIR_H
#define PRFILE2_VFMOD_PF_DIR_H

#include <private/vf/PrFILE2/common/pf_str.h>
#include <private/vf/PrFILE2/fatfs/pf_file.h>
#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_DTA {
    PF_FILE* p_file;              // 0x00
    PF_DIR* p_dir;                // 0x04
    PF_VOLUME* p_vol;             // 0x08
    pf_u32 parent_start_cluster;  // 0x0C
    pf_u32 parent_pos;            // 0x10
    pf_u32 status;                // 0x14
    pf_u8 num_entry_LFNs;         // 0x18
    pf_u8 ordinal;                // 0x19
    pf_u8 check_sum;              // 0x1A
    pf_u8 attr;                   // 0x1B
    pf_s8 reg_exp[520];           // 0x1C
    pf_u16 Time;                  // 0x224
    pf_u16 Date;                  // 0x226
    pf_u32 FileSize;              // 0x228
    pf_u8 Attribute;              // 0x22C
    pf_s8 FileName[13];           // 0x22D
    pf_s8 LongName[520];          // 0x23A
} PF_DTA;

typedef struct PF_DTAW {
    PF_FILE* p_file;              // 0x00
    PF_DIR* p_dir;                // 0x04
    PF_VOLUME* p_vol;             // 0x08
    pf_u32 parent_start_cluster;  // 0x0C
    pf_u32 parent_pos;            // 0x10
    pf_u32 status;                // 0x14
    pf_u8 num_entry_LFNs;         // 0x18
    pf_u8 ordinal;                // 0x19
    pf_u8 check_sum;              // 0x1A
    pf_u8 attr;                   // 0x1B
    pf_s8 reg_exp[520];           // 0x1C
    pf_u16 Time;                  // 0x224
    pf_u16 Date;                  // 0x226
    pf_u32 FileSize;              // 0x228
    pf_u8 Attribute;              // 0x22C
    pf_s8 FileName[13];           // 0x22D
    pf_s8 LongName[522];          // 0x23A
    pf_u16 reg_expW[260];         // 0x444
    pf_u16 FileNameW[13];         // 0x64C
    pf_u16 LongNameW[256];        // 0x666
} PF_DTAW;

void VFiPFDIR_FinalizeAllDirs(PF_VOLUME* p_vol);
pf_s32 VFiPFDIR_mkdir(PF_STR* p_path_str);

#endif  // PRFILE2_VFMOD_PF_DIR_H
