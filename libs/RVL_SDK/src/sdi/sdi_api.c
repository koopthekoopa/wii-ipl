#include <revolution/sdi.h>

#include <revolution/os.h>

#include <private/ios.h>
#include <private/ipc.h>

#include <string.h>

#pragma sym on

#define SD_SLOT_0_PATH      "/dev/sdio/slot0"
#define SD_SLOT_1_PATH      "/dev/sdio/slot1"
#define SD_SLOT_W_PATH      "/dev/sdio/slotw"

#define SD_SLOT_PATH_LENGTH 32

typedef void (*SDCallbackFunc)(s32, void*);

#define SD_CMD_SIZE 0x24

u32             __sdCardStatus = 0;
u32             __sdReq = 0;

u32*            __sdCmdBuffer = NULL;

u32*            __sdResp = NULL;
u32*            __sdResp2 = NULL;

u32*            __sdReg = NULL;

IOSIoVector*    __sdVect = NULL;

IOSHeapId       __sdHeapId = -1;

char            __sdPaths[SD_MAX_SLOTS][OSRoundUp32B(SD_SLOT_PATH_LENGTH)] ALIGN32;
OSMutex         __reqMutex;

typedef struct __sdCbArg {
    SDCallbackFunc  cb;     // 0x00
    void*           cbArg;  // 0x04
    ISD_Device*     dev;    // 0x08
    u32             unk_0x0C;
    u32             unk_0x10;
    u32*            resp;   // 0x14
    u8*             unk_0x18;
} __sdCbArg;

enum {
    SD_IOCTL_2 = 2,
};

static IOSFd        sduOpenFD(u32 slot);

static IOSError     sduCommandv(s32 fd, u32 cmd, u32 cmdType, u32 respType, u32 arg, u32 buffer, u32 blockCount, u32 sectorSize, u32 param_9, u32* resp, void* cb, void* cbArg);
static ISD_Error    sduCommand(s32 fd, u32 cmd, u32 cmdType, u32 respType, u32 arg, u32 buffer, u32 blockCount, u32 sectorSize, u32 param_9, u32* resp, void* cb, void* cbArg);

static ISD_Error    sduDatabuswidth(ISD_Device* dev, u32 buswidth);
static ISD_Error    sduGetSCR(ISD_Device* dev, u32* data) NO_INLINE;
static ISD_Error    sduGetOCR(ISD_Device* dev, u32* data);

IOSError __sdCb(s32 result, void* arg) {
    __sdCbArg* data = (__sdCbArg*)arg;

    switch (data->unk_0x0C) {
        case 4: {
            if (result != 0) {
                OSReport("   +++ SD RESET Failed: %d +++\n", result);
                data->dev->unk_0x10 = 0;
            }
            else {
                if (data->dev != NULL) {
                    data->dev->unk_0x10 = *data->resp;
                    __sdCardStatus = 0x10000;
                    data->dev->unk_0x24 = 2;
                }
            }

            __sdReq = 0;
            break;
        }
        case 25:
        case 38:
        case 18: {
            __sdReq = 0;
            break;
        }
    }

    if (data->cb != NULL && result != SD_ERROR_21000000) {
        data->cb(result, data->cbArg);
    }

    if (data->unk_0x18 != NULL) {
        iosFree(__sdHeapId, data->unk_0x18);
    }
    iosFree(__sdHeapId, data);

    return result;
}

ISD_Error ISD_GetHCRegister(ISD_Device* dev, u32 param_2, u32* param_3, u32 param_4) {
    IOSError ret;

    if (__sdHeapId < 0) {
        return SD_ERROR_FATAL;
    }

    __sdReg[0] = param_2;
    __sdReg[3] = param_4;
    __sdReg[4] = 0;

    if (param_3 != NULL) {
        ret = IOS_Ioctl(dev->fd, SD_IOCTL_2, __sdReg, 0x18, __sdCmdBuffer, 4);
        if (ret != IPC_RESULT_OK) {
            return SD_ERROR_FATAL;
        }
        *param_3 = *__sdCmdBuffer;
        return ret;
    }

    return SD_ERROR_FATAL;
}

ISD_Error ISD_GetDeviceStatus(ISD_Device* dev, u32* param_2) {
    IOSError ret = SD_ERROR_FATAL;

    if (__sdHeapId >= 0 && param_2 != NULL) {
        OSLockMutex(&__reqMutex);

        if (__sdReq != 0) {
            OSUnlockMutex(&__reqMutex);
        }
        else {
            __sdReq = 1;
            OSUnlockMutex(&__reqMutex);

            ret = IOS_Ioctl(dev->fd, 11, NULL, 0, __sdCmdBuffer, 4);
            if (ret != IPC_RESULT_OK) {
                __sdReq = 0;
            }
            else {
                *param_2 = *__sdCmdBuffer;
                __sdReq = 0;
            }
        }
    }

    return ret;
}

static IOSError sduCommandv(s32 fd, u32 cmd, u32 cmdType, u32 respType, u32 arg, u32 buffer, u32 blockCount, u32 sectorSize, u32 param_9, u32* resp, void* cb, void* cbArg) {
    IOSError ret;
    u32 readCount, writeCount;
    u32* sdCmd;

    if (param_9 != 0) {
        readCount = 2;
        writeCount = 1;
    }
    else {
        readCount = 1;
        writeCount = 2;
    }

    sdCmd = iosAlloc(__sdHeapId, OSRoundUp32B(SD_CMD_SIZE));
    if (sdCmd == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
    }
    else {
        sdCmd[0] = cmd;
        sdCmd[1] = cmdType;
        sdCmd[2] = respType;
        sdCmd[3] = arg;
        sdCmd[6] = buffer;
        sdCmd[4] = blockCount;
        sdCmd[5] = sectorSize;
        sdCmd[7] = 1;

        __sdVect->base = (u8*)sdCmd;
        __sdVect->length = SD_CMD_SIZE;
        __sdVect[1].base = (u8*)buffer;
        __sdVect[1].length = blockCount * sectorSize;
        __sdVect[2].base = (u8*)__sdResp;
        __sdVect[2].length = 0x10;

        if (cb != NULL) {
            __sdCbArg* data = iosAlloc(__sdHeapId, sizeof(__sdCbArg));
            if (data == NULL) {
                ret = IPC_RESULT_ALLOC_FAILED;
            }
            else {
                data->cb = cb;
                data->cbArg = cbArg;
                data->resp = resp;
                data->unk_0x0C = cmd;
                data->unk_0x18 = (u8*)sdCmd;

                ret = IOS_IoctlvAsync(fd, 7, readCount, writeCount, __sdVect, __sdCb,  data);
            }
        }
        else {
            ret = IOS_Ioctlv(fd, 7, readCount, writeCount, __sdVect);
            if (ret == IPC_RESULT_OK && resp != NULL) {
                resp[0] = __sdResp[0];
            }
        }
    }

    if ((cb == NULL || ret != IPC_RESULT_OK) && sdCmd != NULL) {
        iosFree(__sdHeapId,sdCmd);
    }

    return ret;
}

static ISD_Error sduCommand(s32 fd, u32 cmd, u32 cmdType, u32 respType, u32 arg, u32 buffer, u32 blockCount, u32 sectorSize, u32 param_9, u32* resp, void* cb, void* cbArg) {
    ISD_Error ret;
    u32* sdCmd;

    sdCmd = iosAlloc(__sdHeapId, ROUNDUP(SD_CMD_SIZE, 64));
    if (sdCmd == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
    }
    else {
        sdCmd[0] = cmd;
        sdCmd[1] = cmdType;
        sdCmd[2] = respType;
        sdCmd[3] = arg;
        sdCmd[6] = buffer;
        sdCmd[4] = blockCount;
        sdCmd[5] = sectorSize;
        sdCmd[7] = param_9;

        if (resp != NULL) {
            if (cb != NULL) {
                __sdCbArg* data = iosAlloc(__sdHeapId, sizeof(__sdCbArg));
                if (data == NULL) {
                    ret = IPC_RESULT_ALLOC_FAILED;
                }
                else {
                    data->cb = cb;
                    data->cbArg = cbArg;
                    data->resp = resp;
                    data->unk_0x0C = cmd;
                    data->unk_0x10 = 1;
                    data->unk_0x18 = (u8*)sdCmd;

                    ret = IOS_IoctlAsync(fd, 7, sdCmd, SD_CMD_SIZE /*typo?*/, __sdResp, 0x10, __sdCb, data);
                    if (ret != IPC_RESULT_OK) {
                        ret = SD_ERROR_FATAL;
                    }
                }
            }
            else {
                ret =  IOS_Ioctl(fd, 7, sdCmd, 0x24, __sdResp, 0x10);
                if (ret != IPC_RESULT_OK) {
                    if (cmd == 7) {
                        ret = SD_ERROR_SUCCESS;
                    }
                }
                else {
                    resp[0] = __sdResp[0];
                    resp[1] = __sdResp[1];
                    resp[2] = __sdResp[2];
                    resp[3] = __sdResp[3];
                }
            }
        }
        else {
            ret = SD_ERROR_FATAL;
        }
    }

    if ((resp == NULL || cb == NULL || ret != 0) && sdCmd != NULL) {
        iosFree(__sdHeapId, sdCmd);
    }

    return ret;
}

ISD_Error ISD_ResetDevice(ISD_Device* dev) {
    IOSError ret;

    if (__sdHeapId < 0) {
        return SD_ERROR_FATAL;
    }

    OSLockMutex(&__reqMutex);
    if (__sdReq != 0) {
        OSUnlockMutex(&__reqMutex);
        return SD_ERROR_FATAL;
    }

    __sdReq = 1;

    OSUnlockMutex(&__reqMutex);

    ret = IOS_Ioctl(dev->fd, 4, NULL, 0, __sdCmdBuffer, 4);
    if (ret != IPC_RESULT_OK) {
        dev->unk_0x10 = 0;
        __sdReq = 0;
        return ret;
    }

    dev->unk_0x10 = *__sdCmdBuffer;
    __sdCardStatus = 0x10000;
    dev->unk_0x24 = 2;
    __sdReq = 0;

    return ret;
}

static IOSFd sduOpenFD(u32 slot) {
    IOSError ret = IOS_Open(__sdPaths[slot], 0);
    switch (ret) {
        case IPC_RESULT_ACCESS:
        case IPC_RESULT_EXISTS: {
            int dummy = 0;
        }
    }
    return ret;
}

ISD_Error ISD_ProbeCard(u32 slot) {
    ISD_Device dev;
    ISD_Device* pDev = &dev;
    ISD_Error ret;
    u32 status;

    if (__sdHeapId < 0) {
        ret = SD_ERROR_FATAL;
    }
    else {
        ret = ISD_MountCard(slot, &pDev);
        if (ret >= IPC_RESULT_OK) {
            ret = ISD_GetDeviceStatus(pDev, &status);
            if (ret < IPC_RESULT_OK) {
                ISD_UnmountCard(pDev);
            }
            else {
                if ((status & 0x10000) || ((ISD_ResetDevice(pDev) >= 0) && (ISD_GetDeviceStatus(pDev, &status) >= 0) && (status & 0x10000))) {
                    ISD_UnmountCard(pDev);
                    ret = SD_ERROR_SUCCESS;
                }
                else {
                    ISD_UnmountCard(pDev);
                    ret = SD_ERROR_01000006;
                }
            }
        }
    }

    return ret;
}

ISD_Error ISD_MountCard(u32 slot, ISD_Device** dev) {
    IOSError ret = IPC_RESULT_OK;

    if (__sdHeapId < 0) {
        ret = SD_ERROR_FATAL;
        goto out;
    }

    if (slot >= SD_MAX_SLOTS+1) {
        return IPC_RESULT_INVALID;
    }

    if (*dev == NULL) {
        return IPC_RESULT_INVALID;
    }

    (*dev)->fd = sduOpenFD(slot);
    if ((*dev)->fd < 0) {
        ret = (*dev)->fd;
    }

    (*dev)->unk_0x24 = 0;
    (*dev)->unk_0x18 = 0x4000;
    (*dev)->unk_0x20 = 0;

out:
    return ret;
}

void ISD_UnmountCard(ISD_Device* dev) {
    dev->unk_0x24 = 0;
    IOS_Close(dev->fd);
    dev->fd = -1;
}

ISD_Error sduDatabuswidth(ISD_Device* dev, u32 buswidth) {
    u32 resp[4];
    u32 cmdArg = buswidth == 4 ? 2 : 0;
    u32 hcReg;
    ISD_Error ret;

    ret = sduCommand(dev->fd, 0x37, 3, 1, dev->unk_0x10, 0, 0, 0, 0, resp, NULL, NULL);
    if (ret != SD_ERROR_SUCCESS) {
        return ret;
    }

    ret = sduCommand(dev->fd, 6, 3, 1, cmdArg, 0, 0, 0, 0, resp, NULL, NULL);
    if (ret != SD_ERROR_SUCCESS) {
        return ret;
    }

    ret = ISD_GetHCRegister(dev, 0x28, &hcReg, 1);
    if (ret != SD_ERROR_SUCCESS) {
        return ret;
    }

    if (cmdArg != 0) {
        hcReg |= 2;
    }
    else {
        hcReg &= ~0x02;
    }

    if (__sdHeapId < 0) {
        return SD_ERROR_FATAL;
    }

    __sdReg[0] = 0x28;
    __sdReg[3] = 1;
    __sdReg[4] = hcReg;

    ret = IOS_Ioctl(dev->fd, 1, __sdReg, 0x18, NULL, 0);
    if (ret != IPC_RESULT_OK) {
        ret = SD_ERROR_FATAL;
    }

    return ret;
}

ISD_Error ISD_ReadCardRegister(ISD_Device* dev, u32 cmd, u32* cmdResp, u32 cmdRespSize) {
    ISD_Error ret;
    u32 cmdArg = dev->unk_0x10;

    if (__sdHeapId < 0) {
        ret = SD_ERROR_FATAL;
        goto out;
    }

    if (dev->unk_0x24 == 0) {
        ret = SD_ERROR_FATAL;
        goto out;
    }

    OSLockMutex(&__reqMutex);
    if (__sdReq) {
        OSUnlockMutex(&__reqMutex);
        ret = SD_ERROR_FATAL;
        goto out;
    }

    __sdReq = 1;

    OSUnlockMutex(&__reqMutex);

    if (dev->unk_0x24 == 1) {
        u32 resp[4]; 

        ret = sduCommand(dev->fd, 7, 3, 2, 0, 0, 0, 0, 0, resp, NULL, NULL);

        dev->unk_0x24 = 2;

        if (ret == SD_ERROR_01000003) {
            ret = IPC_RESULT_OK;
        }

        __sdReq = 0;

        if (ret != IPC_RESULT_OK) {
            goto out;
        }
    }  
           
    if (cmdResp == NULL || cmdRespSize == 0) {
        ret = -4;
        __sdReq = 0;
        goto out;
    }
    
    switch (cmd) {
        case 10:
        case 9: {
            break;
        }
        case 51: {
            ret = sduGetSCR(dev, cmdResp);           
            __sdReq = 0;
            goto out;
        }
        case 41: {
            ret = sduGetOCR(dev, cmdResp);
            __sdReq = 0;
            goto out;
        }
        case 3: {
            cmdResp[0] = dev->unk_0x10;
            ret = IPC_RESULT_OK;
            __sdReq = 0;
            goto out;
        }
        default: {
            return -4;
        }
    }
    
    ret = sduCommand(dev->fd, cmd, 3, 3, cmdArg, 0,0, 0, 0, cmdResp, NULL, NULL); 

    __sdReq = 0;

out:
    return ret;
}

static ISD_Error sduGetSCR(ISD_Device* dev, u32* data) {
    ISD_Error ret = SD_ERROR_FATAL;
    u32 resp[4];

    if (data != NULL) {
        sduCommand(dev->fd, 0x10, 3, 1, 4, 0, 0, 0, 0, resp, NULL, NULL);
        ret = sduCommand(dev->fd, 55, 3 , 1, dev->unk_0x10, 0, 0, 0, 0, resp, NULL, NULL);
        if (ret != 0) {
            return ret;
        }
        sduCommand(dev->fd, 51, 3, 1, 0, (u32)data, 1, 4, 0, resp, NULL, NULL);
        ret = sduCommand(dev->fd, 0x10, 3, 1, 0x200, 0, 0, 0, 0, resp, NULL, NULL);
    }

    return ret;
}

static ISD_Error sduGetOCR(ISD_Device* dev, u32* data) {
    ISD_Error ret = SD_ERROR_SUCCESS;

    if (data != NULL) {
        ret = IOS_Ioctl(dev->fd, 12, 0, 0, __sdCmdBuffer, 4);
        if (ret == IPC_RESULT_OK) {
            *data = *__sdCmdBuffer;
        }
    }

    return ret;
}

ISD_Error ISD_GetCardSize(ISD_Device* dev, u32* param_2, u32* param_3, u32* param_4) {
    ISD_Error ret;
    u32 out0;
    u32 out1;
    u32 out2;

    u32 resp[4];
    memset(resp, 0, sizeof(resp));

    ret = ISD_ReadCardRegister(dev, 9, resp, 0x10);
    if (ret != SD_ERROR_SUCCESS) {
        return ret;
    }

    if ((resp[3] >> 0x16) & 3) {
        out0 = 0x80;
        out2 = (((resp[1] >> 8) & 0x3FFFFF) + 1) * 512;
        out1 = ((((resp[1] >> 8) & 0x3FFFFF) + 1) * 8) & 0x01FFFFF8;
    }
    else {
        u32 tmp = (((resp[2] >> 8) & 0xF) >= 9 ? ((resp[2] >> 8) & 0xF) : 9);
        tmp = tmp <= 11 ? tmp : 11;

        out2 = (1 << (tmp - 9)) * (((((resp[1] >> 0x16) & ~0xC00) | ((resp[2] << 10) & 0xC00)) + 1) * (1 << (((resp[1] >> 7) & 7) + 2)));
        out0 = (((resp[0] >> 0x1F) & ~0x7E) | ((resp[1] << 1) & 0x7E)) + 1;
        out1 = ((out2 << 9) / out0) >> (tmp - 9);
    }

    dev->unk_0x18 = out0;
    dev->unk_0x1C = out1;
    dev->unk_0x20 = out2;

    if (param_2 != NULL) {
        *param_2 = out2;
    }
    if (param_3 != NULL) {
        *param_3 = out2;
    }
    if (param_4 != NULL) {
        *param_4 = 512;
    }

    return SD_ERROR_SUCCESS;
}
