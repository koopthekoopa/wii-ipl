#ifndef IPL_NCD_SETTING_H
#define IPL_NCD_SETTING_H

#include <revolution/ncd.h>

#define unk undefined

namespace ipl {
    namespace ncd {
        class NCDSetting {
        public:
            static NCDConfig mConfig;
            static u16 mID;
            static u8 mMac[];
            static u32 mMacNum;
            static NCDConfig mSaveConfig;

            static int init();
            static void initSetID(unsigned short);
            static int checkFlag(int);
            static int checkThisFlag();
            static bool checkAllFlag();
            static u8 checkConnectTestFlag();
            static u8 checkDHCPFlag();
            static u8 checkDNSFlag();
            static void checkDHCP_();
            static u8 checkProxyFlag();
            static u8 checkBasic();
            static unsigned int checkChangeEnable();
            static undefined4 convert16toASCII(char, char, unsigned char*);
            static unk checkWEPKey(char*);
            static int checkProxy(char*);
            static int checkProxyBasic(char*);
            static void adjustNCDData_();
            static void adjustSelectMedia_(int);
            static void adjustEnableFlag_(int);
            static void setConnectTestFlag(bool);
            static void setDHCPFlag(unsigned char);
            static void setDNSFlag(unsigned char);
            static void setProxyFlag(unsigned char);
            static void setBasicFlag(unsigned char);
            static void setWired();
            static void setWireless(unsigned char);
            static void changeConnectType(unsigned char);
            static void setSSID(const char*);
            static void setPrivacyMode(unsigned short);
            static void setWDPrivacyMode(unsigned short);
            static void setPrivacy(unsigned char*, int);
            static void setIP(NCDIpProfile*);
            static void setDNS(NCDIpProfile*);
            static void setMTU(long);
            static void setProxy(NCDProxyServerProfile*);
            static void setBasic(NCDProxyServerProfile*);
            static void clearData();
            static void clearLocal();
            static void write();
            static void backupData();
            static void resetData();
            static void setUseProfileID();
            static void setAOSSParams(const NCDAossConfig&);
            static void setRakuParams(const NCDApConfig&);
            static u16 getID();
            static u8* getSSID();
            static u16 getUseProfileID();
            static int getPrivacyMode();
            static u16 getNCDPrivacyMode();
            static u8* getPrivacy();
            static u16 getPrivacyLen();
            static int getIP();
            static u32 getMacNum();
            static u8* getMacAddr();
            static int makeMacAddr();
            static NCDProxyProfile* getProxy();
            static s32 getMTU();
            static NCDConfig* getData();
            static bool getConnectEnableFlag();
            static bool getEnableFlag();
            static NCDErr adjustNWC24Flag();
            static void adjustNWC24FlagEx_();
        };
    }  // namespace ncd
}  // namespace ipl

#endif  // IPL_NCD_SETTING_H
