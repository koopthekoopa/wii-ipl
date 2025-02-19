#ifndef REVOLUTION_AX_STUDIO_H
#define REVOLUTION_AX_STUDIO_H

#include <revolution/ax/AXPB.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _AXSPB {
    u16 dpopLHi;        // 0x00
    u16 dpopLLo;        // 0x02
    s16 dpopLDelta;     // 0x04

    u16 dpopRHi;        // 0x06
    u16 dpopRLo;        // 0x08
    s16 dpopRDelta;     // 0x0A

    u16 dpopSHi;        // 0x0C
    u16 dpopSLo;        // 0x0E
    s16 dpopSDelta;     // 0x10
    
    u16 dpopALHi;       // 0x12
    u16 dpopALLo;       // 0x14
    s16 dpopALDelta;    // 0x16

    u16 dpopARHi;       // 0x18
    u16 dpopARLo;       // 0x1A
    s16 dpopARDelta;    // 0x1C

    u16 dpopASHi;       // 0x1E
    u16 dpopASLo;       // 0x20
    s16 dpopASDelta;    // 0x22
    
    u16 dpopBLHi;       // 0x24
    u16 dpopBLLo;       // 0x26
    s16 dpopBLDelta;    // 0x28

    u16 dpopBRHi;       // 0x2A
    u16 dpopBRLo;       // 0x2C
    s16 dpopBRDelta;    // 0x2E

    u16 dpopBSHi;       // 0x30
    u16 dpopBSLo;       // 0x32
    s16 dpopBSDelta;    // 0x34
    
    u16 dpopCLHi;       // 0x36
    u16 dpopCLLo;       // 0x38
    s16 dpopCLDelta;    // 0x3A

    u16 dpopCRHi;       // 0x3C
    u16 dpopCRLo;       // 0x3E
    s16 dpopCRDelta;    // 0x40

    u16 dpopCSHi;       // 0x42
    u16 dpopCSLo;       // 0x44
    s16 dpopCSDelta;    // 0x46
    
    u16 dpopMain0Hi;    // 0x48
    u16 dpopMain0Lo;    // 0x4A
    s16 dpopMain0Delta; // 0x4C

    u16 dpopAux0Hi;     // 0x4E
    u16 dpopAux0Lo;     // 0x50
    s16 dpopAux0Delta;  // 0x52
    
    u16 dpopMain1Hi;    // 0x54
    u16 dpopMain1Lo;    // 0x56
    s16 dpopMain1Delta; // 0x58

    u16 dpopAux1Hi;     // 0x5A
    u16 dpopAux1Lo;     // 0x5C
    s16 dpopAux1Delta;  // 0x5E
    
    u16 dpopMain2Hi;    // 0x60
    u16 dpopMain2Lo;    // 0x62
    s16 dpopMain2Delta; // 0x64

    u16 dpopAux2Hi;     // 0x66
    u16 dpopAux2Lo;     // 0x68
    s16 dpopAux2Delta;  // 0x6A

    u16 dpopMain3Hi;    // 0x6C
    u16 dpopMain3Lo;    // 0x6E
    s16 dpopMain3Delta; // 0x70

    u16 dpopAux3Hi;     // 0x72
    u16 dpopAux3Lo;     // 0x74
    s16 dpopAux3Delta;  // 0x76
} AXSPB;

void    __AXStudioInit();

AXSPB*  __AXGetStudio();
void    __AXPrintStudio();

void    __AXDepopFadeMain(s32* all, s32* value, s16* depop) NO_INLINE;
void    __AXDepopFadeRmt(s32* all, s32* value, s16* depop)  NO_INLINE;
void    __AXDepopVoice(AXPB* pb);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_STUDIO_H


