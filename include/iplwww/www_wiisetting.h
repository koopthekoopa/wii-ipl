#ifndef IPL_WWW_WIISETTING_H
#define IPL_WWW_WIISETTING_H

#include <decomp.h>

#include <revolution/os.h>
#include <revolution/sc.h>
#include <revolution/types.h>

#include "iplwww/www_js.h"

#include "iplwww/www_print.h"

extern int gDpdWaitFrm;
extern BOOL gEnableDpd;

namespace www {
    namespace wiisetting {
        typedef enum WiiSettingFormID {
            FORM_ID_NONE = 0,
            FORM_ID_NICKNAME,
            FORM_ID_SECURITY_KEY,
            FORM_ID_SSID,
            FORM_ID_IP_ADDR,
            FORM_ID_IP_NETMASK,
            FORM_ID_IP_GATEWAY,
            FORM_ID_DNS1,
            FORM_ID_DNS2,
            FORM_ID_MAC_ADDR,
            FORM_ID_PROXY_SERVER,
            FORM_ID_PROXY_PORT,
            FORM_ID_PROXY_BASIC_USERNAME,
            FORM_ID_PROXY_BASIC_PASSWORD,
            FORM_ID_ADJ_MTU,
            FORM_ID_PARENTAL_PASS,
            FORM_ID_PARENTAL_RE_PASS,
            FORM_ID_PARENTAL_JUDGE_PASS,
            FORM_ID_PARENTAL_SEC_ANSWER,
            FORM_ID_PARENTAL_RE_SEC_ANSWER,
            FORM_ID_MASTER_KEY,
            LAN_MAC_ADDR,
            FORM_ID_DUMMY_SECURITY_KEY,
            FORM_ID_VERSION,
            FORM_ID_DIRECT_URL,
        } WiiSettingFormID;
        typedef enum WriteBackID {
            WB_ID_RESET = 0x00,
            WB_ID_SOUND_ID = 0x01,             // SC Sound Mode
            WB_ID_NWC24 = 0x02,                // SC WCFlags enable bit
            WB_ID_INTERNET = 0x3,              // NCD Use Profile ID
            WB_ID_STANDBY = 0x04,              // Idle Mode Standby
            WB_ID_LED = 0x05,                  // Idle Mode LED
            WB_ID_DIS_WIDE = 0x06,             // SC Aspect Ratio
            WB_ID_DIS_POS = 0x07,              // Display Position (Horizontal Offset)
            WB_ID_PROGRESSIVE = 0x08,          // Progressive Scan
            WB_ID_SCREENSAVER = 0x09,          // Screensaver Enable
            WB_ID_SENSOR_BAR = 0x0a,           // Sensor Bar on top Flag
            WB_ID_LIGHT = 0x0b,                // BlueTooth Pad Sensibility (I think this is how bright the wiimote player indicator light is???)
            WB_ID_YEAR = 0x0c,                 // Year
            WB_ID_MONTH = 0x0d,                // Month
            WB_ID_DATE = 0x0e,                 // Day of month
            WB_ID_HOUR = 0x0f,                 // Hour (0 to 23 inclusive)
            WB_ID_MINUTE = 0x10,               // Minute
            WB_ID_FORM_ID = 0x11,              // TODO: What is this?
            WB_ID_PAGE_ID = 0x12,              // TODO: What is this?
            WB_ID_MESSAGE = 0x13,              // TODO: What is this?
            WB_ID_TYPE = 0x14,                 // TODO: What is this?
            WB_ID_CONNECT_TYPE = 0x15,         // NCD "this connection" flag
            WB_ID_CONNECT_TYPE_1 = 0x16,       // NCD Flag 0 (This enum is 1-indexed for some reason)
            WB_ID_CONNECT_TYPE_2 = 0x17,       // NCD Flag 1 (This enum is 1-indexed for some reason)
            WB_ID_CONNECT_TYPE_3 = 0x18,       // NCD Flag 2 (This enum is 1-indexed for some reason)
            WB_ID_PROFILE_ID = 0x19,           // NCD Profile ID
            WB_ID_SELECT_WIRE = 0x1a,          // TODO: What is this?
            WB_ID_WIFI_TYPE = 0x1b,            // TODO: What is this?
            WB_ID_FUNC_ID = 0x1c,              // TODO: What is this?
            WB_ID_FUNC_RESULT = 0x1d,          // TODO: What is this?
            WB_ID_SELECT_SEC_KEY = 0x1e,       // NCD Privacy Mode
            WB_ID_AUTO_IP = 0x1f,              // NCD DHCP Flag
            WB_ID_AUTO_DNS = 0x20,             // NCD DNS Flag
            WB_ID_IP = 0x21,                   // TODO: What is this?
            WB_ID_BACKUP_NCD = 0x22,           // Backup NCD Data
            WB_ID_RESET_NCD = 0x23,            // Reset NCD Data
            WB_ID_AUTO_PROXY = 0x24,           // NCD Proxy Flag
            WB_ID_AUTO_BASIC = 0x25,           // NCD Basic
            WB_ID_BACK_SEC_KEY = 0x26,         // TODO: What is this?
            WB_ID_CHANGE_CONNECT_TYPE = 0x27,  // TODO: What is this?
            WB_ID_CHANGE_ENABLE = 0x28,        // NCD Change Enable
            WB_ID_PARE_FLAG = 0x29,            // Parental Flags
            WB_ID_SEC_Q = 0x2a,                // Parental Security Question
            WB_ID_SEC_Q_SAVE = 0x2b,           // Parental Security Question Save????
            WB_ID_OGN = 0x2c,                  // Parental OGN
            WB_ID_RATE = 0x2d,                 // Parental Rating
            WB_ID_RATE_SAVE = 0x2e,            // Parental Rating Save????
            WB_ID_PAL = 0x2f,                  // EU RGB60 Mode
            WB_ID_LANGUAGE = 0x30,             // Language
            WB_ID_LANGUAGE_SAVE = 0x31,        // Language save????
            WB_ID_DTV = 0x32,                  // DTV Status
            WB_ID_USE_ID = 0x33,               // NCD useProfileID again for some reason
            WB_ID_CONNECT_TEST = 0x34,         // NCD Connect Test Flag
            WB_ID_ERROR = 0x35,                // TODO: What is this?
            WB_ID_SET_STRING = 0x36,           // TODO: What is this?
            WB_ID_SE = 0x37,                   // TODO: What is this?
            WB_ID_EXCSE = 0x38,                // TODO: What is this?
            WB_ID_FINISH = 0x39,               // TODO: What is this?
            WB_ID_FLUSH = 0x3a,                // TODO: What is this?
            WB_ID_INIT_FLAG = 0x3b,            // Initial Setup Complete flag
            WB_ID_COUNTRY = 0x3c,              // Parental Country
            WB_ID_COUNTRY_SAVE = 0x3d,         // Parental Country Save????
            WB_ID_MAC_AVAILABLE = 0x3e,        // LAN MAC Addresss Available
            WB_ID_UPDATE_TYPE = 0x3f,          // SC Update Type
            WB_ID_RESTRICTIONS = 0x40,         // Parental Restrictions
            WB_ID_ASSERT = 0x41,               // TODO: What is this?
            WB_ID_SUB_PAGE_ID = 0x42,          // TODO: What is this?
            WB_ID_PRODUCT_AREA = 0x43,         // System Region
            WB_ID_EULA = 0x44,                 // EULA Accepted
            WB_ID_TVRC = 0x45,                 // TODO: What is this?
            WB_ID_TVRC_MAKER = 0x46,           // TODO: What is this?
            WB_ID_TVRC_TYPE = 0x47,            // TODO: What is this?
        } WriteBackID;

        typedef struct WiiDataDate {
            u8 year;
            u8 month;
            u8 mday;
        } WiiDataDate;
        typedef struct WiiDataTime {
            u8 hour;
            u8 min;
        } WiiDataTime;

        typedef struct WiiData {
        public:
            u8 data[0x48];
        } WiiData;

        typedef struct WiiFlag {
            s32 err;
            u8 smthMsgData;
        } WiiFlag;

        typedef struct SetStringBuf {
            char nickname[0x1f];
            char securityKey[0x41];
            char ssid[0x61];
            struct {
                char addr[0x10];
                char netmask[0x10];
                char gateway[0x10];
            } ip;
            char dns1[0x10];
            char dns2[0x10];
            struct {
                char server[0x301];
                char port[0x6];
            } proxy;
            struct {
                char uname[0x61];
                char pass[0x61];
            } proxyBasic;
            char adjMtu[0x5];
            char parentalPass[0x5];
            char parentalRePass[0x5];
            char parentalJudgePass[0x5];
            char parentalSecA[0x64];
            char parentalReSecA[0x64];
            char masterKey[0x6];
            char asterisks[0x42];
            char version[0x10];
            char netSettingArg[0x40];
        } SetStringBuf;

        static WiiData sWiiData;
        static WWWJSCap cap;

        static WiiFlag wiiFlag;
        static u8 writeBackID;
        static u8 savedata_smth;
        static u8 funcResult;
        static u8 setupFlag;
        static OSMessageQueue* mQueue;
        static SetStringBuf* pString;
        static JSCallbackSet* opera_callbacks;

        // void www_wiisetting_8136F9D0(s32 chan, s32 result);
        // void www_wiisetting_8136F9F4(s32 chan, s32 result);
        bool allow_access(const char*, const char*, int);
        void AddJsPlugin();
        int globalGetter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
        int Getter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
        int Setter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
        int ObjectConstructor_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);
        int wiiOSReport(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);
        int wiiWriteBack(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);

        void initWiiSetting();
        inline int getStringPropertyIdx(const char*);
        void startFunc(u8 funcID);

        WiiData* getWiiSettingData();
        WiiFlag* getWiiSettingFlag();
        void setStringBuf(SetStringBuf* stringBuf);
        void setInitSetupFlag(u8 flag);
        void setFuncResult(u8 result);
        u32 getFuncResult();
        void setMsgQueue(OSMessageQueue* msgQueue);
    }  // namespace wiisetting
}  // namespace www

#endif  // IPL_WWW_WIISETTING_H
