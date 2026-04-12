#include <private/vf/develop/nand_drv.h>

#include <private/vf/develop/d_common.h>
#include <private/vf/develop/d_vf_sys.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/dskmng/pdm_dskmng.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

#include <private/nand.h>
#include <revolution/nand.h>

#include <revolution/os.h>

#include <stdio.h>

static s32 nanddrv_init(PDM_DISK* p_disk);
static s32 nanddrv_mount(PDM_DISK* p_disk);
static s32 nanddrv_format(PDM_DISK* p_disk, const u8* param);
static s32 nanddrv_unmount(PDM_DISK* p_disk);
static s32 nanddrv_finalize(PDM_DISK* p_disk);
static s32 nanddrv_get_disk_info(PDM_DISK* p_disk, PDM_DISK_INFO* p_disk_info);

#ifndef PF_IPL_BUILD
static s32 nanddrv_pread(PDM_DISK* p_disk, u8* p_buf, u32 block, u32 num_blocks);
static s32 nanddrv_pwrite(PDM_DISK* p_disk, const u8* p_buf, u32 block, u32 num_blocks);
static s32 nanddrv_physical_read(u32 num_blocks, u8* buf, u32 block, u32 bps, PDM_DISK* p_disk);
static s32 nanddrv_physical_write(u32 num_blocks, const u8* buf, u32 block, u32 bps, PDM_DISK* p_disk);
#else
static s32 nanddrv_pread(PDM_DISK* p_disk, u8* p_buf, u32 block, u32 num_blocks);
static s32 nanddrv_pwrite(PDM_DISK* p_disk, const u8* p_buf, u32 block, u32 num_blocks);
static s32 nanddrv_physical_read(u32 num_blocks, u8* buf, u32 block, u32 bps, PDM_DISK* p_disk);
static s32 nanddrv_physical_write(u32 num_blocks, const u8* buf, u32 block, u32 bps, PDM_DISK* p_disk);
#endif

// clang-format off
static const PDM_FUNCTBL l_nand_func = {
    nanddrv_init,
    nanddrv_finalize,
    nanddrv_mount,
    nanddrv_unmount,
    nanddrv_format,
    nanddrv_pread,
    nanddrv_pwrite,
    nanddrv_get_disk_info
};
// clang-format on

typedef s32 (*VFi_NANDCreate)(const char*, u8, u8);
typedef s32 (*VFi_NANDOpen)(const char*, NANDFileInfo*, u8);
typedef s32 (*VFi_NANDCreateDir)(const char*, u8, u8);
typedef s32 (*VFi_NANDDelete)(const char*);

static struct {
    VFi_NANDCreate create;        // 0x00
    VFi_NANDOpen open;            // 0x04
    VFi_NANDCreateDir createDir;  // 0x08
    VFi_NANDDelete delete;        // 0x0C
} l_nandFunc[PF_DRIVE_COUNT];

int VF_nand_retry_max;
int VF_nand_sleep_msec;

#ifdef DEBUG
#define VFi_NANDPrint(...) printf(__VA_ARGS__)
#define VFi_NANDPanic(line, ...) OSPanic(__FILE__, line, __VA_ARGS__)
#else
#define VFi_NANDPrint(...)
#define VFi_NANDPanic(msg, line)
#endif  // DEBUG

static void _PrintBusyErrorSub(s32 error, const char* i_funcName) {
    if (error == NAND_RESULT_BUSY) {
        VFi_NANDPrint("## VF_NANDError NAND_RESULT_BUSY occured. %s\n", i_funcName);
        return;
    }
    if (error == NAND_RESULT_ALLOC_FAILED) {
        VFi_NANDPrint("## VF_NANDError NAND_RESULT_ALLOC_FAILED occured. %s\n", i_funcName);
        return;
    }
    if (error < NAND_RESULT_OK && error != NAND_RESULT_NOEXISTS) {
        VFi_NANDPrint("VF internal error %d --- %s %d (call from %s)\n", error, __FILE__, 175, i_funcName);
    }
}

#ifdef DEBUG
#define VFi_NANDPrintError(error) _PrintBusyErrorSub(error, __func__)
#else
#define VFi_NANDPrintError(error)
#endif  // DEBUG

static void _SleepAfewMiliSec() {
    OSSleepMilliseconds(VF_nand_sleep_msec);
}

#define VFi_NANDFunction(...)                                                                                                                        \
                                                                                                                                                     \
    s32 challenge = VF_nand_retry_max;                                                                                                               \
    s32 error = NAND_RESULT_OK;                                                                                                                      \
    while (challenge-- > 0) {                                                                                                                        \
        error = (__VA_ARGS__);                                                                                                                       \
        VFi_NANDPrintError(error);                                                                                                                   \
        if (error != NAND_RESULT_BUSY && error != NAND_RESULT_ALLOC_FAILED) {                                                                        \
            return error;                                                                                                                            \
        }                                                                                                                                            \
        _SleepAfewMiliSec();                                                                                                                         \
    }                                                                                                                                                \
    return error;

s32 VFi_NandCreate(const char* path, u8 perm, u8 attr) {
    VFi_NANDFunction(NANDCreate(path, perm, attr));
}

s32 VFi_NandPrivateCreate(const char* path, u8 perm, u8 attr) {
    VFi_NANDFunction(NANDPrivateCreate(path, perm, attr));
}

s32 VFi_NandDelete(const char* path) {
    VFi_NANDFunction(NANDDelete(path));
}

s32 VFi_NandPrivateDelete(const char* path) {
    VFi_NANDFunction(NANDPrivateDelete(path));
}

s32 VFi_NandClose(NANDFileInfo* info) {
    VFi_NANDFunction(NANDClose(info));
}

s32 VFi_NandOpen(const char* path, NANDFileInfo* info, u8 accType) {
    VFi_NANDFunction(NANDOpen(path, info, accType));
}

s32 VFi_NandPrivateOpen(const char* path, NANDFileInfo* info, u8 accType) {
    VFi_NANDFunction(NANDPrivateOpen(path, info, accType));
}

s32 VFi_NandWrite(NANDFileInfo* info, void* buf, u32 length) {
    VFi_NANDFunction(NANDWrite(info, buf, length));
}

s32 VFi_NandRead(NANDFileInfo* info, void* buf, u32 length) {
    VFi_NANDFunction(NANDRead(info, buf, length));
}

s32 VFi_NandCreateDir(const char* path, u8 perm, u8 attr) {
    VFi_NANDFunction(NANDCreateDir(path, perm, attr));
}

s32 VFi_NandPrivateCreateDir(const char* path, u8 perm, u8 attr) {
    VFi_NANDFunction(NANDPrivateCreateDir(path, perm, attr));
}

s32 VFi_NandSeek(NANDFileInfo* info, s32 offset, s32 whence) {
    VFi_NANDFunction(NANDSeek(info, offset, whence));
}

s32 VFi_NandGetLength(NANDFileInfo* info, u32* length) {
    VFi_NANDFunction(NANDGetLength(info, length));
}

static u8 _MakePermitForRVL(u8 i_perm) {
    u8 perm = 0;
    if ((i_perm & 1) != 0) {
        perm |= 0x10;
    }
    if ((i_perm & 2) != 0) {
        perm |= 0x20;
    }
    if ((i_perm & 4) != 0) {
        perm |= 4;
    }
    if ((i_perm & 8) != 0) {
        perm |= 8;
    }
    if ((i_perm & 0x10) != 0) {
        perm |= 1;
    }
    if ((i_perm & 0x20) != 0) {
        perm |= 2;
    }
    return perm;
}

s32 VFi_NandCreateSp(const char* path, u8 i_perm, u8 attr, u32 i_handleIdx) {
    u8 perm = _MakePermitForRVL(i_perm);
    if (i_handleIdx < PF_DRIVE_COUNT) {
        VFi_NANDCreate tmpCreate;
        tmpCreate = l_nandFunc[i_handleIdx].create;
        if (tmpCreate != NULL) {
            return tmpCreate(path, perm, attr);
        }
        return VFi_NandCreate(path, perm, attr);
    }
    if (i_handleIdx == -10) {
        return VFi_NandCreate(path, perm, attr);
    }
    return VFi_NandPrivateCreate(path, perm, attr);
}

s32 VFi_NandOpenSp(const char* path, void* info, u8 accType, u32 i_handleIdx) {
    NANDFileInfo* info_p = info;
    if (i_handleIdx < PF_DRIVE_COUNT) {
        VFi_NANDOpen tmpOpen = l_nandFunc[i_handleIdx].open;
        if (tmpOpen != NULL) {
            return tmpOpen(path, info_p, accType);
        }
        return VFi_NandOpen(path, info_p, accType);
    }
    if (i_handleIdx == -10) {
        return VFi_NandOpen(path, info_p, accType);
    }
    return VFi_NandPrivateOpen(path, info_p, accType);
}

s32 VFi_NandDeleteSp(const char* path, u32 i_handleIdx) {
    if (i_handleIdx < PF_DRIVE_COUNT) {
        VFi_NANDDelete tmpDelete = l_nandFunc[i_handleIdx].delete;
        if (tmpDelete != NULL) {
            return tmpDelete(path);
        }
        return VFi_NandDelete(path);
    }
    if (i_handleIdx == -10) {
        return VFi_NandDelete(path);
    }
    return VFi_NandPrivateDelete(path);
}

void VFi_NandSetNANDFuncNormal(u32 i_handleIdx) {
    if (i_handleIdx < PF_DRIVE_COUNT) {
        l_nandFunc[i_handleIdx].create = VFi_NandCreate;
        l_nandFunc[i_handleIdx].open = VFi_NandOpen;
        l_nandFunc[i_handleIdx].createDir = VFi_NandCreateDir;
        l_nandFunc[i_handleIdx].delete = VFi_NandDelete;
    }
}

void VFi_NandSetNANDFuncEx(u32 i_handleIdx) {
    if (i_handleIdx < PF_DRIVE_COUNT) {
        l_nandFunc[i_handleIdx].create = VFi_NandPrivateCreate;
        l_nandFunc[i_handleIdx].open = VFi_NandPrivateOpen;
        l_nandFunc[i_handleIdx].createDir = VFi_NandPrivateCreateDir;
        l_nandFunc[i_handleIdx].delete = VFi_NandPrivateDelete;
    }
}

static s32 _CreateNANDFileWithDir(const char* i_path_p, u8 i_perm, u32 i_handleIdx) {
    s32 nandErr = 0;
    nandErr = VFi_NandCreateSp(i_path_p, i_perm, 0, i_handleIdx);
    return (s16)nandErr;
}

static s32 A32_NANDRead(NANDFileInfo* i_fileInfo_p, void* i_buf, u32 i_size) {
    u8 work[32] ALIGN64;
    s32 NANDError = NAND_RESULT_OK;
    void* p_2nd;
    void* p_3rd;
    u32 size_1st;
    u32 size_2nd;
    u32 size_3rd;

    if ((i_size & 31) != 0) {
        VFi_NANDPrint("VF internal error [A32_NANDRead] %s %d\n", __FILE__, 1082);
        return NAND_RESULT_OK;
    }
    dCommon_DevideBuff32(i_buf, i_size, &size_1st, &p_2nd, &size_2nd, &p_3rd, &size_3rd);
    if (size_1st == 0) {
        NANDError = VFi_NandRead(i_fileInfo_p, i_buf, i_size);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
    } else {
        NANDError = VFi_NandRead(i_fileInfo_p, &work, 32);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
        VFipf_memcpy(i_buf, &work, size_1st);
        NANDError = VFi_NandSeek(i_fileInfo_p, -size_3rd, NAND_SEEK_CUR);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
        if (size_2nd != 0) {
            NANDError = VFi_NandRead(i_fileInfo_p, p_2nd, size_2nd);
            if (NANDError < NAND_RESULT_OK) {
                return NANDError;
            }
        }
        if (size_3rd != 0) {
            NANDError = VFi_NandRead(i_fileInfo_p, &work, 32);
            if (NANDError < NAND_RESULT_OK) {
                return NANDError;
            }
            VFipf_memcpy(p_3rd, &work, size_3rd);
        }
    }
    return i_size;
}

static s32 A32_NANDWrite(NANDFileInfo* i_fileInfo_p, void* i_buf, u32 i_size, PDM_DISK* p_disk) {
    u8 work[32] ALIGN64;
    s32 NANDError = NAND_RESULT_OK;
    void* p_2nd;
    void* p_3rd;
    u32 size_1st;
    u32 size_2nd;
    u32 size_3rd;
    u32 handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    VFSys_handle* handle_p = VFSysGetHandleP(handleIdx);

    (void)handle_p;  // unused

    if ((i_size & 31) != 0) {
        VFi_NANDPrint("VF internal error [A32_NANDWrite] %s %d\n", __FILE__, 1189);
        return NAND_RESULT_OK;
    }
    dCommon_DevideBuff32(i_buf, i_size, &size_1st, &p_2nd, &size_2nd, &p_3rd, &size_3rd);
    if (size_1st == 0) {
        NANDError = VFi_NandWrite(i_fileInfo_p, i_buf, i_size);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
    } else {
        VFipf_memcpy(&work, i_buf, size_1st);
        NANDError = VFi_NandWrite(i_fileInfo_p, &work, size_1st);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
        NANDError = VFi_NandWrite(i_fileInfo_p, p_2nd, size_2nd + size_3rd);
        if (NANDError < NAND_RESULT_OK) {
            return NANDError;
        }
    }
    return i_size;
}

static s32 _CreatePrfFile(u32 i_fileSize, char* i_fullpath_p, u16 i_version, u8 i_perm, u32 i_handleIdx) {
    u8 work[512] ALIGN64;
    s32 nandError = NAND_RESULT_OK;
    NANDFileInfo fileInfo;
    u32 restSize = i_fileSize;

    if ((i_fileSize & 31) != 0) {
        VFi_NANDPanic(1284, "VFF size は32の倍数にしてください。");  // "VF size should be a multiple by 32"
        return NAND_RESULT_INVALID;
    }

    nandError = _CreateNANDFileWithDir(i_fullpath_p, i_perm, i_handleIdx);
    if (nandError != NAND_RESULT_OK) {
        return (s16)nandError;
    }

    nandError = VFi_NandOpenSp(i_fullpath_p, &fileInfo, NAND_ACCESS_WRITE, i_handleIdx);
    if (nandError != NAND_RESULT_OK) {
        return (s16)nandError;
    }

    dCommon_CopyPrfFileHeader(&work, i_fileSize, i_version, 0);
    nandError = VFi_NandWrite(&fileInfo, &work, 32);
    restSize -= 0x20;

    if (nandError < NAND_RESULT_OK) {
        VFi_NandClose(&fileInfo);
        VFi_NandDeleteSp(i_fullpath_p, i_handleIdx);
        return nandError;
    }
    VFipf_memset(&work, 0, 0x200);

    for (; restSize >= 0x200; restSize -= 0x200) {
        nandError = VFi_NandWrite(&fileInfo, &work, 0x200);
        if (nandError < NAND_RESULT_OK) {
            VFi_NandClose(&fileInfo);
            VFi_NandDeleteSp(i_fullpath_p, i_handleIdx);
            return nandError;
        }
    }
    if (restSize != 0) {
        nandError = VFi_NandWrite(&fileInfo, &work, restSize);
        if (nandError < NAND_RESULT_OK) {
            VFi_NandClose(&fileInfo);
            VFi_NandDeleteSp(i_fullpath_p, i_handleIdx);
            return nandError;
        }
    }
    VFi_NandClose(&fileInfo);
    return NAND_RESULT_OK;
}

s32 NAND_CreatePrfFileEx(u32 i_fileSize, char* i_fullpath_p, u16 i_version) {
    return _CreatePrfFile(i_fileSize, i_fullpath_p, i_version, 0x3FU, -0xBU);
}

s32 VFi_NandFlushNANDFromHandleIdx(s32 i_handleIdx, BOOL i_setLastDeviceError) {
    s32 NANDError = NAND_RESULT_OK;
    VFSys_drive* drive_p = VFSysGetDriveP(i_handleIdx);
    VFSys_handle* handle_p = VFSysGetHandleP(i_handleIdx);

    if (handle_p != NULL && handle_p->device_p != NULL && handle_p->device_p->sync_mode == 1) {
        return NAND_RESULT_OK;
    }
    if (drive_p != NULL) {
        const char* sys_name_p = (const char*)drive_p->pf_filename;
        NANDFileInfo* fileInfo_p = drive_p->file_p;
        NANDError = VFi_NandClose(fileInfo_p);
        if (NANDError < NAND_RESULT_OK) {
            if (i_setLastDeviceError) {
                dCommon_setLastDeviceErrorToDisk2(i_handleIdx, NANDError);
            }
            return NANDError;
        }
        NANDError = VFi_NandOpenSp(sys_name_p, fileInfo_p, NAND_ACCESS_RW, i_handleIdx);
        if (NANDError < NAND_RESULT_OK) {
            if (i_setLastDeviceError) {
                dCommon_setLastDeviceErrorToDisk2(i_handleIdx, NANDError);
            }
            return NANDError;
        }
    }
    return NAND_RESULT_OK;
}

static s32 _MountPrfFile(PDM_DISK* p_disk, char* i_fullpath_p) {
    PR_BINHEADER header ALIGN64;
    VFSys_drive* drive_p = VFSysPDMDisk2DriveP(p_disk);
    NANDFileInfo* fileInfo_p = NULL;
    s32 nandError = NAND_RESULT_OK;
    u32 handleIdx = dCommon_getHandleIdxFromDisk(p_disk);

    if (drive_p == NULL) {
        return -20;
    }
    fileInfo_p = drive_p->file_p;
    nandError = VFi_NandOpenSp(i_fullpath_p, fileInfo_p, NAND_ACCESS_READ, handleIdx);
    if (nandError == 0) {
        VFipf_memset(&header, 0, 32);
        nandError = A32_NANDRead(fileInfo_p, &header, 32);
        if (nandError < NAND_RESULT_OK) {
            VFi_NandClose(fileInfo_p);
            dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
            return nandError;
        }
        dCommon_PrintSignature(&header);
        if (!dCommon_IsPrfFile(&header)) {
            VFi_NandClose(fileInfo_p);
            return -1;
        } else {
            u32 fileSize;
            u32 dataSize;
            u32 SPU;
            u32 fatType;

            dCommon_setFileSizeToDisk(p_disk,
                                      ((header.fileSize[0] << 24) | (header.fileSize[1] << 16) | (header.fileSize[2] << 8) | (header.fileSize[3])));
            fileSize = dCommon_getFileSizeFromDisk(p_disk);
            dataSize = (fileSize - 0x20);
            SPU = ((dataSize + 1) >> 9);
            fatType = dCommon_GetNiceFatType(NULL, SPU, 1, 0x200);
            dCommon_setFatTypeToDisk(p_disk, fatType);
            dCommon_setResvSecNumToDisk(p_disk, dCommon_GetReservedSecFromFatType(fatType));
            dCommon_setRootEntNumToDisk(p_disk, dCommon_GetRootEntNumFromFatType(fatType));
            VFi_NandClose(fileInfo_p);
        }
    } else {
        dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
        return nandError;
    }

    nandError = VFi_NandOpenSp(i_fullpath_p, fileInfo_p, 3U, handleIdx);
    if (nandError == NAND_RESULT_OK) {
        return 0;
    } else {
        dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
        return nandError;
    }
}

static u16 _UnmountPrfFile(PDM_DISK* p_disk) {
    VFSys_drive* drive_p = VFSysPDMDisk2DriveP(p_disk);

    if (drive_p != NULL) {
        s32 nandError = NAND_RESULT_OK;
        NANDFileInfo* fileInfo_p = drive_p->file_p;
        nandError = VFi_NandClose(fileInfo_p);
        if (nandError == NAND_RESULT_OK) {
            return NAND_RESULT_OK;
        }
        dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
    }
    return -1;
}

static s32 nanddrv_BuildUpFSInfoSector(u8* buf) {
    if (dCommon_MakeFsInfoSec(buf, 0x200) == 0) {
        return 0;
    }
    return -21;
}

static s32 nanddrv_BuildUpBootSector(PDM_DISK* p_disk, u8* buf, PDM_FAT_TYPE* type) {
    PDM_DISK* realDisk_p = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    u32 drvSPU = realDisk_p->disk_info.total_sectors;

    dCommon_MakeBootSector(buf, type, drvSPU, 1, 0x200, 0xEBU, 0x90U, 0x3FU, dCommon_getResvSecNumFromDisk(p_disk),
                           dCommon_getRootEntNumFromDisk(p_disk), 0xF0);
    dCommon_setFatTypeToDisk(p_disk, *type);
    return 0;
}

static s32 nanddrv_init(PDM_DISK* p_disk) {
    if (p_disk == NULL) {
        return -20;
    }
    dCommon_setFatTypeToDisk(p_disk, 1);
    VFipdm_disk_notify_media_insert(p_disk);
    return 0;
}

static s32 nanddrv_mount(PDM_DISK* p_disk) {
    VFSys_drive* drive_p = NULL;
    s32 nandError = NAND_RESULT_OK;

    if (p_disk == NULL) {
        return -20;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    if (drive_p == NULL) {
        return -20;
    }
    nandError = _MountPrfFile(p_disk, (char*)drive_p->pf_filename);
    if (nandError == 0) {
        return 0;
    }
    return nandError;
}

static s32 nanddrv_format(PDM_DISK* p_disk, const u8* param) {
    if (p_disk == NULL) {
        return -20;
    }
    return 0;
}

#ifndef PF_IPL_BUILD
static s32 nanddrv_pread(PDM_DISK* p_disk, u8* p_buf, u32 block, u32 num_blocks) {
    *p_num_success = 0;
    if (p_disk == NULL || p_buf == NULL || num_blocks == 0 || p_num_success == NULL) {
        return -20;
    }
    return nanddrv_physical_read(num_blocks, p_buf, block, 0x200, p_num_success, p_disk);
}

static s32 nanddrv_pwrite(PDM_DISK* p_disk, const u8* p_buf, u32 block, u32 num_blocks) {
    *p_num_success = 0;
    if (p_disk == NULL || p_buf == NULL || num_blocks == 0 || p_num_success == NULL) {
        return -20;
    }
    return nanddrv_physical_write(num_blocks, p_buf, block, 0x200, p_num_success, p_disk);
}
#else
static s32 nanddrv_pread(PDM_DISK* p_disk, u8* p_buf, u32 block, u32 num_blocks) {
    if (p_disk == NULL || p_buf == NULL || num_blocks == 0) {
        return -20;
    }
    return nanddrv_physical_read(num_blocks, p_buf, block, 0x200, p_disk);
}

static s32 nanddrv_pwrite(PDM_DISK* p_disk, const u8* p_buf, u32 block, u32 num_blocks) {
    if (p_disk == NULL || p_buf == NULL || num_blocks == 0) {
        return -20;
    }
    return nanddrv_physical_write(num_blocks, p_buf, block, 0x200, p_disk);
}
#endif

static s32 nanddrv_unmount(PDM_DISK* p_disk) {
    u16 nandError = NAND_RESULT_OK;
    if (p_disk == NULL) {
        return -20;
    }
    nandError = _UnmountPrfFile(p_disk);
    if (nandError == 0) {
        return 0;
    }
    return nandError;
}

static s32 nanddrv_finalize(PDM_DISK* p_disk) {
    if (p_disk == NULL) {
        return -20;
    }
    dCommon_setFatTypeToDisk(p_disk, 1);
    return 0;
}

static s32 nanddrv_get_disk_info(PDM_DISK* p_disk, PDM_DISK_INFO* p_disk_info) {
    u32 fileSize;
    u32 dataSize;

    if (p_disk == NULL || p_disk_info == NULL) {
        return -20;
    }
    fileSize = dCommon_getFileSizeFromDisk(p_disk);
    dataSize = fileSize - 0x20;
    p_disk_info->total_sectors = (dataSize + 1) >> 9;
    p_disk_info->cylinders = p_disk_info->total_sectors / 0xFF / 0x3F / 0x200;
    p_disk_info->heads = 0xFF;
    p_disk_info->sectors_per_track = 0x3F;
    p_disk_info->bytes_per_sector = 0x200;
    p_disk_info->media_attr = 0;
    p_disk_info->format_param = NULL;
    return 0;
}

s32 VFi_nanddrv_init_drv_tbl(PDM_DISK_TBL* p_disk_tbl, u32 ui_ext) {
    p_disk_tbl->p_func = (PDM_FUNCTBL*)&l_nand_func;
    p_disk_tbl->ui_ext = ui_ext;
    return 0;
}

static s32 nanddrv_physical_read(u32 num_blocks, u8* buf, u32 block, u32 bps, PDM_DISK* p_disk) {
    u32 fileSize = dCommon_getFileSizeFromDisk(p_disk);
    u32 size;
    s32 err;
    u32 offset;
    s32 nandError = NAND_RESULT_OK;
    VFSys_drive* drive_p = VFSysPDMDisk2DriveP(p_disk);
    NANDFileInfo* fileInfo_p = NULL;

    if (drive_p == NULL) {
        return -20;
    }
    fileInfo_p = drive_p->file_p;
#ifndef PF_IPL_BUILD
    if (dCommon_ReadDummyBPB(num_blocks, (u8*)buf, block, p_num_success, p_disk, &err, nanddrv_BuildUpBootSector, nanddrv_BuildUpFSInfoSector) == 0) {
#else
    if (dCommon_ReadDummyBPB(num_blocks, (u8*)buf, block, NULL, p_disk, &err, nanddrv_BuildUpBootSector, nanddrv_BuildUpFSInfoSector) == 0) {
#endif
        return err;
    }
    size = num_blocks * bps;
    offset = dCommon_GetPhysicalOffset(block, bps, dCommon_getResvSecNumFromDisk(p_disk));
    nandError = VFi_NandSeek(fileInfo_p, (s32)offset, NAND_SEEK_BEG);
    if (nandError == offset) {
        if ((offset + size) > fileSize) {
            return -22;
        }
        nandError = A32_NANDRead(fileInfo_p, (u8*)buf, size);
        if (nandError == size) {
#ifndef PF_IPL_BUILD
            *p_num_success = num_blocks;
#endif
            return 0;
        }
    } else {
        VFi_NANDPrint("VF internal error (seek failed) %s %d\n", __FILE__, 2120);
    }
    dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
    return nandError;
}

static s32 nanddrv_physical_write(u32 num_blocks, const u8* buf, u32 block, u32 bps, PDM_DISK* p_disk) {
    u32 fileSize = dCommon_getFileSizeFromDisk(p_disk);
    u32 size;
    u32 offset;
    s32 nandError = NAND_RESULT_OK;
    VFSys_drive* drive_p = VFSysPDMDisk2DriveP(p_disk);
    NANDFileInfo* fileInfo_p = NULL;
    s32 err = 0;

    if (drive_p == NULL) {
        return -20;
    }
    fileInfo_p = drive_p->file_p;
#ifndef PF_IPL_BUILD
    if (dCommon_WriteDummyBPB(num_blocks, block, p_num_success, p_disk, &err) == 0)
#else
    if (dCommon_WriteDummyBPB(num_blocks, block, NULL, p_disk, &err) == 0)
#endif
    {
        return err;
    }
    size = num_blocks * bps;
    offset = dCommon_GetPhysicalOffset(block, bps, dCommon_getResvSecNumFromDisk(p_disk));
    nandError = VFi_NandSeek(fileInfo_p, offset, NAND_SEEK_BEG);
    if (nandError == offset) {
        if ((offset + size) > fileSize) {
            return -22;
        }
        nandError = A32_NANDWrite(fileInfo_p, (u8*)buf, size, p_disk);
        if (nandError == size) {
#ifndef PF_IPL_BUILD
            *p_num_success = num_blocks;
#endif
            return 0;
        }
    } else {
        VFi_NANDPrint("VF internal error (seek failed) %s %d\n", __FILE__, 2234);
    }
    dCommon_setLastDeviceErrorToDisk(p_disk, nandError);
    return nandError;
}
