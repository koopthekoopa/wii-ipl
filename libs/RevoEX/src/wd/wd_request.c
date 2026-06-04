#include <revolution/wd.h>

#include <private/wd.h>

#include <revolution/os.h>

#include <private/ios.h>

#define ALLOC_VECTOR(count, extraLength, align)                                                                                                      \
    iosAllocAligned(WDi_Work->IOSHeap, ROUNDUP((sizeof(IOSIoVector) * (count)) + (extraLength), align), DEFAULT_ALIGN)

#define VECTOR_OFF_TO_PTR(vec, count, extraLength) ((u8*)(vec + (count)) + (extraLength))

enum {
    WD_IOCTLV_SCAN = 0x100A,
    WD_IOCTLV_GET_INFO = 0x100E,
};

s32 WD_Scan(WDScanParam* params, u8* buffer, u32 bufferLen) {
    s32 result;
    IOSIoVector* vec;

    if (buffer == NULL || bufferLen < 0x40) {
        return WD_INTERNAL_ERR_BAD_ARGUMENTS;
    }

    vec = ALLOC_VECTOR(2, sizeof(WDScanParam), 8);

    vec[0].base = VECTOR_OFF_TO_PTR(vec, 2, 0);
    *(WDScanParam*)VECTOR_OFF_TO_PTR(vec, 2, 0) = *params;
    vec[1].base = buffer;

    vec[0].length = sizeof(WDScanParam);
    vec[1].length = bufferLen;

    result = WDi_Ioctlv(WD_IOCTLV_SCAN, 1, 1, vec);

    iosFree(WDi_Work->IOSHeap, vec);

    return result;
}

s32 WD_GetInfo(WD_Info* info) {
    s32 result;
    IOSIoVector* vec;

    vec = ALLOC_VECTOR(2, sizeof(WD_Info) - 8, 8);

    vec[0].base = VECTOR_OFF_TO_PTR(vec, 1, 0);
    *(WD_Info*)VECTOR_OFF_TO_PTR(vec, 1, 0) = *info;

    vec[0].length = sizeof(WD_Info);

    result = WDi_Ioctlv(WD_IOCTLV_GET_INFO, 0, 1, vec);

    *info = *(WD_Info*)VECTOR_OFF_TO_PTR(vec, 1, 0);

    iosFree(WDi_Work->IOSHeap, vec);

    return result;
}
