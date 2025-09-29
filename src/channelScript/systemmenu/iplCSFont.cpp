#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace font {
            BOOL _ctor(CHANSVm* vm, CHANSVmObjHdr* obj, u32 font) {
                BOOL result = FALSE;
                u32* data = (u32*)CHANSVmNewObjData(vm, obj, sizeof(*data));
                if (data != NULL) {
                    *data = font;
                    obj->type = CHANS_VM_TYPE_POINTER;
                    obj->parentCls = CHANSVmFindNativeClass(vm, "Font");
                    if (obj->parentCls != NULL) {
                        result = TRUE;
                    }
                }
                return result;
            }

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                if (CHANSVmAddNativeClass(vm, "Font", NULL, NULL) != NULL) {
                    result = TRUE;
                }
                return result;
            }
        }
    }
}
