#ifndef PRIVATE_EXI_H
#define PRIVATE_EXI_H

#include <revolution/types.h>
#include <revolution/os.h>
#include <revolution/os/OSContext.h>
#include <revolution/os/OSMemMap.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef DEFINED_EXI_CHANS
#define DEFINED_EXI_CHANS
#define EXI_CHAN_0      0
#define EXI_CHAN_1      1
#define EXI_CHAN_2      2
#define EXI_CHAN_MAX    3
#endif // DEFINED_EXI_CHANS

enum {
    EXI_FREQ_1MHZ = 0,
    EXI_FREQ_2MHZ,
    EXI_FREQ_4MHZ,
    EXI_FREQ_8MHZ,
    EXI_FREQ_16MHZ,
    EXI_FREQ_32HZ,
    EXI_MAX_FREQ
};

enum {
    EXI_DEV_EXT = 0,
    EXI_DEV_INT,
    EXI_DEV_NET,
    EXI_MAX_DEV
};

enum {
    EXI_READ = 0,
    EXI_WRITE
};

enum {
    EXI_STATE_IDLE     = 0,
    EXI_STATE_DMA      = 1,
    EXI_STATE_IMM      = 2,
    EXI_STATE_BUSY     = 3,
    EXI_STATE_SELECTED = 4,
    EXI_STATE_ATTACHED = 8,
    EXI_STATE_LOCKED   = 16,
};

s32 __EXIProbeStartTime[2]  ADDRESS(OS_BASE_CACHED | OS_ADDR_EXI_LAST_PROBES);

extern const u32 __EXIFreq;

typedef void (*EXICallback)(s32 chan, OSContext* context);

void        EXIInit();

BOOL        EXIImm(s32 chan, void* buffer, s32 length, u32 type, EXICallback callback);
BOOL        EXIImmEx(s32 chan, u8* buffer, s32 length, u32 mode);

BOOL        EXIDma(s32 chan, void* buffer, s32 length, u32 type, EXICallback callback);

BOOL        EXISync(s32 chan);

u32         EXIClearInterrupts(s32 chan, BOOL clearExi, BOOL clearTc, BOOL clearExt);

EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback);

void        EXIProbeReset();

BOOL        EXIProbe(s32 chan);
s32         EXIProbeEx(s32 chan);

BOOL        EXIAttach(s32 chan, EXICallback extCallback);
BOOL        EXIDetach(s32 chan);

BOOL        EXISelectSD(s32 chan, u32 dev, u32 freq);
BOOL        EXISelect(s32 chan, u32 dev, u32 freq);
BOOL        EXISelectEx(s32 chan, u32 dev, u32 freq);
BOOL        EXIDeselect(s32 chan);
BOOL        EXIDeselectEx(s32 chan);

BOOL        EXILock(s32 chan, u32 dev, EXICallback unlockedCallback);
BOOL        EXIUnlock(s32 chan);

u32         EXIGetState(s32 chan);

BOOL        EXIGetID(s32 chan, u32 dev, u32* id);
BOOL        EXIGetIDEx(s32 chan, u32 dev, u32* id);

BOOL        EXIWriteReg(s32 chan, u32 dev, u32 exiCmd, void* reg, s32 size);

void        __OSEnableBarnacle(s32 chan, u32 dev);

typedef struct EXIQueue {
    u32         device; // 0x00
    EXICallback cb;     // 0x04
} EXIQueue;

typedef struct EXIControl {
    EXICallback exiCallback;    // 0x00
    EXICallback tcCallback;     // 0x04
    EXICallback extCallback;    // 0x08

    vu32        state;          // 0x0C

    int         immLen;         // 0x10
    u8*         immBuf;         // 0x14

    u32         dev;            // 0x18
    u32         id;             // 0x1C
    s32         idTime;         // 0x20
    int         items;          // 0x24

    EXIQueue    queue[3];       // 0x28
} EXIControl;

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_EXI_H
