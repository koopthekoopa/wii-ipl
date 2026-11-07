#ifndef REVOLUTION_KBD_INIT_MAPS_H
#define REVOLUTION_KBD_INIT_MAPS_H

#include <revolution/types.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _KBDReplaceType {
    KBD_REPLACETYPE_USA = 0,
    KBD_REPLACETYPE_JAPAN,
    KBD_REPLACETYPE_OTHER,
} KBDReplaceType;

#define KBD_INITMAP(STRIDE, OFFSETLANG2, OFFSETLANG3, OFFSETALTGR, COUNTRY, MAP_DATA_NAME, REPLACETYPE, SUPPORTED_MODIFIER_FLAGS)                    \
    kbdInitMap(COUNTRY, STRIDE, SUPPORTED_MODIFIER_FLAGS, kbdKeyMap##MAP_DATA_NAME, kbdModifierMap##MAP_DATA_NAME, OFFSETLANG2, OFFSETLANG3,         \
               OFFSETALTGR, ARRAY_LENGTH(kbdKeyMap##MAP_DATA_NAME) / STRIDE, REPLACETYPE)

void kbdInitMap(int country, u8 keycodeStride, u8 supportedModifierFlags, wchar_t* keyMap, wchar_t* modifierMap, u8 offsetLang2, u8 offsetLang3,
                u8 offsetAltgr, u8 keyCount, KBDReplaceType keyReplacements);
void kbdInitMapIntl();

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KBD_INIT_MAPS_H
