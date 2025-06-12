#ifndef PRIVATE_AI_H
#define PRIVATE_AI_H

#include <revolution/types.h>
#include <revolution/os/OSContext.h>
#include <private/os/OSInterrupt.h>

#ifdef __cplusplus
extern "C" {
#endif

void __AIDHandler(__OSInterrupt interrupt, OSContext* context) ;

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AI_H
