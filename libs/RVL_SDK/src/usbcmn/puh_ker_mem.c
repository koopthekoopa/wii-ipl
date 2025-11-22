#include <private/usbcmn/puh_ker_mem.h>

#include <revolution/mem.h>

void* uhf_ker_get_memory_block(void* heap, u32 size, int align) {
    if (heap == NULL || size == 0) {
        return NULL;
    }
    else {
        return MEMAllocFromExpHeapEx((MEMHeapHandle)heap, size, align);
    }
}

s32 uhf_ker_release_memory_block(void* heap, void* block) {
    if (heap == NULL || block == NULL) {
        return -1;
    }
    else {
        MEMFreeToExpHeap((MEMHeapHandle)heap, block);
        return 0;
    }
}

BOOL uhf_ker_check_cacheable() {
    return TRUE;
}
