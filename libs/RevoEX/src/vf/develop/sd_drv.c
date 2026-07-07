#include <private/vf/develop/sd_drv.h>

#include <private/vf/develop/d_common.h>
#include <private/vf/develop/d_vf_sys.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/dskmng/pdm_dskmng.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

#include <revolution/sdi.h>

#include <revolution/os.h>

#include <stdio.h>

static s32 sddrv_init(PDM_DISK* p_disk);
static s32 sddrv_mount(PDM_DISK* p_disk);
static s32 sddrv_format(PDM_DISK* p_disk, const u8* param);
static s32 sddrv_pread(PDM_DISK* p_disk, u8* p_buf, u32 block, u32 num_blocks, u32* p_num_success);
static s32 sddrv_pwrite(PDM_DISK* p_disk, const u8* p_buf, u32 block, u32 num_blocks, u32* p_num_success);
static s32 sddrv_unmount(PDM_DISK* p_disk);
static s32 sddrv_finalize(PDM_DISK* p_disk);
static s32 sddrv_get_disk_info(PDM_DISK* p_disk, PDM_DISK_INFO* p_disk_info);
static s32 sddrv_physical_read(u32 num_blocks, u8* buf, u32 block, u32 bps, u32* p_num_success, PDM_DISK* p_disk);
static s32 sddrv_physical_write(u32 num_blocks, const u8* buf, u32 block, u32 bps, u32* p_num_success, PDM_DISK* p_disk);

static const PDM_FUNCTBL l_sd_func = {
    sddrv_init, sddrv_finalize, sddrv_mount, sddrv_unmount, sddrv_format, sddrv_pread, sddrv_pwrite, sddrv_get_disk_info,
};

#ifdef DEBUG
#define VFi_PrintInternalError(error, line) printf("VF internal error %d (%s %s %d)\n", error, __FILE__, __func__, line)
#else
#define VFi_PrintInternalError(error, line)
#endif  // DEBUG

void VFi_InitSDWrok() {
    // Stubbed out. VF does have SD Card supported, but this is just always stubbed out.
    // sounds like its doing a good job initializing "wrok"
}

static s32 Align_ReadBlock(SDDev* dev_handle_p /* r1+0x100 */, u32 offset /* r24 */, u32* buf /* r1+0x104 */, u32 size /* r1+0x108 */) {
    u8 work[512] ATTRIBUTE_ALIGN(256);  // r1+0x200
    u32 readStart;                      // r31
    u32 copyStart;                      // r29
    s32 IOSErr = 0;                     // r30
    u8* buf_p = (u8*)buf;               // r27

    readStart = offset;
    copyStart = 0;

    while (readStart < (offset + size)) {
        IOSErr = ISD_ReadBlock(dev_handle_p, readStart, work, 0x200);
        if (IOSErr != 0) {
            VFi_PrintInternalError(IOSErr, 103);
            return IOSErr;
        } else {
            VFipf_memcpy(&buf_p[copyStart], work, 0x200U);
            readStart += 0x200;
            copyStart += 0x200;
        }
    }
    return 0;
}

// Range: 0xE4 -> 0x1C4
static s32 Align_WriteBlock(SDDev* dev_handle_p /* r1+0x100 */, u32 offset /* r24 */, u32 buf /* r1+0x104 */, u32 size /* r1+0x108 */) {
    u8 work[512] ATTRIBUTE_ALIGN(256);  // r1+0x200
    u32 writeStart;                     // r31
    u32 copyStart;                      // r29
    s32 IOSErr = 0;                     // r30
    u8* buf_p = (u8*)buf;               // r27

    writeStart = offset;
    copyStart = 0;

    while (writeStart < (offset + size)) {
        VFipf_memcpy(work, &buf_p[copyStart], 0x200U);
        IOSErr = ISD_WriteBlock(dev_handle_p, writeStart, work, 0x200);
        if (IOSErr != 0) {
            VFi_PrintInternalError(IOSErr, 141);
            return IOSErr;
        } else {
            writeStart += 0x200;
            copyStart += 0x200;
        }
    }
    return 0;
}

// Range: 0x1C4 -> 0x2CC
static s32 _VFiGetCardSize(SDDev* fd /* r31+0x8 */, u32* totalSize /* r24 */, u32* totalSectors /* r27 */, u32* sectorSize /* r28 */) {
    s32 result;        // r29
    u32 csd[4] = {0};  // r31+0x10

    result = ISD_ReadCardRegister(fd, 9, csd, 0x10);
    if (result == 0) {
        u32 unit = ((csd[2] & 3) << 0xA) | ((u32)csd[1] >> 0x16U);
        u32 sector_total = (unit + 1) * (1 << ((((u32)csd[1] >> 7U) & 7) + 2));
        int tables = (1 << (((u32)csd[2] >> 8U) & 0xF)) / 512;
        if (tables < 1) {
            tables = 1;
        } else if (tables > 4) {
            tables = 4;
        }
        *totalSectors = sector_total * tables;
        *sectorSize = 0x200;
        *totalSize = *sectorSize * *totalSectors;
    }
    return result;
}

static struct {
    u32 flag ALIGN32;
} l_event[26] = {0};
static u32* _HandleIdxToEventFlagAddress(u32 i_handleIdx /* r3 */) {
    static u32 tmp;

    if (i_handleIdx < 0x1AU) {
        return (u32*)((u8*)l_event + (i_handleIdx << 5));
    }
    return &tmp;
}

static u32 _EventFlagAddressToHandleIdx(u32* event /* r3 */) {
    int i;  // r31

    for (i = 0; i < 0x1A; i++) {
        if ((u32*)((u8*)l_event + (i << 5)) == event) {
            return i;
        }
    }
    return -1U;
}

SDDevIntrCallback _EventCallBack(u32 status /* r25 */, u32* data /* r27 */) {
    s32 IOSErr;              // r31+0x1C
    u32 handleIdx;           // r31+0x18
    VFSys_handle* handle_p;  // r30

    // what is happening
    if ((u32)(status) == 0xc2100000) {
        (void)0;
    } else if ((u32)(status) == 0xc2000000) {
        (void)0;
    } else {
        handleIdx = _EventFlagAddressToHandleIdx(data);
        if ((u32)handleIdx < 0x1AU) {
            handle_p = VFSysGetHandleP(handleIdx);
            if ((u32)(status & 2) == 2) {
                *data = 1;
                if (handle_p != NULL) {
                    PDM_DISK* pf_disk_p = handle_p->drive.pf_disk_p;  // r26
                    if (pf_disk_p != NULL) {
                        VFSys_deviceSD* device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(pf_disk_p);  // r29
                        VFipdm_disk_notify_media_eject(pf_disk_p);
                        if ((device_p != NULL) && ((device_p->eventCallback) != NULL)) {
                            device_p->eventCallback(2);
                        }
                    }
                }
            }
            if ((u32)(status & 1) == 1) {
                *data = 2;
                if (handle_p != NULL) {
                    PDM_DISK* pf_disk_p = handle_p->drive.pf_disk_p;  // r31+0x14
                    if (pf_disk_p != NULL) {
                        VFSys_deviceSD* device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(pf_disk_p);  // r28
                        if ((device_p != NULL) && ((device_p->eventCallback) != NULL)) {
                            device_p->eventCallback(1);
                        }
                    }
                }
            }
            if (handle_p != NULL) {
                PDM_DISK* pf_disk_p = handle_p->drive.pf_disk_p;  // r31+0x10
                if (pf_disk_p != NULL) {
                    VFSys_deviceSD* device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(pf_disk_p);  // r31+0xC
                    if (device_p != NULL) {
                        SDDev* dev_handle_p = (&device_p->drive);  // r31+0x8
                        if (dev_handle_p != NULL) {
                            IOSErr = ISD_RegisterDeviceIntrHandler(dev_handle_p, (SDDevIntrCallback)_EventCallBack, data);
                            if (IOSErr != 0) {
                                u32 stub = 0;
                            }
                        }
                    }
                }
            }
        }
    }

    return NULL;
}

// Range: 0x500 -> 0x5C0
static s32 _ChkMediaInsertedAndNotifyPrfile(PDM_DISK* p_disk /* r27 */) {
    u32 devStatus;             // r1+0x8
    s32 IOSErr;                // r31
    VFSys_drive* drive_p;      // r29
    VFSys_deviceSD* device_p;  // r30
    SDDev* dev_handle_p;       // r28

    IOSErr = 0;
    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return 0;
    }
    dev_handle_p = &((VFSys_deviceSD*)device_p)->drive;
    IOSErr = ISD_GetDeviceStatus(dev_handle_p, &devStatus);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
    } else if ((u32)(devStatus & 1) == 1) {
        VFipdm_disk_notify_media_insert(p_disk);
        return 1;
    }
    return 0;
}

// Range: 0x5C0 -> 0x680
static s32 _ChkMediaEjectedAndNotifyPrfile(PDM_DISK* p_disk /* r27 */) {
    u32 devStatus;             // r1+0x8
    s32 IOSErr;                // r31
    VFSys_drive* drive_p;      // r29
    VFSys_deviceSD* device_p;  // r30
    SDDev* dev_handle_p;       // r28

    IOSErr = 0;
    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return 0;
    }
    dev_handle_p = &device_p->drive;
    IOSErr = ISD_GetDeviceStatus(dev_handle_p, &devStatus);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
    } else if ((u32)(devStatus & 1) != 1) {
        VFipdm_disk_notify_media_eject(p_disk);
        return -27;
    }
    return 0;
}

static struct {
    // total size: 0x4
    u32 info_flg;    // 0x00
} l_sddrv_info[26];  // size: 0x68, address: 0x340
// Range: 0x680 -> 0x948
static s32 sddrv_init(PDM_DISK* p_disk /* r28 */) {
    s32 handleIdx;             // r1+0x14
    s32 IOSErr;                // r31
    s32 insertErr;             // r1+0x10
    VFSys_drive* drive_p;      // r1+0xC
    VFSys_deviceSD* device_p;  // r29
    SDDev* dev_handle_p;       // r1+0x8

    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    if (p_disk == NULL) {
        return -0x14;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return -0x14;
    }
    dev_handle_p = &device_p->drive;
    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    IOSErr = ISD_ProbeCard(device_p->slotNo);
    switch (IOSErr) {
        case 0:
        case -4:
        case -51:
        case -52: {
            break;
        }
        default: {
            VFi_PrintInternalError(IOSErr, 438);
            break;
        }
    }
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return IOSErr;
    }
    // ???
    ((VFSys_deviceSD*)dev_handle_p)->base.sync_mode = device_p->slotNo;
    dev_handle_p->SDDevFd = -1;
    IOSErr = ISD_MountCard(device_p->slotNo, &dev_handle_p);
    if (IOSErr != 0) {
        VFi_PrintInternalError(IOSErr, 0x1C9);
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return IOSErr;
    }
    IOSErr = ISD_ResetDevice(dev_handle_p);
    if (IOSErr != 0) {
        VFi_PrintInternalError(IOSErr, 0x1D9);
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        ISD_UnmountCard(dev_handle_p);
        return IOSErr;
    }
    *(u32*)((u8*)l_event + (handleIdx << 5)) = 2;
    IOSErr = ISD_RegisterDeviceIntrHandler(dev_handle_p, (SDDevIntrCallback)_EventCallBack, (u32*)((u8*)l_event + (handleIdx << 5)));
    if (IOSErr != 0) {
        VFi_PrintInternalError(IOSErr, 0x1ED);
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        ISD_UnmountCard(dev_handle_p);
        return IOSErr;
    }
    insertErr = _ChkMediaInsertedAndNotifyPrfile(p_disk);
    if (insertErr == 0) {
        ISD_UnregisterDeviceIntrHandler(dev_handle_p);
        ISD_UnmountCard(dev_handle_p);
        return insertErr;
    }
    l_sddrv_info[handleIdx].info_flg &= 0xFFFFFFF8;
    dCommon_setFatTypeToDisk(p_disk, 1U);
    l_sddrv_info[handleIdx].info_flg |= 1;
    return 0;
}
// Range: 0x948 -> 0xA74
static s32 sddrv_mount(PDM_DISK* p_disk /* r31 */) {
    VFSys_drive* drive_p;      // r28
    VFSys_deviceSD* device_p;  // r29
    SDDev* dev_handle_p;       // r27
    s32 handleIdx;             // r25
    s32 ejectErr;              // r26
    u32 totalSize;             // r1+0x10
    u32 totalSectors;          // r1+0xC
    u32 sectorSize;            // r1+0x8
    s32 IOSErr;                // r30

    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    if (p_disk == NULL) {
        return -0x14;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return -0x14;
    }
    dev_handle_p = &device_p->drive;
    ejectErr = _ChkMediaEjectedAndNotifyPrfile(p_disk);
    if (ejectErr != 0) {
        return ejectErr;
    }
    IOSErr = _VFiGetCardSize(dev_handle_p, &totalSize, &totalSectors, &sectorSize);
    if (IOSErr != 0) {
        VFi_PrintInternalError(IOSErr, 0x23A);
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return IOSErr;
    }
    dCommon_setFileSizeToDisk(p_disk, totalSize);
    l_sddrv_info[handleIdx].info_flg |= 2;
    return 0;
}

// Range: 0xA74 -> 0xB00
static s32 sddrv_format(PDM_DISK* p_disk /* r29 */, const u8* param /* r1+0x8 */) {
    VFSys_drive* drive_p;  // r31
    s32 ejectErr;          // r30

    (void)param;

    drive_p = NULL;
    if (p_disk == NULL) {
        return -0x14;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    if (drive_p == NULL) {
        return -0x14;
    }
    ejectErr = _ChkMediaEjectedAndNotifyPrfile(p_disk);
    if (ejectErr != 0) {
        return ejectErr;
    }
    return 0;
}

// Range: 0xB00 -> 0xBA8
static s32 sddrv_pread(PDM_DISK* p_disk /* r29 */, u8* p_buf /* r27 */, u32 block /* r1+0x8 */, u32 num_blocks /* r28 */,
                       u32* p_num_success /* r30 */) {
    s32 ejectErr;  // r31

    *p_num_success = 0;
    if ((p_disk == NULL) || (p_buf == NULL) || (num_blocks == 0) || (p_num_success == NULL)) {
        return -0x14;
    }
    ejectErr = _ChkMediaEjectedAndNotifyPrfile(p_disk);
    if (ejectErr != 0) {
        return ejectErr;
    }
    return sddrv_physical_read(num_blocks, p_buf, block, 0x200U, p_num_success, p_disk);
}

// Range: 0xBA8 -> 0xC50
static s32 sddrv_pwrite(PDM_DISK* p_disk /* r29 */, const u8* p_buf /* r27 */, u32 block /* r1+0x8 */, u32 num_blocks /* r28 */,
                        u32* p_num_success /* r30 */) {
    s32 ejectErr;  // r31

    *p_num_success = 0;
    if ((p_disk == NULL) || (p_buf == NULL) || (num_blocks == 0) || (p_num_success == NULL)) {
        return -0x14;
    }
    ejectErr = _ChkMediaEjectedAndNotifyPrfile(p_disk);
    if (ejectErr != 0) {
        return ejectErr;
    }
    return sddrv_physical_write(num_blocks, p_buf, block, 0x200U, p_num_success, p_disk);
}

// Range: 0xC50 -> 0xCB8
static s32 sddrv_unmount(PDM_DISK* p_disk /* r30 */) {
    s32 handleIdx;  // r31

    if (p_disk == NULL) {
        return -0x14;
    }
    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    l_sddrv_info[handleIdx].info_flg &= 0xFFFFFFFD;
    return 0;
}

// Range: 0xCB8 -> 0xDB0
static s32 sddrv_finalize(PDM_DISK* p_disk /* r31 */) {
    s32 handleIdx;             // r27
    s32 IOSErr;                // r30
    VFSys_drive* drive_p;      // r26
    VFSys_deviceSD* device_p;  // r29
    SDDev* dev_handle_p;       // r28

    IOSErr = 0;
    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    if (p_disk == NULL) {
        return -0x14;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return -0x14;
    }
    dev_handle_p = &device_p->drive;
    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    ISD_UnregisterDeviceIntrHandler(dev_handle_p);
    IOSErr = ISD_UnmountCard(dev_handle_p);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return IOSErr;
    }
    handleIdx = dCommon_getHandleIdxFromDisk(p_disk);
    l_sddrv_info[handleIdx].info_flg &= ~5;
    dCommon_setFatTypeToDisk(p_disk, 1U);
    return 0;
}

// Range: 0xDB0 -> 0xF30
static s32 sddrv_get_disk_info(PDM_DISK* p_disk /* r27 */, PDM_DISK_INFO* p_disk_info /* r31 */) {
    s32 IOSErr;                // r30
    u32 totalSize;             // r1+0x14
    u32 totalSectors;          // r1+0x10
    u32 sectorSize;            // r1+0xC
    VFSys_drive* drive_p;      // r26
    VFSys_deviceSD* device_p;  // r29
    SDDev* dev_handle_p;       // r28
    u32 devStatus;             // r1+0x8

    drive_p = NULL;
    device_p = NULL;
    dev_handle_p = NULL;
    if ((p_disk == NULL) || (p_disk_info == NULL)) {
        return -0x14;
    }
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    if ((drive_p == NULL) || (device_p == NULL)) {
        return -0x14;
    }
    dev_handle_p = &device_p->drive;
    IOSErr = _VFiGetCardSize((struct _SDDev*)dev_handle_p, &totalSize, &totalSectors, &sectorSize);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
    }
    p_disk_info->total_sectors = totalSectors;
    p_disk_info->cylinders = ((totalSectors / 255) / 63) / sectorSize;
    p_disk_info->heads = 0xFF;
    p_disk_info->sectors_per_track = 0x3F;
    p_disk_info->bytes_per_sector = sectorSize;
    p_disk_info->media_attr = 0;
    p_disk_info->format_param = NULL;
    p_disk_info->media_attr |= 4;
    IOSErr = ISD_GetDeviceStatus(dev_handle_p, &devStatus);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
    } else if ((devStatus & 4) != 0) {
        p_disk_info->media_attr |= 1;
    }
    return 0;
}

// Range: 0xF30 -> 0xF48
s32 VFi_sddrv_init_drv_tbl(PDM_DISK_TBL* p_disk_tbl /* r3 */, u32 ui_ext /* r4 */) {
    p_disk_tbl->p_func = (PDM_FUNCTBL*)&l_sd_func;
    p_disk_tbl->ui_ext = ui_ext;
    return 0;
}

// Range: 0xF48 -> 0x1058
static s32 sddrv_physical_read(u32 num_blocks /* r20 */, u8* buf /* r21 */, u32 block /* r1+0x8 */, u32 bps /* r22 */, u32* p_num_success /* r23 */,
                               PDM_DISK* p_disk /* r28 */) {
    u32 fileSize;              // r27
    VFSys_drive* drive_p;      // r24
    u32 size;                  // r26
    u32 offset;                // r30
    s32 IOSErr;                // r31
    VFSys_deviceSD* device_p;  // r25
    SDDev* dev_handle_p;       // r29

    fileSize = dCommon_getFileSizeFromDisk(p_disk);
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    IOSErr = 0;
    device_p = NULL;
    dev_handle_p = NULL;
    if (drive_p == NULL) {
        return -0x14;
    }
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    dev_handle_p = &device_p->drive;
    size = num_blocks * bps;
    offset = block * bps;
    if ((offset + size) > fileSize) {
        IOSErr = Align_ReadBlock(dev_handle_p, offset, (u32*)buf, fileSize - offset);
        if (IOSErr != 0) {
            dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        }
        return -0x16;
    }
    IOSErr = Align_ReadBlock(dev_handle_p, offset, (u32*)buf, size);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return -1;
    }
    *p_num_success = num_blocks;
    return 0;
}

// Range: 0x1058 -> 0x1170
static s32 sddrv_physical_write(u32 num_blocks /* r20 */, const u8* buf /* r21 */, u32 block /* r1+0x8 */, u32 bps /* r22 */,
                                u32* p_num_success /* r23 */, PDM_DISK* p_disk /* r28 */) {
    u32 fileSize;              // r27
    VFSys_drive* drive_p;      // r24
    u32 size;                  // r26
    u32 offset;                // r30
    s32 err;                   // r1+0xC
    s32 IOSErr;                // r31
    VFSys_deviceSD* device_p;  // r25
    SDDev* dev_handle_p;       // r29

    static const int sector_size = 0x200;

    fileSize = dCommon_getFileSizeFromDisk(p_disk);
    drive_p = VFSysPDMDisk2DriveP(p_disk);
    err = 0;
    IOSErr = 0;
    device_p = NULL;
    dev_handle_p = NULL;
    if (drive_p == NULL) {
        return -0x14;
    }
    device_p = (VFSys_deviceSD*)VFSysPDMDisk2DeviceP(p_disk);
    dev_handle_p = &device_p->drive;
    size = num_blocks * bps;
    offset = block * bps;
    if ((offset + size) > fileSize) {
        IOSErr = Align_WriteBlock(dev_handle_p, offset, (u32)buf, fileSize - offset);
        if (IOSErr != 0) {
            dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        }
        return -0x16;
    }
    IOSErr = Align_WriteBlock(dev_handle_p, offset, (u32)buf, size);
    if (IOSErr != 0) {
        dCommon_setLastDeviceErrorToDisk(p_disk, IOSErr);
        return -1;
    }
    *p_num_success = num_blocks;
    return 0;
}
