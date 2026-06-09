#include "iplwww/www_wiisetting.h"

#include <string.h>

#include "scene/setting/iplNCDSetting.h"
#include "scene/setting/iplParental.h"
#include "system/iplSocketSetting.h"
#include "system/iplSystem.h"

#include "iplwww/www_browser.h"

int gDpdWaitFrm = 0;
BOOL gEnableDpd = TRUE;

namespace www {
    namespace wiisetting {
        IPL_WWW_REPORT_REDEFINE_MESSAGE(true);

        const u8 kbLangUsaLUT[][0x30] = {
            {
                0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
                0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
                0x20, 0x21, 0x22, 0xA6, 0x91, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0xA0, 0x29, 0x2A, 0x2B, 0x2C,
            },
            {
                0x00, 0x01, 0x1E, 0xA6, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x0A, 0x0C, 0x0D, 0x0E, 0x0F,
                0xA0, 0x11, 0x29, 0x14, 0x15, 0x16, 0x13, 0x18, 0x19, 0x0B, 0x28, 0x2B, 0x09, 0x1A, 0x1B, 0x1C,
                0x1D, 0x1F, 0x20, 0x21, 0x22, 0x17, 0x10, 0x24, 0x23, 0x25, 0x12, 0x91, 0x26, 0x27, 0x2A, 0x2C,
            },
            {
                0x00, 0x01, 0x1E, 0xA6, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x0A, 0x0C, 0x0D, 0x0E, 0x0F,
                0x11, 0x12, 0xA0, 0x29, 0x14, 0x15, 0x16, 0x13, 0x17, 0x18, 0x19, 0x0B, 0x28, 0x2B, 0x09, 0x1A,
                0x1B, 0x1C, 0x1D, 0x1F, 0x20, 0x21, 0x22, 0x10, 0x23, 0x25, 0x24, 0x91, 0x26, 0x27, 0x2A, 0x2C,
            },
        };
        const u8 kbLangEurLUT[][0x3b] = {
            {
                0x00, 0x01, 0x02, 0x31, 0x03, 0x04, 0x05, 0x06, 0x35, 0x07, 0x08, 0x09, 0x0A, 0x38, 0x37, 0x0B, 0x0C, 0x0D, 0x19, 0x0E,
                0x0F, 0x10, 0x11, 0x69, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x33, 0x1A, 0x32, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x34,
                0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x39, 0x28, 0x29, 0x36, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30,
            },
            {
                0x00, 0x31, 0x01, 0x03, 0x04, 0x05, 0x06, 0x0A, 0x0E, 0x38, 0x37, 0x0B, 0x0C, 0x0D, 0x0F, 0x2E, 0x69, 0x12, 0x11, 0x13,
                0x07, 0x15, 0x14, 0x16, 0x17, 0x18, 0x33, 0x1A, 0x32, 0x19, 0x1B, 0x1C, 0x1D, 0x1F, 0x1E, 0x34, 0x20, 0x02, 0x21, 0x22,
                0x23, 0x24, 0x2F, 0x2B, 0x2C, 0x25, 0x30, 0x26, 0x27, 0x39, 0x29, 0x28, 0x36, 0x2A, 0x35, 0x09, 0x2D, 0x10, 0x08,
            },
            {
                0x28, 0x00, 0x0E, 0x01, 0x02, 0x31, 0x03, 0x04, 0x05, 0x06, 0x08, 0x07, 0x0A, 0x38, 0x37, 0x29, 0x0B, 0x0C, 0x0D, 0x0F,
                0x10, 0x69, 0x12, 0x11, 0x13, 0x15, 0x14, 0x16, 0x17, 0x18, 0x19, 0x33, 0x1A, 0x32, 0x1B, 0x1C, 0x1D, 0x34, 0x20, 0x1F,
                0x1E, 0x21, 0x22, 0x09, 0x23, 0x2E, 0x24, 0x25, 0x26, 0x27, 0x39, 0x36, 0x2B, 0x2C, 0x2A, 0x35, 0x2D, 0x2F, 0x30,
            },
            {
                0x00, 0x0E, 0x01, 0x02, 0x31, 0x03, 0x04, 0x05, 0x06, 0x35, 0x08, 0x07, 0x0A, 0x37, 0x26, 0x27, 0x29, 0x0B, 0x0C, 0x0D,
                0x0F, 0x10, 0x69, 0x12, 0x11, 0x13, 0x15, 0x14, 0x16, 0x17, 0x18, 0x19, 0x33, 0x1A, 0x32, 0x1B, 0x1C, 0x1D, 0x34, 0x20,
                0x1F, 0x1E, 0x21, 0x22, 0x2E, 0x09, 0x23, 0x24, 0x25, 0x39, 0x2A, 0x28, 0x36, 0x2B, 0x2C, 0x2D, 0x38, 0x2F, 0x30,
            },
            {
                0x00, 0x01, 0x02, 0x31, 0x03, 0x04, 0x05, 0x06, 0x35, 0x08, 0x07, 0x0A, 0x37, 0x0B, 0x0C, 0x0D, 0x0E, 0x38, 0x0F, 0x69,
                0x12, 0x11, 0x13, 0x15, 0x14, 0x16, 0x17, 0x18, 0x19, 0x33, 0x1A, 0x32, 0x1B, 0x1C, 0x1D, 0x34, 0x20, 0x1F, 0x1E, 0x21,
                0x22, 0x2E, 0x09, 0x28, 0x23, 0x24, 0x25, 0x26, 0x27, 0x39, 0x29, 0x36, 0x2B, 0x2C, 0x2A, 0x2D, 0x10, 0x2F, 0x30,
            },
            {
                0x00, 0x01, 0x31, 0x03, 0x04, 0x05, 0x06, 0x08, 0x0A, 0x38, 0x0E, 0x37, 0x0B, 0x0C, 0x0D, 0x0F, 0x10, 0x12, 0x11, 0x69,
                0x13, 0x07, 0x15, 0x14, 0x16, 0x17, 0x18, 0x19, 0x33, 0x1A, 0x32, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x34, 0x20, 0x02, 0x21,
                0x22, 0x23, 0x24, 0x25, 0x27, 0x26, 0x36, 0x39, 0x29, 0x2A, 0x35, 0x09, 0x2D, 0x2E, 0x2F, 0x30, 0x28, 0x2B, 0x2C,
            },
        };
        // const char* b = "[TickTimer]\0[Warning]\0[[Event]]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
        // void bbbbbbb() {
        //     static const char* a[6] = {(char*)1};
        //     OSReport(a[0]);
        // }

        static const char* globalNames[2] = {"wiiSetting", NULL};

        extern "C" {
        void www_wiisetting_8136F9D0(s32 chan, s32 result) {
            if (result != 1) {
                return;
            }
            gEnableDpd = 1;
            gDpdWaitFrm = 0;
            KPADSetControlDpdCallback(chan, NULL);
            return;
        }
        void www_wiisetting_8136F9F4(s32 chan, s32 result) {
            if (result == 1) {
                KPADEnableDPD(chan);

                // @bug this might actually be a bug in how the stuff for KPAD
                // is typed idk
                KPADSetControlDpdCallback(chan, (KPADCallback*)&www_wiisetting_8136F9D0);
            }
            return;
        }

        // Get Keyboard Language for USA
        int www_wiisetting_81370E60(u8 usaLangIdx);
        // Get Byte Property Index
        int www_wiisetting_81370F14(const char* targetStr);
        }

        bool allow_access(const char*, const char*, int) {
            return true;
        }
        void AddJsPlugin() {
            cap.name = globalNames;
            cap.unk_0x04 = NULL;
            cap.getter = &globalGetter_;
            cap.unk_0x0c = NULL;
            cap.unk_0x10 = NULL;
            cap.unk_0x14 = NULL;
            cap.unk_0x18 = NULL;
            cap.allowAccess = allow_access;
            (*WWWAddJSPlugin)("wiiSetting.dll", &cap, &opera_callbacks);
            ext_ead::www::print::IPLWWWReport(3, "WWW_WiiSetting: AddJSPlugin()\n");
            return;
        }
        int globalGetter_(WWWJSPluginObj* obj, const char* str, WWWJSPluginValue* val) {
            WWWJSPluginValueData data;

            if (strcmp(str, "wiiSetting") == 0) {
                OSReport("WWW_TRASITION: call globalGetter_()\n");
                if ((opera_callbacks->globalGet)(obj, 0, 0, 0, ObjectConstructor_, "", 0, &data) < 0) {
                    return 0x0a;
                } else {
                    OSReport("wiiSetting: GlobalGetter\n");
                    val->ty = 0;
                    val->data.jsInt = data.jsInt;
                    return 0x07;
                }
            } else {
                return 0x08;
            }
        }
        int ObjectConstructor_(WWWJSPluginObj* objA, WWWJSPluginObj* objB, int valInt, WWWJSPluginValue* valA, WWWJSPluginValue* valB) {
            WWWJSPluginValueData data;

            if (valInt != 0)
                return 0x13;
            if (opera_callbacks->construct(objB, Getter_, Setter_, 0, &data) < 0) {
                return 0x12;
            } else {
                valB->ty = 0;
                (valB->data).jsObj = data.jsObj;
                *(u32*)data.jsObj = 0;
                OSReport("wiiSetting: ObjectConstructor\n");
                return 0x10;
            }
        }

        extern const char* strProps[0x19];
        int getStringPropertyIdx(const char* targetStr) {
            const char* names[ARRAY_LENGTH(strProps)];
            {
                const char** __pDst = names - 1;
                const char* const* __pSrc = strProps - 1;
                for (int i = 0; i < (ARRAY_LENGTH(names) >> 1); i++) {
                    *(++__pDst) = *(++__pSrc);
                    *(++__pDst) = *(++__pSrc);
                }
                if (ARRAY_LENGTH(names) & 1)
                    *(++__pDst) = *(++__pSrc);
            }
            for (int i = 0; i < (int)ARRAY_LENGTH(names) >> 1 << 1; i++) {
                if (strcmp(targetStr, names[i]) == 0)
                    return i + 1;
            }
            return -1;
        }
        int Getter_(WWWJSPluginObj* obj, const char* str, WWWJSPluginValue* val) {
            int retVal;
            int i;
            int strPropIdx;
            if (strcmp(str, "CallOSReport") == 0) {
                int data;
                if (opera_callbacks->globalGet(obj, 0, 0, wiiOSReport, wiiOSReport, "", 0, (WWWJSPluginValueData*)&data) < 0) {
                    return 0x0a;
                } else {
                    val->ty = 0;
                    (val->data).jsInt = data;
                    return 0x07;
                }
            } else if (strcmp(str, "WriteBack") == 0) {
                int data;
                if (opera_callbacks->globalGet(obj, 0, 0, wiiWriteBack, wiiWriteBack, "", 0, (WWWJSPluginValueData*)&data) < 0) {
                    return 0x0a;
                } else {
                    val->ty = 0;
                    (val->data).jsInt = data;
                    return 0x07;
                }
            }
            if (!(writeBackID == WB_ID_PROGRESSIVE || writeBackID == WB_ID_PAL || writeBackID == WB_ID_COUNTRY || writeBackID == WB_ID_LIGHT ||
                  writeBackID == WB_ID_LANGUAGE || writeBackID == WB_ID_RATE))
                writeBackID = WB_ID_RESET;
            retVal = 0x08;
            OSCalendarTime currTime;
            OSTicksToCalendarTime(OSGetTime(), &currTime);

            strPropIdx = getStringPropertyIdx(str);
            if (strPropIdx >= 0) {
                val->ty = 1;
                switch (strPropIdx) {
                    case 0x09:
                        val->data.jsObj = ipl::ncd::NCDSetting::getMacAddr();
                        break;
                    case 0x15:
                        val->data.jsStr = ipl::socket::SocketSetting::getLANMacAddrUtf8();
                        break;
                    case 0x01:
                        val->data.jsStr = pString->nickname;
                        break;
                    case 0x03:
                        val->data.jsStr = pString->ssid;
                        break;
                    case 0x04:
                        val->data.jsStr = pString->ip.addr;
                        break;
                    case 0x05:
                        val->data.jsStr = pString->ip.netmask;
                        break;
                    case 0x06:
                        val->data.jsStr = pString->ip.gateway;
                        break;
                    case 0x07:
                        val->data.jsStr = pString->dns1;
                        break;
                    case 0x08:
                        val->data.jsStr = pString->dns2;
                        break;
                    case 0x0a:
                        val->data.jsStr = pString->proxy.server;
                        break;
                    case 0x0b:
                        val->data.jsStr = pString->proxy.port;
                        break;
                    case 0x0c:
                        val->data.jsStr = pString->proxyBasic.uname;
                        break;
                    case 0x0d:
                        val->data.jsStr = pString->proxyBasic.pass;
                        break;
                    case 0x0e:
                        val->data.jsStr = pString->adjMtu;
                        break;
                    case 0x12:
                        val->data.jsStr = pString->parentalSecA;
                        break;
                    case 0x14:
                        val->data.jsStr = ipl::parental::Parental::getRequestNum();
                        break;
                    case 0x17:
                        val->data.jsStr = pString->version;
                        break;
                    case 0x18:
                        val->data.jsStr = pString->netSettingArg;
                        break;
                    case 0x02: {
                        memset(pString->asterisks, 0, sizeof(pString->asterisks));
                        // int i;
                        OSReport("mode %d %d\n", savedata_smth, (u16)ipl::ncd::NCDSetting::getPrivacyMode());
                        if (savedata_smth == (u16)ipl::ncd::NCDSetting::getPrivacyMode()) {
                            OSReport("len ::: %d\n", ipl::ncd::NCDSetting::getPrivacyLen());
                            for (i = 0; i < ipl::ncd::NCDSetting::getPrivacyLen(); i++) {
                                pString->asterisks[i] = '*';
                            }
                            if (0x20 < i) {
                                pString->asterisks[0x20] = '\n';
                                pString->asterisks[i] = '*';
                            }
                        } else {
                            memset(pString->securityKey, 0, sizeof(pString->securityKey));
                        }
                        (val->data).jsStr = pString->asterisks;
                        break;
                    }
                    case 0x16: {
                        memset(pString->asterisks, 0, sizeof(pString->asterisks));
                        SetStringBuf* strBuf;
                        for (i = 0; i < strlen((strBuf = pString)->securityKey); strBuf->asterisks[i++] = '*') {
                        }
                        if (i > 0x20) {
                            pString->asterisks[0x20] = '\n';
                            pString->asterisks[i] = '*';
                        }
                        (val->data).jsStr = pString->asterisks;
                        break;
                    }
                }
                retVal = 0x06;
            } else if (strcmp(str, "message") == 0) {
                retVal = 0x06;
            } else {
                int staIdx = www_wiisetting_81370F14(str);
                if (staIdx >= 0) {
                    val->ty = 2;
                    switch (staIdx) {
                        case WB_ID_SOUND_ID:
                            sWiiData.data[staIdx] = SCGetSoundMode();
                            savedata_smth = sWiiData.data[staIdx];
                            break;
                        case WB_ID_NWC24:
                            sWiiData.data[staIdx] = SCGetWCFlags() & SC_WC_FLAGS_ENABLED;
                            break;
                        case WB_ID_INTERNET:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::getUseProfileID();
                            break;
                        case WB_ID_STANDBY:
                        case WB_ID_LED: {
                            SCIdleModeInfo idleModeInfo;
                            SCGetIdleMode(&idleModeInfo);
                            sWiiData.data[WB_ID_STANDBY] = idleModeInfo.standby;
                            sWiiData.data[WB_ID_LED] = idleModeInfo.led;
                            break;
                        }
                        case WB_ID_DIS_WIDE:
                            sWiiData.data[staIdx] = SCGetAspectRatio();
                            break;
                        case WB_ID_PROGRESSIVE:
                            sWiiData.data[staIdx] = SCGetProgressiveMode();
                            break;
                        case WB_ID_SCREENSAVER:
                            sWiiData.data[staIdx] = SCGetScreenSaverMode();
                            break;
                        case WB_ID_SENSOR_BAR:
                            sWiiData.data[staIdx] = SCGetWpadSensorBarPosition();
                            break;

                        // Date/Time stuff
                        case WB_ID_YEAR:
                            sWiiData.data[staIdx] = currTime.year - 2000;
                            break;
                        case WB_ID_MONTH:
                            sWiiData.data[staIdx] = currTime.mon + 1;
                            break;
                        case WB_ID_DATE:
                            sWiiData.data[staIdx] = currTime.mday;
                            break;
                        case WB_ID_HOUR:
                            sWiiData.data[staIdx] = currTime.hour;
                            break;
                        case WB_ID_MINUTE:
                            sWiiData.data[staIdx] = currTime.min;
                            break;

                        case WB_ID_CONNECT_TYPE:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkThisFlag();
                            break;
                        case WB_ID_CONNECT_TYPE_1:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkFlag(0);
                            break;
                        case WB_ID_CONNECT_TYPE_2:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkFlag(1);
                            break;
                        case WB_ID_CONNECT_TYPE_3:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkFlag(2);
                            break;
                        case WB_ID_PROFILE_ID:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::getID();
                            break;
                        case WB_ID_FUNC_RESULT:
                            sWiiData.data[staIdx] = funcResult;
                            funcResult = 0;
                            break;
                        case WB_ID_SELECT_SEC_KEY:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::getPrivacyMode();
                            funcResult = 0;  // @bug Maybe? I don't think there's a reason for resetting here.
                            break;
                        case WB_ID_AUTO_IP:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkDHCPFlag();
                            break;
                        case WB_ID_AUTO_DNS:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkDNSFlag();
                            break;
                        case WB_ID_BACKUP_NCD:
                            ipl::ncd::NCDSetting::backupData();
                            break;
                        case WB_ID_RESET_NCD:
                            ipl::ncd::NCDSetting::resetData();
                            break;
                        case WB_ID_AUTO_PROXY:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkProxyFlag();
                            break;
                        case WB_ID_AUTO_BASIC:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkBasic();
                            break;
                        case WB_ID_CHANGE_ENABLE:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkChangeEnable();
                            break;
                        case WB_ID_PARE_FLAG:
                            sWiiData.data[staIdx] = ipl::parental::Parental::checkFlags();
                            break;
                        case WB_ID_SEC_Q:
                            sWiiData.data[staIdx] = ipl::parental::Parental::checkSecQ();
                            break;
                        case WB_ID_SEC_Q_SAVE:
                            sWiiData.data[staIdx] = savedata_smth;
                            ipl::parental::Parental::setSecQ(savedata_smth);
                            break;
                        case WB_ID_RATE_SAVE:
                            ipl::parental::Parental::setRating(savedata_smth);
                            sWiiData.data[WB_ID_RATE] = savedata_smth;
                            break;
                        case WB_ID_OGN:
                            sWiiData.data[staIdx] = ipl::parental::Parental::getOgn();
                            break;
                        case WB_ID_PAL:
                            sWiiData.data[staIdx] = SCGetEuRgb60Mode();
                            break;
                        case WB_ID_LANGUAGE_SAVE:
                            sWiiData.data[staIdx] = SCGetLanguage();
                            break;
                        case WB_ID_DTV:
                            sWiiData.data[staIdx] = VIGetDTVStatus();
                            break;
                        case WB_ID_USE_ID:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::getUseProfileID();
                            break;
                        case WB_ID_CONNECT_TEST:
                            sWiiData.data[staIdx] = ipl::ncd::NCDSetting::checkConnectTestFlag();
                            break;
                        case WB_ID_INIT_FLAG:
                            sWiiData.data[staIdx] = setupFlag;
                            break;
                        case WB_ID_MAC_AVAILABLE:
                            sWiiData.data[staIdx] = ipl::socket::SocketSetting::checkLANMacAddrAvailable();
                            break;
                        case WB_ID_UPDATE_TYPE:
                            sWiiData.data[staIdx] = SCGetUpdateType();
                            break;
                        case WB_ID_PRODUCT_AREA:
                            sWiiData.data[staIdx] = ipl::System::getRegion();
                            break;
                        case WB_ID_EULA:
                            sWiiData.data[staIdx] = SCGetEULA();
                            break;
                        case WB_ID_TVRC_TYPE:
                            break;
                    }
                    val->data.jsDouble = sWiiData.data[staIdx];
                    if (staIdx == WB_ID_ERROR) {
                        val->data.jsDouble = wiiFlag.err;
                    } else if (staIdx == WB_ID_RESTRICTIONS) {
                        val->data.jsDouble = ipl::parental::Parental::checkRestrictions();
                    } else if (staIdx == WB_ID_COUNTRY) {
                        u32 kbLang;
                        if ((u32)ipl::System::getRegion() == SC_PRODUCT_AREA_USA) {
                            switch (ipl::System::getLanguage()) {
                                case SC_LANG_ENGLISH:
                                    kbLang = www_wiisetting_81370E60(0);
                                    break;
                                case SC_LANG_FRENCH:
                                    kbLang = www_wiisetting_81370E60(1);
                                    break;
                                case SC_LANG_SPANISH:
                                    kbLang = www_wiisetting_81370E60(2);
                                    break;
                            }
                        } else if ((u32)ipl::System::getRegion() == SC_PRODUCT_AREA_EUR) {
                            for (int i = 0; i < 0x3b; i++) {
                                if (sWiiData.data[WB_ID_COUNTRY] == kbLangEurLUT[ipl::System::getLanguage() - 1][i] + 0x40) {
                                    kbLang = (u8)(i + 0x40);
                                    break;
                                }
                            }
                        }
                        val->data.jsDouble = (u8)kbLang;
                    }
                    retVal = 0x06;
                }
            }
            return retVal;
        }

        int Setter_(WWWJSPluginObj* obj, const char* str, WWWJSPluginValue* val) {
            int bytePropIdx;
            bytePropIdx = www_wiisetting_81370F14(str);
            if (bytePropIdx == WB_ID_PAGE_ID) {
                sWiiData.data[bytePropIdx] = (u8)(val->data).jsDouble;
                switch (sWiiData.data[bytePropIdx]) {
                    case 0x1:
                        savedata_smth = 0x20 - (SCGetDisplayOffsetH() + 0x10);
                        break;
                    case 0x32:
                        memset(pString->netSettingArg, 0, 0x40);
                        break;
                }
                gEnableDpd = 1;
                gDpdWaitFrm = 0;
                return 0xb;
            } else if (bytePropIdx >= 0) {
                // u8 newRestrictions;
                if (bytePropIdx == WB_ID_SE || bytePropIdx == WB_ID_EXCSE) {
                    if ((val->data).jsDouble == 2.0) {
                        if ((sWiiData.data[WB_ID_SE] == 0) && (sWiiData.data[WB_ID_EXCSE] == 0)) {
                            sWiiData.data[bytePropIdx] = (val->data).jsDouble;
                        }
                    } else {
                        sWiiData.data[bytePropIdx] = (val->data).jsDouble;
                    }
                } else if (bytePropIdx == WB_ID_RESTRICTIONS) {
                    u32 restrictionsByte = (val->data).jsDouble;
                    u32 newRestrictions;
                    u8 oldRestrictions = sWiiData.data[bytePropIdx];
                    newRestrictions = oldRestrictions | (restrictionsByte & 0x7f);
                    if ((restrictionsByte & 0x80) != 0) {
                        newRestrictions = oldRestrictions & ~(restrictionsByte & 0x7f);
                    }
                    sWiiData.data[bytePropIdx] = newRestrictions;
                    writeBackID = bytePropIdx;
                } else {
                    sWiiData.data[bytePropIdx] = (val->data).jsDouble;
                    if (bytePropIdx != WB_ID_FUNC_ID) {
                        writeBackID = bytePropIdx;
                    }
                    OSReport("wiiSetting: Setter_ name:%s type:%d\n", str, val->ty);
                    OSReport("id:%d data:%d\n", bytePropIdx, sWiiData.data[bytePropIdx]);
                }

                switch (bytePropIdx) {
                    case WB_ID_DIS_POS:
                        sWiiData.data[WB_ID_SET_STRING] = 1;
                        break;
                    case WB_ID_SOUND_ID:
                        sWiiData.data[WB_ID_SE] = sWiiData.data[bytePropIdx] + 0x0a;
                        break;
                    case WB_ID_LIGHT:
                        WPADSetDpdSensitivity(sWiiData.data[bytePropIdx]);
                        bytePropIdx = 0;
                        do {
                            if (WPADIsDpdEnabled(bytePropIdx) != 0) {
                                gEnableDpd = 0;
                                gDpdWaitFrm = 0;
                                KPADDisableDPD(bytePropIdx);
                            }
                            KPADSetControlDpdCallback(bytePropIdx, (KPADCallback*)&www_wiisetting_8136F9F4);
                            bytePropIdx = bytePropIdx + 1;
                        } while (bytePropIdx < 4);
                        break;
                    case WB_ID_PROFILE_ID:
                        ipl::ncd::NCDSetting::initSetID(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_SELECT_WIRE:
                        ipl::ncd::NCDSetting::setWired();
                        break;
                    case WB_ID_WIFI_TYPE:
                        ipl::ncd::NCDSetting::setWireless(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_FUNC_ID:
                        funcResult = 0;
                        startFunc(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_SELECT_SEC_KEY:
                        savedata_smth = ipl::ncd::NCDSetting::getPrivacyMode();
                        ipl::ncd::NCDSetting::setPrivacyMode(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_BACK_SEC_KEY:
                        ipl::ncd::NCDSetting::setPrivacyMode(savedata_smth);
                        break;
                    case WB_ID_AUTO_IP:
                        ipl::ncd::NCDSetting::setDHCPFlag(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_AUTO_DNS:
                        ipl::ncd::NCDSetting::setDNSFlag(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_AUTO_PROXY:
                        ipl::ncd::NCDSetting::setProxyFlag(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_AUTO_BASIC:
                        ipl::ncd::NCDSetting::setBasicFlag(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_CHANGE_CONNECT_TYPE:
                        ipl::ncd::NCDSetting::changeConnectType(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_PARE_FLAG:
                        ipl::parental::Parental::setFlags(sWiiData.data[bytePropIdx]);
                        ipl::ncd::NCDSetting::adjustNWC24Flag();
                        break;
                    case WB_ID_RATE:
                        if (((u32)(val->data).jsDouble & 0x100) != 0) {
                            sWiiData.data[bytePropIdx] = ipl::parental::Parental::checkRating();
                        }
                        break;
                    case WB_ID_RATE_SAVE:
                        savedata_smth = ipl::parental::Parental::checkRating();
                        break;
                    case WB_ID_SEC_Q:
                        ipl::parental::Parental::setSecQ(sWiiData.data[bytePropIdx]);
                        break;
                    case WB_ID_SEC_Q_SAVE:
                        savedata_smth = ipl::parental::Parental::checkSecQ();
                        break;
                    case WB_ID_USE_ID:
                        ipl::ncd::NCDSetting::setUseProfileID();
                        break;
                    case WB_ID_COUNTRY:
                        if ((u32)ipl::System::getRegion() == SC_PRODUCT_AREA_USA) {
                            switch (ipl::System::getLanguage()) {
                                case SC_LANG_ENGLISH:
                                    sWiiData.data[WB_ID_COUNTRY] = kbLangUsaLUT[0][sWiiData.data[WB_ID_COUNTRY] - 8] + 8;
                                    break;
                                case SC_LANG_FRENCH:
                                    sWiiData.data[WB_ID_COUNTRY] = kbLangUsaLUT[1][sWiiData.data[WB_ID_COUNTRY] - 8] + 8;
                                    break;
                                case SC_LANG_SPANISH:
                                    sWiiData.data[WB_ID_COUNTRY] = kbLangUsaLUT[2][sWiiData.data[WB_ID_COUNTRY] - 8] + 8;
                                    break;
                            }
                        } else if ((u32)ipl::System::getRegion() == SC_PRODUCT_AREA_EUR) {
                            sWiiData.data[WB_ID_COUNTRY] = kbLangEurLUT[ipl::System::getLanguage() - 1][sWiiData.data[WB_ID_COUNTRY] - 0x40] + 0x40;
                        }

                        break;
                    case WB_ID_COUNTRY_SAVE:
                        sWiiData.data[0x3c] = ipl::parental::Parental::getCountry();
                        break;
                    case WB_ID_FLUSH:
                        if (sWiiData.data[bytePropIdx] == 0) {
                            SCFlush();
                            OSReport("!!!!!!!!!!!!!!!!!!!SC FLUSH!!!!!!!!!!!!!!\n");
                        } else if (sWiiData.data[bytePropIdx] != 0x45) {
                            writeBackID = sWiiData.data[bytePropIdx];
                            wiiWriteBack(NULL, NULL, 0, NULL, NULL);
                        }
                        break;
                    case WB_ID_TVRC:
                    default:
                        break;
                }

                return 0xb;
            } else {
                return 0x8;
            }
        }
        int wiiOSReport(WWWJSPluginObj* objA, WWWJSPluginObj* objB, int valInt, WWWJSPluginValue* valA, WWWJSPluginValue* valB) {
            if (valA->ty == 1) {
                ext_ead::www::print::IPLWWWReport(3, "wiiOSReport Success!!\n");

                // @bug This is a double, being printed with %d???
                OSReport("%d\n", valA->data.jsDouble);
            }
            return 0x11;
        }

        int wiiWriteBack(WWWJSPluginObj* objA, WWWJSPluginObj* objB, int valInt, WWWJSPluginValue* valA, WWWJSPluginValue* valB) {
            SCIdleModeInfo idleInfo;
            SCIdleModeInfo wcFlagsIdleInfo;
            OSReport("WriteBack id:%d data:%d savedata:%d\n", writeBackID, sWiiData.data[writeBackID], savedata_smth);
            switch (writeBackID) {
                case WB_ID_SOUND_ID:
                    SCSetSoundMode(sWiiData.data[WB_ID_SOUND_ID]);
                    break;
                case WB_ID_NWC24: {
                    u32 flags = SCGetWCFlags();
                    if (sWiiData.data[WB_ID_NWC24] == (flags & SC_WC_FLAGS_ENABLED))
                        break;

                    u32 newFlags = flags | SC_WC_FLAGS_ENABLED;
                    if (!sWiiData.data[WB_ID_NWC24]) {
                        newFlags = flags & ~SC_WC_FLAGS_ENABLED;
                    }
                    SCSetWCFlags(newFlags);

                    if (!sWiiData.data[WB_ID_NWC24]) {
                        sWiiData.data[WB_ID_STANDBY] = 0;
                        sWiiData.data[WB_ID_LED] = 0;
                    } else {
                        sWiiData.data[WB_ID_STANDBY] = 1;
                        sWiiData.data[WB_ID_LED] = 1;
                    }

                    wcFlagsIdleInfo.standby = sWiiData.data[WB_ID_STANDBY];
                    wcFlagsIdleInfo.led = sWiiData.data[WB_ID_LED];
                    SCSetIdleMode(&wcFlagsIdleInfo);
                    ipl::ncd::NCDSetting::adjustNWC24Flag();

                    ipl::System::getNwc24Manager()->enableLedNotification(true);
                    break;
                }
                case WB_ID_STANDBY:
                case WB_ID_LED: {
                    idleInfo.standby = sWiiData.data[WB_ID_STANDBY];
                    idleInfo.led = sWiiData.data[WB_ID_LED];
                    SCSetIdleMode(&idleInfo);

                    ipl::System::getNwc24Manager()->enableLedNotification(true);
                    break;
                }
                case WB_ID_DIS_WIDE:
                    OSSendMessage(mQueue, (OSMessage)0x1c, 0);
                    OSReport("Send Func MsgQ: %d\n", 0x1c);
                    break;
                case WB_ID_DIS_POS:
                    if (valA->data.jsDouble == 0.0) {
                        SCSetDisplayOffsetH((int)(char)(0x10 - savedata_smth));
                        sWiiData.data[WB_ID_DIS_POS] = savedata_smth;
                        sWiiData.data[WB_ID_SET_STRING] = 1;
                    } else {
                        SCSetDisplayOffsetH((int)(char)(0x10 - sWiiData.data[WB_ID_DIS_POS]));
                    }
                    break;
                case WB_ID_LIGHT:  // Why is this out of order???
                    SCSetBtDpdSensibility(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_PROGRESSIVE:
                    SCSetProgressiveMode(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_SCREENSAVER:
                    SCSetScreenSaverMode(sWiiData.data[writeBackID]);
                    VIEnableDimming(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_SENSOR_BAR:
                    SCSetWpadSensorBarPosition(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_YEAR: {
                    OSCalendarTime time;
                    OSTicksToCalendarTime(OSGetTime(), &time);
                    time.year = sWiiData.data[WB_ID_YEAR] + 2000;
                    time.mon = sWiiData.data[WB_ID_MONTH] - 1;
                    time.mday = sWiiData.data[WB_ID_DATE];
                    OSTicksToCalendarTime(OSCalendarTimeToTicks(&time), &time);
                    ipl::utility::Calendar::setCalendarTime(&time);
                    break;
                }
                case WB_ID_HOUR: {
                    OSCalendarTime time;
                    OSTicksToCalendarTime(OSGetTime(), &time);
                    time.hour = sWiiData.data[WB_ID_HOUR];
                    time.min = sWiiData.data[WB_ID_MINUTE];
                    time.sec = 0;
                    time.msec = 0;
                    time.usec = 0;
                    ipl::utility::Calendar::setCalendarTime(&time);
                    break;
                }
                case WB_ID_LANGUAGE:
                    OSSendMessage(mQueue, (OSMessage)0x50, 0);
                    OSReport("Send Func MsgQ: %d\n", 0x50);
                    break;
                case WB_ID_RATE:
                    ipl::parental::Parental::setRating(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_RESTRICTIONS:
                    ipl::parental::Parental::setRestrictions(sWiiData.data[writeBackID]);
                    break;
                case WB_ID_PAL:
                    SCSetProgressiveMode(sWiiData.data[WB_ID_PROGRESSIVE]);
                    SCSetEuRgb60Mode(sWiiData.data[WB_ID_PAL]);
                    break;
                case WB_ID_COUNTRY:
                    ipl::parental::Parental::setCountry(sWiiData.data[WB_ID_COUNTRY]);
                    break;
            }

            switch (writeBackID) {
                case WB_ID_DIS_WIDE:
                case WB_ID_YEAR:
                case WB_ID_HOUR:
                case WB_ID_LANGUAGE:
                    break;
                default:
                    SCFlush();
                    OSReport("!!!!!!!!!!!!!!!!!!!SC FLUSH!!!!!!!!!!!!!!!!!\n");
                    break;
            }
            writeBackID = 0;
            return 0x11;
        }
        const char* const byteProps[] = {
            "soundId",      "nwc24",        "internet",
            "standby",      "LED",          "dis_wide",
            "dis_pos",      "progressive",  "screensaver",
            "sensorBar",    "light",        "year",
            "month",        "date",         "hour",
            "minute",       "formID",       "pageID",
            "message",      "type",         "connectType",
            "connectType1", "connectType2", "connectType3",
            "profileID",    "selectWire",   "wifiType",
            "funcID",       "funcResult",   "selectSecKey",
            "autoIP",       "autoDNS",      "ip",
            "backupNCD",    "resetNCD",     "autoProxy",
            "autoBasic",    "backSecKey",   "changeConnectType",
            "changeEnable", "pare_flag",    "secQ",
            "secQSave",     "ogn",          "rate",
            "rateSave",     "pal",          "language",
            "languageSave", "dtv",          "useID",
            "connectTest",  "error",        "setstring",
            "se",           "excse",        "finish",
            "flush",        "initFlag",     "country",
            "countrySave",  "macAvailable", "updateType",
            "restrictions", "assert",       "subPageID",
            "productArea",  "eula",         "tvrc",
            "tvrc_maker",   "tvrc_type",    NULL,
        };
        // @bug I think this is also supposed to be const
        const char* strProps[] = {
            "nickname", "securityKey", "ssID",      "ipAddr",    "subnet",  "gateway",   "dns1",        "dns2",           "macAddr",
            "proxy",    "proxyPort",   "basicName", "basicPass", "mtu",     "pare_pass", "pare_repass", "pare_judgepass", "secA",
            "resecA",   "master",      "lanMac",    "dummySec",  "version", "directUrl", NULL,
        };

        extern "C" {
        int www_wiisetting_81370E60(u8 usaLangIdx) {
            const u8* activeLUT = kbLangUsaLUT[usaLangIdx];
            u8 parentalCountry = sWiiData.data[WB_ID_COUNTRY];
            for (int i = 0; i < 0x30; i++) {
                if (parentalCountry == activeLUT[(u8)i] + 8) {
                    return (u8)(i + 8);
                }
            }
        }
        }

        void initWiiSetting() {
            writeBackID = 0;
            memset(&sWiiData, 0, sizeof(sWiiData));
            memset(&wiiFlag, 0, sizeof(wiiFlag));
            sWiiData.data[WB_ID_NWC24] = SCGetWCFlags() & SC_WC_FLAGS_ENABLED;
        }
        int www_wiisetting_81370F14(const char* targetStr) {
            const char* names[ARRAY_LENGTH(byteProps)];
            {
                const char** __pDst = names - 1;
                const char* const* __pSrc = byteProps - 1;
                for (int i = 0; i < (ARRAY_LENGTH(names) >> 1); i++) {
                    *(++__pDst) = *(++__pSrc);
                    *(++__pDst) = *(++__pSrc);
                }
            }
            for (int i = 0; i < (int)ARRAY_LENGTH(names); i++) {
                if (strcmp(targetStr, names[i]) == 0)
                    return i + 1;
            }
            return -1;
        }

        void startFunc(u8 funcID) {
            u32 parentalMistakeRes;
            switch (funcID) {
                case 0x17:
                case 0x1a:
                case 0x1d:
                case 0x4d:
                case 0x4e:
                case 0x4f:
                case 0x51:
                case 0x52:
                case 0x53:
                case 0x5a:
                case 0x5b:
                case 0x5c:
                case 0x5d:
                case 0x5e:
                case 0x5f:
                case 0x64:
                case 0x65:
                case 0x66:
                case 0x67:
                    OSSendMessage(mQueue, (OSMessage)(u32)funcID, 0);
                    OSReport("Send Func MsgQ: %d\n", funcID);
                    break;
                case 0x01:
                case 0x02:
                case 0x03:
                case 0x04:
                case 0x05:
                case 0x06:
                case 0x07:
                case 0x08:
                case 0x09:
                case 0x18:
                case 0x1e:
                case 0x1f:
                case 0x23:
                case 0x54:
                case 0x55:
                case 0x56:
                case 0x57:
                case 0x58:
                case 0x59:
                    wiiFlag.smthMsgData = funcID;
                    break;
                case 0x20:
                    if (wiiFlag.smthMsgData == 0x21)
                        OSReport("eJSFunc_AOSSConnect : request ignored.");
                    else
                        wiiFlag.smthMsgData = funcID;
                    break;
                case 0x21:
                case 0x22:
                    wiiFlag.smthMsgData = funcID;
                    break;
                case 0x28:
                case 0x29:
                case 0x2a:
                    if (wiiFlag.smthMsgData == 0x2b)
                        OSReport("eJSFunc_RakuSet%d : request ignored.", funcID - 0x27);
                    else
                        wiiFlag.smthMsgData = funcID;
                    break;
                case 0x2b:
                case 0x2c:
                    wiiFlag.smthMsgData = funcID;
                    break;

                case 0x0a:
                    ipl::ncd::NCDSetting::clearData();
                    break;
                case 0x0c:
                    parentalMistakeRes = ipl::parental::Parental::checkMistake(0);
                    OSReport("setFuncResult:%d\n", parentalMistakeRes & 0xff);
                    funcResult = parentalMistakeRes;
                    break;
                case 0x0d:
                    parentalMistakeRes = ipl::parental::Parental::checkMistake(1);
                    OSReport("setFuncResult:%d\n", parentalMistakeRes & 0xff);
                    funcResult = parentalMistakeRes;
                    break;
                case 0x0e:
                    parentalMistakeRes = ipl::parental::Parental::checkMistake(2);
                    OSReport("setFuncResult:%d\n", parentalMistakeRes & 0xff);
                    funcResult = parentalMistakeRes;
                    break;
                case 0x10:
                    ipl::ncd::NCDSetting::clearLocal();
                    break;
                case 0x14:
                    ipl::ncd::NCDSetting::write();
                    break;
                case 0x15:
                    ipl::parental::Parental::write();
                    break;
                case 0x16:
                    ipl::parental::Parental::clear();
                case 0x19:
                    sWiiData.data[WB_ID_RESTRICTIONS] = ipl::parental::Parental::checkRestrictions();
                    break;
            }
            sWiiData.data[WB_ID_FUNC_ID] = 0;
            return;
        }

        WiiData* getWiiSettingData() {
            return &sWiiData;
        }
        WiiFlag* getWiiSettingFlag() {
            return &wiiFlag;
        }
        void setStringBuf(SetStringBuf* buf) {
            pString = buf;
        }
        void setInitSetupFlag(u8 flag) {
            setupFlag = flag;
        }

        void setFuncResult(u8 result) {
            OSReport("setFuncResult:%d\n", result);
            funcResult = result;
        }
        u32 getFuncResult() {
            OSReport("getFuncResult:%d\n", funcResult);
            return funcResult;
        }
        void setMsgQueue(OSMessageQueue* msgQ) {
            mQueue = msgQ;
        }

        // DECOMP_FORCE_ACTIVE(wiisetting, gDpdWaitFrm, wiiFlag);
    }  // namespace wiisetting
}  // namespace www
