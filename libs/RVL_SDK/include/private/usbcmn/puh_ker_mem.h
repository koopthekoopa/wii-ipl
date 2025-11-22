#ifndef PFILE_USB_HELPER_MEM_H
#define PFILE_USB_HELPER_MEM_H

#include <revolution/types.h>

void*   uhf_ker_get_memory_block(void* heap, u32 size, int align);
s32     uhf_ker_release_memory_block(void* heap, void* block);

BOOL    uhf_ker_check_cacheable();

#endif // PFILE_USB_HELPER_MEM_H
