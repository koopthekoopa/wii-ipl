#ifndef PRIVATE_SI_H
#define PRIVATE_SI_H

#include <revolution/types.h>
#include <revolution/os/OSTime.h>
#include <revolution/os/OSContext.h>

#include <private/os/OSInterrupt.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SI_CHAN_BAD -1
#define SI_CHAN_0   0
#define SI_CHAN_1   1
#define SI_CHAN_2   2
#define SI_CHAN_3   3
#define SI_CHAN_MAX 4

#define SI_TYPE_0   0
#define SI_TYPE_1   1
#define SI_TYPE_2   2
#define SI_TYPE_3   3
#define SI_TYPE_MAX 4

enum {
    SI_ERROR_UNDER_RUN      = 1,
    SI_ERROR_OVER_RUN       = 2,
    SI_ERROR_COLLISION      = 4,
    SI_ERROR_NO_RESPONSE    = 8,
    SI_ERROR_WRST           = 16,
    SI_ERROR_RDST           = 32,
    SI_ERROR_UNKNOWN        = 64,
    SI_ERROR_BUSY           = 128
};

#define SI_TYPE_MASK    0x18000000
#define SI_TYPE_N64     0x00000000
#define SI_TYPE_DOLPHIN 0x08000000
#define SI_TYPE_GC      0x08000000

#define SI_GC_WIRELESS  0x80000000
#define SI_GC_NOMOTOR   0x20000000
#define SI_GC_STANDARD  0x01000000

#define SI_WIRELESS_RECEIVED    0x40000000
#define SI_WIRELESS_IR          0x04000000
#define SI_WIRELESS_STATE       0x02000000
#define SI_WIRELESS_ORIGIN      0x00200000
#define SI_WIRELESS_FIX_ID      0x00100000
#define SI_WIRELESS_TYPE        0x000f0000
#define SI_WIRELESS_LITE_MASK   0x000c0000
#define SI_WIRELESS_LITE        0x00040000
#define SI_WIRELESS_CONT_MASK   0x00080000
#define SI_WIRELESS_CONT        0x00000000
#define SI_WIRELESS_ID          0x00c0ff00

#define SI_WIRELESS_TYPE_ID (SI_WIRELESS_TYPE | SI_WIRELESS_ID)
#define SI_N64_CONTROLLER   (SI_TYPE_N64 | 0x05000000)
#define SI_N64_MIC          (SI_TYPE_N64 | 0x00010000)
#define SI_N64_KEYBOARD     (SI_TYPE_N64 | 0x00020000)
#define SI_N64_MOUSE        (SI_TYPE_N64 | 0x02000000)
#define SI_GBA              (SI_TYPE_N64 | 0x00040000)
#define SI_GC_CONTROLLER    (SI_TYPE_GC | SI_GC_STANDARD)
#define SI_GC_RECEIVER      (SI_TYPE_GC | SI_GC_WIRELESS)
#define SI_GC_WAVEBIRD      (SI_TYPE_GC | SI_GC_WIRELESS | SI_GC_STANDARD | SI_WIRELESS_STATE | SI_WIRELESS_FIX_ID)
#define SI_GC_KEYBOARD      (SI_TYPE_GC | 0x00200000)
#define SI_GC_STEERING      (SI_TYPE_GC | 0x00000000)

typedef void (*SICallback)(s32, u32, OSContext*);
typedef void (*SITypeCallback)(s32, u32);

typedef struct {
    s32         chan;
    u32         poll;

    u32         inputBytes;
    void*       input;

    SICallback  callback;
} SIControl;

typedef struct {
    s32         chan;

    void*       output;
    u32         outputBytes;

    void*       input;
    u32         inputBytes;

    SICallback  callback;
    OSTime      fire;
} SIPacket;

BOOL    SIBusy();

BOOL    SIIsChanBusy(s32 chan);

BOOL    SIRegisterPollingHandler(__OSInterruptHandler handler);
BOOL    SIUnregisterPollingHandler(__OSInterruptHandler handler);

void    SIInit();

u32     SISync();

u32     SIGetStatus(s32 chan);

void    SISetCommand(s32 chan, u32 command);
u32     SIGetCommand(s32 chan);

void    SITransferCommands();

u32     SISetXY(u32 x, u32 y);

u32     SIEnablePolling(u32 poll);
u32     SIDisablePolling(u32 poll);

BOOL    SIGetResponse(s32 chan, void* data);
BOOL    SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay);

u32     SIGetType(s32 chan);
u32     SIGetTypeAsync(s32 chan, SITypeCallback callback);

u32     SIDecodeType(u32 type);
u32     SIProbe(s32 chan);
char*   SIGetTypeString(u32 type);

void    SISetSamplingRate(u32 msec);
void    SIRefreshSamplingRate();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_SI_H
