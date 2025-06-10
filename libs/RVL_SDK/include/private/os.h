#ifndef PRIVATE_OS_H
#define PRIVATE_OS_H

#include <revolution/os.h>

#include <revolution/os/OSMemMap.h>
#include <revolution/os/OSLink.h>

#include <private/os/OSInterrupt.h>
#include <private/os/OSAudioSystem.h>
#include <private/os/OSError.h>
#include <private/os/OSExec.h>
#include <private/os/OSIpc.h>
#include <private/os/OSSram.h>
#include <private/os/OSRtc.h>
#include <private/os/OSSync.h>
#include <private/os/OSReset.h>
#include <private/os/OSStateTM.h>
#include <private/os/OSThread.h>
#include <private/os/OSMutex.h>
#include <private/os/OSTime.h>
#include <private/os/OSPlayRecord.h>
#include <private/os/OSPlayTime.h>
#include <private/os/OSBootInfo2.h>
#include <private/os/OSNandbootInfo.h>
#include <private/os/OSStateFlags.h>

enum {
    OS_APP_TYPE_IPL = 0x40,
    OS_APP_TYPE_DVD = 0x80,
    OS_APP_TYPE_CHANNEL = 0x81,
};

/* Global declarations */

extern BOOL         __OSInIPL;
extern BOOL         __OSInReboot;
extern BOOL         __OSInNandBoot;
extern BOOL         __OSIsGcam;

extern OSExecParams __OSRebootParams;

/* Global declarations in ram */

volatile OSContext* __OSCurrentContext      ADDRESS(OS_BASE_CACHED | OS_ADDR_CURRENT_CONTEXT);
volatile OSContext* __OSFPUContext          ADDRESS(OS_BASE_CACHED | OS_ADDR_CURRENT_FPU_CONTEXT);

OSThreadQueue       __OSActiveThreadQueue   ADDRESS(OS_BASE_CACHED | OS_ADDR_ACTIVE_THREAD_QUEUE);
OSThread*           __OSCurrentThread       ADDRESS(OS_BASE_CACHED | OS_ADDR_CURRENT_THREAD);

vu16                __OSDeviceCode          ADDRESS(OS_BASE_CACHED | OS_ADDR_DEVICE_CODE);

OSModuleQueue       __OSModuleInfoList      ADDRESS(OS_BASE_CACHED | OS_ADDR_LINK_MODULE_LIST);
const void*         __OSStringTable         ADDRESS(OS_BASE_CACHED | OS_ADDR_LINK_STRING_TABLE);

OSExecParams*       __OSExecParamsAddr      ADDRESS(OS_BASE_CACHED | OS_ADDR_LAUNCH_EXEC_PARAMS);

OSTime              __OSSystemTime          ADDRESS(OS_BASE_CACHED | OS_ADDR_SYSTEM_TIME);

vu8                 __OSLockedAppType       ADDRESS(OS_BASE_CACHED | OS_ADDR_LOCKED_APP_TYPE);
vu32                __OSLaunchPartitionType ADDRESS(OS_BASE_CACHED | OS_ADDR_BOOT_PART_TYPE);

u16                 __OSWirelessPadFixMode  ADDRESS(OS_BASE_CACHED | OS_ADDR_PAD_WIRELESS_FIX_MODE);
u8                  __OSPADButton           ADDRESS(OS_BASE_CACHED | OS_ADDR_PAD_BUTTON);

/* Revision get */

u32     __OSGetHollywoodRev();

typedef struct OSIOSRev {
    u8  reserved;   // 0x00
    u8  major;      // 0x01
    u8  minor;      // 0x02
    u8  micro;      // 0x03
    u8  month;      // 0x04
    u8  date;       // 0x05
    u16 year;       // 0x06
} OSIOSRev;

void    __OSGetIOSRev(OSIOSRev* iosRev);

/* Initialize subsystems */

void    OSExceptionInit();

void    __OSInitMemoryProtection();

void    __OSInitAlarm();
void    __OSCacheInit();
void    __OSContextInit();
void    __OSInterruptInit();
void    __OSInitIPCBuffer();
void    __OSModuleInit();
void    __OSThreadInit();
void    __OSInitNet();
void    __OSInitPlayTime();

u32     __OSGetDIConfig();

/* Misc */

BOOL    __OSSetVIForceDimming(BOOL enable, u32 shiftY, u32 shiftX);

void    OSDefaultExceptionHandler(u8 type, register OSContext* context);

#endif // PRIVATE_OS_H
