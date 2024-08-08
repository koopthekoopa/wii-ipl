#ifndef REVOLUTION_BASE_ARCH_H
#define REVOLUTION_BASE_ARCH_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void PPCHalt();

void PPCMtmmcr0(u32 value);
void PPCMtmmcr1(u32 value);

void PPCMtpmc1(u32 value);
void PPCMtpmc2(u32 value);
void PPCMtpmc3(u32 value);
void PPCMtpmc4(u32 value);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_BASE_ARCH_H


