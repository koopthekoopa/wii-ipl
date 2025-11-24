#ifndef REVOLUTION_SDI_H
#define REVOLUTION_SDI_H

#include <revolution/types.h>

#define SD_ERROR_BASE   0xC0000000

typedef s32 ISD_Error;

/* slot0, slot1, slotw */
#define SD_MAX_SLOTS    3

enum {
    SD_ERROR_SUCCESS = 0,
    SD_ERROR_FATAL = (SD_ERROR_BASE | 0x01000000),
    SD_ERROR_01000003 = (SD_ERROR_BASE | 0x01000003),
    SD_ERROR_01000006 = (SD_ERROR_BASE | 0x01000006),
    SD_ERROR_21000000 = (SD_ERROR_BASE | 0x02100000),
};

typedef struct _ISD_Device {
    s32 fd;         // 0x00
    u32 unk_0x04;
    u32 unk_0x08;
    u32 unk_0x0C;
    u32 unk_0x10;
    u32 unk_0x14;
    u32 unk_0x18;
    u32 unk_0x1C;
    u32 unk_0x20;
    u32 unk_0x24;
} ISD_Device;

ISD_Error   ISD_MountCard(u32 slot, ISD_Device** dev);
void        ISD_UnmountCard(ISD_Device* dev);

ISD_Error   ISD_GetHCRegister(ISD_Device* dev, u32 param_2, u32* param_3, u32 param_4) NO_INLINE;

#endif // REVOLUTION_SDI_H
