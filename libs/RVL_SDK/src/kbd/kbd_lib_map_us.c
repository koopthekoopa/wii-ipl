#include <revolution/kbd.h>
#include <revolution/kbd/hidtypes.h>

#include <private/kbd/init_maps.h>
#include <private/kbd/maps/regionUS.h>

void KBDInitRegionUS() {
    kbdInitMapIntl();
    kbdInitMap(KBD_CC_CANADIAN_BI, 4, KBD_MAPHAS_ALTGR, kbdKeyMapCANADA, kbdModifierMapCANADA, 0, 0, 3, 100, KBD_REPLACETYPE_OTHER);
    kbdInitMap(KBD_CC_CANADIAN_FR, 4, KBD_MAPHAS_ALTGR, kbdKeyMapCANADA_FR, kbdModifierMapCANADA_FR, 0, 0, 3, 100, KBD_REPLACETYPE_OTHER);
    kbdInitMap(KBD_CC_LATIN_AMERICAN, 4, KBD_MAPHAS_ALTGR, kbdKeyMapLATIN_AMERICA, kbdModifierMapLATIN_AMERICA, 0, 0, 3, 100, KBD_REPLACETYPE_OTHER);
    kbdInitMap(KBD_CC_UNITED_STATES, 3, KBD_MAPHAS_NONE, kbdKeyMapUSA, kbdModifierMapUSA, 0, 0, 0, 100, KBD_REPLACETYPE_USA);
}
