#include <revolution/os.h>

#include <private/bus.h>

static void* IpcBufferHi;
static void* IpcBufferLo = (void*)0xFFFFFFFF;

void* __OSGetIPCBufferHi() {
    return IpcBufferHi;
}

void* __OSGetIPCBufferLo() {
    return IpcBufferLo;
}

void __OSInitIPCBuffer() {
    IpcBufferLo = (void*)RAMRead32(OSPhysicalToCached(OS_ADDR_IPC_BUFFER_START));
    IpcBufferHi = (void*)RAMRead32(OSPhysicalToCached(OS_ADDR_IPC_BUFFER_END));
} 
