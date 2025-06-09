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

#define SI_COMCSR_TCINT_MASK       (1 << 31)
#define SI_COMCSR_TCINTMSK_MASK    (1 << 30)
#define SI_COMCSR_COMERR_MASK      (1 << 29)
#define SI_COMCSR_RDSTINT_MASK     (1 << 28)
#define SI_COMCSR_RDSTINTMSK_MASK  (1 << 27)

// 4 bits of padding
#define SI_COMCSR_OUTLNGTH_MASK    (1 << 22) \
                                 | (1 << 21) \
                                 | (1 << 20) \
                                 | (1 << 19) \
                                 | (1 << 18) \
                                 | (1 << 17) \
                                 | (1 << 16)

// 1 bit of padding
#define SI_COMCSR_INLNGTH_MASK     (1 << 14) \
                                 | (1 << 13) \
                                 | (1 << 12) \
                                 | (1 << 11) \
                                 | (1 << 10) \
                                 | (1 << 9)  \
                                 | (1 << 8)

// 5 bits of padding
#define SI_COMCSR_CHANNEL_MASK     (1 << 2) \
                                 | (1 << 1)

#define SI_COMCSR_TSTART_MASK      (1 << 0)

BOOL SIBusy(void);
BOOL SIIsChanBusy(s32 chan);
BOOL SIRegisterPollingHandler(__OSInterruptHandler handler);
BOOL SIUnregisterPollingHandler(__OSInterruptHandler handler);
void SIInit(void);
u32 SISync(void);
u32 SIGetStatus(s32 chan);
void SISetCommand(s32 chan, u32 command);
u32 SIGetCommand(s32 chan);
void SITransferCommands(void);
u32 SISetXY(u32 x, u32 y);
u32 SIEnablePolling(u32 poll);
u32 SIDisablePolling(u32 poll);
BOOL SIGetResponse(s32 chan, void* data);
BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay);
u32 SIGetType(s32 chan);
u32 SIGetTypeAsync(s32 chan, SITypeCallback callback);
u32 SIDecodeType(u32 type);
u32 SIProbe(s32 chan);
char* SIGetTypeString(u32 type);

void SISetSamplingRate(u32 msec);
void SIRefreshSamplingRate(void);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_SI_H
