#ifndef REVOLUTION_SOCKET_H
#define REVOLUTION_SOCKET_H

#include <revolution/so/SOBasic.h>

typedef void (*SOAlloc)(u32, long);
typedef void (*SOFree)(u32, void*, long);

typedef struct SOLibraryConfig {
    SOAlloc alloc;  // 0x00
    SOFree  free;   // 0x04
} SOLibraryConfig;

#endif  // REVOLUTION_SOCKET_H


