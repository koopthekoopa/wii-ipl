#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/CHANSVmInternal.h"

#include <revolution/sc.h>

#include <stdbool.h>

bool    VmSystemBeginRenderFlag;
bool    VmSystemWaitForRetraceFlag;

VmMethodDefine(SCPrivate, SC_ASPECT_RATIO_4x3) {
    return CHANSVmSetInteger(vm, out, SC_ASPECT_RATIO_4x3) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_ASPECT_RATIO_16x9) {
    return CHANSVmSetInteger(vm, out, SC_ASPECT_RATIO_16x9) == CHANS_VM_OK;
}



VmMethodDefine(SCPrivate, SC_LANG_JAPANESE) {
    return CHANSVmSetInteger(vm, out, SC_LANG_JAPANESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_ENGLISH) {
    return CHANSVmSetInteger(vm, out, SC_LANG_ENGLISH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_GERMAN) {
    return CHANSVmSetInteger(vm, out, SC_LANG_GERMAN) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_FRENCH) {
    return CHANSVmSetInteger(vm, out, SC_LANG_FRENCH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_SPANISH) {
    return CHANSVmSetInteger(vm, out, SC_LANG_SPANISH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_ITALIAN) {
    return CHANSVmSetInteger(vm, out, SC_LANG_ITALIAN) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_DUTCH) {
    return CHANSVmSetInteger(vm, out, SC_LANG_DUTCH) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_SIMP_CHINESE) {
    return CHANSVmSetInteger(vm, out, SC_LANG_SIMP_CHINESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_TRAD_CHINESE) {
    return CHANSVmSetInteger(vm, out, SC_LANG_TRAD_CHINESE) == CHANS_VM_OK;
}
VmMethodDefine(SCPrivate, SC_LANG_KOREAN) {
    return CHANSVmSetInteger(vm, out, SC_LANG_KOREAN) == CHANS_VM_OK;
}



VmMethodDefine(SCPrivate, GetUnk) {
    return CHANSVmSetInteger(vm, out, **in->value.unknown) == CHANS_VM_OK;
}



VmMethodDefine(System, BeginRender) {
    CHANSVmSetSignal(vm, &VmSystemBeginRenderFlag);
    return TRUE;
}

VmMethodDefine(System, WaitForRetrace) {
    CHANSVmSetSignal(vm, &VmSystemWaitForRetraceFlag);
    return TRUE;
}



VmMethodDefine(System, SCGetAspectRatio) {
    return CHANSVmSetInteger(vm, out, SCGetAspectRatio()) == CHANS_VM_OK;
}
VmMethodDefine(System, SCGetLanguage) {
    return CHANSVmSetInteger(vm, out, SCGetLanguage()) == CHANS_VM_OK;
}

BOOL VmGetProductArea(CHANSVm* vm, CHANSVmObjHdr* in, CHANSVmObjHdr* out, CHANSVmInt product) {
    if (**(in->value).unknown) {
        return CHANSVmSetInteger(vm, out, product) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(System, SCGetProductArea) {
    int product = SCGetProductArea();
    if (product == SC_PRODUCT_AREA_TWN) {
        product = SC_PRODUCT_AREA_JPN;
    }
    return VmGetProductArea(vm, in, out, product);
}

VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_UNKNOWN) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_UNKNOWN);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_JPN) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_JPN);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_USA) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_USA);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_EUR) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_EUR);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_KOR) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_KOR);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_HKG) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_HKG);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_ASI) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_ASI);
}
VmMethodDefine(SCPrivate, SC_PRODUCT_AREA_LTN) {
    return VmGetProductArea(vm, in, out, SC_PRODUCT_AREA_LTN);
}
