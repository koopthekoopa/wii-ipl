#include <revolution/kbd.h>

#include <private/kbd/keymap_macros.h>

static wchar_t kbdKeyMapDENMARK[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                    // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                    // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),                    // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                    // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),                 // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                    // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                    // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                    // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                    // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                    // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                    // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                    // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),                 // KEYBOARD_M
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
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),                    // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                    // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),                    // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0),                    // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),                 // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'£'),                 // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'¤', L'$'),                 // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'€'),                 // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0),                    // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', L'{'),                 // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'['),                 // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L']'),                 // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', L'}'),                 // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                          // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                            // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                      // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                            // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),                 // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'+', L'?', 0),                    // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0300', L'|'),       // KEYBOARD_EQUAL_PLUS (Accent ^`)
    KEYMAP_ENTRY(LETTER, L'å', L'Å', 0),                    // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'\u0308', L'\u0302', L'\u0303'),  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                       // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'*', 0),                   // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(LETTER, L'æ', L'Æ', 0),                    // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'ø', L'Ø', 0),                    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'½', L'§', 0),                    // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),                    // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0),                    // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),                    // KEYBOARD_SLASH_QUESTION
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
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0),    // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', L'\\'),                // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                    // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                       // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                               // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapDENMARK[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapFRANCE[] = {
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0),            // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),            // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),            // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),            // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),         // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),            // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),            // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),            // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),            // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),            // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),            // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),            // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L',', L'?', 0),            // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),            // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),            // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),            // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),            // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0),            // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0),            // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),            // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),            // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),            // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),            // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),            // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),            // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),            // KEYBOARD_Z
    KEYMAP_ENTRY(LETTER, L'&', L'1', 0),            // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(LETTER, L'é', L'2', L'\u0303'),    // KEYBOARD_2_AT
    KEYMAP_ENTRY(LETTER, L'"', L'3', L'#'),         // KEYBOARD_3_HASH
    KEYMAP_ENTRY(LETTER, L'\'', L'4', L'{'),        // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(LETTER, L'(', L'5', L'['),         // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(LETTER, L'-', L'6', L'|'),         // KEYBOARD_6_CARET
    KEYMAP_ENTRY(LETTER, L'è', L'7', L'\u0300'),    // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(LETTER, L'_', L'8', L'\\'),        // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(LETTER, L'ç', L'9', L'^'),         // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(LETTER, L'à', L'0', L'@'),         // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                  // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                    // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),              // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                    // KEYBOARD_TAB
    STEP_4_SYMBOL(L' '),                            // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(LETTER, L')', L'°', L']'),         // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(LETTER, L'=', L'+', L'}'),         // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(LETTER, L'\u0302', L'\u0308', 0),  // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(LETTER, L'$', L'£', L'¤'),         // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                               // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(LETTER, L'*', L'µ', 0),            // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0),            // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'ù', L'%', 0),            // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'²', 0, 0),               // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(LETTER, L';', L'.', 0),            // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(LETTER, L':', L'/', 0),            // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(LETTER, L'!', L'§', 0),            // KEYBOARD_SLASH_QUESTION
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
static wchar_t kbdModifierMapFRANCE[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapGERMANY[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                  // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                  // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),                  // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                  // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),               // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                  // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                  // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                  // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                  // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                  // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                  // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                  // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),               // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),                  // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),                  // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),                  // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', L'@'),               // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0),                  // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0),                  // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),                  // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),                  // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),                  // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),                  // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),                  // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),                  // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                  // KEYBOARD_Z
    KEYMAP_ENTRY(LETTER, L'1', L'!', 0),                  // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(LETTER, L'2', L'"', L'²'),               // KEYBOARD_2_AT
    KEYMAP_ENTRY(LETTER, L'3', L'§', L'³'),               // KEYBOARD_3_HASH
    KEYMAP_ENTRY(LETTER, L'4', L'$', 0),                  // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(LETTER, L'5', L'%', 0),                  // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(LETTER, L'6', L'&', 0),                  // KEYBOARD_6_CARET
    KEYMAP_ENTRY(LETTER, L'7', L'/', L'{'),               // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(LETTER, L'8', L'(', L'['),               // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(LETTER, L'9', L')', L']'),               // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(LETTER, L'0', L'=', L'}'),               // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                        // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                          // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                    // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                          // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),               // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(LETTER, L'ß', L'?', L'\\'),              // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0300', 0),        // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(LETTER, L'ü', L'Ü', 0),                  // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(LETTER, L'+', L'*', L'~'),               // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                     // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(LETTER, L'#', L'\'', 0),                 // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(LETTER, L'ö', L'Ö', 0),                  // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'ä', L'Ä', 0),                  // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'\u0302', L'°', 0),             // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(LETTER, L',', L';', 0),                  // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(LETTER, L'.', L':', 0),                  // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),                  // KEYBOARD_SLASH_QUESTION
    STEP_4_CNTROL(SPECIAL(CAPSLOCK)),                     // KEYBOARD_CAPSLOCK
    STEP_4_SYMBOL(SPECIAL(F1)),                           // KEYBOARD_F1
    STEP_4_SYMBOL(SPECIAL(F2)),                           // KEYBOARD_F2
    STEP_4_SYMBOL(SPECIAL(F3)),                           // KEYBOARD_F3
    STEP_4_SYMBOL(SPECIAL(F4)),                           // KEYBOARD_F4
    STEP_4_SYMBOL(SPECIAL(F5)),                           // KEYBOARD_F5
    STEP_4_SYMBOL(SPECIAL(F6)),                           // KEYBOARD_F6
    STEP_4_SYMBOL(SPECIAL(F7)),                           // KEYBOARD_F7
    STEP_4_SYMBOL(SPECIAL(F8)),                           // KEYBOARD_F8
    STEP_4_SYMBOL(SPECIAL(F9)),                           // KEYBOARD_F9
    STEP_4_SYMBOL(SPECIAL(F10)),                          // KEYBOARD_F10
    STEP_4_SYMBOL(SPECIAL(F11)),                          // KEYBOARD_F11
    STEP_4_SYMBOL(SPECIAL(F12)),                          // KEYBOARD_F12
    STEP_4_CNTROL(SPECIAL(PRINTSCREEN)),                  // KEYBOARD_PRINTSCREEN
    STEP_4_CNTROL(SPECIAL(SCROLLLOCK)),                   // KEYBOARD_SCROLL_LOCK
    STEP_4_CNTROL(SPECIAL(PAUSE)),                        // KEYBOARD_PAUSE
    STEP_4_SYMBOL(SPECIAL(INSERT)),                       // KEYBOARD_INSERT
    STEP_4_SYMBOL(SPECIAL(HOME)),                         // KEYBOARD_HOME
    STEP_4_SYMBOL(SPECIAL(PAGEUP)),                       // KEYBOARD_PAGEUP
    STEP_4_SYMBOL(SPECIAL(DELETE)),                       // KEYBOARD_DELETE
    STEP_4_SYMBOL(SPECIAL(END)),                          // KEYBOARD_END
    STEP_4_SYMBOL(SPECIAL(PAGEDOWN)),                     // KEYBOARD_PAGEDOWN
    STEP_4_SYMBOL(SPECIAL(RIGHTARROW)),                   // KEYBOARD_RIGHTARROW
    STEP_4_SYMBOL(SPECIAL(LEFTARROW)),                    // KEYBOARD_LEFTARROW
    STEP_4_SYMBOL(SPECIAL(DOWNARROW)),                    // KEYBOARD_DOWNARROW
    STEP_4_SYMBOL(SPECIAL(UPARROW)),                      // KEYBOARD_UPARROW
    STEP_4_CNTROL(SPECIAL(NUMLOCK)),                      // KEYPAD_NUMLOCK
    STEP_4_SYMBOL(NPD(L'/')),                             // KEYPAD_DIVIDE
    STEP_4_SYMBOL(NPD(L'*')),                             // KEYPAD_MULTIPLY
    STEP_4_SYMBOL(NPD(L'-')),                             // KEYPAD_MINUS
    STEP_4_SYMBOL(NPD(L'+')),                             // KEYPAD_PLUS
    STEP_4_SYMBOL(NPD(L'\r')),                            // KEYPAD_ENTER
    STEP_4_NUMPAD(L'1'),                                  // KEYPAD_1_END
    STEP_4_NUMPAD(L'2'),                                  // KEYPAD_2_DOWNARROW
    STEP_4_NUMPAD(L'3'),                                  // KEYPAD_3_PAGEDOWN
    STEP_4_NUMPAD(L'4'),                                  // KEYPAD_4_LEFTARROW
    STEP_4_NUMPAD(L'5'),                                  // KEYPAD_5
    STEP_4_NUMPAD(L'6'),                                  // KEYPAD_6_RIGHTARROW
    STEP_4_NUMPAD(L'7'),                                  // KEYPAD_7_HOME
    STEP_4_NUMPAD(L'8'),                                  // KEYPAD_8_UPARROW
    STEP_4_NUMPAD(L'9'),                                  // KEYPAD_9_PAGEUP
    STEP_4_NUMPAD(L'0'),                                  // KEYPAD_0_INSERT
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0),  // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', L'|'),               // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                  // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                     // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                             // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapGERMANY[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapGREECE[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', L'α', L'Α', 0),                                  // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', L'β', L'Β', 0),                                  // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', L'ψ', L'Ψ', 0),                                  // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', L'δ', L'Δ', 0),                                  // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'ε', L'Ε', L'€'),                               // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', L'φ', L'Φ', 0),                                  // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', L'γ', L'Γ', 0),                                  // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', L'η', L'Η', 0),                                  // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', L'ι', L'Ι', 0),                                  // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', L'ξ', L'Ξ', 0),                                  // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', L'κ', L'Κ', 0),                                  // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', L'λ', L'Λ', 0),                                  // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'μ', L'Μ', 0),                                  // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', L'ν', L'Ν', 0),                                  // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', L'ο', L'Ο', 0),                                  // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', L'π', L'Π', 0),                                  // KEYBOARD_P
    KEYMAP_ENTRY(SIMPLE, L'q', L'Q', L'·', L'—', 0),                                  // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', L'ρ', L'Ρ', 0),                                  // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', L'σ', L'Σ', 0),                                  // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', L'τ', L'Τ', 0),                                  // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', L'θ', L'Θ', 0),                                  // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', L'ω', L'Ω', 0),                                  // KEYBOARD_V
    KEYMAP_ENTRY(SIMPLE, L'w', L'W', L'ς', L'¦', 0),                                  // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', L'χ', L'Χ', 0),                                  // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', L'υ', L'Υ', 0),                                  // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', L'ζ', L'Ζ', 0),                                  // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'1', L'!', 0),                                  // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'2', L'"', 0),                                  // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'3', L'£', 0),                                  // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'4', L'$', 0),                                  // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'5', L'%', 0),                                  // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', L'6', L'¬', 0),                                  // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', L'7', L'/', 0),                                  // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'8', L'(', 0),                                  // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L'9', L')', 0),                                  // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', L'0', L'=', 0),                                  // KEYBOARD_0_CLOSEPARENS
    STEP_6_SYMBOL(SPECIAL(ENTER)),                                                    // KEYBOARD_ENTER
    STEP_6_SYMBOL(SPECIAL(ESC)),                                                      // KEYBOARD_ESCAPE
    STEP_6_SYMBOL(SPECIAL(BACKSPACE)),                                                // KEYBOARD_BACKSPACE
    STEP_6_SYMBOL(SPECIAL(TAB)),                                                      // KEYBOARD_TAB
    STEP_6_SYMBOL(L' '),                                                              // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'?', L'\'', L'°', 0),                                // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'+', L'*', L'+', L'*', 0),                                  // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'[', L'{', L'[', L'«', 0),                                  // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L']', L'}', L']', L'»', 0),                                  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_6_SYMBOL(0),                                                                 // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'\u0300', L'@', L'²', L'³', 0),                             // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0308', L'\u0301', L'\u0308', L'̈́'),            // KEYBOARD_SEMICOLON_COLON (Accents __ ̈́)
    KEYMAP_ENTRY(SYMBOL, L'\u0302', L'\u0303', L'’', L'‘', 0),                        // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', L'½', L'±', 0),                                 // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', L',', L';', L'<'),                               // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', L'.', L':', L'>'),                               // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', L'-', L'_', L'-'),                               // KEYBOARD_SLASH_QUESTION
    STEP_6_CNTROL(SPECIAL(CAPSLOCK)),                                                 // KEYBOARD_CAPSLOCK
    STEP_6_SYMBOL(SPECIAL(F1)),                                                       // KEYBOARD_F1
    STEP_6_SYMBOL(SPECIAL(F2)),                                                       // KEYBOARD_F2
    STEP_6_SYMBOL(SPECIAL(F3)),                                                       // KEYBOARD_F3
    STEP_6_SYMBOL(SPECIAL(F4)),                                                       // KEYBOARD_F4
    STEP_6_SYMBOL(SPECIAL(F5)),                                                       // KEYBOARD_F5
    STEP_6_SYMBOL(SPECIAL(F6)),                                                       // KEYBOARD_F6
    STEP_6_SYMBOL(SPECIAL(F7)),                                                       // KEYBOARD_F7
    STEP_6_SYMBOL(SPECIAL(F8)),                                                       // KEYBOARD_F8
    STEP_6_SYMBOL(SPECIAL(F9)),                                                       // KEYBOARD_F9
    STEP_6_SYMBOL(SPECIAL(F10)),                                                      // KEYBOARD_F10
    STEP_6_SYMBOL(SPECIAL(F11)),                                                      // KEYBOARD_F11
    STEP_6_SYMBOL(SPECIAL(F12)),                                                      // KEYBOARD_F12
    STEP_6_CNTROL(SPECIAL(PRINTSCREEN)),                                              // KEYBOARD_PRINTSCREEN
    STEP_6_CNTROL(SPECIAL(SCROLLLOCK)),                                               // KEYBOARD_SCROLL_LOCK
    STEP_6_CNTROL(SPECIAL(PAUSE)),                                                    // KEYBOARD_PAUSE
    STEP_6_SYMBOL(SPECIAL(INSERT)),                                                   // KEYBOARD_INSERT
    STEP_6_SYMBOL(SPECIAL(HOME)),                                                     // KEYBOARD_HOME
    STEP_6_SYMBOL(SPECIAL(PAGEUP)),                                                   // KEYBOARD_PAGEUP
    STEP_6_SYMBOL(SPECIAL(DELETE)),                                                   // KEYBOARD_DELETE
    STEP_6_SYMBOL(SPECIAL(END)),                                                      // KEYBOARD_END
    STEP_6_SYMBOL(SPECIAL(PAGEDOWN)),                                                 // KEYBOARD_PAGEDOWN
    STEP_6_SYMBOL(SPECIAL(RIGHTARROW)),                                               // KEYBOARD_RIGHTARROW
    STEP_6_SYMBOL(SPECIAL(LEFTARROW)),                                                // KEYBOARD_LEFTARROW
    STEP_6_SYMBOL(SPECIAL(DOWNARROW)),                                                // KEYBOARD_DOWNARROW
    STEP_6_SYMBOL(SPECIAL(UPARROW)),                                                  // KEYBOARD_UPARROW
    STEP_6_CNTROL(SPECIAL(NUMLOCK)),                                                  // KEYPAD_NUMLOCK
    STEP_6_SYMBOL(NPD(L'/')),                                                         // KEYPAD_DIVIDE
    STEP_6_SYMBOL(NPD(L'*')),                                                         // KEYPAD_MULTIPLY
    STEP_6_SYMBOL(NPD(L'-')),                                                         // KEYPAD_MINUS
    STEP_6_SYMBOL(NPD(L'+')),                                                         // KEYPAD_PLUS
    STEP_6_SYMBOL(NPD(L'\r')),                                                        // KEYPAD_ENTER
    STEP_6_NUMPAD(L'1'),                                                              // KEYPAD_1_END
    STEP_6_NUMPAD(L'2'),                                                              // KEYPAD_2_DOWNARROW
    STEP_6_NUMPAD(L'3'),                                                              // KEYPAD_3_PAGEDOWN
    STEP_6_NUMPAD(L'4'),                                                              // KEYPAD_4_LEFTARROW
    STEP_6_NUMPAD(L'5'),                                                              // KEYPAD_5
    STEP_6_NUMPAD(L'6'),                                                              // KEYPAD_6_RIGHTARROW
    STEP_6_NUMPAD(L'7'),                                                              // KEYPAD_7_HOME
    STEP_6_NUMPAD(L'8'),                                                              // KEYPAD_8_UPARROW
    STEP_6_NUMPAD(L'9'),                                                              // KEYPAD_9_PAGEUP
    STEP_6_NUMPAD(L'0'),                                                              // KEYPAD_0_INSERT
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), NPD_SHIFT(L'.'), NPD(L','), 0),  // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', L'§', L'©', 0),                                  // KEYBOARD_NON_US_SLASH
    STEP_6_CNTROL(SPECIAL(APPLICATION)),                                              // KEYBOARD_APPLICATION
    STEP_6_SYMBOL(0),                                                                 // KEYBOARD_POWER
    STEP_6_SYMBOL(NPD(L'=')),                                                         // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapGREECE[] = {
    STEP_6_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_6_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_6_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_6_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_6_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_6_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_6_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_6_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapITALY[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0, 0),                  // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0, 0),                  // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0, 0),                  // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0, 0),                  // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€', 0),               // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0, 0),                  // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0, 0),                  // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0, 0),                  // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0, 0),                  // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0, 0),                  // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0, 0),                  // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0, 0),                  // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0, 0),                  // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0, 0),                  // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0, 0),                  // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0, 0),                  // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0, 0),                  // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0, 0),                  // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0, 0),                  // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0, 0),                  // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0, 0),                  // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0, 0),                  // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0, 0),                  // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0, 0),                  // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0, 0),                  // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0, 0),                  // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0, 0),                  // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', 0, 0),                  // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'£', 0, 0),                  // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', 0, 0),                  // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'€', 0),               // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0, 0),                  // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', 0, 0),                  // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', 0, 0),                  // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', 0, 0),                  // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', 0, 0),                  // KEYBOARD_0_CLOSEPARENS
    STEP_5_SYMBOL(SPECIAL(ENTER)),                           // KEYBOARD_ENTER
    STEP_5_SYMBOL(SPECIAL(ESC)),                             // KEYBOARD_ESCAPE
    STEP_5_SYMBOL(SPECIAL(BACKSPACE)),                       // KEYBOARD_BACKSPACE
    STEP_5_SYMBOL(SPECIAL(TAB)),                             // KEYBOARD_TAB
    STEP_5_SYMBOL(L' '),                                     // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'?', 0, 0),                 // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'ì', L'^', L'~', 0),               // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'è', L'é', L'[', L'{'),            // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'+', L'*', L']', L'}'),            // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_5_SYMBOL(0),                                        // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'ù', L'§', L'`', 0),               // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L'ò', L'ç', L'@', 0),               // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'à', L'°', L'#', 0),               // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', 0, 0),                 // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0, 0),                  // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0, 0),                  // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0, 0),                  // KEYBOARD_SLASH_QUESTION
    STEP_5_CNTROL(SPECIAL(CAPSLOCK)),                        // KEYBOARD_CAPSLOCK
    STEP_5_SYMBOL(SPECIAL(F1)),                              // KEYBOARD_F1
    STEP_5_SYMBOL(SPECIAL(F2)),                              // KEYBOARD_F2
    STEP_5_SYMBOL(SPECIAL(F3)),                              // KEYBOARD_F3
    STEP_5_SYMBOL(SPECIAL(F4)),                              // KEYBOARD_F4
    STEP_5_SYMBOL(SPECIAL(F5)),                              // KEYBOARD_F5
    STEP_5_SYMBOL(SPECIAL(F6)),                              // KEYBOARD_F6
    STEP_5_SYMBOL(SPECIAL(F7)),                              // KEYBOARD_F7
    STEP_5_SYMBOL(SPECIAL(F8)),                              // KEYBOARD_F8
    STEP_5_SYMBOL(SPECIAL(F9)),                              // KEYBOARD_F9
    STEP_5_SYMBOL(SPECIAL(F10)),                             // KEYBOARD_F10
    STEP_5_SYMBOL(SPECIAL(F11)),                             // KEYBOARD_F11
    STEP_5_SYMBOL(SPECIAL(F12)),                             // KEYBOARD_F12
    STEP_5_CNTROL(SPECIAL(PRINTSCREEN)),                     // KEYBOARD_PRINTSCREEN
    STEP_5_CNTROL(SPECIAL(SCROLLLOCK)),                      // KEYBOARD_SCROLL_LOCK
    STEP_5_CNTROL(SPECIAL(PAUSE)),                           // KEYBOARD_PAUSE
    STEP_5_SYMBOL(SPECIAL(INSERT)),                          // KEYBOARD_INSERT
    STEP_5_SYMBOL(SPECIAL(HOME)),                            // KEYBOARD_HOME
    STEP_5_SYMBOL(SPECIAL(PAGEUP)),                          // KEYBOARD_PAGEUP
    STEP_5_SYMBOL(SPECIAL(DELETE)),                          // KEYBOARD_DELETE
    STEP_5_SYMBOL(SPECIAL(END)),                             // KEYBOARD_END
    STEP_5_SYMBOL(SPECIAL(PAGEDOWN)),                        // KEYBOARD_PAGEDOWN
    STEP_5_SYMBOL(SPECIAL(RIGHTARROW)),                      // KEYBOARD_RIGHTARROW
    STEP_5_SYMBOL(SPECIAL(LEFTARROW)),                       // KEYBOARD_LEFTARROW
    STEP_5_SYMBOL(SPECIAL(DOWNARROW)),                       // KEYBOARD_DOWNARROW
    STEP_5_SYMBOL(SPECIAL(UPARROW)),                         // KEYBOARD_UPARROW
    STEP_5_CNTROL(SPECIAL(NUMLOCK)),                         // KEYPAD_NUMLOCK
    STEP_5_SYMBOL(NPD(L'/')),                                // KEYPAD_DIVIDE
    STEP_5_SYMBOL(NPD(L'*')),                                // KEYPAD_MULTIPLY
    STEP_5_SYMBOL(NPD(L'-')),                                // KEYPAD_MINUS
    STEP_5_SYMBOL(NPD(L'+')),                                // KEYPAD_PLUS
    STEP_5_SYMBOL(NPD(L'\r')),                               // KEYPAD_ENTER
    STEP_5_NUMPAD(L'1'),                                     // KEYPAD_1_END
    STEP_5_NUMPAD(L'2'),                                     // KEYPAD_2_DOWNARROW
    STEP_5_NUMPAD(L'3'),                                     // KEYPAD_3_PAGEDOWN
    STEP_5_NUMPAD(L'4'),                                     // KEYPAD_4_LEFTARROW
    STEP_5_NUMPAD(L'5'),                                     // KEYPAD_5
    STEP_5_NUMPAD(L'6'),                                     // KEYPAD_6_RIGHTARROW
    STEP_5_NUMPAD(L'7'),                                     // KEYPAD_7_HOME
    STEP_5_NUMPAD(L'8'),                                     // KEYPAD_8_UPARROW
    STEP_5_NUMPAD(L'9'),                                     // KEYPAD_9_PAGEUP
    STEP_5_NUMPAD(L'0'),                                     // KEYPAD_0_INSERT
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0, 0),  // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', 0, 0),                  // KEYBOARD_NON_US_SLASH
    STEP_5_CNTROL(SPECIAL(APPLICATION)),                     // KEYBOARD_APPLICATION
    STEP_5_SYMBOL(0),                                        // KEYBOARD_POWER
    STEP_5_SYMBOL(NPD(L'=')),                                // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapITALY[] = {
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_5_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_5_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapNETHERLANDS[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                  // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                  // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', L'¢'),               // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                  // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),               // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                  // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                  // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                  // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                  // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                  // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                  // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                  // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),               // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),                  // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),                  // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),                  // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0),                  // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', L'¶'),               // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', L'ß'),               // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0),                  // KEYBOARD_T
    KEYMAP_ENTRY(LETTER, L'u', L'U', 0),                  // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0),                  // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0),                  // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', L'»'),               // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                  // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', L'«'),               // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'¹'),               // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'²'),               // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'³'),               // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'¼'),               // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'½'),               // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', L'¾'),               // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'_', L'£'),               // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'{'),               // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L'}'),               // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'\'', 0),                 // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                        // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                          // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                    // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                          // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),               // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'/', L'?', L'\\'),              // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'°', L'\u0303', L'\u0327'),     // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'\u0308', L'\u0302', 0),        // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'*', L'|', 0),                  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                     // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', 0),                  // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L'+', L'±', 0),                  // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0300', 0),        // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'@', L'§', L'¬'),               // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),                  // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', L'·'),               // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'=', 0),                  // KEYBOARD_SLASH_QUESTION
    STEP_4_CNTROL(SPECIAL(CAPSLOCK)),                     // KEYBOARD_CAPSLOCK
    STEP_4_SYMBOL(SPECIAL(F1)),                           // KEYBOARD_F1
    STEP_4_SYMBOL(SPECIAL(F2)),                           // KEYBOARD_F2
    STEP_4_SYMBOL(SPECIAL(F3)),                           // KEYBOARD_F3
    STEP_4_SYMBOL(SPECIAL(F4)),                           // KEYBOARD_F4
    STEP_4_SYMBOL(SPECIAL(F5)),                           // KEYBOARD_F5
    STEP_4_SYMBOL(SPECIAL(F6)),                           // KEYBOARD_F6
    STEP_4_SYMBOL(SPECIAL(F7)),                           // KEYBOARD_F7
    STEP_4_SYMBOL(SPECIAL(F8)),                           // KEYBOARD_F8
    STEP_4_SYMBOL(SPECIAL(F9)),                           // KEYBOARD_F9
    STEP_4_SYMBOL(SPECIAL(F10)),                          // KEYBOARD_F10
    STEP_4_SYMBOL(SPECIAL(F11)),                          // KEYBOARD_F11
    STEP_4_SYMBOL(SPECIAL(F12)),                          // KEYBOARD_F12
    STEP_4_CNTROL(SPECIAL(PRINTSCREEN)),                  // KEYBOARD_PRINTSCREEN
    STEP_4_CNTROL(SPECIAL(SCROLLLOCK)),                   // KEYBOARD_SCROLL_LOCK
    STEP_4_CNTROL(SPECIAL(PAUSE)),                        // KEYBOARD_PAUSE
    STEP_4_SYMBOL(SPECIAL(INSERT)),                       // KEYBOARD_INSERT
    STEP_4_SYMBOL(SPECIAL(HOME)),                         // KEYBOARD_HOME
    STEP_4_SYMBOL(SPECIAL(PAGEUP)),                       // KEYBOARD_PAGEUP
    STEP_4_SYMBOL(SPECIAL(DELETE)),                       // KEYBOARD_DELETE
    STEP_4_SYMBOL(SPECIAL(END)),                          // KEYBOARD_END
    STEP_4_SYMBOL(SPECIAL(PAGEDOWN)),                     // KEYBOARD_PAGEDOWN
    STEP_4_SYMBOL(SPECIAL(RIGHTARROW)),                   // KEYBOARD_RIGHTARROW
    STEP_4_SYMBOL(SPECIAL(LEFTARROW)),                    // KEYBOARD_LEFTARROW
    STEP_4_SYMBOL(SPECIAL(DOWNARROW)),                    // KEYBOARD_DOWNARROW
    STEP_4_SYMBOL(SPECIAL(UPARROW)),                      // KEYBOARD_UPARROW
    STEP_4_CNTROL(SPECIAL(NUMLOCK)),                      // KEYPAD_NUMLOCK
    STEP_4_SYMBOL(NPD(L'/')),                             // KEYPAD_DIVIDE
    STEP_4_SYMBOL(NPD(L'*')),                             // KEYPAD_MULTIPLY
    STEP_4_SYMBOL(NPD(L'-')),                             // KEYPAD_MINUS
    STEP_4_SYMBOL(NPD(L'+')),                             // KEYPAD_PLUS
    STEP_4_SYMBOL(NPD(L'\r')),                            // KEYPAD_ENTER
    STEP_4_NUMPAD(L'1'),                                  // KEYPAD_1_END
    STEP_4_NUMPAD(L'2'),                                  // KEYPAD_2_DOWNARROW
    STEP_4_NUMPAD(L'3'),                                  // KEYPAD_3_PAGEDOWN
    STEP_4_NUMPAD(L'4'),                                  // KEYPAD_4_LEFTARROW
    STEP_4_NUMPAD(L'5'),                                  // KEYPAD_5
    STEP_4_NUMPAD(L'6'),                                  // KEYPAD_6_RIGHTARROW
    STEP_4_NUMPAD(L'7'),                                  // KEYPAD_7_HOME
    STEP_4_NUMPAD(L'8'),                                  // KEYPAD_8_UPARROW
    STEP_4_NUMPAD(L'9'),                                  // KEYPAD_9_PAGEUP
    STEP_4_NUMPAD(L'0'),                                  // KEYPAD_0_INSERT
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0),  // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L']', L'[', L'¦'),               // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                  // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                     // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                             // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapNETHERLANDS[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapNORWAY[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                    // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                    // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),                    // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                    // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),                 // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                    // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                    // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                    // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                    // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                    // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                    // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                    // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),                 // KEYBOARD_M
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
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),                    // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                    // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),                    // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0),                    // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),                 // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'£'),                 // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'¤', L'$'),                 // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', 0),                    // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0),                    // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', L'{'),                 // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'['),                 // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L']'),                 // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', L'}'),                 // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                          // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                            // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                      // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                            // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),                 // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'+', L'?', 0),                    // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'\u0300', L'\u0301'),      // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(LETTER, L'å', L'Å', 0),                    // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'\u0308', L'\u0302', L'\u0303'),  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                       // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'*', 0),                   // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(LETTER, L'ø', L'Ø', 0),                    // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'æ', L'Æ', 0),                    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'|', L'§', 0),                    // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),                    // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0),                    // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),                    // KEYBOARD_SLASH_QUESTION
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
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0),    // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', 0),                    // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                    // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                       // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                               // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapNORWAY[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapPORTUGAL[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),            // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),            // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),            // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),            // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),         // KEYBOARD_E
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
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0),            // KEYBOARD_Q
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
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),         // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'£'),         // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'§'),         // KEYBOARD_4_DOLLAR (Accent ~)
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', 0),            // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0),            // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', L'{'),         // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'['),         // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L']'),         // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', L'}'),         // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                  // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                    // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),              // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                    // KEYBOARD_TAB
    STEP_4_SYMBOL(L' '),                            // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'?', 0),           // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'«', L'»', 0),            // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'+', L'*', L'\u0308'),    // KEYBOARD_OPENBRACKET_OPENBRACE (Accent `^)
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0300', 0),  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                               // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'\u0303', L'\u0302', 0),  // KEYBOARD_NON_US_HASH (Accent `)
    KEYMAP_ENTRY(LETTER, L'ç', L'Ç', 0),            // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'º', L'ª', 0),            // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', 0),           // KEYBOARD_BACKTICK_TILDE
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
static wchar_t kbdModifierMapPORTUGAL[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapSPAIN[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),               // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),               // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),               // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),               // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),            // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),               // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),               // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),               // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),               // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),               // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),               // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),               // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0),               // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0),               // KEYBOARD_N
    KEYMAP_ENTRY(LETTER, L'o', L'O', 0),               // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0),               // KEYBOARD_P
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
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'|'),            // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),            // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'·', L'#'),            // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'\u0303'),       // KEYBOARD_4_DOLLAR (Accent ~)
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'€'),            // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', L'¬'),            // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', 0),               // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', 0),               // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', 0),               // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', 0),               // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                     // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                       // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                 // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                       // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),            // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'?', 0),              // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'¡', L'¿', 0),               // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'\u0300', L'\u0302', L'['),  // KEYBOARD_OPENBRACKET_OPENBRACE (Accent `^)
    KEYMAP_ENTRY(SYMBOL, L'+', L'*', L']'),            // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                  // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(LETTER, L'ç', L'Ç', L'}'),            // KEYBOARD_NON_US_HASH (Accent `)
    KEYMAP_ENTRY(LETTER, L'ñ', L'Ñ', 0),               // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0308', L'{'),  // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'º', L'ª', L'\\'),           // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),               // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0),               // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),               // KEYBOARD_SLASH_QUESTION
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
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', 0),               // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),               // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                  // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                          // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapSPAIN[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapSWEDEN_FINLAND[] = {
    KEYMAP_ENTRY(LETTER, L'a', L'A', 0),                    // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0),                    // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0),                    // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0),                    // KEYBOARD_D
    KEYMAP_ENTRY(LETTER, L'e', L'E', L'€'),                 // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0),                    // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0),                    // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0),                    // KEYBOARD_H
    KEYMAP_ENTRY(LETTER, L'i', L'I', 0),                    // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0),                    // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0),                    // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0),                    // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ'),                 // KEYBOARD_M
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
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0),                    // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0),                    // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0),                    // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0),                    // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', L'@'),                 // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'£'),                 // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'¤', L'$'),                 // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'€'),                 // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'&', 0),                    // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'/', L'{'),                 // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'(', L'['),                 // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L')', L']'),                 // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L'=', L'}'),                 // KEYBOARD_0_CLOSEPARENS
    STEP_4_SYMBOL(SPECIAL(ENTER)),                          // KEYBOARD_ENTER
    STEP_4_SYMBOL(SPECIAL(ESC)),                            // KEYBOARD_ESCAPE
    STEP_4_SYMBOL(SPECIAL(BACKSPACE)),                      // KEYBOARD_BACKSPACE
    STEP_4_SYMBOL(SPECIAL(TAB)),                            // KEYBOARD_TAB
    KEYMAP_ENTRY(SYMBOL, L' ', L' ', L' '),                 // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'+', L'?', L'\\'),                // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'\u0301', L'\u0300', 0),          // KEYBOARD_EQUAL_PLUS (Accent ^`)
    KEYMAP_ENTRY(LETTER, L'å', L'Å', 0),                    // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L'\u0308', L'\u0302', L'\u0303'),  // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_4_SYMBOL(0),                                       // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'\'', L'*', 0),                   // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(LETTER, L'ö', L'Ö', 0),                    // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(LETTER, L'ä', L'Ä', 0),                    // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE (Accent ^)
    KEYMAP_ENTRY(SYMBOL, L'§', L'½', 0),                    // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L';', 0),                    // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L':', 0),                    // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0),                    // KEYBOARD_SLASH_QUESTION
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
    KEYMAP_ENTRY(NUMPAD, NPD_SHIFT(L'.'), NPD(L','), 0),    // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'<', L'>', L'|'),                 // KEYBOARD_NON_US_SLASH
    STEP_4_CNTROL(SPECIAL(APPLICATION)),                    // KEYBOARD_APPLICATION
    STEP_4_SYMBOL(0),                                       // KEYBOARD_POWER
    STEP_4_SYMBOL(NPD(L'=')),                               // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapSWEDEN_FINLAND[] = {
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_4_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_4_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_4_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_4_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_4_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
static wchar_t kbdKeyMapUNITED_KINGDOM[] = {
    KEYMAP_ENTRY(LETTR2, L'a', L'A', L'á', L'Á'),  // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0, 0),        // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', 0, 0),        // KEYBOARD_C
    KEYMAP_ENTRY(LETTER, L'd', L'D', 0, 0),        // KEYBOARD_D
    KEYMAP_ENTRY(LETTR2, L'e', L'E', L'é', L'É'),  // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0, 0),        // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0, 0),        // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0, 0),        // KEYBOARD_H
    KEYMAP_ENTRY(LETTR2, L'i', L'I', L'í', L'Í'),  // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0, 0),        // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0, 0),        // KEYBOARD_K
    KEYMAP_ENTRY(LETTER, L'l', L'L', 0, 0),        // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', 0, 0),        // KEYBOARD_M
    KEYMAP_ENTRY(LETTER, L'n', L'N', 0, 0),        // KEYBOARD_N
    KEYMAP_ENTRY(LETTR2, L'o', L'O', L'ó', L'Ó'),  // KEYBOARD_O
    KEYMAP_ENTRY(LETTER, L'p', L'P', 0, 0),        // KEYBOARD_P
    KEYMAP_ENTRY(LETTER, L'q', L'Q', 0, 0),        // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', 0, 0),        // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', 0, 0),        // KEYBOARD_S
    KEYMAP_ENTRY(LETTER, L't', L'T', 0, 0),        // KEYBOARD_T
    KEYMAP_ENTRY(LETTR2, L'u', L'U', L'ú', L'Ú'),  // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0, 0),        // KEYBOARD_V
    KEYMAP_ENTRY(LETTER, L'w', L'W', 0, 0),        // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0, 0),        // KEYBOARD_X
    KEYMAP_ENTRY(LETTER, L'y', L'Y', 0, 0),        // KEYBOARD_Y
    KEYMAP_ENTRY(LETTER, L'z', L'Z', 0, 0),        // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', 0, 0),        // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'"', 0, 0),        // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'£', 0, 0),        // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'€', 0),     // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', 0, 0),        // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'^', 0, 0),        // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'&', 0, 0),        // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'*', 0, 0),        // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L'(', 0, 0),        // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L')', 0, 0),        // KEYBOARD_0_CLOSEPARENS
    STEP_5_SYMBOL(SPECIAL(ENTER)),                 // KEYBOARD_ENTER
    STEP_5_SYMBOL(SPECIAL(ESC)),                   // KEYBOARD_ESCAPE
    STEP_5_SYMBOL(SPECIAL(BACKSPACE)),             // KEYBOARD_BACKSPACE
    STEP_5_SYMBOL(SPECIAL(TAB)),                   // KEYBOARD_TAB
    STEP_5_SYMBOL(L' '),                           // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', 0, 0),        // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'=', L'+', 0, 0),        // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'[', L'{', 0, 0),        // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L']', L'}', 0, 0),        // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    STEP_5_SYMBOL(0),                              // KEYBOARD_BACKSLASH_BAR
    KEYMAP_ENTRY(SYMBOL, L'#', L'~', 0, 0),        // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L':', 0, 0),        // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\'', L'@', 0, 0),       // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'`', L'¬', L'¦', 0),     // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBOL, L',', L'<', 0, 0),        // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'>', 0, 0),        // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'/', L'?', 0, 0),        // KEYBOARD_SLASH_QUESTION
    STEP_5_CNTROL(SPECIAL(CAPSLOCK)),              // KEYBOARD_CAPSLOCK
    STEP_5_SYMBOL(SPECIAL(F1)),                    // KEYBOARD_F1
    STEP_5_SYMBOL(SPECIAL(F2)),                    // KEYBOARD_F2
    STEP_5_SYMBOL(SPECIAL(F3)),                    // KEYBOARD_F3
    STEP_5_SYMBOL(SPECIAL(F4)),                    // KEYBOARD_F4
    STEP_5_SYMBOL(SPECIAL(F5)),                    // KEYBOARD_F5
    STEP_5_SYMBOL(SPECIAL(F6)),                    // KEYBOARD_F6
    STEP_5_SYMBOL(SPECIAL(F7)),                    // KEYBOARD_F7
    STEP_5_SYMBOL(SPECIAL(F8)),                    // KEYBOARD_F8
    STEP_5_SYMBOL(SPECIAL(F9)),                    // KEYBOARD_F9
    STEP_5_SYMBOL(SPECIAL(F10)),                   // KEYBOARD_F10
    STEP_5_SYMBOL(SPECIAL(F11)),                   // KEYBOARD_F11
    STEP_5_SYMBOL(SPECIAL(F12)),                   // KEYBOARD_F12
    STEP_5_CNTROL(SPECIAL(PRINTSCREEN)),           // KEYBOARD_PRINTSCREEN
    STEP_5_CNTROL(SPECIAL(SCROLLLOCK)),            // KEYBOARD_SCROLL_LOCK
    STEP_5_CNTROL(SPECIAL(PAUSE)),                 // KEYBOARD_PAUSE
    STEP_5_SYMBOL(SPECIAL(INSERT)),                // KEYBOARD_INSERT
    STEP_5_SYMBOL(SPECIAL(HOME)),                  // KEYBOARD_HOME
    STEP_5_SYMBOL(SPECIAL(PAGEUP)),                // KEYBOARD_PAGEUP
    STEP_5_SYMBOL(SPECIAL(DELETE)),                // KEYBOARD_DELETE
    STEP_5_SYMBOL(SPECIAL(END)),                   // KEYBOARD_END
    STEP_5_SYMBOL(SPECIAL(PAGEDOWN)),              // KEYBOARD_PAGEDOWN
    STEP_5_SYMBOL(SPECIAL(RIGHTARROW)),            // KEYBOARD_RIGHTARROW
    STEP_5_SYMBOL(SPECIAL(LEFTARROW)),             // KEYBOARD_LEFTARROW
    STEP_5_SYMBOL(SPECIAL(DOWNARROW)),             // KEYBOARD_DOWNARROW
    STEP_5_SYMBOL(SPECIAL(UPARROW)),               // KEYBOARD_UPARROW
    STEP_5_CNTROL(SPECIAL(NUMLOCK)),               // KEYPAD_NUMLOCK
    STEP_5_SYMBOL(NPD(L'/')),                      // KEYPAD_DIVIDE
    STEP_5_SYMBOL(NPD(L'*')),                      // KEYPAD_MULTIPLY
    STEP_5_SYMBOL(NPD(L'-')),                      // KEYPAD_MINUS
    STEP_5_SYMBOL(NPD(L'+')),                      // KEYPAD_PLUS
    STEP_5_SYMBOL(NPD(L'\r')),                     // KEYPAD_ENTER
    STEP_5_NUMPAD(L'1'),                           // KEYPAD_1_END
    STEP_5_NUMPAD(L'2'),                           // KEYPAD_2_DOWNARROW
    STEP_5_NUMPAD(L'3'),                           // KEYPAD_3_PAGEDOWN
    STEP_5_NUMPAD(L'4'),                           // KEYPAD_4_LEFTARROW
    STEP_5_NUMPAD(L'5'),                           // KEYPAD_5
    STEP_5_NUMPAD(L'6'),                           // KEYPAD_6_RIGHTARROW
    STEP_5_NUMPAD(L'7'),                           // KEYPAD_7_HOME
    STEP_5_NUMPAD(L'8'),                           // KEYPAD_8_UPARROW
    STEP_5_NUMPAD(L'9'),                           // KEYPAD_9_PAGEUP
    STEP_5_NUMPAD(L'0'),                           // KEYPAD_0_INSERT
    STEP_5_NUMPAD(L'.'),                           // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', 0, 0),       // KEYBOARD_NON_US_SLASH
    STEP_5_CNTROL(SPECIAL(APPLICATION)),           // KEYBOARD_APPLICATION
    STEP_5_SYMBOL(0),                              // KEYBOARD_POWER
    STEP_5_SYMBOL(NPD(L'=')),                      // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapUNITED_KINGDOM[] = {
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_5_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_5_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
