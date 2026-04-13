#ifndef IPL_NCD_SETTING_H
#define IPL_NCD_SETTING_H

#include <revolution/ncd.h>

namespace ipl {
    namespace ncd {
        class NCDSetting {
        public:
            static NCDConfig mConfig;
            static u16 mID;

            static int init();
            static bool getConnectEnableFlag();
            static void initSetID(unsigned short);
            static u8 checkConnectTestFlag();

            static int makeMacAddr();
            static u8* getMacAddr();
            static u32 getMacNum();
        };
    }  // namespace ncd
}  // namespace ipl

#endif  // IPL_NCD_SETTING_H
