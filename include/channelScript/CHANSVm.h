#ifndef CHANS_VM_H
#define CHANS_VM_H

#include <decomp.h>

#include "channelScript/CHANSVm/CHANSVmTypes.h"
#include "channelScript/CHANSVm/CHANSVmError.h"

#ifdef __cplusplus
extern "C" {
#endif

/************************/
/***   CHANS System   ***/
/************************/

#define CHANS_VM_DEFAULT_WORK_SIZE  0x40000

typedef struct  CHANSVm         CHANSVm;
typedef struct  CHANSVmObjHdr   CHANSVmObjHdr;

typedef CHANSVmBool (*CHANSVmFunction)(CHANSVm* vm, CHANSVmObjHdr* objectIn, CHANSVmObjHdr* objectOut);

struct CHANSVm {
    undefined4      unk_0x00;
    undefined       unk_0x04[0x18];
    undefined4      unk_0x1C;
    undefined4      unk_0x20;
    undefined4      unk_0x24;
    undefined4      unk_0x28;
    undefined4      unk_0x2C;
    undefined       unk_0x30[0x30];
    undefined4*     unk_0x60;
    undefined       unk_0x64[0x20C];
};

struct CHANSVmObjHdr {
    union {
        CHANSVmU8**     unknown;
        CHANSVmInt      int_v;
        CHANSVmInt32    int32_v;
        CHANSVmFloat    float_v;
        struct {
            CHANSVmStr16*   str;
            CHANSVmSize*    len;
        } wstring_v;
        struct {
            CHANSVmStr8*    str;
            CHANSVmSize*    len;
        } string_v;
        CHANSVmPtr      ptr_v;
    } value;            // 0x00

    CHANSVmU8   type;   // 0x08

    struct {
        CHANSVmU8       readonly : 1;   // 10000000
        CHANSVmU8       reserved : 7;   // 01111111
    } flags;            // 0x08
    CHANSVmU8   unk_0x0A;
    CHANSVmU8   unk_0x0B;

    undefined4  unk_0x0C;
};

void    CHANSVmInit(CHANSVm* vm, CHANSVmPtr work, CHANSVmU32 size);

/************************/
/*** CHANS Executable ***/
/************************/

u32         CHANSVmGetFreeExeSize(CHANSVm* vm);
void*       CHANSVmGetFreeExeBufp(CHANSVm* vm);

CHANSVmBool CHANSVmAddExe(CHANSVm* vm, int unk0, int unk1);

/************************/
/***   CHANS Object   ***/
/************************/

CHANSVmObjHdr*  CHANSVmNewObject(CHANSVm* vm, int unk, CHANSVmObjHdr* object, CHANSVmObjType type, CHANSVmSize length);
CHANSVmErr      CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object);

CHANSVmErr      CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmInt val);
CHANSVmErr      CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmFloat value);
CHANSVmErr      CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmStr16 str, CHANSVmSize strLen);

typedef struct  CHANSVmNativeClass CHANSVmNativeClass;

/************************/
/***   CHANS Method   ***/
/************************/

typedef struct CHANSVmMethodList {
    CHANSVmStr8      name;   // 0x00
    CHANSVmFunction method; // 0x04
} CHANSVmMethodList;

typedef struct CHANSVmNativeMethod {
    undefined       unk_0x00[0x20];
} CHANSVmNativeMethod;

#define CHANSVmMethodCount(x)   (sizeof(x) / sizeof(CHANSVmMethodList))

CHANSVmBool CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, CHANSVmMethodList* methods, CHANSVmSize methodCount);

/************************/
/***  CHANS Property  ***/
/************************/

typedef struct CHANSVmPropertyList {
    CHANSVmStr8      name;       // 0x00
    CHANSVmFunction unk_0x04;
    CHANSVmFunction unk_0x08;
} CHANSVmPropertyList;

typedef struct CHANSVmNativeProperty {
    undefined       unk_0x00[0x20];
} CHANSVmNativeProperty;

#define CHANSVmPropertyCount(x)   (sizeof(x) / sizeof(CHANSVmPropertyList))

/************************/
/***    CHANS Class   ***/
/************************/

struct CHANSVmNativeClass {
    undefined4              unk_0x00;

    CHANSVmFunction         ctor;               // 0x04
    CHANSVmFunction         dtor;               // 0x08
    CHANSVmFunction         init;               // 0x0C

    CHANSVmNativeMethod*    nativeMethods;      // 0x10
    CHANSVmNativeProperty*  nativProperties;    // 0x14

    CHANSVmSize             clsNameLength;      // 0x18
    CHANSVmStr8              clsName;            // 0x1C

    undefined               unk_0x20[0x1C];
};

CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const CHANSVmStr8 clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor);

/************************/
/***   Here for now   ***/
/************************/

CHANSVmBool         CHANSVmLinkModules(CHANSVm* vm, int unk0);

void                CHANSVmSetSignal(CHANSVm* vm, CHANSVmBool* signal);

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_H
