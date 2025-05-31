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

#define     VmFunction(name)                CHANSVmInt32 /* explicit */ name(CHANSVm* vm, CHANSVmObjHdr* in, CHANSVmObjHdr* out)

#define     VmMethod(cls, name)             Vm##cls##name
#define     VmMethodDefine(cls, name)       VmFunction(Vm##cls##name)

#define     VmCtor(cls)                     Vm##cls##Ctor
#define     VmCtorDefine(cls)               VmFunction(VmCtorClass(cls))

#define     VmDtor(cls)                     Vm##cls##Dtor
#define     VmDtorDefine(cls)               VmFunction(VmDtorClass(cls))

/************************/
/*** CHANS Properties ***/
/************************/

#define     VmPropertyGetFloatDefine(cls, name, val)    VmFunction(VmMethod(cls, name))     { return CHANSVmSetFloat(vm, out, val) == CHANS_VM_OK; }
#define     VmPropertyGetIntegerDefine(cls, name, val)  VmFunction(VmMethod(cls, name))     { return CHANSVmSetInteger(vm, out, val) == CHANS_VM_OK; }
#define     VmPropertyGetIntegerDefineNoName(cls, val)  VmFunction(Vm##cls##val)            { return CHANSVmSetInteger(vm, out, val) == CHANS_VM_OK; }

/************************/
/***  CHANS Convert   ***/
/************************/

typedef void    (*VmConvertFunc)(CHANSVm*, CHANSVmObjType, CHANSVmObjHdr*);

typedef struct VmConvertEntry {
    int             unk_0x00; // always 0
    VmConvertFunc   unk_0x04;
    VmConvertFunc   unk_0x08;
    VmConvertFunc   unk_0x0C;
    VmConvertFunc   unk_0x10;
    VmConvertFunc   unk_0x14;
    VmConvertFunc   unk_0x18;
} VmConvertEntry;

#endif // CHANS_VM_INTERNAL_H
