#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

#include <nw4r/ut/CharWriter.h>
#include <nw4r/ut/Font.h>
#include <nw4r/ut/Rect.h>
#include <nw4r/ut/TextWriterBase.h>

#define LENGTH_LIMIT 0x80000

namespace ipl {
    namespace cs {
        namespace textwriter {

            CHANSVmDefineMethod(set_font) {
                BOOL result = FALSE;
                CHANSVmObjHdr* fontArg = CHANSVmGetArg(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && util::is_valid_class(fontArg, "Font")) {
                    nw4r::ut::TextWriterBase<char>* data = (nw4r::ut::TextWriterBase<char>*)*VmParentObj->value.ptr_v;
                    nw4r::ut::Font* font = *(nw4r::ut::Font**)(*fontArg->value.ptr_v);
                    if (data != NULL) {
                        data->SetFont(*font);
                        result = TRUE;
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(set_font_size) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
                CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
                if (util::is_valid_datap(VmParentObj) && arg0 != NULL && arg1 != NULL) {
                    nw4r::ut::TextWriterBase<char>* data = (nw4r::ut::TextWriterBase<char>*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        f32 width = (f32)arg0->value.float_v;
                        f32 height = (f32)arg1->value.float_v;
                        data->SetFontSize(width, height);
                        result = TRUE;
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(set_line_space) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    nw4r::ut::TextWriterBase<char>* data = (nw4r::ut::TextWriterBase<char>*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        f32 val = (f32)arg->value.float_v;
                        data->SetLineSpace(val);
                        result = TRUE;
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(set_char_space) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
                if (util::is_valid_datap(VmParentObj) && arg != NULL) {
                    nw4r::ut::TextWriterBase<char>* data = (nw4r::ut::TextWriterBase<char>*)*VmParentObj->value.ptr_v;
                    if (data != NULL) {
                        f32 val = (f32)arg->value.float_v;
                        data->SetCharSpace(val);
                        result = TRUE;
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(calc_string_rect) {
                BOOL result = FALSE;
                CHANSVmObjHdr* rectArg = CHANSVmGetArg(VmInst, 0);
                CHANSVmObjHdr* stringObj = CHANSVmGetArgString(VmInst, 1);
                if (util::is_valid_datap(VmParentObj) && util::is_valid_class(rectArg, "Rect") && util::is_valid_datap(stringObj)) {
                    u32 strLen = stringObj->value.wstring_v->len;
                    if (strLen < LENGTH_LIMIT) {
                        u32 halfLen = strLen / 2;
                        u32 wcount = halfLen + 1;
                        wchar_t* buf = (wchar_t*)new (System::getCSManager()->getHeap(), 4) u8[wcount << 1];
                        if (buf != NULL) {
                            memset(buf, 0, wcount * 2);
                            wcsncpy(buf, stringObj->value.wstring_v->spData, wcount - 1);

                            nw4r::ut::TextWriterBase<wchar_t>* data;
                            nw4r::ut::Rect* rect = (nw4r::ut::Rect*)*rectArg->value.ptr_v;
                            if ((data = (nw4r::ut::TextWriterBase<wchar_t>*)*VmParentObj->value.ptr_v) != NULL) {
                                data->CalcStringRect(rect, buf);
                                if (rect::_ctor(VmInst, VmParentObj)) {
                                    result = TRUE;
                                }
                            }
                            delete[] buf;
                        }
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;
                nw4r::ut::TextWriterBase<char>* data =
                    (nw4r::ut::TextWriterBase<char>*)CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(nw4r::ut::TextWriterBase<char>));
                if (data != NULL) {
                    {
                        nw4r::ut::TextWriterBase<char> temp;
                        *data = temp;
                    }
                    result = TRUE;
                }
                return result;
            }

            // clang-format off
            const CHANSVmMethodList cMethodList[] = {
                {"SetFont", set_font},
                {"SetFontSize", set_font_size},
                {"SetLineSpace", set_line_space},
                {"SetCharSpace", set_char_space},
                {"CalcStringRect", calc_string_rect},
            };
            // clang-format on

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "TextWriter", ctor, NULL);
                if (cls != NULL) {
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, CHANSVmMethodCount(cMethodList)) == CHANS_VM_OK;
                }
                return result;
            }
        }  // namespace textwriter
    }  // namespace cs
}  // namespace ipl
