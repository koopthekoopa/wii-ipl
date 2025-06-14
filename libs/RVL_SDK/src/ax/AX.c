#include <revolution/ax.h>
#include <private/ax.h>

#include <revolution/os.h>
#include <revolution/verdefs.h>

SDKDefineVersion(AX, "Apr 20 2010", "11:18:56");

static BOOL __init = FALSE;

void AXInit() {
    AXInitEx(0);
}

void AXInitEx(u32 outputBufferMode) {
    if (!__init) {
        OSRegisterVersion(GetVersion(AX));

        __AXAllocInit();
        __AXVPBInit();
        __AXSPBInit();
        __AXAuxInit();
        __AXClInit();
        __AXOutInit(outputBufferMode);

        __init = TRUE;
    }
}
