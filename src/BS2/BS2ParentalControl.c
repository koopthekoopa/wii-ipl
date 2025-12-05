#include "BS2/BS2.h"

#include <revolution/sc.h>

BOOL __BS2IsPCEnable();

BOOL BS2CheckParentalControl() {
    SCParentalControlsInfo parentalControls;

    if (!__BS2IsPCEnable()) {
        return TRUE;
    }

    if (!SCGetParentalControl(&parentalControls)) {
        return TRUE;
    }

    if (parentalControls.enable & SC_PARENTAL_FLAG_ENABLED) {
        int pcFlags = bi3.parentalControlFlags[parentalControls.org];

        // If parental controls enabled
        if (pcFlags & SC_PARENTAL_FLAG_ENABLED) {
            return FALSE;
        }
        // If... this is enabled
        if (pcFlags & 0x40) {
            return FALSE;
        }
        // If the age rating in BI3 is bigger than SYSCONF's
        if ((pcFlags & SC_PARENTAL_RATING_ENABLED) > parentalControls.rating) {
            return FALSE;
        }
    }
    return TRUE;
}

BOOL __BS2IsPCEnable() {
    switch (SCGetProductArea()) {
        case SC_PRODUCT_AREA_JPN:
        case SC_PRODUCT_AREA_USA:
        case SC_PRODUCT_AREA_EUR:
        case SC_PRODUCT_AREA_AUS:
        case SC_PRODUCT_AREA_TWN:
        case SC_PRODUCT_AREA_KOR: {
            return TRUE;
        }
        default: {
            return FALSE;
        }
    }
}

BOOL BS2IsValidDisc() {
    if (!__BS2IsPCEnable()) {
        return TRUE;
    }

    switch (SCGetProductArea()) {
        case SC_PRODUCT_AREA_JPN:
        case SC_PRODUCT_AREA_TWN: {
            if (bi3.parentalControlFlags[SC_PARENTAL_ORG_CERO] & SC_PARENTAL_FLAG_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_USA: {
            if (bi3.parentalControlFlags[SC_PARENTAL_ORG_ESRB] & SC_PARENTAL_FLAG_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_EUR: {
            if (bi3.parentalControlFlags[SC_PARENTAL_ORG_USK]           & SC_PARENTAL_FLAG_ENABLED
             && bi3.parentalControlFlags[SC_PARENTAL_ORG_PEGI]          & SC_PARENTAL_FLAG_ENABLED
             && bi3.parentalControlFlags[SC_PARENTAL_ORG_PEGI_FINLAND]  & SC_PARENTAL_FLAG_ENABLED
             && bi3.parentalControlFlags[SC_PARENTAL_ORG_PEGI_PORTUGAL] & SC_PARENTAL_FLAG_ENABLED
             && bi3.parentalControlFlags[SC_PARENTAL_ORG_BBFC]          & SC_PARENTAL_FLAG_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_AUS: {
            if (bi3.parentalControlFlags[SC_PARENTAL_ORG_OFLC] & SC_PARENTAL_FLAG_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_KOR: {
            if (bi3.parentalControlFlags[SC_PARENTAL_ORG_GRB] & SC_PARENTAL_FLAG_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        default: {
            return FALSE;
        }
    }
}
