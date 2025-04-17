#include <private/os.h>

#include <private/ipc.h>

#include <private/hollywood.h>

static void*    IPCBufferHi;
static void*    IPCBufferLo;

static void*    IPCCurrentBufferHi;
static void*    IPCCurrentBufferLo;

static u8       Initialized;

void IPCInit() {
    if (Initialized) {
        return;
    }

    IPCBufferHi = __OSGetIPCBufferHi();
    IPCBufferLo = __OSGetIPCBufferLo();
    IPCCurrentBufferHi = IPCBufferHi;
    IPCCurrentBufferLo = IPCBufferLo;

    Initialized = TRUE;
}

void IPCReInit() {
    Initialized = FALSE;
    IPCInit();
}

u32 IPCReadReg(u32 regIdx) {
    u32 reg = __ACRRegs[regIdx];
    return reg;
}

void IPCWriteReg(u32 regIdx, u32 data) {
    __ACRRegs[regIdx] = data;
}

void* IPCGetBufferHi() {
    return IPCCurrentBufferHi;
}

void* IPCGetBufferLo() {
    return IPCCurrentBufferLo;
}

void IPCSetBufferLo(void* lo) {
    IPCCurrentBufferLo = lo;
}
