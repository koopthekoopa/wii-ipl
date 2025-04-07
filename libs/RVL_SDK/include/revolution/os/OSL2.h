#ifndef REVOLUTION_OS_L2_H
#define REVOLUTION_OS_L2_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void    L2Enable();
void    L2Disable();
void    L2GlobalInvalidate();

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_L2_H
