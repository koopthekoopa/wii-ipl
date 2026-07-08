#ifndef IPL_WWW_WIISETTING_H
#define IPL_WWW_WIISETTING_H

#include <decomp.h>

#include <revolution/os.h>
#include <revolution/sc.h>
#include <revolution/types.h>

#include "iplwww/www_print.h"

#include <revolution/www.h>

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
            FORM_ID_MAX,
        } WiiSettingFormID;

        typedef enum WriteBackID {
            WB_ID_RESET = 0,
            WB_ID_SOUND_ID,             // Sound Mode
            WB_ID_NWC24,                // WCFlags enable bit
            WB_ID_INTERNET,             // NCD Use Profile ID
            WB_ID_STANDBY,              // Standby mode
            WB_ID_DISC_LED,             // Slot illumination
            WB_ID_DIS_WIDE,             // Aspect Ratio
            WB_ID_DIS_POS,              // Display Position (Horizontal Offset)
            WB_ID_PROGRESSIVE,          // Progressive Scan
            WB_ID_SCREENSAVER,          // Screensaver Enable
            WB_ID_SENSOR_BAR,           // Sensor Bar on top Flag
            WB_ID_LIGHT,                // BlueTooth Pad Sensibility (I think this is how bright the wiimote player indicator light is???)
            WB_ID_YEAR,                 // Year
            WB_ID_MONTH,                // Month
            WB_ID_DATE,                 // Day of month
            WB_ID_HOUR,                 // Hour (0 to 23 inclusive)
            WB_ID_MINUTE,               // Minute
            WB_ID_FORM_ID,              // TODO: What is this?
            WB_ID_PAGE_ID,              // TODO: What is this?
            WB_ID_MESSAGE,              // TODO: What is this?
            WB_ID_TYPE,                 // TODO: What is this?
            WB_ID_CONNECT_TYPE,         // NCD "this connection" flag
            WB_ID_CONNECT_TYPE_1,       // NCD Flag 0 (This enum is 1-indexed for some reason)
            WB_ID_CONNECT_TYPE_2,       // NCD Flag 1 (This enum is 1-indexed for some reason)
            WB_ID_CONNECT_TYPE_3,       // NCD Flag 2 (This enum is 1-indexed for some reason)
            WB_ID_PROFILE_ID,           // NCD Profile ID
            WB_ID_SELECT_WIRE,          // NCD Wired or Wireless?
            WB_ID_WIFI_TYPE,            // NCD Wifi Type
            WB_ID_FUNC_ID,              // TODO: What is this?
            WB_ID_FUNC_RESULT,          // TODO: What is this?
            WB_ID_SELECT_SEC_KEY,       // NCD Privacy Mode
            WB_ID_AUTO_IP,              // NCD DHCP Flag
            WB_ID_AUTO_DNS,             // NCD DNS Flag
            WB_ID_IP,                   // NCD IP Address
            WB_ID_BACKUP_NCD,           // Backup NCD Data
            WB_ID_RESET_NCD,            // Reset NCD Data
            WB_ID_AUTO_PROXY,           // NCD Proxy Flag
            WB_ID_AUTO_BASIC,           // NCD Basic
            WB_ID_BACK_SEC_KEY,         // NCD Backup Security Key
            WB_ID_CHANGE_CONNECT_TYPE,  // NCD Connect Type
            WB_ID_CHANGE_ENABLE,        // NCD Change Enable
            WB_ID_PARE_FLAG,            // Parental Flags
            WB_ID_SEC_Q,                // Parental Security Question
            WB_ID_SEC_Q_SAVE,           // Parental Security Question Save?
            WB_ID_OGN,                  // Parental OGN
            WB_ID_RATE,                 // Parental Rating
            WB_ID_RATE_SAVE,            // Parental Rating Save?
            WB_ID_PAL,                  // EU RGB60 Mode
            WB_ID_LANGUAGE,             // Language
            WB_ID_LANGUAGE_SAVE,        // Language save?
            WB_ID_DTV,                  // DTV Status
            WB_ID_USE_ID,               // NCD useProfileID again for some reason
            WB_ID_CONNECT_TEST,         // NCD Connect Test Flag
            WB_ID_ERROR,                // TODO: What is this?
            WB_ID_SET_STRING,           // TODO: What is this?
            WB_ID_SE,                   // Sound effect?
            WB_ID_EXCSE,                // Another Sound effect related thing?
            WB_ID_FINISH,               // TODO: What is this?
            WB_ID_FLUSH,                // SC Flush?
            WB_ID_INIT_FLAG,            // Initial Setup Complete flag
            WB_ID_COUNTRY,              // Parental Country
            WB_ID_COUNTRY_SAVE,         // Parental Country Save?
            WB_ID_MAC_AVAILABLE,        // LAN MAC Addresss Available
            WB_ID_UPDATE_TYPE,          // Update Type?
            WB_ID_RESTRICTIONS,         // Parental Restrictions
            WB_ID_ASSERT,               // Error assert?
            WB_ID_SUB_PAGE_ID,          // TODO: What is this?
            WB_ID_PRODUCT_AREA,         // System Region
            WB_ID_EULA,                 // EULA Accepted
            WB_ID_TVRC,                 // TV Remote Control Setup
            WB_ID_TVRC_MAKER,           // TV Remote Control Input TV manufacturer
            WB_ID_TVRC_TYPE,            // TV Remote Control Input TV type
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
        static u8 saveData;
        static u8 funcResult;
        static u8 setupFlag;
        static OSMessageQueue* mQueue;
        static SetStringBuf* pString;
        static JSCallbackSet* opera_callbacks;

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
