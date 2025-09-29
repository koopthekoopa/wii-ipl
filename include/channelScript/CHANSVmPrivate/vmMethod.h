#ifndef CHANS_VM_PRIVATE_METHOD_H
#define CHANS_VM_PRIVATE_METHOD_H

#include "channelScript/CHANSVm/VmTypes.h"

#ifdef __cplusplus
extern "C" {
#endif

#define     VmFunction(name)                vmBoolInt name(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj)

#define     VmMethod(cls, name)             Vm##cls##name

#define     VmMethodDefine(cls, name)       VmFunction(Vm##cls##name)

#define     VmCtor(cls)                     Vm##cls##Ctor
#define     VmCtorDefine(cls)               VmFunction(VmCtor(cls))

#define     VmDtor(cls)                     Vm##cls##Dtor
#define     VmDtorDefine(cls)               VmFunction(VmDtor(cls))

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_PRIVATE_METHOD_H
