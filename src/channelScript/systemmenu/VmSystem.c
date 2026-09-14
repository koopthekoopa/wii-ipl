#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <revolution/sc.h>

vmBool VmSystemBeginRenderFlag;
vmBool VmSystemWaitForRetraceFlag;

vmBoolInt CHANSVmNewBuiltinObject(CHANSVm* vm, const char* className, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor, CHANSVmFunction clsInit,
                                  const char* globalName, CHANSVmFunction globalCtor, const CHANSVmPropertyList* propAccessors, vmU32 propCount,
                                  const CHANSVmMethodList* methods, vmU32 methodCount);

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
    if (arg != vmNull) {
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

vmBoolInt VmGetProductArea(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, vmInteger product) {
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

vmBoolInt VmSystemGetParentalControl(void) {
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
    vmBoolInt r = VmSystemGetParentalControl();
    return CHANSVmSetInteger(VmInst, VmReturnObj, r) == CHANS_VM_OK;
}

vmBoolInt VmSystemGetWWWRestrict(vmU32 mask) {
    vmBoolInt r = FALSE;

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
    vmBoolInt r = FALSE;
    if (VmSystemGetParentalControl() && SCGetWwwRestriction()) {
        r = TRUE;
    }
    return CHANSVmSetInteger(VmInst, VmReturnObj, r) == CHANS_VM_OK;
}

VmMethodDefine(System, Exit) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
    if (arg != vmNull) {
        pVm->exitCode = arg->value.int_v;
    }
    pVm->bSuspendStep = TRUE;
    return TRUE;
}

VmMethodDefine(System, GetSmallestFreeSysWorkSize) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    vmU32 val = pVm->minFreeHeapSize;
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
}

VmMethodDefine(System, GetFreeSysWorkSize) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    vmS32 diff = (vmS32)pVm->pObjStackTopBuf - (vmS32)pVm->pFreeExeBuf;
    return CHANSVmSetInteger(VmInst, VmReturnObj, diff) == CHANS_VM_OK;
}

static const CHANSVmPropertyList SCPrivatePropertyTbl[] = {
    {"SC_ASPECT_RATIO_4x3", VmSCPrivateSC_ASPECT_RATIO_4x3, vmNull},
    {"SC_ASPECT_RATIO_16x9", VmSCPrivateSC_ASPECT_RATIO_16x9, vmNull},
    {"SC_LANG_JAPANESE", VmSCPrivateSC_LANG_JAPANESE, vmNull},
    {"SC_LANG_ENGLISH", VmSCPrivateSC_LANG_ENGLISH, vmNull},
    {"SC_LANG_GERMAN", VmSCPrivateSC_LANG_GERMAN, vmNull},
    {"SC_LANG_FRENCH", VmSCPrivateSC_LANG_FRENCH, vmNull},
    {"SC_LANG_SPANISH", VmSCPrivateSC_LANG_SPANISH, vmNull},
    {"SC_LANG_ITALIAN", VmSCPrivateSC_LANG_ITALIAN, vmNull},
    {"SC_LANG_DUTCH", VmSCPrivateSC_LANG_DUTCH, vmNull},
    {"SC_LANG_SIMP_CHINESE", VmSCPrivateSC_LANG_SIMP_CHINESE, vmNull},
    {"SC_LANG_TRAD_CHINESE", VmSCPrivateSC_LANG_TRAD_CHINESE, vmNull},
    {"SC_LANG_KOREAN", VmSCPrivateSC_LANG_KOREAN, vmNull},
    {"scprivate", VmSCPrivateGetUnk, VmSCPrivateSetUnk},
    {"SC_PRODUCT_AREA_UNKNOWN", VmSCPrivateSC_PRODUCT_AREA_UNKNOWN, vmNull},
    {"SC_PRODUCT_AREA_JPN", VmSCPrivateSC_PRODUCT_AREA_JPN, vmNull},
    {"SC_PRODUCT_AREA_USA", VmSCPrivateSC_PRODUCT_AREA_USA, vmNull},
    {"SC_PRODUCT_AREA_EUR", VmSCPrivateSC_PRODUCT_AREA_EUR, vmNull},
    {"SC_PRODUCT_AREA_KOR", VmSCPrivateSC_PRODUCT_AREA_KOR, vmNull},
    {"SC_PRODUCT_AREA_HKG", VmSCPrivateSC_PRODUCT_AREA_HKG, vmNull},
    {"SC_PRODUCT_AREA_ASI", VmSCPrivateSC_PRODUCT_AREA_ASI, vmNull},
    {"SC_PRODUCT_AREA_LTN", VmSCPrivateSC_PRODUCT_AREA_LTN, vmNull},
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
    return CHANSVmNewBuiltinObject(vm, "@System", vmNull, vmNull, vmNull, "System", VmSystemCtor, SCPrivatePropertyTbl,
                                   CHANSVmPropertyCount(SCPrivatePropertyTbl), VmSystemMethodTbl, CHANSVmMethodCount(VmSystemMethodTbl));
}
