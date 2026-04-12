#include "scene/setting/iplNCDSetting.h"
#include "revolution/os/OSError.h"
#include <string.h>

namespace ipl {
    namespace ncd {
        int NCDSetting::init() {
            memset(&mConfig, 0, 0x1b5c);              // initialize config to all 0s (?)
            int status = NCDReadConfig(&mConfig);     // read config
            OSReport("NCDReadConfig: %d\n", status);  // log status
            return makeMacAddr();                     // return mac address
        }

        void NCDSetting::initSetID(unsigned short setID) {
            mID = setID;
        }
    }  // namespace ncd
}  // namespace ipl
