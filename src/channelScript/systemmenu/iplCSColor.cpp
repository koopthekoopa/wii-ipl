#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        
        /*** GX COLOR 8 BIT ***/

        namespace color {
            #define COLOR_PROPERTY_COUNT  4
            extern const CHANSVmPropertyList cPropertyList[COLOR_PROPERTY_COUNT];

            typedef union CS_Color {
                u32     val32;
                GXColor gxColor;
                u8      arr[4];
            } CS_Color;

            typedef struct _CS_Struct {
                CS_Color unk_0x00;
                CS_Color unk_0x04;
                CS_Color unk_0x08;
            } CS_Struct;

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                nw4r::ut::Color* data = (nw4r::ut::Color*)CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(*data));
                if (data != NULL) {
                    // new Color(GXColor)
                    if (CHANSVmGetArgc(VmInst) == 1) {
                        CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
                        if (arg != NULL) {
                            *data = ((CS_Struct*)&arg->value.ptr_v)->unk_0x04.gxColor;
                        }
                    }
                    // new Color(u8 r, u8 g, u8 b, u8 a)
                    else {
                        CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(VmInst, 0);
                        CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(VmInst, 1);
                        CHANSVmObjHdr* arg2 = CHANSVmGetArgInteger(VmInst, 2);
                        CHANSVmObjHdr* arg3 = CHANSVmGetArgInteger(VmInst, 3);

                        u8 val;

                        data->r = arg0 != NULL ? arg0->value.int_v : 0;
                        data->g = arg1 != NULL ? arg1->value.int_v : 0;
                        data->b = arg2 != NULL ? arg2->value.int_v : 0;
                        data->a = arg3 != NULL ? arg3->value.int_v : 0;
                    }
                    result = TRUE;
                }

                return result;
            }

            DEFINE_CS_IPL_CTOR_ARG(nw4r::ut::Color color) {
                BOOL result = FALSE;
                nw4r::ut::Color* data = (nw4r::ut::Color*)CHANSVmNewObjData(VmInst, VmObj, sizeof(*data));
                if (data != NULL) {
                    *data = color;
                    VmObj->type = CHANS_VM_TYPE_POINTER;
                    VmObj->parentCls = CHANSVmFindNativeClass(VmInst, "Color");
                    result = VmObj->parentCls != NULL;
                }
                return result;
            }

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Color", ctor, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, COLOR_PROPERTY_COUNT) == CHANS_VM_OK;
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(set) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    CS_Struct* data = (CS_Struct*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        result = TRUE;
                        CS_Color newVal = data->unk_0x00;
                        newVal.arr[I] = arg->value.int_v;
                        data->unk_0x00 = newVal;
                    }
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(get) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    CS_Struct* data = (CS_Struct*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        CS_Color val = data->unk_0x00;
                        result = CHANSVmSetInteger(VmInst, VmReturnObj, val.arr[I]) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[COLOR_PROPERTY_COUNT] = {
                { "r",  get<0>, set<0> },
                { "g",  get<1>, set<1> },
                { "b",  get<2>, set<2> },
                { "a",  get<3>, set<3> },
            };
        }

        /*** GX COLOR 16 BIT ***/

        namespace color_s10 {
            #define COLORS10_PROPERTY_COUNT  4
            extern const CHANSVmPropertyList cPropertyList[COLORS10_PROPERTY_COUNT];

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                GXColorS10* data = (GXColorS10*)CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(*data));
                if (data != NULL) {
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(VmInst, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(VmInst, 1);
                    CHANSVmObjHdr* arg2 = CHANSVmGetArgInteger(VmInst, 2);
                    CHANSVmObjHdr* arg3 = CHANSVmGetArgInteger(VmInst, 3);

                    u16 val;

                    data->r = arg0 != NULL ? arg0->value.int_v : 0;
                    data->g = arg1 != NULL ? arg1->value.int_v : 0;
                    data->b = arg2 != NULL ? arg2->value.int_v : 0;
                    data->a = arg3 != NULL ? arg3->value.int_v : 0;

                    result = TRUE;
                }

                return result;
            }

            DEFINE_CS_IPL_CTOR_ARG(GXColorS10 color) {
                BOOL result = FALSE;
                GXColorS10* data = (GXColorS10*)CHANSVmNewObjData(VmInst, VmObj, sizeof(*data));
                if (data != NULL) {
                    *data = color;
                    VmObj->type = CHANS_VM_TYPE_POINTER;
                    VmObj->parentCls = CHANSVmFindNativeClass(VmInst, "GXColorS10");
                    result = VmObj->parentCls != NULL;
                }
                return result;
            }

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "GXColorS10", ctor, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, COLORS10_PROPERTY_COUNT) == CHANS_VM_OK;
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(set) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgInteger(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    s16* data = (s16*)*VmParentObj->value.ptr_v;
                    if (*VmParentObj->value.ptr_v != NULL) {
                        result = TRUE;
                        data[I] = arg->value.int_v;
                    }
                }
                return result;
            }

            template<int I> CHANSVmDefineMethod(get) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    s16* data = (s16*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        result = CHANSVmSetInteger(VmInst, VmReturnObj, data[I]) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[COLORS10_PROPERTY_COUNT] = {
                { "r",  get<0>, set<0> },
                { "g",  get<1>, set<1> },
                { "b",  get<2>, set<2> },
                { "a",  get<3>, set<3> },
            };
        }
    }
}
