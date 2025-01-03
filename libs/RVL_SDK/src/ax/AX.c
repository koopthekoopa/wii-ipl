#include <revolution/os.h>
#include <revolution/verdefs.h>

SDKDefineVersion(AX, "Apr 20 2010", "11:18:56");

static BOOL __init = FALSE;

extern void __AXAllocInit();
extern void __AXVPBInit();
extern void __AXSPBInit();
extern void __AXAuxInit();
extern void __AXClInit();
extern void __AXOutInit(u32 mode);

static void AXInitEx(u32 mode);

void AXInit() {
    AXInitEx(0);
}

// seems to be inlined in the wii menu
static void AXInitEx(u32 mode) {
    if (!__init) {
        OSRegisterVersion(GetVersion(AX));

        __AXAllocInit();
        __AXVPBInit();
        __AXSPBInit();
        __AXAuxInit();
        __AXClInit();
        __AXOutInit(mode);

        __init = TRUE;
    }
}
