#ifndef IPL_NCD_SETTING_H
#define IPL_NCD_SETTING_H

#include <revolution/ncd.h>

#define unk undefined

namespace ipl {
    namespace ncd {
        class NCDSetting {
        public:
            static NCDConfig mConfig;
            static NCDConfig mSaveConfig;
            static u8 mMac[];
            static u16 mID;
            static u32 mMacNum;

            static int init();
            static void initSetID(unsigned short);
            static bool checkFlag(int);
            static bool checkThisFlag();
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
            static unk checkProxy(char*);
            static unk checkProxyBasic(char*);
            static unk adjustNCDData_();
            static unk adjustSelectMedia_(int);
            static unk adjustEnableFlag_(int);
            static unk setConnectTestFlag(bool);
            static unk setDHCPFlag(unsigned char);
            static unk setDNSFlag(unsigned char);
            static unk setProxyFlag(unsigned char);
            static unk setBasicFlag(unsigned char);
            static unk setWired();
            static unk setWireless(unsigned char);
            static unk changeConnectType(unsigned char);
            static unk setSSID(unsigned char);
            static unk setPrivacyMode(unsigned short);
            static unk setWDPrivacyMode(unsigned short);
            static unk setPrivacy(unsigned char*, int);
            static unk setIP(NCDIpProfile*);
            static unk setDNS(NCDIpProfile*);
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
            static unk getPrivacyMode();
            static unk getNCDPrivacyMode();
            static unk getPrivacy();
            static unk getPrivacyLen();
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
