#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace vec3 {
            #define PROPERTY_COUNT  3
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            DEFINE_CS_IPL_CTOR_ARG(f32 x, f32 y, f32 z) {
                BOOL result = FALSE;
                math::VEC3* data = (math::VEC3*)CHANSVmNewObjData(VmInst, VmObj, sizeof(*data));
                if (data != NULL) {
                    data->x = x;
                    data->y = y;
                    data->z = z;
                    VmObj->type = CHANS_VM_TYPE_POINTER;
                    VmObj->parentCls = CHANSVmFindNativeClass(VmInst, "VEC3");
                    result = VmObj->parentCls != NULL;
                }
                return result;
            }

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                math::VEC3* data = (math::VEC3*)CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(*data));
                if (data != NULL) {
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
                    CHANSVmObjHdr* arg2 = CHANSVmGetArgFloat(VmInst, 2);

                    f32 x, y, z;

                    if (arg0 != NULL) {
                        x = arg0->value.float_v;
                    }
                    else {
                        x = 0.0;
                    }

                    if (arg1 != NULL) {
                        y = arg1->value.float_v;
                    }
                    else {
                        y = 0.0;
                    }

                    if (arg2 != NULL) {
                        z = arg2->value.float_v;
                    }
                    else {
                        z = 0.0;
                    }

                    data->x = x;
                    data->y = y;
                    data->z = z;

                    result = TRUE;
                }

                return result;
            }

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "VEC3", ctor, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, PROPERTY_COUNT) == CHANS_VM_OK;
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(set) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    f32* data = (f32*)*VmParentObj->value.ptr_v;

                    result = TRUE;
                    data[I] = arg->value.float_v;
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(get) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    f32* data = (f32*)*VmParentObj->value.ptr_v;
                    result = CHANSVmSetFloat(VmInst, VmReturnObj, data[I]) == CHANS_VM_OK;
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                { "x",  get<0>, set<0> },
                { "y",  get<1>, set<1> },
                { "z",  get<2>, set<2> },
            };
        }
    }
}
