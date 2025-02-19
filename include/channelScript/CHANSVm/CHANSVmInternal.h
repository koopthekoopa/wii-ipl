#ifndef CHANS_VM_INTERNAL_H
#define CHANS_VM_INTERNAL_H

#include "channelScript/CHANSVm.h"

#include <string.h>

/************************/
/***   CHANS Memory   ***/
/************************/

CHANSVmPtr  CHANSVmAllocFromHeap(CHANSVm* vm, u32 size);

static inline CHANSVmU32 CHANSVmAlignSize(CHANSVmSize size) {
    return (size + 31) & ~31;
}

static inline CHANSVmObjHdr* VmAllocObjHdr(CHANSVm* vm) {
    return (CHANSVmObjHdr*)CHANSVmAllocFromHeap(vm, CHANSVmAlignSize(sizeof(CHANSVmObjHdr)));
}

/************************/
/***    CHANS Init    ***/
/************************/

static inline void VmInitObjHdr(CHANSVmObjHdr* hdr) {
    memset((CHANSVmPtr)hdr, 0, sizeof(CHANSVmObjHdr));
}

/************************/
/***   CHANS Method   ***/
/************************/

#define     VmFunction(name)                static CHANSVmErr name(CHANSVm* vm, CHANSVmObjHdr* unk0, CHANSVmObjHdr* unk1)

#define     VmMethod(cls, name)             Vm##cls##name
#define     VmMethodDefine(cls, name)       VmFunction(VmMethod(cls, name))

#define     VmCtor(cls, name)               Vm##cls##name##Ctor
#define     VmCtorDefine(cls, name)         VmFunction(VmCtor(cls, name))

#define     VmCtorClass(cls)                Vm##cls##Ctor
#define     VmCtorClassDefine(cls)          VmFunction(VmCtorClass(cls))

/************************/
/*** CHANS Properties ***/
/************************/

#define     VmPropertyGet(cls, name)        Vm##cls##Get##name
#define     VmPropertyGetDefine(cls, name)  VmFunction(VmPropertyGet(cls, name))

#define     VmPropertySet(cls, name)        Vm##cls##Set##name
#define     VmPropertySetDefine(cls, name)  VmFunction(VmPropertySet(cls, name))

/************************/
/***  CHANS Convert   ***/
/************************/

typedef void    (*VmConvertFunc)(CHANSVm*, CHANSVmObjType, CHANSVmObjHdr*);

typedef struct VmConvertEntry {
    int             unk_0x00; // always 0x00000000
    VmConvertFunc   unk_0x04;
    VmConvertFunc   unk_0x08;
    VmConvertFunc   unk_0x0C;
    VmConvertFunc   unk_0x10;
    VmConvertFunc   unk_0x14;
    VmConvertFunc   unk_0x18;
} VmConvertEntry;

#endif // CHANS_VM_INTERNAL_H
