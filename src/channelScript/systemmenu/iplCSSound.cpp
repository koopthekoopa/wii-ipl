#include "channelScript/iplCSLibrary.h"
#include "iplSystem.h"
#include "sound/iplSound.h"

namespace ipl {
    namespace cs {
        namespace sound {
            CHANSVmDefineMethod(start) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(VmInst, 0);
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(VmInst, 1);

                void* data = arg0 != NULL ? (void*)arg0->value.data.len : NULL;
                u32 size = arg1 != NULL ? arg1->value.data.len : 0;

                if (System::getCSManager()->isValidAddr(data) && size != 0) {
                    if (snd::sSystem.checkTmpSoundFile(data, size)) {
                        System::getCSManager()->setAltBannerSound(data, size);
                        result = TRUE;
                    }
                }

                return result;
            }

            CHANSVmDefineMethod(start_default_sound) {
                System::getCSManager()->setAltBannerSoundState(1);
                return TRUE;
            }

            CHANSVmDefineMethod(ctor) {
                return TRUE;
            }

            const CHANSVmMethodList cMethodList[] = {
                {"start", start},
                {"startDefaultSound", start_default_sound},
            };

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Sound", ctor, NULL);
                if (cls != NULL) {
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, CHANSVmMethodCount(cMethodList)) == CHANS_VM_OK;
                }

                return result;
            }
        }  // namespace sound
    }  // namespace cs
}  // namespace ipl
