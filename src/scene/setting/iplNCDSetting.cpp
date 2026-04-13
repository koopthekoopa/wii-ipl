#include "scene/setting/iplNCDSetting.h"
#include "revolution/os/OSError.h"
#include <string.h>

#define IPL_NCD_SETTING_CONNECT_TEST_FLAG 5
#define IPL_NCD_SETTING_DHCP_FLAG 1
#define IPL_NCD_SETTING_DNS_FLAG 2

namespace ipl {
    namespace ncd {
        /*
        notes:
            checkThisFlag calls checkFlag(mID) and returns, so checkFlag() probably checks some flags of mConfig.profiles(param_1).flags
            checkAllFlag does the same, but for all (3) mIDs
        */
        int NCDSetting::init() {
            memset(&mConfig, 0, sizeof(mConfig));     // initialize config to all 0s (?)
            int status = NCDReadConfig(&mConfig);     // read config
            OSReport("NCDReadConfig: %d\n", status);  // log status
            return makeMacAddr();                     // return mac address
        }

        void NCDSetting::initSetID(unsigned short setID) {
            mID = setID;
        }

        u8 NCDSetting::checkConnectTestFlag() {
            return (mConfig.profiles[mID].flags) >> IPL_NCD_SETTING_CONNECT_TEST_FLAG & 1;
        }

        u8 NCDSetting::checkDHCPFlag() {
            return (mConfig.profiles[mID].flags) >> IPL_NCD_SETTING_DHCP_FLAG & 1;
        }

        void NCDSetting::checkDHCP_() {
            if (checkDNSFlag()) {
                memset(&mConfig.profiles[mID].ip.dns1, 0, 4);
                memset(&mConfig.profiles[mID].ip.dns2, 0, 4);
            } else {
                // im sorry for this
                int i = 0;
                int remaining = 4;

                for (; i < 4; i++) {
                    if (mConfig.profiles[mID].ip.dns1[i] != 0) {
                        break;
                    }
                    remaining--;
                }
                if (i == 4) {
                    i = 0;
                    remaining = 4;
                    for (; i < 4; i++) {
                        if (mConfig.profiles[mID].ip.dns2[i] != 0) {
                            break;
                        }
                        remaining--;
                    }
                    if (i == 4) {
                        mConfig.profiles[mID].flags |= 4;
                    }
                }
            }
            if (checkDHCPFlag()) {
                memset(&mConfig.profiles[mID].ip.addr, 0, 4);
                memset(&mConfig.profiles[mID].ip.netmask, 0, 4);
                memset(&mConfig.profiles[mID].ip.gateway, 0, 4);
            }
            return;
        }

        u8 NCDSetting::checkDNSFlag() {
            if ((mConfig.profiles[mID].flags & IPL_NCD_SETTING_DNS_FLAG) != 0) {
                return (u8)mConfig.profiles[mID].flags >> IPL_NCD_SETTING_DNS_FLAG & 1;
            } else {
                setDNSFlag(0);
                return 0;
            }
        }

        u8 NCDSetting::checkProxyFlag() {
            return mConfig.profiles[mID].proxy.http.mode;
        }

        u8 NCDSetting::checkBasic(void) {
            return mConfig.profiles[mID].proxy.http.authType;
        }

        unsigned int NCDSetting::checkChangeEnable() {
            u8 configMethod = mConfig.profiles[mID].netif.wireless.configMethod;
            return (1 - ((u8)configMethod + 0xff & 0xff)) >> (u8)0x1f;
        }
    }  // namespace ncd
}  // namespace ipl
