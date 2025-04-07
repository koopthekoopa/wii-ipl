#include <revolution/os.h>
#include <private/os.h>

#include <string.h>

asm void SystemCallVector() {
#ifdef __MWERKS__
entry __OSSystemCallVectorStart
    nofralloc
    mfspr   r9, HID0
    ori     r10, r9, 0x8
    mtspr   HID0, r10
    isync
    sync
    mtspr   HID0, r9
    rfi
entry __OSSystemCallVectorEnd
    nop
#endif // __MWERKS__
}

void __OSInitSystemCall() {
    void* addr = (void*)OSPhysicalToCached(0xC00);

    memcpy(addr, __OSSystemCallVectorStart, (u32)&__OSSystemCallVectorEnd - (u32)&__OSSystemCallVectorStart);
    DCFlushRangeNoSync(addr, 0x100);
    __sync();
    ICInvalidateRange(addr, 0x100);
}
