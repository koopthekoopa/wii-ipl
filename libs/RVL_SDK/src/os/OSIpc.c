#include <revolution/os.h>

#include <private/bus.h>

static void* IpcBufferHi;
static void* IpcBufferLo = (void*)-1;

void* __OSGetIPCBufferHi() {
    return IpcBufferHi;
}

void* __OSGetIPCBufferLo() {
    return IpcBufferLo;
}

void __OSInitIPCBuffer() {
    IpcBufferLo = RAMReadPtr(OSPhysicalToCached(OS_ADDR_IPC_BUFFER_START));
    IpcBufferHi = RAMReadPtr(OSPhysicalToCached(OS_ADDR_IPC_BUFFER_END));
} 
