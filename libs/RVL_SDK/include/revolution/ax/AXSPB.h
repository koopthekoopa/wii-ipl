#ifndef REVOLUTION_AX_STUDIO_H
#define REVOLUTION_AX_STUDIO_H

#include <revolution/ax/AXPB.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _AXSPB {
    u16 dLHi;           // 0x00
    u16 dLLo;           // 0x02
    s16 dLDelta;        // 0x04

    u16 dRHi;           // 0x06
    u16 dRLo;           // 0x08
    s16 dRDelta;        // 0x0A

    u16 dSHi;           // 0x0C
    u16 dSLo;           // 0x0E
    s16 dSDelta;        // 0x10
    
    u16 dALHi;          // 0x12
    u16 dALLo;          // 0x14
    s16 dALDelta;       // 0x16

    u16 dARHi;          // 0x18
    u16 dARLo;          // 0x1A
    s16 dARDelta;       // 0x1C

    u16 dASHi;          // 0x1E
    u16 dASLo;          // 0x20
    s16 dASDelta;       // 0x22
    
    u16 dBLHi;          // 0x24
    u16 dBLLo;          // 0x26
    s16 dBLDelta;       // 0x28

    u16 dBRHi;          // 0x2A
    u16 dBRLo;          // 0x2C
    s16 dBRDelta;       // 0x2E

    u16 dBSHi;          // 0x30
    u16 dBSLo;          // 0x32
    s16 dBSDelta;       // 0x34
    
    u16 dCLHi;          // 0x36
    u16 dCLLo;          // 0x38
    s16 dCLDelta;       // 0x3A

    u16 dCRHi;          // 0x3C
    u16 dCRLo;          // 0x3E
    s16 dCRDelta;       // 0x40

    u16 dCSHi;          // 0x42
    u16 dCSLo;          // 0x44
    s16 dCSDelta;       // 0x46
    
    u16 dMain0Hi;       // 0x48
    u16 dMain0Lo;       // 0x4A
    s16 dMain0Delta;    // 0x4C

    u16 dAux0Hi;        // 0x4E
    u16 dAux0Lo;        // 0x50
    s16 dAux0Delta;     // 0x52
    
    u16 dMain1Hi;       // 0x54
    u16 dMain1Lo;       // 0x56
    s16 dMain1Delta;    // 0x58

    u16 dAux1Hi;        // 0x5A
    u16 dAux1Lo;        // 0x5C
    s16 dAux1Delta;     // 0x5E
    
    u16 dMain2Hi;       // 0x60
    u16 dMain2Lo;       // 0x62
    s16 dMain2Delta;    // 0x64

    u16 dAux2Hi;        // 0x66
    u16 dAux2Lo;        // 0x68
    s16 dAux2Delta;     // 0x6A

    u16 dMain3Hi;       // 0x6C
    u16 dMain3Lo;       // 0x6E
    s16 dMain3Delta;    // 0x70

    u16 dAux3Hi;        // 0x72
    u16 dAux3Lo;        // 0x74
    s16 dAux3Delta;     // 0x76
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
