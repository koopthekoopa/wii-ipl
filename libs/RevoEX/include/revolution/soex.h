#ifndef REVOLUTION_SO_EX_H
#define REVOLUTION_SO_EX_H

#include <revolution/types.h>

#include <revolution/so/SOBasic.h>
#include <revolution/so/SOOption.h>

typedef void (*SOAlloc)(u32, s32);
typedef void (*SOFree)(u32, void*, s32);

typedef struct SOLibraryConfig {
    SOAlloc alloc;  // 0x00
    SOFree  free;   // 0x04
} SOLibraryConfig;

int SOInit(SOLibraryConfig* config);

int SOFinish();

int SOStartup();
int SOStartupEx(int timeOut);

int SOCleanup();

int SOGetLastError();

#endif  // REVOLUTION_SO_EX_H
