#ifndef PRIVATE_OS_ERROR_H
#define PRIVATE_OS_ERROR_H

#include <revolution/types.h>

#include <revolution/os/OSError.h>

#include <revolution/base/PPCArch.h>

#ifdef __cplusplus
extern "C" {
#endif

extern OSErrorHandler   __OSErrorTable[OS_EXCEPTION_MAX];
extern u32              __OSFpscrEnableBits;

#define FPSCR_ENABLE (FPSCR_VE | FPSCR_OE | FPSCR_UE | FPSCR_ZE | FPSCR_XE)

#define OS_FPSCR_ENABLE (__OSFpscrEnableBits & FPSCR_ENABLE)

void    __OSUnhandledException(__OSException exception, OSContext* context, u32 dsisr, u32 dar);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_ERROR_H
