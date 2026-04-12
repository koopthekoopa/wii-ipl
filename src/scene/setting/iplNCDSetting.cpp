#include "scene/setting/iplNCDSetting.h"
#include "revolution/os/OSError.h"
#include <string.h>

namespace ipl {
    namespace ncd {
        int NCDSetting::init() {
            s32 sVar1;
            int iVar2;

            memset(&mConfig, 0, 0x1b5c);
            sVar1 = NCDReadConfig((NCDConfig*)&mConfig);
            OSReport("NCDReadConfig: %d\n", sVar1);
            iVar2 = makeMacAddr();
            return iVar2;
        }

        void NCDSetting::initSetID(unsigned short setID) {
            mID = setID;
        }
    }  // namespace ncd
}  // namespace ipl
