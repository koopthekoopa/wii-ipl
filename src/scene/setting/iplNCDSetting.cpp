#include "scene/setting/iplNCDSetting.h"
#include "revolution/ncd.h"
#include "revolution/net.h"
#include "revolution/os/OSError.h"
#include "revolution/sc.h"
#include "scene/setting/iplParental.h"
#include "utility/iplCharacterCode.h"
#include <cstdio>
#include <string.h>
// todo: check <> vs "" imports

#define IPL_NCD_SETTING_CONNECT_TEST_FLAG 5
#define IPL_NCD_SETTING_DHCP_FLAG 1
#define IPL_NCD_SETTING_DNS_FLAG 2

namespace ipl {
    namespace ncd {
        int NCDSetting::init() {
            memset(&mConfig, 0, sizeof(mConfig));
            int status = NCDReadConfig(&mConfig);
            OSReport("NCDReadConfig: %d\n", status);
            return makeMacAddr();
        }

        void NCDSetting::initSetID(unsigned short setID) {
            mID = setID;
        }

        int NCDSetting::checkThisFlag() {
            return checkFlag(mID);
        }

        void NCDSetting::setWired() {
            memset(&mConfig.profiles[mID], 0, sizeof(NCDProfile));
            mConfig.version = 0;
            mConfig.linkTimeout = 0;
            mConfig.profiles[mID].flags = 7;
        }

        void NCDSetting::setWireless(u8 configMethod) {
            memset(&mConfig.profiles[mID], 0, 0x91c);

            mConfig.version = 0;
            mConfig.linkTimeout = 0;
            mConfig.profiles[mID].netif.wireless.configMethod = configMethod;
            mConfig.profiles[mID].flags = 6;
            if (configMethod == 0) {
                memcpy(&mSaveConfig, &mConfig, sizeof(NCDConfig));
            }
        }

        void NCDSetting::changeConnectType(u8 connectType) {
            if (connectType == 1) {
                mConfig.profiles[mID].flags |= 1;
                return;
            }
            mConfig.profiles[mID].flags &= 0xfe;
        }

        void NCDSetting::setSSID(const char* newSSID) {
            memcpy(mConfig.profiles[mID].netif.wireless.config.manual.ssid, newSSID, 32);
            mConfig.profiles[mID].netif.wireless.config.manual.ssidLength = strlen(newSSID);
        }

        void NCDSetting::setPrivacyMode(u16 newMode) {
            u16 sVar2;

            switch (newMode) {
                case 0:
                    sVar2 = 0;
                    break;
                case 1:
                    if (mConfig.profiles[mID].netif.wireless.config.rakuraku.privacy.mode == 2 ||
                        (strlen((const char*)mConfig.profiles[mID].netif.wireless.config.rakuraku.privacy.wep104.key) > 20)) {
                        sVar2 = 2;
                    } else {
                        sVar2 = 1;
                    }
                    break;
                case 2:
                    sVar2 = 4;
                    break;
                case 3:
                    sVar2 = 6;
                    break;
                case 4:
                    sVar2 = 5;
                    break;
                default:
                    sVar2 = 0;
                    break;
            }
            if (mConfig.profiles[mID].netif.wireless.config.rakuraku.privacy.mode != sVar2) {
                mConfig.profiles[mID].netif.wireless.config.rakuraku.privacy.mode = sVar2;
            }
        }

        void NCDSetting::setIP(NCDIpProfile* ip) {
            memcpy(&mConfig.profiles[mID].ip.addr, ip->addr, 4);
            memcpy(&mConfig.profiles[mID].ip.netmask, ip->netmask, 4);
            memcpy(&mConfig.profiles[mID].ip.gateway, ip->gateway, 4);
        }

        void NCDSetting::setDNS(NCDIpProfile* ip) {
            memcpy(&mConfig.profiles[mID].ip.dns1, ip->dns1, 4);
            memcpy(&mConfig.profiles[mID].ip.dns2, ip->dns2, 4);
        }

        void NCDSetting::setWDPrivacyMode(u16 mode) {
            u16 uVar1;

            switch (mode) {
                case 0:
                    uVar1 = 0;
                    break;
                case 1:
                    uVar1 = 1;
                    break;
                case 2:
                    uVar1 = 2;
                    break;
                case 4:
                    uVar1 = 4;
                    break;
                case 5:
                    uVar1 = 5;
                    break;
                case 6:
                    uVar1 = 6;
                    break;
                case 7:
                    uVar1 = 4;
                    break;
                case 8:
                    uVar1 = 1;
                    break;
                default:
                    uVar1 = 0;
                    break;
            }
            memset(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep104, 0, 0x44);
            mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode = uVar1;
        }

        void NCDSetting::setProxyFlag(unsigned char newFlag) {
            mConfig.profiles[mID].proxy.http.mode = newFlag;
            mConfig.profiles[mID].proxy.ssl.mode = newFlag;
            if (newFlag != 0) {
                mConfig.profiles[mID].flags = mConfig.profiles[mID].flags | 0x10;
                return;
            }
            mConfig.profiles[mID].flags = mConfig.profiles[mID].flags & ~0x10;
        }

        void NCDSetting::setBasicFlag(unsigned char newFlag) {
            mConfig.profiles[mID].proxy.http.authType = newFlag;
            mConfig.profiles[mID].proxy.ssl.authType = newFlag;
        }

        void NCDSetting::setDNSFlag(unsigned char newFlag) {
            if (newFlag != 0) {
                mConfig.profiles[mID].flags = mConfig.profiles[mID].flags | 4;
                return;
            }
            mConfig.profiles[mID].flags = mConfig.profiles[mID].flags & ~4;
        }

        void NCDSetting::setDHCPFlag(unsigned char newFlag) {
            if (newFlag != 0) {
                mConfig.profiles[mID].flags = mConfig.profiles[mID].flags | 2;
                return;
            }
            mConfig.profiles[mID].flags = mConfig.profiles[mID].flags & ~2;
        }

        void NCDSetting::setConnectTestFlag(bool newFlag) {
            if (newFlag) {
                mConfig.profiles[mID].flags |= 0x20;
                for (int i = 0; i < 3; i++) {
                    if (mID == i) {
                        mConfig.profiles[mID].flags |= 0x80;
                    } else {
                        mConfig.profiles[i].flags &= 0x7f;
                    }
                }
            }
            adjustNCDData_();
            adjustNWC24FlagEx_();
            NCDWriteConfig(&mConfig);
        }

        void NCDSetting::adjustEnableFlag_(int exclude) {
            for (int i = 0; i < 3; i++) {
                if (exclude != i) {
                    mConfig.profiles[i].flags &= 0x7f;
                }
            }
        }

        void NCDSetting::adjustSelectMedia_(int exclude) {
            u8 flag = checkFlag(exclude);
            switch (flag) {
                case 1:
                    mConfig.selectedMedia = 2;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    mConfig.selectedMedia = 1;
                    break;
            }
        }

        int NCDSetting::checkProxy(char* param_1) {
            int ret;

            int len = strlen(param_1);
            if (len >= 256) {
                ret = 0;
            } else {
                if (param_1[0] == '.') {
                    ret = 0;
                } else {
                    for (int i = 0; i < len; i++) {
                        char c = param_1[i];
                        if (((c < '0' || '9' < c) && (c < 'a' || 'z' < c)) && ((((c < 'A' || 'Z' < c) && c != '-') && (c != '.' && c != '_')))) {
                            return 0;
                        }
                        if (c == '.' && param_1[i + 1] == '.') {
                            return 0;
                        }
                    }
                    ret = 1;
                }
            }
            return ret;
        }

        int NCDSetting::checkProxyBasic(char* param_1) {
            int ret;

            int len = strlen(param_1);
            if (len >= 33) {
                ret = 0;
            } else {
                for (int i = 0; i < len; i++) {
                    if ((param_1[i] < ' ') || (param_1[i] > '~')) {
                        return 0;
                    }
                }
                ret = 1;
            }
            return ret;
        }

        void NCDSetting::adjustNCDData_() {
            int i = 0;
            int theOne = -1;
            for (; i < 3; i++) {
                if ((mConfig.profiles[i].flags & 0x80) != 0) {
                    adjustSelectMedia_(i);
                    adjustEnableFlag_(i);
                    theOne = i;
                    break;
                }
                if (theOne == -1 && mConfig.profiles[i].flags & 0x20) {
                    theOne = i;
                }
                if (i == 2 && theOne != -1) {
                    mConfig.profiles[theOne].flags |= 0x80;
                    adjustSelectMedia_(theOne);
                    adjustEnableFlag_(theOne);
                }
            }
            if (theOne == -1) {
                mConfig.selectedMedia = 0;
            }
        }

        void NCDSetting::setPrivacy(unsigned char* newKey, int len) {
            u16 mode = mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep40.option;
            memset(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep104, 0, 0x44);
            mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep40.option = mode;
            if (len == 0) {
                mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode = 0;
            } else {
                switch (mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode) {
                    case 1:
                    case 2:
                        for (int i = 0; i < 4; i++) {
                            if (len == 5) {
                                mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode = 1;
                                memcpy(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep40.key[i], newKey, 5);
                            } else if (len == 0xd) {
                                mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode = 2;
                                memcpy(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep104.key[i], newKey, 13);
                            }
                        }
                        break;
                    case 4:
                        memcpy(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.aes.key, newKey, len);
                        mConfig.profiles[mID].netif.wireless.config.manual.privacy.aes.keyLen = len;
                        break;
                    case 5:
                    case 6:
                        memcpy(&mConfig.profiles[mID].netif.wireless.config.manual.privacy.tkip.key, newKey, len);
                        mConfig.profiles[mID].netif.wireless.config.manual.privacy.tkip.keyLen = len;
                        break;
                }
            }
        }

        int NCDSetting::checkFlag(int id) {
            int ret = 0;
            int flags = mConfig.profiles[id].flags;
            if (flags & IPL_NCD_SETTING_DHCP_FLAG) {
                return 1;
            }
            if (mConfig.profiles[id].netif.wireless.config.manual.ssidLength == 0 && mConfig.profiles[id].netif.wireless.configMethod == 0 &&
                mConfig.profiles[id].netif.wireless.config.manual.privacy.mode == 0) {
                return 0;
            }
            int bVar1 = mConfig.profiles[id].netif.wireless.configMethod;

            switch (bVar1) {
                case 0: {
                    ret = 2;
                    break;
                }
                case 1: {
                    ret = 3;
                    break;
                }
                case 2: {
                    ret = 4;
                    break;
                }
                case 3: {
                    ret = 5;
                    break;
                }
            }
            return ret;
        }

        bool NCDSetting::checkAllFlag() {
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

        void NCDSetting::setMTU(long mtu) {
            mConfig.profiles[mID].adjust.maxTransferUnit = mtu;
            mConfig.profiles[mID].adjust.tcpRetransTimeout = 0;
            mConfig.profiles[mID].adjust.dhcpRetransCount = 0;
        }

        void NCDSetting::setProxy(NCDProxyServerProfile* proxyServerProfile) {
            memcpy(&mConfig.profiles[mID].proxy.http.server, proxyServerProfile->server, 256);
            memcpy(&mConfig.profiles[mID].proxy.ssl.server, proxyServerProfile->server, 256);

            mConfig.profiles[mID].proxy.http.port = proxyServerProfile->port;
            mConfig.profiles[mID].proxy.ssl.port = proxyServerProfile->port;
        }

        void NCDSetting::setBasic(NCDProxyServerProfile* proxyServerProfile) {
            memcpy(mConfig.profiles[mID].proxy.http.username, proxyServerProfile->username, 33);
            memcpy(mConfig.profiles[mID].proxy.ssl.username, proxyServerProfile->username, 33);
            memcpy(mConfig.profiles[mID].proxy.http.password, proxyServerProfile->password, 33);
            memcpy(mConfig.profiles[mID].proxy.ssl.password, proxyServerProfile->password, 33);
        }

        void NCDSetting::clearData() {
            memset(&mConfig.profiles[mID].flags, 0, sizeof(NCDProfile));
            adjustNCDData_();
            adjustNWC24FlagEx_();
            NCDWriteConfig(&mConfig);
        }

        void NCDSetting::clearLocal() {
            memset(&mConfig.profiles[mID].flags, 0, sizeof(NCDProfile));
        }

        void NCDSetting::write() {
            checkDHCP_();
            if (mConfig.profiles[mID].flags & IPL_NCD_SETTING_DHCP_FLAG) {
                memset(&mConfig.profiles[mID].netif.wireless, 0, sizeof(NCDWirelessProfile));
            }

            mConfig.profiles[mID].flags &= ~0x20;
            mConfig.profiles[mID].flags &= 0x7F;
            adjustNCDData_();
            adjustNWC24FlagEx_();

            NCDWriteConfig(&mConfig);
        }

        void NCDSetting::backupData() {
            memcpy(&mSaveConfig, &mConfig, 0x1b5c);
        }

        void NCDSetting::resetData() {
            memcpy(&mConfig, &mSaveConfig, 0x1b5c);
        }

        void NCDSetting::setUseProfileID() {
            for (int i = 0; i < 3; i++) {
                if (mID == i) {
                    mConfig.profiles[i].flags |= 0x80;
                    if (mConfig.profiles[i].flags & IPL_NCD_SETTING_DHCP_FLAG) {
                        mConfig.selectedMedia = 2;
                    } else {
                        mConfig.selectedMedia = 1;
                    }
                } else {
                    mConfig.profiles[i].flags &= 0x7f;
                }
            }
            NCDWriteConfig(&mConfig);
        }

        u16 NCDSetting::getID() {
            return mID & 0xff;
        }

        u8* NCDSetting::getSSID() {
            return mConfig.profiles[mID].netif.wireless.config.manual.ssid;
        }

        u16 NCDSetting::getUseProfileID() {
            if (!(checkAllFlag() & 0xff)) {
                return 3;
            } else {
                for (int i = 0; i < 3; i++) {
                    if (mConfig.profiles[i].flags & 0x80 && mConfig.profiles[i].flags & 0x20) {
                        return i & 0xff;
                    }
                }
            }
            return 3;
        }

        int NCDSetting::getIP() {
            return *(int*)mConfig.profiles[mID].ip.addr;
        }

        u32 NCDSetting::getMacNum() {
            return mMacNum;
        }

        u8* NCDSetting::getMacAddr() {
            return mMac;
        }

        NCDProxyProfile* NCDSetting::getProxy() {
            return &mConfig.profiles[mID].proxy;
        }

        s32 NCDSetting::getMTU() {
            return mConfig.profiles[mID].adjust.maxTransferUnit;
        }

        NCDConfig* NCDSetting::getData() {
            return &mConfig;
        }

        bool NCDSetting::getConnectEnableFlag() {
            memset(&mConfig, 0, sizeof(mConfig));
            NCDErr err = NCDReadConfig(&mConfig);
            OSReport("NCDReadConfig: %d\n", err);
            return getEnableFlag();
        }

        bool NCDSetting::getEnableFlag() {
            for (int i = 0; i < 3; i++) {
                if (mConfig.profiles[i].flags & 0x80 && mConfig.profiles[i].flags & 0x20) {
                    return true;
                }
            }
            return false;
        }

        NCDErr NCDSetting::adjustNWC24Flag() {
            adjustNWC24FlagEx_();
            return NCDWriteConfig(&mConfig);
        }

        void NCDSetting::adjustNWC24FlagEx_() {
            u32 wcFlags = SCGetWCFlags() & 1;
            u32 contentRestrictions = SCGetNetContentRestrictions() & 2;
            mConfig.nwc24Permission = 0;
            if (wcFlags && SCGetEULA()) {
                mConfig.nwc24Permission |= 4;
                if (!(ipl::parental::Parental::checkFlags() & 0xFF) || ((ipl::parental::Parental::checkFlags() & 0xFF) && !(contentRestrictions))) {
                    mConfig.nwc24Permission |= 3;
                }
            }
        }

        u16 NCDSetting::getPrivacyLen() {
            u16 mode = mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode;
            switch (mode) {
                case 1: {
                    if (mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep40.reserved[0] == 0) {
                        return 5;
                    }
                    return 10;
                }
                case 2: {
                    if (mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep104.reserved[0] == 0) {
                        return 13;
                    }
                    return 26;
                }
                case 4: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.tkip.keyLen;
                }
                case 5:
                case 6: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.aes.keyLen;
                }
                default: {
                    return 0;
                }
            }
        }

        u16 NCDSetting::getNCDPrivacyMode() {
            if (mConfig.profiles[mID].netif.wireless.configMethod == 0 || mConfig.profiles[mID].netif.wireless.configMethod == 3) {
                return mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode;
            }
            return 0;
        }

        int NCDSetting::getPrivacyMode() {
            int ret = 0;
            if (mConfig.profiles[mID].netif.wireless.configMethod == 0 || mConfig.profiles[mID].netif.wireless.configMethod == 3) {
                u16 mode = mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode;
                switch (mode) {
                    case 0:
                        ret = 0;
                        break;
                    case 1:
                        ret = 1;
                        break;
                    case 2:
                        ret = 1;
                        break;
                    case 4:
                        ret = 2;
                        break;
                    case 5:
                        ret = 4;
                        break;
                    case 6:
                        ret = 3;
                        break;
                    case 3:
                    default:
                        ret = 0;
                        break;
                }
            }
            return ret;
        }

        u8* NCDSetting::getPrivacy() {
            u16 mode = mConfig.profiles[mID].netif.wireless.config.manual.privacy.mode;
            switch (mode) {
                case 1: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep40.key[0];
                }
                case 2: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.wep104.key[0];
                }
                case 4: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.tkip.key;
                }
                case 5:
                case 6: {
                    return mConfig.profiles[mID].netif.wireless.config.manual.privacy.aes.key;
                }
                default: {
                    return 0;
                }
            }
        }

        int NCDSetting::makeMacAddr() {
            u8 macAddress[6];
            long long uVar2;
            char* mac;
            u32 local_2d;

            NCDErr err = NETGetWirelessMacAddress(macAddress);
            if (err != -4) {
                if (err < -4) {
                    if (err == -8) {
                        goto fail;
                    }
                } else if (err == 0) {
                    sprintf(mac, "%02x-%02x-%02x-%02x-%02x-%02x", macAddress[0], macAddress[1], macAddress[2], macAddress[3], macAddress[4],
                            macAddress[5]);
                    OSReport("MAC: %s\n", &mac);

                    ipl::utility::CharacterCode::ANSIToUTF8((char*)mMac, (u8*)&mac);

                    memset(&mac, 0, 18);
                    memcpy(&mac, &macAddress, 6);
                    uVar2 = *mac % 100000000;
                    // uVar2 = __mod2u(local_31, local_2d, 0, 100000000);
                    mMacNum = (int)uVar2;
                    OSReport("%lld %d\n", mMacNum, mac, local_2d, mMacNum);
                }
                OSPanic("iplNCDSetting.cpp", 0x43b, "Unrecoverable Error!!");
            }
        fail:
            OSPanic("iplNCDSetting.cpp", 0x436, "try again!!");
        }
    }  // namespace ncd
}  // namespace ipl
