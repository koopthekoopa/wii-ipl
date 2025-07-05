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

    if (parentalControls.enable & 0x80) {
        int pcFlags = bi3.parentalControlFlags[parentalControls.org];

        // If parental controls enabled
        if (pcFlags & BI3_PARENTALCONTROL_ENABLED) {
            return FALSE;
        }
        // If... this is enabled
        if (pcFlags & 0x40) {
            return FALSE;
        }
        // If the age rating in BI3 is bigger than SYSCONF's
        if ((pcFlags & BI3_PARENTALCONTROL_FLAGS_RATING) > parentalControls.ageRating) {
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
            if (bi3.parentalControlFlags[BI3_PARENTALCONTROL_CERO] & BI3_PARENTALCONTROL_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_USA: {
            if (bi3.parentalControlFlags[BI3_PARENTALCONTROL_ESRB] & BI3_PARENTALCONTROL_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_EUR: {
            if (bi3.parentalControlFlags[BI3_PARENTALCONTROL_USK]           & BI3_PARENTALCONTROL_ENABLED
             && bi3.parentalControlFlags[BI3_PARENTALCONTROL_PEGI]          & BI3_PARENTALCONTROL_ENABLED
             && bi3.parentalControlFlags[BI3_PARENTALCONTROL_PEGI_FINLAND]  & BI3_PARENTALCONTROL_ENABLED
             && bi3.parentalControlFlags[BI3_PARENTALCONTROL_PEGI_PORTUGAL] & BI3_PARENTALCONTROL_ENABLED
             && bi3.parentalControlFlags[BI3_PARENTALCONTROL_BBFC]          & BI3_PARENTALCONTROL_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_AUS: {
            if (bi3.parentalControlFlags[BI3_PARENTALCONTROL_OFLC] & BI3_PARENTALCONTROL_ENABLED) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        }
        case SC_PRODUCT_AREA_KOR: {
            if (bi3.parentalControlFlags[BI3_PARENTALCONTROL_GRB] & BI3_PARENTALCONTROL_ENABLED) {
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
