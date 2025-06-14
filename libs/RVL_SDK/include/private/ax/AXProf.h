#ifndef PRIVATE_AX_PROFILE_H
#define PRIVATE_AX_PROFILE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _AXPROFILE {
    s64 timeBegin;           // 0x00
    
    s64 timeProcessAuxBegin; // 0x08
    s64 timeProcessAuxEnd;   // 0x10
    
    s64 timeUserFrameBegin;  // 0x18
    s64 timeUserFrameEnd;    // 0x20
    
    s64 timeEnd;             // 0x28
    
    s32 numVoices;           // 0x30
    
    int padding;
} AXPROFILE;

AXPROFILE*  __AXGetCurrentProfile();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_PROFILE_H
