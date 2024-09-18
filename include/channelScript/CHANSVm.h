#ifndef IPL_CHANNEL_SCRIPT_H
#define IPL_CHANNEL_SCRIPT_H

#include <decomp.h>

#include <revolution.h>

typedef u32     CHANSClass;

typedef struct  CHANSVm;
typedef struct  CHANSVmObjHdr;

typedef void    (*CHANSMethod)(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*);
typedef void    (*CHANSCtor)(CHANSVm*);

struct CHANSVm {
    undefined unk_0x00[0x270];
} CHANSVm;

struct CHANSVmObjHdr {
    undefined unk_0x00[0x24];   // exact size not yet figured out.
} CHANSVmObjHdr;

typedef struct CHANSMethodEntry {
    const char* name;   // 0x00
    CHANSMethod method; // 0x04
} CHANSMethodEntry;

typedef struct CHANSPropertyEntry {
    const char* name;           // 0x00
    CHANSMethod getMethod;      // 0x04
    CHANSMethod setMethod;      // 0x08
} CHANSPropertyEntry;

#define CHANSMethodLength(x)    (sizeof(x) / sizeof(CHANSMethodEntry))
#define CHANSDefineMethod(x)    void x(CHANSVm* pVm, CHANSVmObjHdr* pUnk0, CHANSVmObjHdr* pUnk1)

CHANSClass  CHANSVmFindNativeClass(CHANSVm* pVm, const char* clsName);
CHANSClass  CHANSVmAddNativeClass(CHANSVm* pVm, const char* clsName, CHANSCtor clsCtor, u32 unk1);
BOOL        CHANSVmAddNativeMethodList(CHANSVm* pVm, CHANSClass cls, CHANSMethodEntry* pMethods, u32 methodLen);

int         CHANSVmGetArgInteger(CHANSVm* pVm, int arg);
float       CHANSVmGetArgFloat(CHANSVm* pVm, int arg);
char*       CHANSVmGetArgString(CHANSVm* pVm, int arg);

#include "channelScript/CHANSVmError.h"

#endif // IPL_CHANNEL_SCRIPT_H


