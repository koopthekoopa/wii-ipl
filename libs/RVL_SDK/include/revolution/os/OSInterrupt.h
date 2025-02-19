

#ifndef REVOLUTION_OS_INTERRUPT_H
#define REVOLUTION_OS_INTERRUPT_H

#include <decomp.h>

#include <revolution/types.h>
#include <revolution/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s16 __OSInterrupt;
typedef void (*__OSInterruptHandler)(__OSInterrupt interrupt, OSContext* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_INTERRUPT_H
