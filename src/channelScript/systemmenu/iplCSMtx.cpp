#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace mtx34 {
            // used but pooled first
            DECOMP_FORCE_ACTIVE(iplCSMtx_cpp, "MTX34");

            #define PROPERTY_COUNT  13
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            #define MTX_GET(_0, _1)     get_##_0##_1
            #define MTX_GET_DEF(_0, _1) CHANSVmDefineMethod(MTX_GET(_0, _1)) { return get(VmInst, VmParentObj, VmReturnObj, _0, _1); }

            #define MTX_SET(_0, _1)     set_##_0##_1
            #define MTX_SET_DEF(_0, _1) CHANSVmDefineMethod(MTX_SET(_0, _1)) { return set(VmInst, VmParentObj, _0, _1); }

            #define MTX_PROP(_0, _1)    { "_"#_0#_1, MTX_GET(_0, _1), MTX_SET(_0, _1) }

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                CHANSVmObjHdr args[12];
                memset(args, 0, sizeof(args));

                for (int i = 0; i < (int)ARRSIZE(args); i++) {
                    if (CHANSVmGetArgFloat(VmInst, i)) {
                        CHANSVmCopyObject(VmInst, &args[i], CHANSVmGetArgFloat(VmInst, i));
                    }
                    else {
                        if (CHANSVmSetFloat(VmInst, &args[i], 0.0) != CHANS_VM_OK) {
                            return FALSE;
                        }
                    }
                }

                CHANSVmObjHdr* arrObj = (CHANSVmObjHdr*)CHANSVmNewObjData(VmInst, VmReturnObj, 16);
                if (arrObj != NULL) {
                    u32 sizes[] = { 3, 4 };
                    if (CHANSVmNewArrayObject(VmInst, arrObj, ARRSIZE(sizes), sizes) != NULL) {
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 0, 0), &args[0]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 0, 1), &args[1]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 0, 2), &args[2]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 0, 3), &args[3]);
                        
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 1, 0), &args[4]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 1, 1), &args[5]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 1, 2), &args[6]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 1, 3), &args[7]);
                        
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 2, 0), &args[8]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 2, 1), &args[9]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 2, 2), &args[10]);
                        CHANSVmCopyObject(VmInst, CHANSVmGetArrayElement2D(VmInst, arrObj, 2, 3), &args[11]);

                        result = TRUE;
                    }
                }

                return result;
            }

            BOOL get(CHANSVm* vm, CHANSVmObjHdr* parentObj, CHANSVmObjHdr* returnObj, int dimension0, int dimension1) {
                BOOL result = FALSE;
                if (util::is_valid_datap(parentObj)) {
                    CHANSVmObjHdr* elem = CHANSVmGetArrayElement2DFloat(vm, *parentObj->value.float_array_v, dimension0, dimension1);
                    if (elem != NULL) {
                        result = CHANSVmSetFloat(vm, returnObj, (f32)elem->value.float_v) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            MTX_GET_DEF(0, 0);
            MTX_GET_DEF(0, 1);
            MTX_GET_DEF(0, 2);
            MTX_GET_DEF(0, 3);

            MTX_GET_DEF(1, 0);
            MTX_GET_DEF(1, 1);
            MTX_GET_DEF(1, 2);
            MTX_GET_DEF(1, 3);

            MTX_GET_DEF(2, 0);
            MTX_GET_DEF(2, 1);
            MTX_GET_DEF(2, 2);
            MTX_GET_DEF(2, 3);

            BOOL set(CHANSVm* vm, CHANSVmObjHdr* parentObj, int dimension0, int dimension1) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(parentObj) && arg != NULL) {
                    CHANSVmObjHdr* elem = CHANSVmGetArrayElement2D(vm, *parentObj->value.ptr_v, dimension0, dimension1);
                    if (elem != NULL) {
                        if (CHANSVmCopyObject(vm, elem, arg) != NULL) {
                            result = TRUE;
                        }
                    }
                }
                return result;
            }

            MTX_SET_DEF(0, 0);
            MTX_SET_DEF(0, 1);
            MTX_SET_DEF(0, 2);
            MTX_SET_DEF(0, 3);

            MTX_SET_DEF(1, 0);
            MTX_SET_DEF(1, 1);
            MTX_SET_DEF(1, 2);
            MTX_SET_DEF(1, 3);

            MTX_SET_DEF(2, 0);
            MTX_SET_DEF(2, 1);
            MTX_SET_DEF(2, 2);
            MTX_SET_DEF(2, 3);

            CHANSVmDefineMethod(get_m) {
                BOOL result = FALSE;
                if (CHANSVmCopyObject(VmInst, VmReturnObj, (CHANSVmObjHdr*)*VmParentObj->value.ptr_v) != NULL) {
                    result = TRUE;
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                MTX_PROP(0, 0),
                MTX_PROP(0, 1),
                MTX_PROP(0, 2),
                MTX_PROP(0, 3),
                MTX_PROP(1, 0),
                MTX_PROP(1, 1),
                MTX_PROP(1, 2),
                MTX_PROP(1, 3),
                MTX_PROP(2, 0),
                MTX_PROP(2, 1),
                MTX_PROP(2, 2),
                MTX_PROP(2, 3),
                { "m", get_m, NULL }
            };

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "MTX34", ctor, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, PROPERTY_COUNT) == CHANS_VM_OK;
                }
                return result;
            }
        }
    }
}
