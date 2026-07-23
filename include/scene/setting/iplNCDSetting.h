#ifndef IPL_NCD_SETTING_H
#define IPL_NCD_SETTING_H

#include <revolution/ncd.h>

namespace ipl {
    namespace scene {
        extern NCDAossConfig m_AOSSConfig;
        extern NCDRakuApConfig m_RakuConfig;
    }  // namespace scene
    namespace ncd {
        class NCDSetting {
        public:
            static void init();

            static void initSetID(u16 setID);

            static int checkFlag(int id);
            static int checkThisFlag();
            static bool checkAllFlag();

            static u8 checkConnectTestFlag();
            static u8 checkDHCPFlag();
            static u8 checkDNSFlag();
            static u8 checkProxyFlag();
            static u8 checkBasic();
            static bool checkChangeEnable();
            static int checkWEPKey(char* key);
            static bool checkProxy(char* proxy);
            static bool checkProxyBasic(char* proxy);

            static void setConnectTestFlag(bool newFlag);
            static void setDHCPFlag(u8 newFlag);
            static void setDNSFlag(u8 newFlag);
            static void setProxyFlag(u8 newFlag);
            static void setBasicFlag(u8 newFlag);
            static void setWired();
            static void setWireless(u8 configMethod);
            static void changeConnectType(u8 connectType);
            static void setSSID(u8* newSSID);
            static void setPrivacyMode(u16 newMode);
            static void setWDPrivacyMode(u16 mode);
            static void setPrivacy(u8* newKey, int len);
            static void setIP(NCDIpProfile* ip);
            static void setDNS(NCDIpProfile* ip);
            static void setMTU(s32 mtu);

            static void setProxy(NCDProxyServerProfile* proxyServerProfile);
            static void setBasic(NCDProxyServerProfile* proxyServerProfile);

            static void clearData();
            static void clearLocal();

            static void write();

            static void backupData();
            static void resetData();

            static void setUseProfileID();
            static void setAOSSParams(const NCDAossConfig& src);
            static void setRakuParams(const NCDApConfig& src);

            static u16 getID();
            static NCDApConfig* getSSID();
            static u16 getUseProfileID();
            static int getPrivacyMode();
            static u16 getNCDPrivacyMode();
            static u8* getPrivacy();
            static u16 getPrivacyLen();
            static NCDIpProfile* getIP();
            static u32 getMacNum();
            static u8* getMacAddr();

            static void makeMacAddr();

            static NCDProxyProfile* getProxy();
            static s32 getMTU();
            static NCDConfig* getData();
            static bool getConnectEnableFlag();
            static bool getEnableFlag();

            static NCDErr adjustNWC24Flag();

        private:
            static void checkDHCP_();

            static void adjustNCDData_();
            static void adjustSelectMedia_(int exclude);
            static void adjustEnableFlag_(int exclude);
            static void adjustNWC24FlagEx_();

            static bool convert16toASCII(char hexHi, char hexLo, u8* byte);

            static NCDConfig mConfig;
            static NCDConfig mSaveConfig;
            static u8 mMac[0x20];

            static u16 mID;
            static u32 mMacNum;

#ifndef NON_MATCHING
            static void matchHack();
#endif
        };
    }  // namespace ncd
}  // namespace ipl

#endif  // IPL_NCD_SETTING_H
