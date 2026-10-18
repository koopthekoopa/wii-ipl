#ifndef CHANS_VM_H
#define CHANS_VM_H

#include <decomp.h>

#include "channelScript/CHANSVm/VmError.h"
#include "channelScript/CHANSVm/VmTypes.h"

#ifdef __cplusplus
extern "C" {
#endif

/************************/
/***   CHANS System   ***/
/************************/

#define CHANS_VM_DEFAULT_WORK_SIZE 0x40000

#define CHANS_VM_CLASS_NAME_LEN 32

CHANSVmErr CHANSVmInit(CHANSVm* vm, void* work, u32 size);
CHANSVmErr CHANSVmLinkModules(CHANSVm* vm, s32 unk0);

void CHANSVmSetSignal(CHANSVm* vm, bool* signal);

/************************/
/*** CHANS Executable ***/
/************************/

u32 CHANSVmGetFreeExeSize(CHANSVm* vm);
void* CHANSVmGetFreeExeBufp(CHANSVm* vm);

CHANSVmErr CHANSVmAddExe(CHANSVm* vm, s32 unk0, CHANSVm* execCtx);

CHANSVmErr CHANSVmStep(CHANSVm* vm, int stepCount);

u16 CHANSVmGetSourceLine(CHANSVm* vm);

/************************/
/***   CHANS Object   ***/
/************************/

CHANSVmObjHdr* CHANSVmNewObject(CHANSVm* vm, BOOL noAlloc, CHANSVmObjHdr* object, CHANSVmObjType type, u32 length);
void* CHANSVmNewObjData(CHANSVm* vm, CHANSVmObjHdr* object, u32 length);
CHANSVmErr CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object);
CHANSVmObjHdr* CHANSVmCopyObject(CHANSVm* vm, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj);

CHANSVmErr CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, s64 val);
CHANSVmErr CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, double value);
CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, wchar_t* str, u32 strLen);

CHANSVmObjHdr* CHANSVmNewStringObject(CHANSVm* vm, CHANSVmObjHdr* object, u32 length);
CHANSVmErr CHANSVmSetU16StringFromU8(CHANSVm* vm, CHANSVmObjHdr* object, char* str, u32 strLen);

u32 CHANSVmStrCpyToU8FromStringObject(u8* output, CHANSVmObjHdr* stringObj, u32 length);

u32 CHANSVmGetArgc(CHANSVm* vm);
CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, u32 argIdx);
CHANSVmObjHdr* CHANSVmGetArgInteger(CHANSVm* vm, u32 argIdx);
CHANSVmObjHdr* CHANSVmGetArgFloat(CHANSVm* vm, u32 argIdx);
CHANSVmObjHdr* CHANSVmGetArgString(CHANSVm* vm, u32 argIdx);

CHANSVmObjHdr* CHANSVmNewArrayObject(CHANSVm* vm, CHANSVmObjHdr* object, u32 dimensions, u32* sizeEachDimension);
CHANSVmObjHdr* CHANSVmGetArrayElement2D(CHANSVm* vm, void* array, s32 dimension0, s32 dimension1);
CHANSVmObjHdr* CHANSVmGetArrayElement2DFloat(CHANSVm* vm, double* array, s32 dimension0, s32 dimension1);

CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm*, CHANSVmObjHdr*, u32 size, void* src, u32 count);
CHANSVmObjHdr* CHANSVmNewImageObject(CHANSVm*, CHANSVmObjHdr*, void* srcData, u16 width, u16 height, s32 format);

/************************/
/***   CHANS Method   ***/
/************************/

#define CHANSVmDefineMethod(name) BOOL name(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj)

#define CHANSVmMethodCount(x) (sizeof(x) / sizeof(CHANSVmMethodList))

CHANSVmErr CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmMethodList* methods, u32 methodCount);

/************************/
/***  CHANS Property  ***/
/************************/

#define CHANSVmPropertyCount(x) (sizeof(x) / sizeof(CHANSVmPropertyList))

CHANSVmErr CHANSVmAddNativePropertyAccessorsList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmPropertyList* properties, u32 propertyCount);

/************************/
/***    CHANS Class   ***/
/************************/

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const char* clsName);
CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor);

/************************/
/***    CHANS Image   ***/
/************************/

typedef BOOL (*CHANSVmImageCtorCallback)(CHANSVm* vm);
typedef void* (*CHANSVmImageAllocatorCallback)(CHANSVm* vm, u32 size);

void CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb);

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_H
