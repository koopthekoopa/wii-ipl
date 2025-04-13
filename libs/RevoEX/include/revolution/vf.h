#ifndef REVOLUTION_VF_H
#define REVOLUTION_VF_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

BOOL    VFIsAvailable();

s32     VFGetDriveFreeSize(const char* drive);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_VF_H
