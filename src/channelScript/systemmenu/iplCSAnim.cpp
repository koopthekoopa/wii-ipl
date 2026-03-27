#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace anim {
#define METHOD_COUNT 15
#define PROPERTY_COUNT 4
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            const CHANSVmMethodList cMethodList[METHOD_COUNT] = {
                {"start", NULL},           {"restart", NULL},     {"stop", NULL},        {"isPlaying", NULL},
                {"initFrame", NULL},       {"setMaxFrame", NULL}, {"setMinFrame", NULL}, {"setCurrentFrame", NULL},
                {"setType", NULL},         {"setDelta", NULL},    {"getMaxFrame", NULL}, {"getMinFrame", NULL},
                {"getCurrentFrame", NULL}, {"getType", NULL},     {"getDelta", NULL},

            };

            template <int I>
            CHANSVmDefineMethod(set) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    f32* data = (f32*)*VmParentObj->value.ptr_v;

                    result = TRUE;
                    data[I] = arg->value.int_v;
                }
                return result;
            }

            template <int I>
            CHANSVmDefineMethod(get) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    s32* data = (s32*)*VmParentObj->value.ptr_v;
                    result = CHANSVmSetFloat(VmInst, VmReturnObj, data[I]) == CHANS_VM_OK;
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                {"*TYPE_FORWARD", get<0>, set<0>},
                {"*TYPE_BACKWARD", get<1>, set<1>},
                {"*TYPE_LOOP", get<2>, set<2>},
                {"*TYPE_ALTERNATE", get<3>, set<3>},
            };

            BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj, u32 anim) {
                BOOL flag = false;
                vmPtr obj = CHANSVmNewObjData(VmInst, VmObj, 4);
                if (VmObj != 0) {
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

            BOOL get_delta(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && hdr != NULL) {
                    err = CHANSVmSetFloat(vm, hdr2, hdr->value.float_v);
                    ret = __cntlzw(err);
                    ret >>= 5;
                }
                return ret;
            }

            BOOL get_type(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && hdr != NULL) {
                    valid = (int)hdr->value.ptr_v;
                    err = CHANSVmSetInteger(vm, hdr2, valid >> 0x1f);
                    ret = __cntlzw(err);
                    ret >>= 5;
                }
                return ret;
            }

            BOOL get_min_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = 0;
                CHANSVmErr err;
                int valid = util::is_valid_datap(hdr);
                if (valid != 0 && hdr != NULL) {
                    valid = (int)hdr->value.ptr_v;
                    err = CHANSVmSetFloat(vm, hdr2, hdr->value.float_v);
                    ret = __cntlzw(err);
                    ret >>= 5;
                }
                return ret;
            }

        }  // namespace anim
    }  // namespace cs
}  // namespace ipl
