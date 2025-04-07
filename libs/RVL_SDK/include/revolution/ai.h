#ifndef REVOLUTION_AI_H
#define REVOLUTION_AI_H

#include <revolution/types.h>

typedef void (*AIDCallback)();

AIDCallback AIRegisterDMACallback(AIDCallback callback);

void        AIInitDMA(u32 startAddr, u32 length);
u32         AIGetDMALength();
u32         AIGetDMAStartAddr();

#endif // REVOLUTION_AI_H
