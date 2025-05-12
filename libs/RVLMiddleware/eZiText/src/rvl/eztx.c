#include <revolution/types.h>
#include <revolution/verdefs.h>

#include <zi8clib/zi8initd.h>
#include <zi8clib/zi8getc.h>
#include <zi8clib/zi8copy.h>
#include <zi8clib/zoemdata.h>

#include <wchar.h>

const char* __ZI_EZITEXTVersion = "<< RVL_MWM - ZI_EZITEXT \trelease build: Jan 15 2008 18:59:50 (0x4199_60831) >>";

u16 EZTXGetGlobalDataSize() {
    return Zi8GetGlobalDataSize();
}

BOOL EZTXInitialize(ziVoid* data, ziVoid* workData) {
    OSRegisterVersion(__ZI_EZITEXTVersion);
    return Zi8InitializeDynamic(data, workData);
}

BOOL EZTXSetLatinSearchOrder(u8* searchArray, u8 searchSize, void* workData) {
    return Zi8SetLatinSearchOrder(searchArray, searchSize, workData);
}

u8 EZTXGetCandidates(u8* cands, void* workData) {
    return Zi8GetCandidates(cands, workData);
}

u8 EZTXCopy(wchar_t* dest, u8* unknown0, u8 unknown1, ziVoid* workData) {
    return Zi8CopyW(dest, unknown0, unknown1, workData);
}

u8 EZTXAttachOEMDict(u8* oemData, u16 oemSize, void* unknown, void* workData) {
    return Zi8AttachOEMdata(oemData, oemSize, unknown, workData);
}

int EZTXDetachOEMDict(u8 unknown, void* workData) {
    return Zi8DetachOEMdata(unknown, workData);
}
