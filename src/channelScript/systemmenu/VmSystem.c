#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <revolution/sc.h>

bool VmSystemBeginRenderFlag;
bool VmSystemWaitForRetraceFlag;

BOOL CHANSVmNewBuiltinObject(CHANSVm* vm, const char* className, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor, CHANSVmFunction clsInit,
                             const char* globalName, CHANSVmFunction globalCtor, const CHANSVmPropertyList* propAccessors, u32 propCount,
                             const CHANSVmMethodList* methods, u32 methodCount);

static VmCtorDefine(System) {
    return CHANSVmNewObjData(VmInst, VmReturnObj, 1) ? TRUE : FALSE;
}

VmMethodDefine(SCPrivate, SC_ASPECT_RATIO_4x3) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_ASPECT_RATIO_4x3) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_ASPECT_RATIO_16x9) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_ASPECT_RATIO_16x9) == CHANS_VM_OK;
}

VmMethodDefine(SCPrivate, SC_LANG_JAPANESE) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_JAPANESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_ENGLISH) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_ENGLISH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_GERMAN) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_GERMAN) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_FRENCH) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_FRENCH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_SPANISH) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_SPANISH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_ITALIAN) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_ITALIAN) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_DUTCH) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_DUTCH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_SIMP_CHINESE) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_SIMP_CHINESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_TRAD_CHINESE) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_TRAD_CHINESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_KOREAN) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SC_LANG_KOREAN) == CHANS_VM_OK;
}

VmMethodDefine(SCPrivate, GetUnk) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, *(u8*)(*VmParentObj->value.ptr_v)) == CHANS_VM_OK;
}

VmMethodDefine(SCPrivate, SetUnk) {
    u8* ptr = *VmParentObj->value.ptr_v;
    CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
    if (arg != NULL) {
        *ptr = (u8)(arg->value.int_v != 0);
        return TRUE;
    }
    return FALSE;
}

VmMethodDefine(System, BeginRender) {
    CHANSVmSetSignal(VmInst, &VmSystemBeginRenderFlag);
    return TRUE;
}

VmMethodDefine(System, WaitForRetrace) {
    CHANSVmSetSignal(VmInst, &VmSystemWaitForRetraceFlag);
    return TRUE;
}

VmMethodDefine(System, SCGetAspectRatio) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SCGetAspectRatio()) == CHANS_VM_OK;
}
VmMethodDefine(System, SCGetLanguage) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, SCGetLanguage()) == CHANS_VM_OK;
}

BOOL VmGetProductArea(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, s64 product) {
    if (*(u8*)(*VmParentObj->value.ptr_v)) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, product) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(System, SCGetProductArea) {
    int product = SCGetProductArea();
    if (product == SC_PRODUCT_AREA_TWN) {
        product = SC_PRODUCT_AREA_JPN;
    }
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, product);
}

VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_UNKNOWN) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_UNKNOWN);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_JPN) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_JPN);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_USA) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_USA);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_EUR) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_EUR);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_KOR) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_KOR);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_HKG) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_HKG);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_ASI) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_ASI);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_LTN) {
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, SC_PRODUCT_AREA_LTN);
}

VmMethodDefine(System, SCGetWCFlags) {
    BOOL result = FALSE;
    if (SCGetWCFlags() & SC_WC_FLAGS_ENABLED) {
        result = TRUE;
    }
    return VmGetProductArea(VmInst, VmParentObj, VmReturnObj, result);
}

BOOL VmSystemGetParentalControl(void) {
    SCParentalControlsInfo info;
    BOOL result = TRUE;

    if (!SCGetParentalControl(&info)) {
        result = FALSE;
    } else if (!(info.enable & SC_PARENTAL_FLAG_ENABLED)) {
        result = FALSE;
    }
    return result;
}

VmMethodDefine(System, GetParentalControlUseFlag) {
    BOOL r = VmSystemGetParentalControl();
    return CHANSVmSetInteger(VmInst, VmReturnObj, r) == CHANS_VM_OK;
}

BOOL VmSystemGetWWWRestrict(u32 mask) {
    BOOL r = FALSE;

    if (VmSystemGetParentalControl()) {
        if (SCGetNetContentRestrictions() & mask) {
            r = TRUE;
        }
    }
    return r;
}

VmMethodDefine(System, GetNewsRestriction) {
    s32 v = VmSystemGetWWWRestrict(SC_NET_RESTRICTIONS_OPERA);
    return CHANSVmSetInteger(VmInst, VmReturnObj, v) == CHANS_VM_OK;
}

VmMethodDefine(System, GetNwc24MessageRestriction) {
    s32 v = VmSystemGetWWWRestrict(SC_NET_RESTRICTIONS_MSG_BOARD);
    return CHANSVmSetInteger(VmInst, VmReturnObj, v) == CHANS_VM_OK;
}

VmMethodDefine(System, GetShoppingRestriction) {
    s32 v = VmSystemGetWWWRestrict(SC_NET_RESTRICTIONS_SHOPPING);
    return CHANSVmSetInteger(VmInst, VmReturnObj, v) == CHANS_VM_OK;
}

VmMethodDefine(System, GetWwwRestriction) {
    BOOL r = FALSE;
    if (VmSystemGetParentalControl() && SCGetWwwRestriction()) {
        r = TRUE;
    }
    return CHANSVmSetInteger(VmInst, VmReturnObj, r) == CHANS_VM_OK;
}

VmMethodDefine(System, Exit) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
    if (arg != NULL) {
        pVm->exitCode = arg->value.int_v;
    }
    pVm->bSuspendStep = TRUE;
    return TRUE;
}

VmMethodDefine(System, GetSmallestFreeSysWorkSize) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 val = pVm->minFreeHeapSize;
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
}

VmMethodDefine(System, GetFreeSysWorkSize) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    s32 diff = (s32)pVm->pObjStackTopBuf - (s32)pVm->pFreeExeBuf;
    return CHANSVmSetInteger(VmInst, VmReturnObj, diff) == CHANS_VM_OK;
}

static const CHANSVmPropertyList SCPrivatePropertyTbl[] = {
    {"SC_ASPECT_RATIO_4x3", VmSCPrivateSC_ASPECT_RATIO_4x3, NULL},
    {"SC_ASPECT_RATIO_16x9", VmSCPrivateSC_ASPECT_RATIO_16x9, NULL},
    {"SC_LANG_JAPANESE", VmSCPrivateSC_LANG_JAPANESE, NULL},
    {"SC_LANG_ENGLISH", VmSCPrivateSC_LANG_ENGLISH, NULL},
    {"SC_LANG_GERMAN", VmSCPrivateSC_LANG_GERMAN, NULL},
    {"SC_LANG_FRENCH", VmSCPrivateSC_LANG_FRENCH, NULL},
    {"SC_LANG_SPANISH", VmSCPrivateSC_LANG_SPANISH, NULL},
    {"SC_LANG_ITALIAN", VmSCPrivateSC_LANG_ITALIAN, NULL},
    {"SC_LANG_DUTCH", VmSCPrivateSC_LANG_DUTCH, NULL},
    {"SC_LANG_SIMP_CHINESE", VmSCPrivateSC_LANG_SIMP_CHINESE, NULL},
    {"SC_LANG_TRAD_CHINESE", VmSCPrivateSC_LANG_TRAD_CHINESE, NULL},
    {"SC_LANG_KOREAN", VmSCPrivateSC_LANG_KOREAN, NULL},
    {"scprivate", VmSCPrivateGetUnk, VmSCPrivateSetUnk},
    {"SC_PRODUCT_AREA_UNKNOWN", VmSCPrivateSC_PRODUCT_AREA_UNKNOWN, NULL},
    {"SC_PRODUCT_AREA_JPN", VmSCPrivateSC_PRODUCT_AREA_JPN, NULL},
    {"SC_PRODUCT_AREA_USA", VmSCPrivateSC_PRODUCT_AREA_USA, NULL},
    {"SC_PRODUCT_AREA_EUR", VmSCPrivateSC_PRODUCT_AREA_EUR, NULL},
    {"SC_PRODUCT_AREA_KOR", VmSCPrivateSC_PRODUCT_AREA_KOR, NULL},
    {"SC_PRODUCT_AREA_HKG", VmSCPrivateSC_PRODUCT_AREA_HKG, NULL},
    {"SC_PRODUCT_AREA_ASI", VmSCPrivateSC_PRODUCT_AREA_ASI, NULL},
    {"SC_PRODUCT_AREA_LTN", VmSCPrivateSC_PRODUCT_AREA_LTN, NULL},
};

static const CHANSVmMethodList VmSystemMethodTbl[] = {
    {"beginRender", VmSystemBeginRender},
    {"exit", VmSystemExit},
    {"SCGetAspectRatio", VmSystemSCGetAspectRatio},
    {"SCGetLanguage", VmSystemSCGetLanguage},
    {"SCGetProductArea", VmSystemSCGetProductArea},
    {"SCGetWCFlags", VmSystemSCGetWCFlags},
    {"getParentalControlUseFlag", VmSystemGetParentalControlUseFlag},
    {"getNewsRestriction", VmSystemGetNewsRestriction},
    {"getNwc24MessageRestriction", VmSystemGetNwc24MessageRestriction},
    {"getShoppingRestriction", VmSystemGetShoppingRestriction},
    {"getWwwRestriction", VmSystemGetWwwRestriction},
    {"getSmallestFreeSysWorkSize", VmSystemGetSmallestFreeSysWorkSize},
    {"getFreeSysWorkSize", VmSystemGetFreeSysWorkSize},
    {"waitForRetrace", VmSystemWaitForRetrace},
};

BOOL VmSystemInit(CHANSVm* vm) {
    return CHANSVmNewBuiltinObject(vm, "@System", NULL, NULL, NULL, "System", VmSystemCtor, SCPrivatePropertyTbl,
                                   CHANSVmPropertyCount(SCPrivatePropertyTbl), VmSystemMethodTbl, CHANSVmMethodCount(VmSystemMethodTbl));
}
