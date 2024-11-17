#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmInternal.h"

#include <stdio.h>
#include <stdarg.h>

BOOL CHANSVmDebugVerboseMode = FALSE;

#define CHANSVmDebugLength  1022

inline u32 CHANSVmAlignSize(int size) {
    return (size + 31) & ~31;
}

inline void VmInitObjHdr(CHANSVmObjHdr* hdr) {
    memset((void*)hdr, 0, sizeof(CHANSVmObjHdr));
}

void CHANSVmDebugPrintf(const char* format, ...) {
    va_list args;
    char str[CHANSVmDebugLength + 2];
    
    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength, format, args);
    va_end(args);

    str[CHANSVmDebugLength + 1] = str[CHANSVmDebugLength] = 0;

    OSReport("%s", str);
}


