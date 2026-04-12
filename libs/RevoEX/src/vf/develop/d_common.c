#include <private/vf/develop/d_common.h>

#include <private/vf/develop/d_vf_sys.h>
#include <private/vf/develop/nand_drv.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/dskmng/pdm_bpb.h>
#include <private/vf/PrFILE2/dskmng/pdm_disk.h>
#include <private/vf/PrFILE2/dskmng/pdm_mbr.h>
#include <private/vf/PrFILE2/dskmng/pdm_partition.h>

#include <private/vf/PrFILE2/driver/pf_driver.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

typedef struct {
    u32 prf_file_size;      // 0x00
    s32 last_device_error;  // 0x04
    u32 fat_type;           // 0x08
    u32 reserved_sec_num;   // 0x0C
    u32 root_ent_num;       // 0x10
} dCommon_DriveInfo;

void dCommon_DevideBuff32(void* i_buf, u32 i_size, u32* i_1st_size_p, void* i_2nd_pp, u32* i_2nd_size_p, void* i_3rd_pp, u32* i_3rd_size_p) {
    u32 align;

    align = (u32)i_buf & 31;
    *(void**)i_2nd_pp = *(void**)i_3rd_pp = NULL;
    *i_1st_size_p = *i_2nd_size_p = *i_3rd_size_p = 0;
    if (align == 0) {
        *i_1st_size_p = 0;
        *(void**)i_2nd_pp = i_buf;
        *i_2nd_size_p = i_size;
        *(void**)i_3rd_pp = NULL;
        *i_3rd_size_p = 0;
        return;
    }
    *i_1st_size_p = 0x20 - align;
    if ((i_size - 0x20) != 0) {
        *(void**)i_2nd_pp = (u8*)i_buf + *i_1st_size_p;
        *i_2nd_size_p = i_size - 0x20;
    }
    *i_3rd_size_p = (u32)align;
    *(void**)i_3rd_pp = (u8*)i_buf + i_size - align;
}

BOOL dCommon_IsPrfFile(void* i_buff_p) {
    PR_BINHEADER header;

    VFipf_memcpy(&header, i_buff_p, sizeof(header));
    // "VFF "
    if (header.signature[0] != 'V' || header.signature[1] != 'F' || header.signature[2] != 'F' || header.signature[3] != ' ') {
        return FALSE;
    }
    return TRUE;
}

void dCommon_CopyPrfFileHeader(void* o_buff_p, u32 i_fileSize, unsigned short i_version, u8 i_volatile_memory) {
    int i;
    PR_BINHEADER Header;

    Header.signature[0] = 'V';
    Header.signature[1] = 'F';
    Header.signature[2] = 'F';
    Header.signature[3] = ' ';
    Header.byteOrder = 0xFEFF;
    Header.version[0] = (i_version >> 8) & 0xFF;
    Header.version[1] = (i_version) & 0xFF;
    Header.fileSize[0] = (i_fileSize >> 24) & 0xFF;
    Header.fileSize[1] = (i_fileSize >> 16) & 0xFF;
    Header.fileSize[2] = (i_fileSize >> 8) & 0xFF;
    Header.fileSize[3] = (i_fileSize) & 0xFF;
    Header.headerSize = sizeof(Header);
    Header.dataBlocks = 0;
    Header.volatile_memory = i_volatile_memory;
    for (i = 0; i < 15; i++) {
        Header.pad[i] = 0;
    }
    VFipf_memcpy(o_buff_p, &Header, 0x20);
}

void dCommon_PrintSignature(PR_BINHEADER* i_header_p) {
}

s32 dCommon_MakeFsInfoSec(u8* buf, u32 fsInfoSize) {
    PDM_FSINFO fsinfo;

    VFipf_memset(buf, 0, fsInfoSize);
    fsinfo.free_count = -1;
    fsinfo.next_free = -1;
    VFipdm_bpb_set_fsinfo_information(&fsinfo, buf);
}

u32 dCommon_GetPhysicalOffset(u32 startBlock, u32 BPS, u32 reservedSecNum) {
    return (BPS * (startBlock - reservedSecNum)) + 32;
}

PDM_FAT_TYPE dCommon_GetNiceFatType(u32* spf, u32 SPU, u32 SPC, u32 BPS) {
    u32 SPU_div_SPC;

    SPU_div_SPC = SPU / SPC;
    if (SPU_div_SPC < 0xFF5) {
        if (spf != NULL) {
            *spf = (u32)((BPS + ((u32)((SPU_div_SPC * 4) - SPU_div_SPC) >> 1U)) - 1) / BPS;
        }
        return 0;
    }
    if (SPU_div_SPC < 0xFFF5) {
        if (spf != NULL) {
            *spf = (u32)((BPS + (SPU_div_SPC * 2)) - 1) / BPS;
        }
        return 1;
    }
    if (spf != NULL) {
        *spf = (u32)((BPS + (SPU_div_SPC * 4)) - 1) / BPS;
    }
    return 2;
}

u32 dCommon_GetReservedSecFromFatType(PDM_FAT_TYPE fatType) {
    if (fatType == 2) {
        return 0x20;
    }
    return 1U;
}

u32 dCommon_GetRootEntNumFromFatType(PDM_FAT_TYPE fatType) {
    if (fatType == 2) {
        return 0;
    }
    return 0x80;
}

void dCommon_MakeBootSector(u8* buf, PDM_FAT_TYPE* type, u32 SPU, u32 SPC, u32 BPS, u8 jump0_1, u8 jump2, u32 secPerTrack, u32 reservedSecNum,
                            u32 rootEntNum, u8 mediaDesc) {
    u32 spf;

    *type = dCommon_GetNiceFatType(&spf, SPU, SPC, BPS);
    VFipf_memset(buf, 0, 0x200);
    buf[0x0] = jump0_1;
    buf[0x2] = jump2;
    buf[0x1FE] = 0x55;
    buf[0x1FF] = 0xAA;
    buf[0x18] = secPerTrack;
    buf[0x19] = (secPerTrack >> 8);
    buf[0x1A] = 0xFF;
    buf[0x1B] = 0;
    buf[0xB] = BPS;
    buf[0xC] = (BPS >> 8);
    buf[0xD] = SPC;
    buf[0xE] = reservedSecNum & 0xFF;
    buf[0xF] = (reservedSecNum >> 8);
    buf[0x10] = 2;
    buf[0x11] = rootEntNum & 0xFF;
    buf[0x12] = (rootEntNum >> 8);
    buf[0x15] = mediaDesc;
    if (SPU < 0x10000) {
        buf[0x13] = SPU;
        buf[0x14] = (SPU >> 8);
        buf[0x20] = 0;
        buf[0x21] = 0;
        buf[0x22] = 0;
        buf[0x23] = 0;
    } else {
        buf[0x13] = 0;
        buf[0x14] = 0;
        buf[0x20] = SPU;
        buf[0x21] = (SPU >> 8);
        buf[0x22] = (SPU >> 16);
        buf[0x23] = (SPU >> 24);
    }
    if (*type == 2) {
        buf[0xE] = 0x20;
        buf[0xF] = 0;
        buf[0x11] = 0;
        buf[0x12] = 0;
        buf[0x24] = spf;
        buf[0x25] = (spf >> 8);
        buf[0x26] = (spf >> 16);
        buf[0x27] = (spf >> 24);
        buf[0x28] = 0;
        buf[0x29] = 0;
        buf[0x2A] = 0;
        buf[0x2B] = 0;
        buf[0x2C] = 2;
        buf[0x2D] = 0;
        buf[0x2E] = 0;
        buf[0x2F] = 0;
        buf[0x30] = 1;
        buf[0x31] = 0;
        buf[0x41] = 0;
        buf[0x42] = 0x29;
        buf[0x43] = 0x34;
        buf[0x44] = 0x12;
        buf[0x45] = 0;
        buf[0x46] = 0;
        buf[0x40] = 0x80;
        buf[0x32] = 6;
        buf[0x33] = 0;
    } else {
        buf[0x11] = rootEntNum;
        buf[0x12] = (rootEntNum >> 8);
        buf[0x16] = spf;
        buf[0x17] = (spf >> 8);
        buf[0x25] = 0;
        buf[0x26] = 0x29;
        buf[0x27] = 0x34;
        buf[0x28] = 0x12;
        buf[0x29] = 0;
        buf[0x2A] = 0;
        buf[0x24] = 0x80;
    }
}

BOOL dCommon_ReadDummyBPB(u32 num_blocks, u8* buf, u32 block, u32* p_num_success, PDM_DISK* p_disk, s32* p_err, PDM_MAKE_BS makeBS,
                          PDM_MAKE_FS makeFS) {
    *p_err = 0;
    if (block < dCommon_getResvSecNumFromDisk(p_disk)) {
        if (block == 0) {
            PDM_FAT_TYPE type;
            *p_err = makeBS(p_disk, buf, &type);
            if (*p_err != 0) {
                return FALSE;
            }
            *p_num_success = num_blocks;
            *p_err = 0;
            return FALSE;
        }
        if (block == 1 && dCommon_getFatTypeFromDisk(p_disk) == 2) {
            *p_err = makeFS(buf);
            if (*p_err != 0) {
                return FALSE;
            }
            *p_num_success = num_blocks;
            *p_err = 0;
            return FALSE;
        }
        *p_err = -0x16;
        return FALSE;
    }
    return TRUE;
}

BOOL dCommon_WriteDummyBPB(u32 num_blocks, u32 block, u32* p_num_success, PDM_DISK* p_disk, s32* p_err) {
    *p_err = 0;
    if (block < dCommon_getResvSecNumFromDisk(p_disk)) {
        if (block == 0 || (block == 1 && dCommon_getFatTypeFromDisk(p_disk) == 2)) {
            *p_num_success = num_blocks;
            *p_err = 0;
            return FALSE;
        }
        *p_err = -0x16;
        return FALSE;
    }
    return TRUE;
}

static dCommon_DriveInfo l_driveInfo[PF_DRIVE_COUNT];

static dCommon_DriveInfo* _getDriveInfoP(PDM_DISK* p_disk) {
    u32 handleIdx;

    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    if ((u32)handleIdx < PF_DRIVE_COUNT) {
        return &l_driveInfo[handleIdx];
    }
    return NULL;
}

void dCommon_initDriveInfo() {
    int i;
    dCommon_DriveInfo* driveInfo_p = l_driveInfo;

    for (i = 0; i < PF_DRIVE_COUNT; i++) {
        driveInfo_p->prf_file_size = 0;
        driveInfo_p->last_device_error = 0;
        driveInfo_p->fat_type = 0;
        driveInfo_p->reserved_sec_num = 0;
        driveInfo_p->root_ent_num = 0;
        driveInfo_p++;
    }
}

u32 dCommon_getFileSizeFromDisk(PDM_DISK* p_disk) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        return driveInfo_p->prf_file_size;
    }
    return 0;
}

void dCommon_setFileSizeToDisk(PDM_DISK* p_disk, u32 i_fileSize) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        driveInfo_p->prf_file_size = i_fileSize;
        return;
    }
}

s32 dCommon_getLastDeviceErrorFromDisk(PDM_DISK* p_disk) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        return driveInfo_p->last_device_error;
    }
    return 0;
}

void dCommon_setLastDeviceErrorToDisk(PDM_DISK* p_disk, s32 i_lastDevErr) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        driveInfo_p->last_device_error = i_lastDevErr;
        return;
    }
}

void dCommon_setLastDeviceErrorToDisk2(s32 i_handleIdx, s32 i_lastDevErr) {
    if (i_handleIdx >= 0 && i_handleIdx < PF_DRIVE_COUNT) {
        l_driveInfo[i_handleIdx].last_device_error = i_lastDevErr;
    }
}

s32 dCommon_getHandleIdxFromDisk(PDM_DISK* p_disk) {
    return VFSysPDMDisk2HandleIdx(p_disk);
}

u32 dCommon_getFatTypeFromDisk(PDM_DISK* p_disk) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        return driveInfo_p->fat_type;
    }
    return 1;
}

void dCommon_setFatTypeToDisk(PDM_DISK* p_disk, u32 i_fatType) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        driveInfo_p->fat_type = i_fatType;
        return;
    }
}

u32 dCommon_getResvSecNumFromDisk(PDM_DISK* p_disk) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        return driveInfo_p->reserved_sec_num;
    }
    return 0;
}

void dCommon_setResvSecNumToDisk(PDM_DISK* p_disk, u32 i_reservedSecNum) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        driveInfo_p->reserved_sec_num = i_reservedSecNum;
        return;
    }
}

u32 dCommon_getRootEntNumFromDisk(PDM_DISK* p_disk) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        return driveInfo_p->root_ent_num;
    }
    return 0;
}

void dCommon_setRootEntNumToDisk(PDM_DISK* p_disk, u32 i_rootEntNum) {
    dCommon_DriveInfo* driveInfo_p = _getDriveInfoP(p_disk);
    if (driveInfo_p != NULL) {
        driveInfo_p->root_ent_num = i_rootEntNum;
        return;
    }
}

static s32 dCommon_flush_from_handle_p(VFSys_handle* i_handle_p, BOOL i_setLastDeviceError) {
    s32 err = -1;

    if (i_handle_p != NULL && i_handle_p->device_p != NULL) {
        if (i_handle_p->device_p->type == 0) {
            int handle_idx = VFSysHandleP2Idx(i_handle_p);
            if (handle_idx != -1) {
                err = VFi_NandFlushNANDFromHandleIdx(handle_idx, i_setLastDeviceError);
            }
        } else {
            err = 0;
        }
    }

    return err;
}

s32 dCommon_FlushFromVol(PF_VOLUME* i_vol_p, BOOL i_setLastDeviceError) {
    VFSys_handle* handle_p = VFSysVol2HandleP(i_vol_p);
    return dCommon_flush_from_handle_p(handle_p, i_setLastDeviceError);
}

s32 dCommon_FlushFromHandleIdx(int i_handle_idx, BOOL i_setLastDeviceError) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    return dCommon_flush_from_handle_p(handle_p, i_setLastDeviceError);
}
