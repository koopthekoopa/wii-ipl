#ifndef TEXTINPUT_PC_KEYBOARD_DATA_H
#define TEXTINPUT_PC_KEYBOARD_DATA_H

#include <revolution/types.h>

namespace textinput {
    namespace keyboard {
        namespace pctype {
            static const int KEY_COUNT = 50;

            typedef struct PaneNameToCharCodeWithModeAscii {
                const char* szPaneName; // 0x00
                wchar_t     wc[4];      // 0x04
            } PaneNameToCharCodeWithModeAscii;

            extern const PaneNameToCharCodeWithModeAscii csJPKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csUSKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csUKKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csFRKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csDEKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csITKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csESKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csNLKeyboard[KEY_COUNT];
            extern const PaneNameToCharCodeWithModeAscii csCNKeyboard[KEY_COUNT];
        }
    }
}

#endif // TEXTINPUT_PC_KEYBOARD_DATA_H
