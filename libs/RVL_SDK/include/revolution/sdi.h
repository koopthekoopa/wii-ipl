#ifndef REVOLUTION_SDI_H
#define REVOLUTION_SDI_H

#include <revolution/types.h>

#define SD_ERROR_BASE 0xC0000000

typedef s32 ISD_Error;

/* slot0, slot1, slotw */
#define SD_MAX_SLOTS 3

enum {
    SD_ERROR_SUCCESS = 0,
    SD_ERROR_FATAL = (SD_ERROR_BASE | 0x01000000),
    SD_ERROR_01000003 = (SD_ERROR_BASE | 0x01000003),
    SD_ERROR_01000006 = (SD_ERROR_BASE | 0x01000006),
    SD_ERROR_21000000 = (SD_ERROR_BASE | 0x02100000),
};

typedef struct _SDDev {
    int SDDevFd;       // 0x00
    u32 SDDevFunc;     // 0x04
    char* SDDevName;   // 0x08
    u32 SDDevSlot;     // 0x0C
    u32 SDDevRca;      // 0x10
    u32 SDBlockLen;    // 0x14
    u32 SDSectorSize;  // 0x18
    u32 SDSectorNum;   // 0x1C
    u32 SDDevSize;     // 0x20
    u32 SDState;       // 0x24
} SDDev;

typedef s32 (*SDDevIntrCallback)(u32, void*);

ISD_Error ISD_InitCard();

ISD_Error ISD_ProbeCard(u32 slot);

ISD_Error ISD_MountCard(u32 slot, SDDev** dev);
ISD_Error ISD_UnmountCard(SDDev* dev);

ISD_Error ISD_GetHCRegister(SDDev* dev, u32 param_2, u32* param_3, u32 param_4) NO_INLINE;

ISD_Error ISD_ReadBlock(SDDev* dev, u32 offset, u8* cmdResp, u32 cmdRespSize);
ISD_Error ISD_WriteBlock(SDDev* dev, u32 offset, u8* cmdResp, u32 cmdRespSize);

ISD_Error ISD_ReadCardRegister(SDDev* dev, u32 cmd, u32* cmdResp, u32 cmdRespSize);
ISD_Error ISD_RegisterDeviceIntrHandler(SDDev* dev, SDDevIntrCallback intCB, void* arg);

ISD_Error ISD_ResetDevice(SDDev* dev);
ISD_Error ISD_UnregisterDeviceIntrHandler(SDDev* dev);

ISD_Error ISD_GetDeviceStatus(SDDev* dev, u32* status);

#endif  // REVOLUTION_SDI_H
