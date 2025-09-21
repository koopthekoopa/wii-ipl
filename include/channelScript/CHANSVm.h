#ifndef CHANS_VM_H
#define CHANS_VM_H

#include <decomp.h>

#include "channelScript/CHANSVm/VmTypes.h"
#include "channelScript/CHANSVm/VmError.h"

#ifdef __cplusplus
extern "C" {
#endif

/************************/
/***   CHANS System   ***/
/************************/

#define CHANS_VM_DEFAULT_WORK_SIZE  0x40000

void                CHANSVmInit(CHANSVm* vm, vmPtr work, vmU32 size);
vmBool              CHANSVmLinkModules(CHANSVm* vm, vmS32 unk0);

void                CHANSVmSetSignal(CHANSVm* vm, vmBool* signal);

/************************/
/*** CHANS Executable ***/
/************************/

vmU32               CHANSVmGetFreeExeSize(CHANSVm* vm);
vmPtr               CHANSVmGetFreeExeBufp(CHANSVm* vm);

vmBool              CHANSVmAddExe(CHANSVm* vm, vmS32 unk0, vmS32 unk1);

/************************/
/***   CHANS Object   ***/
/************************/

CHANSVmObjHdr*      CHANSVmNewObject(CHANSVm* vm, vmS32 unk, CHANSVmObjHdr* object, CHANSVmObjType type, vmSize length);
CHANSVmErr          CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object);

CHANSVmErr          CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, vmInteger val);
CHANSVmErr          CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, vmFloat value);
CHANSVmErr          CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, vmWString str, vmSize strLen);

/************************/
/***   CHANS Method   ***/
/************************/

#define             CHANSVmMethodCount(x)   (sizeof(x) / sizeof(CHANSVmMethodList))

vmBool              CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, CHANSVmMethodList* methods, vmSize methodCount);

/************************/
/***  CHANS Property  ***/
/************************/

#define CHANSVmPropertyCount(x)   (sizeof(x) / sizeof(CHANSVmPropertyList))

/************************/
/***    CHANS Class   ***/
/************************/

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const vmString clsName);
CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const vmString clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor);

/************************/
/***    CHANS Image   ***/
/************************/

typedef vmBool  (*CHANSVmImageCtorCallback)();
typedef vmPtr   (*CHANSVmImageAllocatorCallback)();

void                CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb);

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_H
