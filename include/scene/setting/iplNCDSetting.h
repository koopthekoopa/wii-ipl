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

            static int init();
            static void initSetID(unsigned short);
            static undefined4 checkFlag(int);
            static void checkThisFlag();
            static undefined4 checkAllFlag();
            static u8 checkConnectTestFlag();
            static u8 checkDHCPFlag();
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
            static unk setMTU(long);
            static unk setProxy(NCDProxyServerProfile*);
            static unk setBasic(NCDProxyServerProfile*);
            static unk clearData();
            static unk clearLocal();
            static unk write();
            static unk backupData();
            static unk resetData();
            static unk setUseProfileID();
            static unk setAOSSParams(const NCDAossConfig&);
            static unk setRakuParams(const NCDApConfig&);
            static unk getID();
            static unk getSSID();
            static unk getUseProfileID();
            static unk getPrivacyMode();
            static unk getNCDPrivacyMode();
            static unk getPrivacy();
            static unk getPrivacyLen();
            static unk getIP();
            static u32 getMacNum();
            static u8* getMacAddr();
            static int makeMacAddr();
            static unk getProxy();
            static unk getMTU();
            static unk getData();
            static bool getConnectEnableFlag();
            static unk getEnableFlag();
            static unk adjustNWC24Flag();
            static unk adjustNWC24FlagEx_();
        };
    }  // namespace ncd
}  // namespace ipl

#endif  // IPL_NCD_SETTING_H
