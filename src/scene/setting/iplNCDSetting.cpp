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

        // feels wrong
        void NCDSetting::checkThisFlag() {
            checkFlag(mID);
        }

        undefined4 NCDSetting::checkFlag(int id) {
            int flags = mConfig.profiles[id].flags;
            if ((flags & IPL_NCD_SETTING_DHCP_FLAG) != 0) {
                return 1;
            }
            if (mConfig.profiles[id].netif.wireless.config.manual.ssidLength == 0 && mConfig.profiles[id].netif.wireless.configMethod == 0 &&
                mConfig.profiles[id].netif.wireless.config.manual.privacy.mode == 0) {
                return 0;
            }
            int bVar1 = mConfig.profiles[id].netif.wireless.configMethod;
            if (bVar1 != 2) {
                if (bVar1 >= 0) {
                    if (bVar1 > 4) {
                        if (bVar1 > 0) {
                            return 1;
                        }
                        return 2;
                    }
                    return 3;
                }
                return 4;
            }
            return 5;
        }

        // TODO: ask about why ghidra shows undefined4 for this. its clearly meant to be a bool
        undefined4 NCDSetting::checkAllFlag() {
            for (int i = 0; i < 3; i++) {
                if (checkFlag(i) & 0xff) {
                    return true;
                }
            }
            return false;
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

        undefined4 NCDSetting::convert16toASCII(char param_1, char param_2, unsigned char* param_3) {
            int ret = true;

            if (param_1 >= '0' && param_1 <= '9') {
                *param_3 = (param_1 - '0') << 4;
            } else if (param_1 >= 'A' && param_1 <= 'F') {
                *param_3 = (param_1 - 'A' + 10) << 4;
            } else if (param_1 >= 'a' && param_1 <= 'f') {
                *param_3 = (param_1 - 'a' + 10) << 4;
            } else {
                ret = false;
            }

            if (param_2 >= '0' && param_2 <= '9') {
                *param_3 = *param_3 + ((param_2 - '0') << 24);
            } else if (param_2 >= 'A' && param_2 <= 'F') {
                *param_3 = *param_3 + ((param_2 - 'A' + 10) << 24);
            } else if (param_2 >= 'a' && param_2 <= 'f') {
                *param_3 = *param_3 + ((param_2 - 'a' + 10) << 24);
            } else {
                ret = false;
            }

            return ret;
        }
    }  // namespace ncd
}  // namespace ipl
