

#ifndef REVOLUTION_OS_INTERRUPT_H
#define REVOLUTION_OS_INTERRUPT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

int     OSDisableInterrupts();
int     OSEnableInterrupts();
int     OSRestoreInterrupts(int level);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_INTERRUPT_H
