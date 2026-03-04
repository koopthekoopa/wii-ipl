#include <revolution/types.h>
#include <revolution/verdefs.h>

#include <zi8clib/zi8initd.h>
#include <zi8clib/zi8getc.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8copy.h>
#include <zi8clib/zoemdata.h>

#include <revolution/os.h>
#include <revolution/verdefs.h>

#include <eztx.h>

#include <wchar.h>

DefineVersion(RVL_MWM, ZI_EZITEXT, "Jan 15 2008", "18:59:50");

u16 EZTXGetGlobalDataSize() {
    return Zi8GetGlobalDataSize();
}

BOOL EZTXInitialize(void* data, void* workData) {
    OSRegisterVersion(GetVersion(ZI_EZITEXT));
    return Zi8InitializeDynamic(data, workData);
}

BOOL EZTXSetLatinSearchOrder(u8* searchArray, u8 searchSize, void* workData) {
    return Zi8SetLatinSearchOrder(searchArray, searchSize, workData);
}

u8 EZTXGetCandidates(EZTXGetParam* cands, void* workData) {
    return Zi8GetCandidates((ziGetParam*)cands, workData);
}

u8 EZTXCopy(wchar_t* dest, EZTXGetParam* getParams, u8 index, void* workData) {
    return Zi8CopyW(dest, (ziGetParam*)getParams, index, workData);
}

u8 EZTXAttachOEMDict(u8* oemData, u16 oemSize, void* other, void* workData) {
    return Zi8AttachOEMdata(oemData, oemSize, other, workData);
}

int EZTXDetachOEMDict(u8 oemId, void* workData) {
    return Zi8DetachOEMdata(oemId, workData);
}
