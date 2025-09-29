#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <revolution/sc.h>

#include <stdbool.h>

bool    VmSystemBeginRenderFlag;
bool    VmSystemWaitForRetraceFlag;

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

CHANSVmErr VmGetProductArea(CHANSVm* vm, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, vmS32 product) {
    if (*(u8*)(*VmParentObj->value.ptr_v)) {
        return CHANSVmSetInteger(vm, VmReturnObj, product) == CHANS_VM_OK;
    }
    return CHANS_VM_OK;
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
