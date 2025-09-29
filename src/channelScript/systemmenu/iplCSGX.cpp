#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace gx {
            #define PROPERTY_COUNT  11
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "GX", NULL, NULL);
                if (cls != NULL) {
                    // Add properties
                    result = CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, PROPERTY_COUNT) == CHANS_VM_OK;
                }
                return result;
            }

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                { "*GX_TF_I4",      util::get_int<GX_TF_I4>,        NULL },
                { "*GX_TF_IA4",     util::get_int<GX_TF_IA4>,       NULL },
                { "*GX_TF_I8",      util::get_int<GX_TF_I8>,        NULL },
                { "*GX_TF_IA8",     util::get_int<GX_TF_IA8>,       NULL },
                { "*GX_TF_RGB565",  util::get_int<GX_TF_RGB565>,    NULL },
                { "*GX_TF_RGB5A3",  util::get_int<GX_TF_RGB5A3>,    NULL },
                { "*GX_TF_RGBA8",   util::get_int<GX_TF_RGBA8>,     NULL },
                { "*GX_TF_CMPR",    util::get_int<GX_TF_CMPR>,      NULL },
                { "*GX_CLAMP",      util::get_int<GX_CLAMP>,        NULL },
                { "*GX_REPEAT",     util::get_int<GX_REPEAT>,       NULL },
                { "*GX_MIRROR",     util::get_int<GX_MIRROR>,       NULL },
            };
        }
    }
}
