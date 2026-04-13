#include "scene/setting/iplNCDSetting.h"
#include "revolution/os/OSError.h"
#include <string.h>

#define IPL_NCD_SETTING_CONNECT_TEST_FLAG 5
#define IPL_NCD_SETTING_MAGIC_CONSTANT 0x91c

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

        u8 NCDSetting::checkConnectTestFlag() {  // ?????
            // matches 100:
            return (mConfig.profiles[mID].flags) >> IPL_NCD_SETTING_CONNECT_TEST_FLAG & 1;
        }
    }  // namespace ncd
}  // namespace ipl
