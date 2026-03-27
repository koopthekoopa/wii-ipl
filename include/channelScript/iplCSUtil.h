#ifndef IPL_CS_UTIL_H
#define IPL_CS_UTIL_H

#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/VmTypes.h"

namespace ipl {
    namespace cs {
        namespace util {
            bool is_valid_datap(const CHANSVmObjHdr* object);
            bool is_valid_class(const CHANSVmObjHdr* object, const char* clsName);
            void utf16_to_ascii(char* asciiOut, wchar_t* utf16In, int strLen, const CHANSVmObjHdr* object);

            template <int val>
            CHANSVmDefineMethod(get_int) {
                return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
            }
        }  // namespace util
    }  // namespace cs
}  // namespace ipl

#endif  // IPL_CS_UTIL_H
