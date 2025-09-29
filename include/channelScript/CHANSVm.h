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

#define CHANS_VM_CLASS_NAME_LEN     32

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
vmPtr               CHANSVmNewObjData(CHANSVm* vm, CHANSVmObjHdr* object, u32 length);
CHANSVmErr          CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object);
CHANSVmObjHdr*      CHANSVmCopyObject(CHANSVm* vm, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj);

CHANSVmErr          CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, vmInteger val);
CHANSVmErr          CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, vmFloat value);
CHANSVmErr          CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, vmWString str, vmSize strLen);

vmU32               CHANSVmGetArgc(CHANSVm* vm);
CHANSVmObjHdr*      CHANSVmGetArg(CHANSVm* vm, vmU32 argIdx);
CHANSVmObjHdr*      CHANSVmGetArgInteger(CHANSVm* vm, vmU32 argIdx);
CHANSVmObjHdr*      CHANSVmGetArgFloat(CHANSVm* vm, vmU32 argIdx);
CHANSVmObjHdr*      CHANSVmGetArgString(CHANSVm* vm, vmU32 argIdx);

CHANSVmObjHdr*      CHANSVmNewArrayObject(CHANSVm* vm, CHANSVmObjHdr* object, vmU32 dimensions, vmSize* sizeEachDimension);
CHANSVmObjHdr*      CHANSVmGetArrayElement2D(CHANSVm* vm, vmPtr array, vmS32 dimension0, vmS32 dimension1);
CHANSVmObjHdr*      CHANSVmGetArrayElement2DFloat(CHANSVm* vm, vmFloat* array, vmS32 dimension0, vmS32 dimension1);



/************************/
/***   CHANS Method   ***/
/************************/

#define             CHANSVmDefineMethod(name)   vmBoolInt name(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj)

#define             CHANSVmMethodCount(x)       (sizeof(x) / sizeof(CHANSVmMethodList))

vmBool              CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmMethodList* methods, vmSize methodCount);

/************************/
/***  CHANS Property  ***/
/************************/

#define             CHANSVmPropertyCount(x)   (sizeof(x) / sizeof(CHANSVmPropertyList))

vmBool              CHANSVmAddNativePropertyAccessorsList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmPropertyList* properties, vmSize propertyCount);

/************************/
/***    CHANS Class   ***/
/************************/

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const char* clsName);
CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor);

/************************/
/***    CHANS Image   ***/
/************************/

typedef vmBool  (*CHANSVmImageCtorCallback)();
typedef vmPtr   (*CHANSVmImageAllocatorCallback)(CHANSVm* vm, u32 size);

void                CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb);

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_H
