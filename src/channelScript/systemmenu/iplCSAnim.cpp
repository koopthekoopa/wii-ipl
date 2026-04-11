#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace anim {
#define METHOD_COUNT 15
#define PROPERTY_COUNT 4
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            BOOL get_min_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && (ipl::layout::Animator*)*hdr->value.ptr_v != NULL) {
                    ret = CHANSVmSetFloat(vm, hdr2, ((ipl::layout::Animator*)*hdr->value.ptr_v)->getMinFrame()) == CHANS_VM_OK;
                }
                return ret;
            }

            BOOL get_type(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && (ipl::layout::Animator*)*hdr->value.ptr_v != NULL) {
                    ret = CHANSVmSetInteger(vm, hdr2, ((ipl::layout::Animator*)*hdr->value.ptr_v)->getAnmType()) == CHANS_VM_OK;
                }
                return ret;
            }

            BOOL get_delta(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && (ipl::layout::Animator*)*hdr->value.ptr_v != NULL) {
                    ret = CHANSVmSetFloat(vm, hdr2, hdr->value.float_v) == CHANS_VM_OK;
                }
                return ret;
            }

            const CHANSVmMethodList cMethodList[METHOD_COUNT] = {
                {"start", NULL},           {"restart", NULL},     {"stop", NULL},          {"isPlaying", NULL},
                {"initFrame", NULL},       {"setMaxFrame", NULL}, {"setMinFrame", NULL},   {"setCurrentFrame", NULL},
                {"setType", NULL},         {"setDelta", NULL},    {"getMaxFrame", NULL},   {"getMinFrame", get_min_frame},
                {"getCurrentFrame", NULL}, {"getType", get_type}, {"getDelta", get_delta},

            };

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                {"*TYPE_FORWARD", util::get_int<0>, NULL},
                {"*TYPE_BACKWARD", util::get_int<1>, NULL},
                {"*TYPE_LOOP", util::get_int<2>, NULL},
                {"*TYPE_ALTERNATE", util::get_int<3>, NULL},
            };

            BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj, u32 anim) {
                BOOL flag = false;
                vmPtr obj = CHANSVmNewObjData(VmInst, VmObj, 4);
                if (obj != 0) {
                    CHANSVmNativeClass* ncls = CHANSVmFindNativeClass(VmInst, "Anim");
                    VmObj->value.int32_v->unk_0x00 = 8;  // ?
                    flag = ncls != NULL;
                    VmObj->parentCls = ncls;
                }
                return flag;
            }

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                BOOL e = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Anim", NULL, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, METHOD_COUNT) == CHANS_VM_OK;
                    e = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, PROPERTY_COUNT);
                }
                return result & e;
            }
        }  // namespace anim
    }  // namespace cs
}  // namespace ipl
