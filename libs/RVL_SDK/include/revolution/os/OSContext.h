#ifndef REVOLUTION_OS_CONTEXT_H
#define REVOLUTION_OS_CONTEXT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_CONTEXT_STATE_FPSAVED    (1<<0)

typedef struct OSContext {
    u32 gpr[32];    // 0x00
    u32 cr;         // 0x80
    u32 lr;         // 0x84
    u32 ctr;        // 0x88
    u32 xer;        // 0x8C

    f64 fpr[32];    // 0x90
    u32 fpscr_pad;  // 0x190
    u32 fpscr;      // 0x194

    u32 srr0;       // 0x198
    u32 srr1;       // 0x19C

    u16 mode;       // 0x1A0
    u16 state;      // 0x1A2

    u32 gqr[8];     // 0x1A4
    u32 psf_pad;    // 0x1C4
    f64 psf[32];    // 0x1C8
} OSContext;

void        OSLoadFPUContext(OSContext* fpucontext);
void        OSSaveFPUContext(OSContext* fpucontext);

void        OSFillFPUContext(OSContext* context);

void        OSInitContext(OSContext* context, u32 pc, u32 newsp);

void        OSSetCurrentContext(OSContext* context);
OSContext*  OSGetCurrentContext();

u32         OSSaveContext(OSContext* context);
void        OSLoadContext(OSContext* context);

void        OSClearContext(OSContext* context);

void        OSDumpContext(OSContext* context);

u32         OSGetStackPointer();
u32         OSSwitchStack(u32 newsp);

int         OSSwitchFiber(u32 pc, u32 newsp);
void        OSSwitchFiberEx(u32 r3, u32 r4, u32 r5, u32 r6, void* pc, void* newsp);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_CONTEXT_H
