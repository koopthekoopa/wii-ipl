#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

extern "C" BOOL VmSystemInit(CHANSVm* vm);

namespace ipl {
    namespace cs {
        namespace system {
#define METHOD_COUNT 2
            extern const CHANSVmMethodList cMethodList[METHOD_COUNT];

            CHANSVmDefineMethod(is_first_call) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    result = CHANSVmSetInteger(VmInst, VmReturnObj, System::getCSManager()->getData().threadTerminated == false) == CHANS_VM_OK;
                }
                return result;
            }

            CHANSVmDefineMethod(is_dltask_registered) {
                u32 appId;
                BOOL appDlEnable;

                appDlEnable = FALSE;
                appId = ES_TITLE_CODE(System::getCSManager()->getData().titleId);

                nwc24::Manager* nwc24Manager = System::getNwc24Manager();
                if (nwc24Manager != NULL) {
                    appDlEnable = nwc24Manager->isAppDlEnableLock(appId);
                }

                return CHANSVmSetInteger(VmInst, VmReturnObj, appDlEnable) == CHANS_VM_OK;
            }

            // clang-format off
            const CHANSVmMethodList cMethodList[METHOD_COUNT] = {
                {"isFirstCall",         is_first_call },
                {"isDlTaskRegistered",  is_dltask_registered },
            };
            // clang-format on

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                // Create class
                if (VmSystemInit(vm)) {
                    // Get created class
                    CHANSVmNativeClass* cls = CHANSVmFindNativeClass(vm, "@System");
                    if (cls != NULL) {
                        result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, METHOD_COUNT) == CHANS_VM_OK;
                    }
                }
                return result;
            }
        }  // namespace system
    }  // namespace cs
}  // namespace ipl
