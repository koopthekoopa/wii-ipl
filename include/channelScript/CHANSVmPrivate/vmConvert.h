#ifndef CHANS_VM_PRIVATE_CONVERT_H
#define CHANS_VM_PRIVATE_CONVERT_H

#include "channelScript/CHANSVm/VmTypes.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef CHANSVmObjHdr*  (*VmConvertFunc)(CHANSVm*, CHANSVmObjType, CHANSVmObjHdr*);

typedef struct VmConvertEntry {
    VmConvertFunc   convFunc[6];    // 0x00
} VmConvertEntry;

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_PRIVATE_CONVERT_H
