#ifndef TEXTINPUT_SING_WINDOW_DATA_H
#define TEXTINPUT_SING_WINDOW_DATA_H

#include <revolution/types.h>

namespace textinput {
    namespace keyboard {
        namespace signwindow {
            static const int KEY_COUNT = 20;

            typedef struct PaneNameToCharCodeInSignMode {
                const char* szPaneName;     // 0x00
                const char* szNextPaneName; // 0x04
                wchar_t     wc[16];         // 0x08
            } PaneNameToCharCodeInSignMode;

            extern const PaneNameToCharCodeInSignMode csSignKeyJP[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyUS[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyUK[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyDE[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyFR[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyIT[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeySP[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyNL[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyCN[KEY_COUNT];
            extern const PaneNameToCharCodeInSignMode csSignKeyKR[KEY_COUNT];
        }
    }
}

#endif // TEXTINPUT_SING_WINDOW_DATA_H
