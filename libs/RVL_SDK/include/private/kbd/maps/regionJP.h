#include <revolution/kbd.h>

#include <private/kbd/keymap_macros.h>

static wchar_t kbdKeyMapJAPAN[] = {
    KEYMAP_ENTRY(SIMPLE, L'a', L'A', L'ち', L'ち', L'チ', L'チ'),   // KEYBOARD_A
    KEYMAP_ENTRY(SIMPLE, L'b', L'B', L'こ', L'こ', L'コ', L'コ'),   // KEYBOARD_B
    KEYMAP_ENTRY(SIMPLE, L'c', L'C', L'そ', L'そ', L'ソ', L'ソ'),   // KEYBOARD_C
    KEYMAP_ENTRY(SIMPLE, L'd', L'D', L'し', L'し', L'シ', L'シ'),   // KEYBOARD_D
    KEYMAP_ENTRY(SIMPLE, L'e', L'E', L'い', L'ぃ', L'イ', L'ィ'),   // KEYBOARD_E
    KEYMAP_ENTRY(SIMPLE, L'f', L'F', L'は', L'は', L'ハ', L'ハ'),   // KEYBOARD_F
    KEYMAP_ENTRY(SIMPLE, L'g', L'G', L'き', L'き', L'キ', L'キ'),   // KEYBOARD_G
    KEYMAP_ENTRY(SIMPLE, L'h', L'H', L'く', L'く', L'ク', L'ク'),   // KEYBOARD_H
    KEYMAP_ENTRY(SIMPLE, L'i', L'I', L'に', L'に', L'ニ', L'ニ'),   // KEYBOARD_I
    KEYMAP_ENTRY(SIMPLE, L'j', L'J', L'ま', L'ま', L'マ', L'マ'),   // KEYBOARD_J
    KEYMAP_ENTRY(SIMPLE, L'k', L'K', L'の', L'の', L'ノ', L'ノ'),   // KEYBOARD_K
    KEYMAP_ENTRY(SIMPLE, L'l', L'L', L'り', L'り', L'リ', L'リ'),   // KEYBOARD_L
    KEYMAP_ENTRY(SIMPLE, L'm', L'M', L'も', L'も', L'モ', L'モ'),   // KEYBOARD_M
    KEYMAP_ENTRY(SIMPLE, L'n', L'N', L'み', L'み', L'ミ', L'ミ'),   // KEYBOARD_N
    KEYMAP_ENTRY(SIMPLE, L'o', L'O', L'ら', L'ら', L'ラ', L'ラ'),   // KEYBOARD_O
    KEYMAP_ENTRY(SIMPLE, L'p', L'P', L'せ', L'せ', L'セ', L'セ'),   // KEYBOARD_P
    KEYMAP_ENTRY(SIMPLE, L'q', L'Q', L'た', L'た', L'タ', L'タ'),   // KEYBOARD_Q
    KEYMAP_ENTRY(SIMPLE, L'r', L'R', L'す', L'す', L'ス', L'ス'),   // KEYBOARD_R
    KEYMAP_ENTRY(SIMPLE, L's', L'S', L'と', L'と', L'ト', L'ト'),   // KEYBOARD_S
    KEYMAP_ENTRY(SIMPLE, L't', L'T', L'か', L'か', L'カ', L'カ'),   // KEYBOARD_T
    KEYMAP_ENTRY(SIMPLE, L'u', L'U', L'な', L'な', L'ナ', L'ナ'),   // KEYBOARD_U
    KEYMAP_ENTRY(SIMPLE, L'v', L'V', L'ひ', L'ひ', L'ヒ', L'ヒ'),   // KEYBOARD_V
    KEYMAP_ENTRY(SIMPLE, L'w', L'W', L'て', L'て', L'テ', L'テ'),   // KEYBOARD_W
    KEYMAP_ENTRY(SIMPLE, L'x', L'X', L'さ', L'さ', L'サ', L'サ'),   // KEYBOARD_X
    KEYMAP_ENTRY(SIMPLE, L'y', L'Y', L'ん', L'ん', L'ン', L'ン'),   // KEYBOARD_Y
    KEYMAP_ENTRY(SIMPLE, L'z', L'Z', L'つ', L'っ', L'ツ', L'ッ'),   // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'ぬ', L'ぬ', L'ヌ', L'ヌ'),   // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'ふ', L'ふ', L'フ', L'フ'),   // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'あ', L'ぁ', L'ア', L'ァ'),   // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'う', L'ぅ', L'ウ', L'ゥ'),   // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'え', L'ぇ', L'エ', L'ェ'),   // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', L'お', L'ぉ', L'オ', L'ォ'),   // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'\'', L'や', L'ゃ', L'ヤ', L'ャ'),  // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'ゆ', L'ゅ', L'ユ', L'ュ'),   // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L'よ', L'ょ', L'ヨ', L'ョ'),   // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', 0, L'わ', L'を', L'ワ', L'ヲ'),      // KEYBOARD_0_CLOSEPARENS
    STEP_7_SYMBOL(SPECIAL(ENTER)),                                  // KEYBOARD_ENTER
    STEP_7_SYMBOL(SPECIAL(ESC)),                                    // KEYBOARD_ESCAPE
    STEP_7_SYMBOL(SPECIAL(BACKSPACE)),                              // KEYBOARD_BACKSPACE
    STEP_7_SYMBOL(SPECIAL(TAB)),                                    // KEYBOARD_TAB
    STEP_7_SYMBOL(L' '),                                            // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'=', L'ほ', L'ほ', L'ホ', L'ホ'),   // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'^', L'~', L'へ', L'へ', L'ヘ', L'ヘ'),   // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'@', L'`', L'ﾞ', L'ﾞ', L'ﾞ', L'ﾞ'),       // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'[', L'{', L'ﾟ', L'｢', L'ﾟ', L'｢'),       // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    KEYMAP_ENTRY(SYMBOL, L']', L'}', L'む', L'｣', L'ム', L'｣'),     // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L']', L'}', L'む', L'｣', L'ム', L'｣'),     // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L'+', L'れ', L'れ', L'レ', L'レ'),   // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L':', L'*', L'け', L'け', L'ケ', L'ケ'),   // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    STEP_7_SYMBOL(SPECIAL(TOGGLE_IME)),                             // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L'<', L'ね', L'､', L'ネ', L'､'),     // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'>', L'る', L'｡', L'ル', L'｡'),     // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'/', L'?', L'め', L'･', L'メ', L'･'),     // KEYBOARD_SLASH_QUESTION
    STEP_7_CNTROL(SPECIAL(CAPSLOCK)),                               // KEYBOARD_CAPSLOCK
    STEP_7_SYMBOL(SPECIAL(F1)),                                     // KEYBOARD_F1
    STEP_7_SYMBOL(SPECIAL(F2)),                                     // KEYBOARD_F2
    STEP_7_SYMBOL(SPECIAL(F3)),                                     // KEYBOARD_F3
    STEP_7_SYMBOL(SPECIAL(F4)),                                     // KEYBOARD_F4
    STEP_7_SYMBOL(SPECIAL(F5)),                                     // KEYBOARD_F5
    STEP_7_SYMBOL(SPECIAL(F6)),                                     // KEYBOARD_F6
    STEP_7_SYMBOL(SPECIAL(F7)),                                     // KEYBOARD_F7
    STEP_7_SYMBOL(SPECIAL(F8)),                                     // KEYBOARD_F8
    STEP_7_SYMBOL(SPECIAL(F9)),                                     // KEYBOARD_F9
    STEP_7_SYMBOL(SPECIAL(F10)),                                    // KEYBOARD_F10
    STEP_7_SYMBOL(SPECIAL(F11)),                                    // KEYBOARD_F11
    STEP_7_SYMBOL(SPECIAL(F12)),                                    // KEYBOARD_F12
    STEP_7_CNTROL(SPECIAL(PRINTSCREEN)),                            // KEYBOARD_PRINTSCREEN
    STEP_7_CNTROL(SPECIAL(SCROLLLOCK)),                             // KEYBOARD_SCROLL_LOCK
    STEP_7_CNTROL(SPECIAL(PAUSE)),                                  // KEYBOARD_PAUSE
    STEP_7_SYMBOL(SPECIAL(INSERT)),                                 // KEYBOARD_INSERT
    STEP_7_SYMBOL(SPECIAL(HOME)),                                   // KEYBOARD_HOME
    STEP_7_SYMBOL(SPECIAL(PAGEUP)),                                 // KEYBOARD_PAGEUP
    STEP_7_SYMBOL(SPECIAL(DELETE)),                                 // KEYBOARD_DELETE
    STEP_7_SYMBOL(SPECIAL(END)),                                    // KEYBOARD_END
    STEP_7_SYMBOL(SPECIAL(PAGEDOWN)),                               // KEYBOARD_PAGEDOWN
    STEP_7_SYMBOL(SPECIAL(RIGHTARROW)),                             // KEYBOARD_RIGHTARROW
    STEP_7_SYMBOL(SPECIAL(LEFTARROW)),                              // KEYBOARD_LEFTARROW
    STEP_7_SYMBOL(SPECIAL(DOWNARROW)),                              // KEYBOARD_DOWNARROW
    STEP_7_SYMBOL(SPECIAL(UPARROW)),                                // KEYBOARD_UPARROW
    STEP_7_CNTROL(SPECIAL(NUMLOCK)),                                // KEYPAD_NUMLOCK
    STEP_7_SYMBOL(NPD(L'/')),                                       // KEYPAD_DIVIDE
    STEP_7_SYMBOL(NPD(L'*')),                                       // KEYPAD_MULTIPLY
    STEP_7_SYMBOL(NPD(L'-')),                                       // KEYPAD_MINUS
    STEP_7_SYMBOL(NPD(L'+')),                                       // KEYPAD_PLUS
    STEP_7_SYMBOL(NPD(L'\r')),                                      // KEYPAD_ENTER
    STEP_7_NUMPAD(L'1'),                                            // KEYPAD_1_END
    STEP_7_NUMPAD(L'2'),                                            // KEYPAD_2_DOWNARROW
    STEP_7_NUMPAD(L'3'),                                            // KEYPAD_3_PAGEDOWN
    STEP_7_NUMPAD(L'4'),                                            // KEYPAD_4_LEFTARROW
    STEP_7_NUMPAD(L'5'),                                            // KEYPAD_5
    STEP_7_NUMPAD(L'6'),                                            // KEYPAD_6_RIGHTARROW
    STEP_7_NUMPAD(L'7'),                                            // KEYPAD_7_HOME
    STEP_7_NUMPAD(L'8'),                                            // KEYPAD_8_UPARROW
    STEP_7_NUMPAD(L'9'),                                            // KEYPAD_9_PAGEUP
    STEP_7_NUMPAD(L'0'),                                            // KEYPAD_0_INSERT
    STEP_7_NUMPAD(L'.'),                                            // KEYPAD_PERIOD_DELETE
    STEP_7_SYMBOL(0),                                               // KEYBOARD_NON_US_SLASH
    STEP_7_CNTROL(SPECIAL(APPLICATION)),                            // KEYBOARD_APPLICATION
    STEP_7_SYMBOL(0),                                               // KEYBOARD_POWER
    STEP_7_SYMBOL(NPD(L'=')),                                       // KEYPAD_EQUAL
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F13
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F14
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F15
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F16
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F17
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F18
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F19
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F20
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F21
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F22
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F23
    STEP_7_SYMBOL(0),                                               // KEYBOARD_F24
    STEP_7_SYMBOL(0),                                               // KEYBOARD_EXECUTE
    STEP_7_SYMBOL(0),                                               // KEYBOARD_HELP
    STEP_7_SYMBOL(0),                                               // KEYBOARD_MENU
    STEP_7_SYMBOL(0),                                               // KEYBOARD_SELECT
    STEP_7_SYMBOL(0),                                               // KEYBOARD_STOP
    STEP_7_SYMBOL(0),                                               // KEYBOARD_AGAIN
    STEP_7_SYMBOL(0),                                               // KEYBOARD_UNDO
    STEP_7_SYMBOL(0),                                               // KEYBOARD_CUT
    STEP_7_SYMBOL(0),                                               // KEYBOARD_COPY
    STEP_7_SYMBOL(0),                                               // KEYBOARD_PASTE
    STEP_7_SYMBOL(0),                                               // KEYBOARD_FIND
    STEP_7_SYMBOL(0),                                               // KEYBOARD_MUTE
    STEP_7_SYMBOL(0),                                               // KEYBOARD_VOLUME_UP
    STEP_7_SYMBOL(0),                                               // KEYBOARD_VOLUME_DOWN
    STEP_7_SYMBOL(0),                                               // KEYBOARD_LOCKING_CAPS_LOCK
    STEP_7_SYMBOL(0),                                               // KEYBOARD_LOCKING_NUM_LOCK
    STEP_7_SYMBOL(0),                                               // KEYBOARD_LOCKING_SCROLL_LOCK
    STEP_7_SYMBOL(0),                                               // KEYPAD_COMMA
    STEP_7_SYMBOL(0),                                               // KEYPAD_EQUALSIGN
    KEYMAP_ENTRY(SYMBOL, L'\\', L'_', L'ろ', L'ろ', L'ロ', L'ロ'),  // KEYBOARD_INTERNATIONAL1
    STEP_7_SYMBOL(SPECIAL(INTL_A)),                                 // KEYBOARD_INTERNATIONAL2
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', L'ｰ', L'ｰ', L'ｰ', L'ｰ'),      // KEYBOARD_INTERNATIONAL3
    STEP_7_SYMBOL(SPECIAL(INTL_B)),                                 // KEYBOARD_INTERNATIONAL4
    STEP_7_SYMBOL(SPECIAL(INTL_C)),                                 // KEYBOARD_INTERNATIONAL5
};
static wchar_t kbdModifierMapJAPAN[] = {
    STEP_7_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_7_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_7_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_7_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_7_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_7_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_7_CNTROL(SPECIAL(ALT)),    // KEYBOARD_R_ALT
    STEP_7_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
