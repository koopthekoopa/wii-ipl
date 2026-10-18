#include <revolution/kbd.h>

#include <private/kbd/keymap_macros.h>

static wchar_t kbdKeyMapCANADA[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                    // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                    // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),                    // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                    // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', 0),                    // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                    // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                    // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                    // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                    // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                    // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                    // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                    // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0),                    // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),                    // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),                    // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),                    // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0),                    // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0),                    // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0),                    // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),                    // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),                    // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),                    // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),                    // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', L'»'),                 // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                    // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', L'«'),                 // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0),                    // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'@', 0),                    // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', 0),                    // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', 0),                    // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', 0),                    // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'?', 0),                    // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'&', L'{'),                 // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'*', L'}'),                 // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L'(', L'['),                 // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L')', L']'),                 // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                          // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                            // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                      // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                            // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),                 // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),                    // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'=', L'+', L'¬'),                 // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'\u0302', L'\u0308', L'\u0300'),  // KEYBOARD_OPENBRACKET_OPENBRACE (Accents ^¨`)
    KEYMAP_ENTRY(LETTER, L'ç', L'Ç', L'\u0303'),            // KEYBOARD_CLOSEBRACKET_CLOSEBRACE (Accent ~)
    STEP_4_SYMBOL(0),                                       // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(LETTER, L'à', L'À', 0),                    // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L':', L'°'),                 // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'è', L'È', 0),                    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'/', L'\\', L'|'),                // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L'\'', L'<'),                // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'"', L'>'),                 // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(LETTER, L'é', L'É', 0),                    // KEYBOARD_SLASH_QUESTION
    STEP_4_CNTROL(SPECIAL(CAPSLOCK)),                       // KEYBOARD_CAPSLOCK
    STEP_4_SYMBOL(SPECIAL(F1)),                             // KEYBOARD_F1
    STEP_4_SYMBOL(SPECIAL(F2)),                             // KEYBOARD_F2
    STEP_4_SYMBOL(SPECIAL(F3)),                             // KEYBOARD_F3
    STEP_4_SYMBOL(SPECIAL(F4)),                             // KEYBOARD_F4
    STEP_4_SYMBOL(SPECIAL(F5)),                             // KEYBOARD_F5
    STEP_4_SYMBOL(SPECIAL(F6)),                             // KEYBOARD_F6
    STEP_4_SYMBOL(SPECIAL(F7)),                             // KEYBOARD_F7
    STEP_4_SYMBOL(SPECIAL(F8)),                             // KEYBOARD_F8
    STEP_4_SYMBOL(SPECIAL(F9)),                             // KEYBOARD_F9
    STEP_4_SYMBOL(SPECIAL(F10)),                            // KEYBOARD_F10
    STEP_4_SYMBOL(SPECIAL(F11)),                            // KEYBOARD_F11
    STEP_4_SYMBOL(SPECIAL(F12)),                            // KEYBOARD_F12
    STEP_4_CNTROL(SPECIAL(PRINTSCREEN)),                    // KEYBOARD_PRINTSCREEN
    STEP_4_CNTROL(SPECIAL(SCROLLLOCK)),                     // KEYBOARD_SCROLL_LOCK
    STEP_4_CNTROL(SPECIAL(PAUSE)),                          // KEYBOARD_PAUSE
    STEP_4_SYMBOL(SPECIAL(INSERT)),                         // KEYBOARD_INSERT
    STEP_4_SYMBOL(SPECIAL(HOME)),                           // KEYBOARD_HOME
    STEP_4_SYMBOL(SPECIAL(PAGEUP)),                         // KEYBOARD_PAGEUP
    STEP_4_SYMBOL(SPECIAL(DELETE)),                         // KEYBOARD_DELETE
    STEP_4_SYMBOL(SPECIAL(END)),                            // KEYBOARD_END
    STEP_4_SYMBOL(SPECIAL(PAGEDOWN)),                       // KEYBOARD_PAGEDOWN
    STEP_4_SYMBOL(SPECIAL(RIGHTARROW)),                     // KEYBOARD_RIGHTARROW
    STEP_4_SYMBOL(SPECIAL(LEFTARROW)),                      // KEYBOARD_LEFTARROW
    STEP_4_SYMBOL(SPECIAL(DOWNARROW)),                      // KEYBOARD_DOWNARROW
    STEP_4_SYMBOL(SPECIAL(UPARROW)),                        // KEYBOARD_UPARROW
    STEP_4_CNTROL(SPECIAL(NUMLOCK)),                        // KEYPAD_NUMLOCK
    STEP_4_SYMBOL(NPD(L'/')),                               // KEYPAD_DIVIDE
    STEP_4_SYMBOL(NPD(L'*')),                               // KEYPAD_MULTIPLY
    STEP_4_SYMBOL(NPD(L'-')),                               // KEYPAD_MINUS
    STEP_4_SYMBOL(NPD(L'+')),                               // KEYPAD_PLUS
    STEP_4_SYMBOL(NPD(L'\r')),                              // KEYPAD_ENTER
    STEP_4_NUMPAD(L'1'),                                    // KEYPAD_1_END
    STEP_4_NUMPAD(L'2'),                                    // KEYPAD_2_DOWNARROW
    STEP_4_NUMPAD(L'3'),                                    // KEYPAD_3_PAGEDOWN
    STEP_4_NUMPAD(L'4'),                                    // KEYPAD_4_LEFTARROW
    STEP_4_NUMPAD(L'5'),                                    // KEYPAD_5
    STEP_4_NUMPAD(L'6'),                                    // KEYPAD_6_RIGHTARROW
    STEP_4_NUMPAD(L'7'),                                    // KEYPAD_7_HOME
    STEP_4_NUMPAD(L'8'),                                    // KEYPAD_8_UPARROW
    STEP_4_NUMPAD(L'9'),                                    // KEYPAD_9_PAGEUP
    STEP_4_NUMPAD(L'0'),                                    // KEYPAD_0_INSERT
    STEP_4_NUMPAD(L'.'),                                    // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(LETTER, L'ù', L'Ù', 0),                    // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                    // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                       // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                               // KEYPAD_EQUAL
};

static wchar_t kbdModifierMapCANADA[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};

static wchar_t kbdKeyMapCANADA_FR[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),               // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),               // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),               // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),               // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', 0),               // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),               // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),               // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),               // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),               // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),               // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),               // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),               // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),            // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),               // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', L'§'),            // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', L'¶'),            // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0),               // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0),               // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0),               // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),               // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),               // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),               // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),               // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),               // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),               // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),               // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'±'),            // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),            // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'/', L'£'),            // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'¢'),            // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'¤'),            // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'?', L'¬'),            // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'&', L'¦'),            // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'*', L'²'),            // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L'(', L'³'),            // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L')', L'¼'),            // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                     // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                       // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                 // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                       // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),            // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', L'½'),            // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'=', L'+', L'¾'),            // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'\u0302', L'\u0302', L'['),  // KEYBOARD_OPENBRACKET_OPENBRACE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'\u0327', L'\u0308', L']'),  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE (Accents ¸¨)
    STEP_4_SYMBOL(0),                                  // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', L'}'),            // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L':', L'~'),            // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\u0300', L'\u0300', L'{'),  // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent `)
    KEYMAP_ENTRY(SYMBOL, L'#', L'|', L'\\'),           // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L'\'', L'¯'),           // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'.', L'-'),            // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(LETTER, L'é', L'É', L'\u0301'),       // KEYBOARD_SLASH_QUESTION (Accent ´)
    STEP_4_CNTROL(SPECIAL(CAPSLOCK)),                  // KEYBOARD_CAPSLOCK
    STEP_4_SYMBOL(SPECIAL(F1)),                        // KEYBOARD_F1
    STEP_4_SYMBOL(SPECIAL(F2)),                        // KEYBOARD_F2
    STEP_4_SYMBOL(SPECIAL(F3)),                        // KEYBOARD_F3
    STEP_4_SYMBOL(SPECIAL(F4)),                        // KEYBOARD_F4
    STEP_4_SYMBOL(SPECIAL(F5)),                        // KEYBOARD_F5
    STEP_4_SYMBOL(SPECIAL(F6)),                        // KEYBOARD_F6
    STEP_4_SYMBOL(SPECIAL(F7)),                        // KEYBOARD_F7
    STEP_4_SYMBOL(SPECIAL(F8)),                        // KEYBOARD_F8
    STEP_4_SYMBOL(SPECIAL(F9)),                        // KEYBOARD_F9
    STEP_4_SYMBOL(SPECIAL(F10)),                       // KEYBOARD_F10
    STEP_4_SYMBOL(SPECIAL(F11)),                       // KEYBOARD_F11
    STEP_4_SYMBOL(SPECIAL(F12)),                       // KEYBOARD_F12
    STEP_4_CNTROL(SPECIAL(PRINTSCREEN)),               // KEYBOARD_PRINTSCREEN
    STEP_4_CNTROL(SPECIAL(SCROLLLOCK)),                // KEYBOARD_SCROLL_LOCK
    STEP_4_CNTROL(SPECIAL(PAUSE)),                     // KEYBOARD_PAUSE
    STEP_4_SYMBOL(SPECIAL(INSERT)),                    // KEYBOARD_INSERT
    STEP_4_SYMBOL(SPECIAL(HOME)),                      // KEYBOARD_HOME
    STEP_4_SYMBOL(SPECIAL(PAGEUP)),                    // KEYBOARD_PAGEUP
    STEP_4_SYMBOL(SPECIAL(DELETE)),                    // KEYBOARD_DELETE
    STEP_4_SYMBOL(SPECIAL(END)),                       // KEYBOARD_END
    STEP_4_SYMBOL(SPECIAL(PAGEDOWN)),                  // KEYBOARD_PAGEDOWN
    STEP_4_SYMBOL(SPECIAL(RIGHTARROW)),                // KEYBOARD_RIGHTARROW
    STEP_4_SYMBOL(SPECIAL(LEFTARROW)),                 // KEYBOARD_LEFTARROW
    STEP_4_SYMBOL(SPECIAL(DOWNARROW)),                 // KEYBOARD_DOWNARROW
    STEP_4_SYMBOL(SPECIAL(UPARROW)),                   // KEYBOARD_UPARROW
    STEP_4_CNTROL(SPECIAL(NUMLOCK)),                   // KEYPAD_NUMLOCK
    STEP_4_SYMBOL(NPD(L'/')),                          // KEYPAD_DIVIDE
    STEP_4_SYMBOL(NPD(L'*')),                          // KEYPAD_MULTIPLY
    STEP_4_SYMBOL(NPD(L'-')),                          // KEYPAD_MINUS
    STEP_4_SYMBOL(NPD(L'+')),                          // KEYPAD_PLUS
    STEP_4_SYMBOL(NPD(L'\r')),                         // KEYPAD_ENTER
    STEP_4_NUMPAD(L'1'),                               // KEYPAD_1_END
    STEP_4_NUMPAD(L'2'),                               // KEYPAD_2_DOWNARROW
    STEP_4_NUMPAD(L'3'),                               // KEYPAD_3_PAGEDOWN
    STEP_4_NUMPAD(L'4'),                               // KEYPAD_4_LEFTARROW
    STEP_4_NUMPAD(L'5'),                               // KEYPAD_5
    STEP_4_NUMPAD(L'6'),                               // KEYPAD_6_RIGHTARROW
    STEP_4_NUMPAD(L'7'),                               // KEYPAD_7_HOME
    STEP_4_NUMPAD(L'8'),                               // KEYPAD_8_UPARROW
    STEP_4_NUMPAD(L'9'),                               // KEYPAD_9_PAGEUP
    STEP_4_NUMPAD(L'0'),                               // KEYPAD_0_INSERT
    STEP_4_NUMPAD(L'.'),                               // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'«', L'»', L'°'),            // KEYBOARD_NON_US_SLASH
    STEP_4_SYMBOL(SPECIAL(APPLICATION)),               // KEYBOARD_APPLICATION (Why is this a symbol and not a control character here?)
    STEP_4_SYMBOL(0),                                  // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                          // KEYPAD_EQUAL
};

static wchar_t kbdModifierMapCANADA_FR[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};

static wchar_t kbdKeyMapLATIN_AMERICA[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),            // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),            // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),            // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),            // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', 0),            // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),            // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),            // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),            // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),            // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),            // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),            // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),            // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0),            // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),            // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),            // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),            // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', L'@'),         // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0),            // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0),            // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),            // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),            // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),            // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),            // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),            // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),            // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),            // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0),            // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', 0),            // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', 0),            // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', 0),            // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', 0),            // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0),            // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', 0),            // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', 0),            // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', 0),            // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', 0),            // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                  // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                    // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),              // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                    // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),         // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'?', L'\\'),       // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'¿', L'¡', 0),            // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0308', 0),  // KEYBOARD_OPENBRACKET_OPENBRACE (Accent ´¨)
    KEYMAP_ENTRY(SYMBOL, L'+', L'*', L'~'),         // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                               // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'}', L']', L'\u0300'),    // KEYBOARD_NON_US_HASH (Accent `)
    KEYMAP_ENTRY(LETTER, L'ñ', L'Ñ', 0),            // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'{', L'[', L'\u0302'),    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'|', L'°', L'¬'),         // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),            // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0),            // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),            // KEYBOARD_SLASH_QUESTION
    STEP_4_CNTROL(SPECIAL(CAPSLOCK)),               // KEYBOARD_CAPSLOCK
    STEP_4_SYMBOL(SPECIAL(F1)),                     // KEYBOARD_F1
    STEP_4_SYMBOL(SPECIAL(F2)),                     // KEYBOARD_F2
    STEP_4_SYMBOL(SPECIAL(F3)),                     // KEYBOARD_F3
    STEP_4_SYMBOL(SPECIAL(F4)),                     // KEYBOARD_F4
    STEP_4_SYMBOL(SPECIAL(F5)),                     // KEYBOARD_F5
    STEP_4_SYMBOL(SPECIAL(F6)),                     // KEYBOARD_F6
    STEP_4_SYMBOL(SPECIAL(F7)),                     // KEYBOARD_F7
    STEP_4_SYMBOL(SPECIAL(F8)),                     // KEYBOARD_F8
    STEP_4_SYMBOL(SPECIAL(F9)),                     // KEYBOARD_F9
    STEP_4_SYMBOL(SPECIAL(F10)),                    // KEYBOARD_F10
    STEP_4_SYMBOL(SPECIAL(F11)),                    // KEYBOARD_F11
    STEP_4_SYMBOL(SPECIAL(F12)),                    // KEYBOARD_F12
    STEP_4_CNTROL(SPECIAL(PRINTSCREEN)),            // KEYBOARD_PRINTSCREEN
    STEP_4_CNTROL(SPECIAL(SCROLLLOCK)),             // KEYBOARD_SCROLL_LOCK
    STEP_4_CNTROL(SPECIAL(PAUSE)),                  // KEYBOARD_PAUSE
    STEP_4_SYMBOL(SPECIAL(INSERT)),                 // KEYBOARD_INSERT
    STEP_4_SYMBOL(SPECIAL(HOME)),                   // KEYBOARD_HOME
    STEP_4_SYMBOL(SPECIAL(PAGEUP)),                 // KEYBOARD_PAGEUP
    STEP_4_SYMBOL(SPECIAL(DELETE)),                 // KEYBOARD_DELETE
    STEP_4_SYMBOL(SPECIAL(END)),                    // KEYBOARD_END
    STEP_4_SYMBOL(SPECIAL(PAGEDOWN)),               // KEYBOARD_PAGEDOWN
    STEP_4_SYMBOL(SPECIAL(RIGHTARROW)),             // KEYBOARD_RIGHTARROW
    STEP_4_SYMBOL(SPECIAL(LEFTARROW)),              // KEYBOARD_LEFTARROW
    STEP_4_SYMBOL(SPECIAL(DOWNARROW)),              // KEYBOARD_DOWNARROW
    STEP_4_SYMBOL(SPECIAL(UPARROW)),                // KEYBOARD_UPARROW
    STEP_4_CNTROL(SPECIAL(NUMLOCK)),                // KEYPAD_NUMLOCK
    STEP_4_SYMBOL(NPD(L'/')),                       // KEYPAD_DIVIDE
    STEP_4_SYMBOL(NPD(L'*')),                       // KEYPAD_MULTIPLY
    STEP_4_SYMBOL(NPD(L'-')),                       // KEYPAD_MINUS
    STEP_4_SYMBOL(NPD(L'+')),                       // KEYPAD_PLUS
    STEP_4_SYMBOL(NPD(L'\r')),                      // KEYPAD_ENTER
    STEP_4_NUMPAD(L'1'),                            // KEYPAD_1_END
    STEP_4_NUMPAD(L'2'),                            // KEYPAD_2_DOWNARROW
    STEP_4_NUMPAD(L'3'),                            // KEYPAD_3_PAGEDOWN
    STEP_4_NUMPAD(L'4'),                            // KEYPAD_4_LEFTARROW
    STEP_4_NUMPAD(L'5'),                            // KEYPAD_5
    STEP_4_NUMPAD(L'6'),                            // KEYPAD_6_RIGHTARROW
    STEP_4_NUMPAD(L'7'),                            // KEYPAD_7_HOME
    STEP_4_NUMPAD(L'8'),                            // KEYPAD_8_UPARROW
    STEP_4_NUMPAD(L'9'),                            // KEYPAD_9_PAGEUP
    STEP_4_NUMPAD(L'0'),                            // KEYPAD_0_INSERT
    STEP_4_NUMPAD(L'.'),                            // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', 0),            // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),            // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                               // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                       // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapLATIN_AMERICA[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapUSA[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A'),     // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B'),     // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C'),     // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D'),     // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E'),     // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F'),     // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G'),     // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H'),     // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I'),     // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J'),     // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K'),     // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L'),     // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M'),     // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N'),     // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O'),     // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P'),     // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q'),     // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R'),     // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S'),     // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T'),     // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U'),     // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V'),     // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W'),     // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X'),     // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y'),     // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z'),     // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!'),     // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'@'),     // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#'),     // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$'),     // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%'),     // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'^'),     // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'&'),     // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'*'),     // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L'('),     // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L')'),     // KEYBOARD_0_CLOSEPARENS
    STEP_3_SYMBOL(SPECIAL(ENTER)),        // KEYBOARD_ENTER
    STEP_3_SYMBOL(SPECIAL(ESC)),          // KEYBOARD_ESCAPE
    STEP_3_SYMBOL(SPECIAL(BACKSPACE)),    // KEYBOARD_BACKSPACE
    STEP_3_SYMBOL(SPECIAL(TAB)),          // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' '),     // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'_'),     // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'=', L'+'),     // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'[', L'{'),     // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L']', L'}'),     // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|'),    // KEYBOARD_BACKSLASH_BAR
    STEP_3_SYMBOL(0),                     // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L':'),     // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\'', L'"'),    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'`', L'~'),     // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L'<'),     // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'>'),     // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'/', L'?'),     // KEYBOARD_SLASH_QUESTION
    STEP_3_CNTROL(SPECIAL(CAPSLOCK)),     // KEYBOARD_CAPSLOCK
    STEP_3_SYMBOL(SPECIAL(F1)),           // KEYBOARD_F1
    STEP_3_SYMBOL(SPECIAL(F2)),           // KEYBOARD_F2
    STEP_3_SYMBOL(SPECIAL(F3)),           // KEYBOARD_F3
    STEP_3_SYMBOL(SPECIAL(F4)),           // KEYBOARD_F4
    STEP_3_SYMBOL(SPECIAL(F5)),           // KEYBOARD_F5
    STEP_3_SYMBOL(SPECIAL(F6)),           // KEYBOARD_F6
    STEP_3_SYMBOL(SPECIAL(F7)),           // KEYBOARD_F7
    STEP_3_SYMBOL(SPECIAL(F8)),           // KEYBOARD_F8
    STEP_3_SYMBOL(SPECIAL(F9)),           // KEYBOARD_F9
    STEP_3_SYMBOL(SPECIAL(F10)),          // KEYBOARD_F10
    STEP_3_SYMBOL(SPECIAL(F11)),          // KEYBOARD_F11
    STEP_3_SYMBOL(SPECIAL(F12)),          // KEYBOARD_F12
    STEP_3_CNTROL(SPECIAL(PRINTSCREEN)),  // KEYBOARD_PRINTSCREEN
    STEP_3_CNTROL(SPECIAL(SCROLLLOCK)),   // KEYBOARD_SCROLL_LOCK
    STEP_3_CNTROL(SPECIAL(PAUSE)),        // KEYBOARD_PAUSE
    STEP_3_SYMBOL(SPECIAL(INSERT)),       // KEYBOARD_INSERT
    STEP_3_SYMBOL(SPECIAL(HOME)),         // KEYBOARD_HOME
    STEP_3_SYMBOL(SPECIAL(PAGEUP)),       // KEYBOARD_PAGEUP
    STEP_3_SYMBOL(SPECIAL(DELETE)),       // KEYBOARD_DELETE
    STEP_3_SYMBOL(SPECIAL(END)),          // KEYBOARD_END
    STEP_3_SYMBOL(SPECIAL(PAGEDOWN)),     // KEYBOARD_PAGEDOWN
    STEP_3_SYMBOL(SPECIAL(RIGHTARROW)),   // KEYBOARD_RIGHTARROW
    STEP_3_SYMBOL(SPECIAL(LEFTARROW)),    // KEYBOARD_LEFTARROW
    STEP_3_SYMBOL(SPECIAL(DOWNARROW)),    // KEYBOARD_DOWNARROW
    STEP_3_SYMBOL(SPECIAL(UPARROW)),      // KEYBOARD_UPARROW
    STEP_3_CNTROL(SPECIAL(NUMLOCK)),      // KEYPAD_NUMLOCK
    STEP_3_SYMBOL(NPD(L'/')),             // KEYPAD_DIVIDE
    STEP_3_SYMBOL(NPD(L'*')),             // KEYPAD_MULTIPLY
    STEP_3_SYMBOL(NPD(L'-')),             // KEYPAD_MINUS
    STEP_3_SYMBOL(NPD(L'+')),             // KEYPAD_PLUS
    STEP_3_SYMBOL(NPD(L'\r')),            // KEYPAD_ENTER
    STEP_3_NUMPAD(L'1'),                  // KEYPAD_1_END
    STEP_3_NUMPAD(L'2'),                  // KEYPAD_2_DOWNARROW
    STEP_3_NUMPAD(L'3'),                  // KEYPAD_3_PAGEDOWN
    STEP_3_NUMPAD(L'4'),                  // KEYPAD_4_LEFTARROW
    STEP_3_NUMPAD(L'5'),                  // KEYPAD_5
    STEP_3_NUMPAD(L'6'),                  // KEYPAD_6_RIGHTARROW
    STEP_3_NUMPAD(L'7'),                  // KEYPAD_7_HOME
    STEP_3_NUMPAD(L'8'),                  // KEYPAD_8_UPARROW
    STEP_3_NUMPAD(L'9'),                  // KEYPAD_9_PAGEUP
    STEP_3_NUMPAD(L'0'),                  // KEYPAD_0_INSERT
    STEP_3_NUMPAD(L'.'),                  // KEYPAD_PERIOD_DELETE
    STEP_3_SYMBOL(0),                     // KEYBOARD_NON_US_SLASH
    STEP_3_CNTROL(SPECIAL(APPLICATION)),  // KEYBOARD_APPLICATION
    STEP_3_SYMBOL(0),                     // KEYBOARD_POWER
    STEP_3_SYMBOL(NPD(L'=')),             // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapUSA[] = {
    STEP_3_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_3_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_3_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_3_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_3_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_3_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_3_CNTROL(SPECIAL(ALT)),    // KEYBOARD_R_ALT
    STEP_3_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
