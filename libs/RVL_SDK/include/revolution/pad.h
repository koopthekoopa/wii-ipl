#ifndef REVOLUTION_PAD_H
#define REVOLUTION_PAD_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define PAD_SPEC_0  0
#define PAD_SPEC_1  1
#define PAD_SPEC_2  2
#define PAD_SPEC_3  3
#define PAD_SPEC_4  4
#define PAD_SPEC_5  5

#define PAD_CHAN0_BIT   0x80000000
#define PAD_CHAN1_BIT   0x40000000
#define PAD_CHAN2_BIT   0x20000000
#define PAD_CHAN3_BIT   0x10000000

#define PAD_MAX_CONTROLLER  4

#define PAD_BUTTON_LEFT     (1 <<  0)
#define PAD_BUTTON_RIGHT    (1 <<  1)
#define PAD_BUTTON_DOWN     (1 <<  2)
#define PAD_BUTTON_UP       (1 <<  3)
#define PAD_TRIGGER_Z       (1 <<  4)
#define PAD_TRIGGER_R       (1 <<  5)
#define PAD_TRIGGER_L       (1 <<  6)
#define PAD_BUTTON_A        (1 <<  8)
#define PAD_BUTTON_B        (1 <<  9)
#define PAD_BUTTON_X        (1 << 10)
#define PAD_BUTTON_Y        (1 << 11)
#define PAD_BUTTON_MENU     (1 << 12)
#define PAD_BUTTON_START    (1 << 12)

#define PAD_ERR_NONE             0
#define PAD_ERR_NO_CONTROLLER   -1
#define PAD_ERR_NOT_READY       -2
#define PAD_ERR_TRANSFER        -3

typedef struct PADStatus {
    u16 button;         // 0x00 

    s8  stickX;         // 0x02
    s8  stickY;         // 0x03

    s8  substickX;      // 0x04
    s8  substickY;      // 0x05

    u8  triggerLeft;    // 0x06
    u8  triggerRight;   // 0x07

    u8  analogA;        // 0x08
    u8  analogB;        // 0x09

    s8  err;            // 0x0A
} PADStatus;

typedef void (*PADSamplingCallback)();

int     PADReset(u32 mask) NO_INLINE;
BOOL    PADRecalibrate(u32 mask) NO_INLINE;

BOOL    PADInit();

u32     PADRead(PADStatus* status);

void    PADSetSpec(u32 spec);

int     PADGetType(s32 chan, u32* type);

BOOL    PADSync();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_PAD_H
