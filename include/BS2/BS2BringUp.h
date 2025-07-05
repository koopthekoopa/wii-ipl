#ifndef BS2_BRING_UP_H
#define BS2_BRING_UP_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <private/hollywood.h>

void    enableLegacyDI();

void    setVI1Cfg(u32 val);

void    setVISolidClrYCol(u32 val);
u32     getVISolidClrYCol();

void    GPIOPPCInit();
void    EjectDisc();

#ifdef __cplusplus
}
#endif

#endif // BS2_BRING_UP_H
