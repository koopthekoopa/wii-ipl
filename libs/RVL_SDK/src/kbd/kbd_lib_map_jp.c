#include <revolution/kbd.h>
#include <revolution/kbd/hidtypes.h>

#include <private/kbd/init_maps.h>
#include <private/kbd/maps/regionJP.h>

void KBDInitRegionJP() {
    kbdInitMap(KBD_CC_JAPAN, 7, 0xF, kbdKeyMapJAPAN, kbdModifierMapJAPAN, 3, 5, 0, 136, KBD_REPLACETYPE_JAPAN);
}
