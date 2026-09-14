#include "channelScript/iplCSLibrary.h"

#include <nw4r/lyt/material.h>
#include <nw4r/ut/Color.h>

enum CSMatTexType {
    CS_MAT_TEX_TYPE_PALETTE = 0,
    CS_MAT_TEX_TYPE_TEXTURE = 1
};

struct CSMatTexData {
    CSMatTexType type;
    union {
        GXTexObj texObj;
        TPLPalette* pPalette;
    };
};


namespace ipl {
    namespace cs {
        namespace material {
            BOOL set_texture(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                CHANSVmObjHdr* texArg = CHANSVmGetArg(vm, 1);
                if (util::is_valid_datap(hdr) && arg0 != NULL && util::is_valid_class(texArg, "Texture")) {
                    CSMatTexData* texData = static_cast<CSMatTexData*>(*texArg->value.ptr_v);
                    nw4r::lyt::Material* mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 idx = arg0->value.int_v;
                    if (mat != NULL) {
                        u32 texMapCount = mat->GetTextureNum();
                        if ((u8)idx < texMapCount) {
                            if (texData->type == CS_MAT_TEX_TYPE_TEXTURE) {
                                mat->SetTexture((u8)idx, texData->texObj);
                                result = TRUE;
                            } else if (texData->type == CS_MAT_TEX_TYPE_PALETTE) {
                                mat->SetTexture((u8)idx, texData->pPalette);
                                result = TRUE;
                            }
                        }
                    }
                }
                return result;
            }

            BOOL get_tev_color(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                nw4r::lyt::Material* mat;
                CHANSVmObjHdr* arg;
                BOOL result = FALSE;

                if (util::is_valid_datap(hdr)) {
                    mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 argc = CHANSVmGetArgc(vm);
                    arg = CHANSVmGetArgInteger(vm, 0);
                    if (mat != NULL && argc == 1 && arg != NULL) {
                        if (arg->value.int_v < 3ULL) {
                            result = color_s10::_ctor(vm, hdr2, mat->GetTevColor(arg->value.int_v)) == TRUE;
                        }
                    }
                }
                return result;
            }

            BOOL set_tev_color(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                nw4r::lyt::Material* mat;
                CHANSVmObjHdr* arg0;
                CHANSVmObjHdr* arg1;
                BOOL result = FALSE;

                if (util::is_valid_datap(hdr)) {
                    mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 argc = CHANSVmGetArgc(vm);
                    arg0 = CHANSVmGetArgInteger(vm, 0);
                    arg1 = CHANSVmGetArg(vm, 1);
                    if (mat != NULL && argc == 2 && arg0 != NULL && util::is_valid_class(arg1, "GXColorS10")) {
                        if (arg0->value.int_v < 3ULL) {
                            mat->SetTevColor(arg0->value.int_v, *static_cast<GXColorS10*>(*arg1->value.ptr_v));
                            result = TRUE;
                        }
                    }
                }
                return result;
            }

            BOOL get_tev_kcolor(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                nw4r::lyt::Material* mat;
                CHANSVmObjHdr* arg;
                BOOL result = FALSE;

                if (util::is_valid_datap(hdr)) {
                    mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 argc = CHANSVmGetArgc(vm);
                    arg = CHANSVmGetArgInteger(vm, 0);
                    if (mat != NULL && argc == 1 && arg != NULL) {
                        if (arg->value.int_v < 4ULL) {
                            result = color::_ctor(vm, hdr2, mat->GetTevKColor(arg->value.int_v).ToU32()) == TRUE;
                        }
                    }
                }
                return result;
            }

            BOOL set_tev_kcolor(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                nw4r::lyt::Material* mat;
                CHANSVmObjHdr* arg0;
                BOOL result = FALSE;
                CHANSVmObjHdr* arg1;

                if (util::is_valid_datap(hdr)) {
                    mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 argc = CHANSVmGetArgc(vm);
                    arg0 = CHANSVmGetArgInteger(vm, 0);
                    arg1 = CHANSVmGetArg(vm, 1);
                    if (mat != NULL && argc == 2 && arg0 != NULL && util::is_valid_class(arg1, "Color")) {
                        if (arg0->value.int_v < 4ULL) {
                            mat->SetTevKColor(arg0->value.int_v, *static_cast<nw4r::ut::Color*>(*arg1->value.ptr_v));
                            result = TRUE;
                        }
                    }
                }
                return result;
            }

            BOOL get_mat_color(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                if (util::is_valid_datap(hdr)) {
                    nw4r::lyt::Material* mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    if (mat != NULL && mat->IsMatColorCap()) {
                        result = color::_ctor(vm, hdr2, mat->GetMatColor().ToU32()) == TRUE;
                    }
                }
                return result;
            }

            BOOL set_mat_color(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                nw4r::lyt::Material* mat;
                BOOL result = FALSE;
                if (util::is_valid_datap(hdr)) {
                    mat = *static_cast<nw4r::lyt::Material**>(*hdr->value.ptr_v);
                    u32 argc = CHANSVmGetArgc(vm);
                    CHANSVmObjHdr* arg = CHANSVmGetArg(vm, 0);
                    if (mat != NULL && mat->IsMatColorCap() && argc == 1 && util::is_valid_class(arg, "Color")) {
                        mat->SetMatColor(*static_cast<nw4r::ut::Color*>(*arg->value.ptr_v));
                        result = TRUE;
                    }
                }
                return result;
            }

            BOOL _ctor(CHANSVm* vm, CHANSVmObjHdr* obj, u32 materialData) {
                BOOL flag = FALSE;
                u32* data = static_cast<u32*>(CHANSVmNewObjData(vm, obj, sizeof(u32)));
                if (data != NULL) {
                    *data = materialData;
                    obj->type = CHANS_VM_TYPE_OBJECT;
                    CHANSVmNativeClass* ncls = CHANSVmFindNativeClass(vm, "Material");
                    obj->parentCls = ncls;
                    if (ncls != NULL) {
                        flag = TRUE;
                    }
                }
                return flag;
            }

            // clang-format off
            const CHANSVmMethodList cMethodList[] = {
                {"SetTexture", set_texture},
                {"GetTevColor", get_tev_color},
                {"SetTevColor", set_tev_color},
                {"GetTevKColor", get_tev_kcolor},
                {"SetTevKColor", set_tev_kcolor},
                {"GetMatColor", get_mat_color},
                {"SetMatColor", set_mat_color},
            };
            // clang-format on

            BOOL init(CHANSVm* vm) {
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Material", NULL, NULL);
                if (cls == NULL) {
                    return FALSE;
                }
                return CHANSVmAddNativeMethodList(vm, cls, cMethodList, CHANSVmMethodCount(cMethodList)) == CHANS_VM_OK;
            }
        }  // namespace material
    }  // namespace cs
}  // namespace ipl
