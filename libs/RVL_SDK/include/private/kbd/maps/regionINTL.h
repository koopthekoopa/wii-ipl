#include <revolution/kbd.h>

#include <private/kbd/keymap_macros.h>

static wchar_t kbdKeyMapUS_International[] = {
    KEYMAP_ENTRY(LETTR2, L'a', L'A', L'á', L'Á'),            // KEYBOARD_A
    KEYMAP_ENTRY(LETTER, L'b', L'B', 0, 0),                  // KEYBOARD_B
    KEYMAP_ENTRY(LETTER, L'c', L'C', L'©', L'¢'),            // KEYBOARD_C
    KEYMAP_ENTRY(LETTR2, L'd', L'D', L'ð', L'Ð'),            // KEYBOARD_D
    KEYMAP_ENTRY(LETTR2, L'e', L'E', L'é', L'É'),            // KEYBOARD_E
    KEYMAP_ENTRY(LETTER, L'f', L'F', 0, 0),                  // KEYBOARD_F
    KEYMAP_ENTRY(LETTER, L'g', L'G', 0, 0),                  // KEYBOARD_G
    KEYMAP_ENTRY(LETTER, L'h', L'H', 0, 0),                  // KEYBOARD_H
    KEYMAP_ENTRY(LETTR2, L'i', L'I', L'í', L'Í'),            // KEYBOARD_I
    KEYMAP_ENTRY(LETTER, L'j', L'J', 0, 0),                  // KEYBOARD_J
    KEYMAP_ENTRY(LETTER, L'k', L'K', 0, 0),                  // KEYBOARD_K
    KEYMAP_ENTRY(LETTR2, L'l', L'L', L'ø', L'Ø'),            // KEYBOARD_L
    KEYMAP_ENTRY(LETTER, L'm', L'M', L'µ', 0),               // KEYBOARD_M
    KEYMAP_ENTRY(LETTR2, L'n', L'N', L'ñ', L'Ñ'),            // KEYBOARD_N
    KEYMAP_ENTRY(LETTR2, L'o', L'O', L'ó', L'Ó'),            // KEYBOARD_O
    KEYMAP_ENTRY(LETTR2, L'p', L'P', L'ö', L'Ö'),            // KEYBOARD_P
    KEYMAP_ENTRY(LETTR2, L'q', L'Q', L'ä', L'Ä'),            // KEYBOARD_Q
    KEYMAP_ENTRY(LETTER, L'r', L'R', L'®', 0),               // KEYBOARD_R
    KEYMAP_ENTRY(LETTER, L's', L'S', L'ß', L'§'),            // KEYBOARD_S
    KEYMAP_ENTRY(LETTR2, L't', L'T', L'þ', L'Þ'),            // KEYBOARD_T
    KEYMAP_ENTRY(LETTR2, L'u', L'U', L'ú', L'Ú'),            // KEYBOARD_U
    KEYMAP_ENTRY(LETTER, L'v', L'V', 0, 0),                  // KEYBOARD_V
    KEYMAP_ENTRY(LETTR2, L'w', L'W', L'å', L'Å'),            // KEYBOARD_W
    KEYMAP_ENTRY(LETTER, L'x', L'X', 0, 0),                  // KEYBOARD_X
    KEYMAP_ENTRY(LETTR2, L'y', L'Y', L'ü', L'Ü'),            // KEYBOARD_Y
    KEYMAP_ENTRY(LETTR2, L'z', L'Z', L'æ', L'Æ'),            // KEYBOARD_Z
    KEYMAP_ENTRY(SYMBOL, L'1', L'!', L'¡', L'¹'),            // KEYBOARD_1_EXCLAMATION
    KEYMAP_ENTRY(SYMBOL, L'2', L'@', L'²', 0),               // KEYBOARD_2_AT
    KEYMAP_ENTRY(SYMBOL, L'3', L'#', L'³', 0),               // KEYBOARD_3_HASH
    KEYMAP_ENTRY(SYMBOL, L'4', L'$', L'¤', L'£'),            // KEYBOARD_4_DOLLAR
    KEYMAP_ENTRY(SYMBOL, L'5', L'%', L'€', 0),               // KEYBOARD_5_PERCENT
    KEYMAP_ENTRY(SYMBOL, L'6', L'\u0302', L'¼', 0),          // KEYBOARD_6_CARET
    KEYMAP_ENTRY(SYMBOL, L'7', L'&', L'½', 0),               // KEYBOARD_7_AMPERSAND
    KEYMAP_ENTRY(SYMBOL, L'8', L'*', L'¾', 0),               // KEYBOARD_8_ASTERISK
    KEYMAP_ENTRY(SYMBOL, L'9', L'(', L'‘', 0),               // KEYBOARD_9_OPENPARENS
    KEYMAP_ENTRY(SYMBOL, L'0', L')', L'’', 0),               // KEYBOARD_0_CLOSEPARENS
    STEP_5_SYMBOL(SPECIAL(ENTER)),                           // KEYBOARD_ENTER
    STEP_5_SYMBOL(SPECIAL(ESC)),                             // KEYBOARD_ESCAPE
    STEP_5_SYMBOL(SPECIAL(BACKSPACE)),                       // KEYBOARD_BACKSPACE
    STEP_5_SYMBOL(SPECIAL(TAB)),                             // KEYBOARD_TAB
    STEP_5_SYMBOL(L' '),                                     // KEYBOARD_SPACEBAR
    KEYMAP_ENTRY(SYMBOL, L'-', L'_', L'¥', 0),               // KEYBOARD_DASH_UNDERSCORE
    KEYMAP_ENTRY(SYMBOL, L'=', L'+', L'×', L'÷'),            // KEYBOARD_EQUAL_PLUS
    KEYMAP_ENTRY(SYMBOL, L'[', L'{', L'«', 0),               // KEYBOARD_OPENBRACKET_OPENBRACE
    KEYMAP_ENTRY(SYMBOL, L']', L'}', L'»', 0),               // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', L'¬', L'¦'),           // KEYBOARD_BACKSLASH_BAR
    STEP_5_SYMBOL(0),                                        // KEYBOARD_NON_US_HASH
    KEYMAP_ENTRY(SYMBOL, L';', L':', L'¶', L'°'),            // KEYBOARD_SEMICOLON_COLON
    KEYMAP_ENTRY(SYMBOL, L'\u030D', L'\u030E', L'´', L'¨'),  // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
    KEYMAP_ENTRY(SYMBOL, L'\u0300', L'\u0303', 0, 0),        // KEYBOARD_BACKTICK_TILDE
    KEYMAP_ENTRY(SYMBL2, L',', L'<', L'ç', L'Ç'),            // KEYBOARD_COMMA_LESSTHAN
    KEYMAP_ENTRY(SYMBOL, L'.', L'>', 0, 0),                  // KEYBOARD_PERIOD_GREATERTHAN
    KEYMAP_ENTRY(SYMBOL, L'/', L'?', L'¿', 0),               // KEYBOARD_SLASH_QUESTION
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
    STEP_5_NUMPAD(L'.'),                                     // KEYPAD_PERIOD_DELETE
    KEYMAP_ENTRY(SYMBOL, L'\\', L'|', 0, 0),                 // KEYBOARD_NON_US_SLASH
    STEP_5_CNTROL(SPECIAL(APPLICATION)),                     // KEYBOARD_APPLICATION
    STEP_5_SYMBOL(0),                                        // KEYBOARD_POWER
    STEP_5_SYMBOL(NPD(L'=')),                                // KEYPAD_EQUAL
};
static wchar_t kbdModifierMapUS_International[] = {
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_L_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_L_SHIFT
    STEP_5_CNTROL(SPECIAL(ALT)),    // KEYBOARD_L_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_L_GUI
    STEP_5_CNTROL(SPECIAL(CTRL)),   // KEYBOARD_R_CONTROL
    STEP_5_CNTROL(SPECIAL(SHIFT)),  // KEYBOARD_R_SHIFT
    STEP_5_CNTROL(SPECIAL(ALTGR)),  // KEYBOARD_R_ALT
    STEP_5_CNTROL(SPECIAL(GUI)),    // KEYBOARD_R_GUI
};
