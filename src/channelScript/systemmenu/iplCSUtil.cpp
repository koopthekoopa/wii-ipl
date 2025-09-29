#include "channelScript/iplCSLibrary.h"

#include <cstring>
#include "iplUtility.h"

namespace ipl {
    namespace cs {
        namespace util {
            bool is_valid_datap(const CHANSVmObjHdr* object) {
                bool result = false;

                if (object != NULL) {
                    u32* unk = (u32*)object->value.ptr_v;
                    if (unk != NULL && unk[0] != 0) {
                        result = true;
                    }
                }

                return result;
            }

            bool is_valid_class(const CHANSVmObjHdr* object, const char* clsName) {
                char name[CHANS_VM_CLASS_NAME_LEN];
                bool result = false;

                if (is_valid_datap(object) && object->parentCls != NULL) {
                    memset(name, 0, sizeof(name));
                    utility::memcpy_s(name, sizeof(name), &object->parentCls->name, object->parentCls->nameLength);
                    result = strcmp(name, clsName) == 0;
                }

                return result;
            }

            void utf16_to_ascii(char* asciiOut, wchar_t* utf16In, int strLen, const CHANSVmObjHdr* object) {
                if (is_valid_datap(object) && object->type == CHANS_VM_OBJ_TYPE_STRING) {
                    utility::memcpy_s(utf16In, strLen << 1, object->value.string_v->str, object->value.string_v->len);
                    utility::CharacterCode::UTF16ToANSI((u8*)asciiOut, utf16In, strLen);
                }
            }
        }
    }
}
