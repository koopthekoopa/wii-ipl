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
        // This struct is likely not needed.
        struct {
            CHANSVmInt      hi;
            CHANSVmInt      lo;
        } int32_v;
        CHANSVmInt64    int_v;

        CHANSVmFloat    float_v;

        struct {
            CHANSVmWStr*    str;
            CHANSVmSize*    len;
        } wstring_v;

        struct {
            CHANSVmStr*     str;
            CHANSVmSize*    len;
        } string_v;

        CHANSVmPtr      ptr_v;
    } value;            // 0x00

    CHANSVmU8   type;   // 0x08

    struct {
        CHANSVmU8       readonly : 1;
        CHANSVmU8       reserved : 7;
    } flags;            // 0x08
    CHANSVmU8   unk_0x0A;
    CHANSVmU8   unk_0x0B;

    undefined4  unk_0x0C;
};

void    CHANSVmInit(CHANSVm* vm, CHANSVmPtr work, CHANSVmInt size);

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

CHANSVmErr      CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmInt64 val);
CHANSVmErr      CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmFloat value);
CHANSVmErr      CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmWStr str, CHANSVmSize strLen);

static inline CHANSVmErr CHANSVmSetInt8(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmS8 value) {
    return CHANSVmSetInteger(vm, object, (CHANSVmS8)(value));
}
static inline CHANSVmErr CHANSVmSetInt16(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmS16 value) {
    return CHANSVmSetInteger(vm, object, (CHANSVmS16)(value));
}
static inline CHANSVmErr CHANSVmSetInt32(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmS32 value) {
    return CHANSVmSetInteger(vm, object, (CHANSVmInt)(value));
}
static inline CHANSVmErr CHANSVmSetInt64(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmS64 value) {
    return CHANSVmSetInteger(vm, object, value);
}

typedef struct  CHANSVmNativeClass CHANSVmNativeClass;

/************************/
/***   CHANS Method   ***/
/************************/

typedef struct CHANSVmMethodList {
    CHANSVmStr      name;   // 0x00
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
    CHANSVmStr      name;       // 0x00
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
    CHANSVmStr              clsName;            // 0x1C

    undefined               unk_0x20[0x1C];
};

CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const CHANSVmStr clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor);

/************************/
/***   Here for now   ***/
/************************/

CHANSVmBool         CHANSVmLinkModules(CHANSVm* vm, int unk0);

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_H
