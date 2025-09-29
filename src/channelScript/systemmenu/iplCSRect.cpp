#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace rect {
            #define METHOD_COUNT  4
            extern const CHANSVmMethodList cMethodList[METHOD_COUNT];

            CHANSVmDefineMethod(get_width) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    nw4r::ut::Rect* data = (nw4r::ut::Rect*)*VmParentObj->value.ptr_v;
                    result = CHANSVmSetFloat(VmInst, VmReturnObj, data->GetWidth()) == CHANS_VM_OK;
                }
                return result;
            }

            CHANSVmDefineMethod(get_height) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    nw4r::ut::Rect* data = (nw4r::ut::Rect*)*VmParentObj->value.ptr_v;
                    result = CHANSVmSetFloat(VmInst, VmReturnObj, data->GetHeight()) == CHANS_VM_OK;
                }
                return result;
            }

            CHANSVmDefineMethod(set_width) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    nw4r::ut::Rect* data = (nw4r::ut::Rect*)*VmParentObj->value.ptr_v;

                    result = TRUE;
                    data->SetWidth(arg->value.float_v);
                }
                return result;
            }

            CHANSVmDefineMethod(set_height) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    nw4r::ut::Rect* data = (nw4r::ut::Rect*)*VmParentObj->value.ptr_v;

                    result = TRUE;
                    data->SetHeight(arg->value.float_v);
                }
                return result;
            }

            DEFINE_CS_IPL_CTOR() {
                BOOL result = FALSE;

                VmObj->type = CHANS_VM_TYPE_POINTER;
                VmObj->parentCls = CHANSVmFindNativeClass(VmInst, "Rect");
                if (VmObj->parentCls != NULL) {
                    result = TRUE;
                }

                return result;
            }

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                nw4r::ut::Rect* data = (nw4r::ut::Rect*)CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(*data));
                if (data != NULL) {
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
                    CHANSVmObjHdr* arg2 = CHANSVmGetArgFloat(VmInst, 2);
                    CHANSVmObjHdr* arg3 = CHANSVmGetArgFloat(VmInst, 3);

                    f32 left, top, right, bottom;

                    if (arg0 != NULL) {
                        left = arg0->value.float_v;
                    }
                    else {
                        left = 0.0;
                    }

                    if (arg1 != NULL) {
                        top = arg1->value.float_v;
                    }
                    else {
                        top = 0.0;
                    }

                    if (arg2 != NULL) {
                        right = arg2->value.float_v;
                    }
                    else {
                        right = 0.0;
                    }

                    if (arg3 != NULL) {
                        bottom = arg3->value.float_v;
                    }
                    else {
                        bottom = 0.0;
                    }

                    result = TRUE;

                    nw4r::ut::Rect newData(left, top, right, bottom);
                    *data = newData;
                }

                return result;
            }

            const CHANSVmMethodList cMethodList[METHOD_COUNT] = {
                {"GetWidth",    get_width },
                {"GetHeight",   get_height },
                {"SetWidth",    set_width },
                {"SetHeight",   set_height },
            };

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Rect", ctor, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, METHOD_COUNT) == CHANS_VM_OK;
                }
                return result;
            }
        }
    }
}
