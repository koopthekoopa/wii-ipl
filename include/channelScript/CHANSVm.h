#ifndef IPL_CHANNEL_SCRIPT_H
#define IPL_CHANNEL_SCRIPT_H

#include <decomp.h>

#include <revolution.h>

#include "channelScript/CHANSVmError.h"

typedef u32     CHANSClass;

typedef struct  CHANSVm CHANSVm;
typedef struct  CHANSVmObjHdr CHANSVmObjHdr;

typedef void    (*CHANSMethod)(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*);
typedef void    (*CHANSCtor)(CHANSVm*);

struct CHANSVm {
    undefined           unk_0x00[0x1C];
    undefined4          unk_0x1C;
    undefined4          unk_0x20;
    undefined4          unk_0x24;
    undefined4          unk_0x28;
    undefined4          unk_0x2C;
    undefined           unk_0x30[0x30];
    undefined4*         unk_0x60;
    undefined           unk_0x64[0x20C];
};

struct CHANSVmObjHdr {
    undefined unk_0x00[0x10];
};

typedef struct CHANSMethodEntry {
    const char* name;           // 0x00
    CHANSMethod method;         // 0x04
} CHANSMethodEntry;

typedef struct CHANSPropertyEntry {
    const char* name;           // 0x00
    CHANSMethod getMethod;      // 0x04
    CHANSMethod setMethod;      // 0x08
} CHANSPropertyEntry;

#define     CHANSVmMethodLength(x)  (sizeof(x) / sizeof(CHANSMethodEntry))
#define     CHANSVmDefineMethod(x)  CHANSErr x(CHANSVm* pVm, CHANSVmObjHdr* pUnk0, CHANSVmObjHdr* pObject)

CHANSClass  CHANSVmFindNativeClass(CHANSVm* pVm, const char* clsName);
CHANSClass  CHANSVmAddNativeClass(CHANSVm* pVm, const char* clsName, CHANSCtor clsCtor, u32 unk1);
BOOL        CHANSVmAddNativeMethodList(CHANSVm* pVm, CHANSClass cls, CHANSMethodEntry* pMethods, u32 methodLen);

BOOL        CHANSVmNewObjData(CHANSVm* pVm, CHANSVmObjHdr* pObject, u32 unk1);

CHANSErr    CHANSVmSetInteger(CHANSVm* pVm, CHANSVmObjHdr* pObject, u32 intIdx, int value);

int         CHANSVmGetArgInteger(CHANSVm* pVm, int arg);
float       CHANSVmGetArgFloat(CHANSVm* pVm, int arg);
char*       CHANSVmGetArgString(CHANSVm* pVm, int arg);

#endif // IPL_CHANNEL_SCRIPT_H


