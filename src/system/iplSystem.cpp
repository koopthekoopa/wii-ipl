#include <decomp.h>

#include "system/iplSystem.h"

#include <revolution/sc.h>

#include <cstring>

namespace ipl {
    System::Arg System::smArg;

    System::Arg::Arg() {
        memset(&smArg, 0, sizeof(Arg));
        OSCreateAlarm(&mUnkAlarm);
    }
    
    s32 System::getLanguage() {
        s32 lang = SCGetLanguage();
        s32 region = getRegion();

        switch (region) {
            case SC_PRODUCT_AREA_USA: {
                // Fallback to english if the language is not available for USA consoles.
                if (lang >= (SC_LANG_SPANISH + 1) || lang < SC_LANG_FRENCH) {
                    lang = SC_LANG_ENGLISH;
                }
                break;
            }
            case SC_PRODUCT_AREA_JPN:
                lang = SC_LANG_JAPANESE;
                break;
            case SC_PRODUCT_AREA_EUR:
                // Fallback to english if the language is not available for European consoles.
                if (lang >= (SC_LANG_DUTCH + 1) || lang < SC_LANG_GERMAN) {
                    lang = SC_LANG_ENGLISH;
                }
                break;
            case SC_PRODUCT_AREA_KOR:
                lang = SC_LANG_KOREAN;
                break;
            case SC_PRODUCT_AREA_CHN:
                lang = SC_LANG_SIMP_CHINESE;
                break;
            default:
                // Fallback to enlgish if the language is invalid.
                lang = SC_LANG_ENGLISH;
                break;
        }

        return lang;
    }
    
    s32 System::getRegion() {
        s32 region = SCGetProductArea();

        switch (region) {
            // NTSC-J
            case SC_PRODUCT_AREA_JPN:
            case SC_PRODUCT_AREA_TWN: {
                return SC_PRODUCT_AREA_JPN;
            }
            // PAL
            case SC_PRODUCT_AREA_EUR:
            case SC_PRODUCT_AREA_AUS: {
                return SC_PRODUCT_AREA_EUR;
            }
            // NTSC-K
            case SC_PRODUCT_AREA_KOR: {
                return SC_PRODUCT_AREA_KOR;
            
            }
            // Unreleased iQue version
            case SC_PRODUCT_AREA_CHN: {
                return SC_PRODUCT_AREA_CHN;
            }
            // NTSC-U (default)
            default: {
                return SC_PRODUCT_AREA_USA;
            }
        }
    }
}


