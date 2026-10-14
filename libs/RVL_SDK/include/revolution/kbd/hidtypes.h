#ifndef REVOLUTION_KBD_TYPES_H
#define REVOLUTION_KBD_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

// From https://usb.org/sites/default/files/hut1_3_0.pdf
// 10 Keyboard/Keypad Page
//
// https://github.com/twitchyliquid64/usbd-hid/blob/81f90498/src/descriptor.rs#L110
// referenced for some variant names
//
// Reserved ranges:
// 0x00, 0xA5-0xAF, 0xDE-0xDF, 0xE8-0xFFFF
typedef enum {
    KBD_KEY_KEYBOARD_ERRORROLLOVER = 0x01,            // Keyboard ErrorRollOver
    KBD_KEY_KEYBOARD_POSTFAIL = 0x02,                 // Keyboard POSTFail
    KBD_KEY_KEYBOARD_ERRORUNDEFINED = 0x03,           // Keyboard ErrorUndefined
    KBD_KEY_KEYBOARD_A = 0x04,                        // Keyboard a and A
    KBD_KEY_KEYBOARD_B = 0x05,                        // Keyboard b and B
    KBD_KEY_KEYBOARD_C = 0x06,                        // Keyboard c and C
    KBD_KEY_KEYBOARD_D = 0x07,                        // Keyboard d and D
    KBD_KEY_KEYBOARD_E = 0x08,                        // Keyboard e and E
    KBD_KEY_KEYBOARD_F = 0x09,                        // Keyboard f and F
    KBD_KEY_KEYBOARD_G = 0x0A,                        // Keyboard g and G
    KBD_KEY_KEYBOARD_H = 0x0B,                        // Keyboard h and H
    KBD_KEY_KEYBOARD_I = 0x0C,                        // Keyboard i and I
    KBD_KEY_KEYBOARD_J = 0x0D,                        // Keyboard j and J
    KBD_KEY_KEYBOARD_K = 0x0E,                        // Keyboard k and K
    KBD_KEY_KEYBOARD_L = 0x0F,                        // Keyboard l and L
    KBD_KEY_KEYBOARD_M = 0x10,                        // Keyboard m and M
    KBD_KEY_KEYBOARD_N = 0x11,                        // Keyboard n and N
    KBD_KEY_KEYBOARD_O = 0x12,                        // Keyboard o and O
    KBD_KEY_KEYBOARD_P = 0x13,                        // Keyboard p and P
    KBD_KEY_KEYBOARD_Q = 0x14,                        // Keyboard q and Q
    KBD_KEY_KEYBOARD_R = 0x15,                        // Keyboard r and R
    KBD_KEY_KEYBOARD_S = 0x16,                        // Keyboard s and S
    KBD_KEY_KEYBOARD_T = 0x17,                        // Keyboard t and T
    KBD_KEY_KEYBOARD_U = 0x18,                        // Keyboard u and U
    KBD_KEY_KEYBOARD_V = 0x19,                        // Keyboard v and V
    KBD_KEY_KEYBOARD_W = 0x1A,                        // Keyboard w and W
    KBD_KEY_KEYBOARD_X = 0x1B,                        // Keyboard x and X
    KBD_KEY_KEYBOARD_Y = 0x1C,                        // Keyboard y and Y
    KBD_KEY_KEYBOARD_Z = 0x1D,                        // Keyboard z and Z
    KBD_KEY_KEYBOARD_1_EXCLAMATION = 0x1E,            // Keyboard 1 and !
    KBD_KEY_KEYBOARD_2_AT = 0x1F,                     // Keyboard 2 and @
    KBD_KEY_KEYBOARD_3_HASH = 0x20,                   // Keyboard 3 and #
    KBD_KEY_KEYBOARD_4_DOLLAR = 0x21,                 // Keyboard 4 and $
    KBD_KEY_KEYBOARD_5_PERCENT = 0x22,                // Keyboard 5 and %
    KBD_KEY_KEYBOARD_6_CARET = 0x23,                  // Keyboard 6 and ^
    KBD_KEY_KEYBOARD_7_AMPERSAND = 0x24,              // Keyboard 7 and &
    KBD_KEY_KEYBOARD_8_ASTERISK = 0x25,               // Keyboard 8 and *
    KBD_KEY_KEYBOARD_9_OPENPARENS = 0x26,             // Keyboard 9 and (
    KBD_KEY_KEYBOARD_0_CLOSEPARENS = 0x27,            // Keyboard 0 and )
    KBD_KEY_KEYBOARD_ENTER = 0x28,                    // Keyboard Return (ENTER)
    KBD_KEY_KEYBOARD_ESCAPE = 0x29,                   // Keyboard ESCAPE
    KBD_KEY_KEYBOARD_BACKSPACE = 0x2A,                // Keyboard DELETE (Backspace)
    KBD_KEY_KEYBOARD_TAB = 0x2B,                      // Keyboard Tab
    KBD_KEY_KEYBOARD_SPACEBAR = 0x2C,                 // Keyboard Spacebar
    KBD_KEY_KEYBOARD_DASH_UNDERSCORE = 0x2D,          // Keyboard - and _
    KBD_KEY_KEYBOARD_EQUAL_PLUS = 0x2E,               // Keyboard = and +
    KBD_KEY_KEYBOARD_OPENBRACKET_OPENBRACE = 0x2F,    // Keyboard [ and {
    KBD_KEY_KEYBOARD_CLOSEBRACKET_CLOSEBRACE = 0x30,  // Keyboard ] and }
    KBD_KEY_KEYBOARD_BACKSLASH_BAR = 0x31,            // Keyboard \ and |
    KBD_KEY_KEYBOARD_NON_US_HASH = 0x32,              // Keyboard Non-US # and ˜ (small tilde)
    KBD_KEY_KEYBOARD_SEMICOLON_COLON = 0x33,          // Keyboard ; and :
    KBD_KEY_KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE = 0x34,  // Keyboard ' and "
    KBD_KEY_KEYBOARD_BACKTICK_TILDE = 0x35,           // Keyboard ` and ~
    KBD_KEY_KEYBOARD_COMMA_LESSTHAN = 0x36,           // Keyboard , and <
    KBD_KEY_KEYBOARD_PERIOD_GREATERTHAN = 0x37,       // Keyboard . and >
    KBD_KEY_KEYBOARD_SLASH_QUESTION = 0x38,           // Keyboard / and ?
    KBD_KEY_KEYBOARD_CAPSLOCK = 0x39,                 // Keyboard Caps Lock
    KBD_KEY_KEYBOARD_F1 = 0x3A,                       // Keyboard F1
    KBD_KEY_KEYBOARD_F2 = 0x3B,                       // Keyboard F2
    KBD_KEY_KEYBOARD_F3 = 0x3C,                       // Keyboard F3
    KBD_KEY_KEYBOARD_F4 = 0x3D,                       // Keyboard F4
    KBD_KEY_KEYBOARD_F5 = 0x3E,                       // Keyboard F5
    KBD_KEY_KEYBOARD_F6 = 0x3F,                       // Keyboard F6
    KBD_KEY_KEYBOARD_F7 = 0x40,                       // Keyboard F7
    KBD_KEY_KEYBOARD_F8 = 0x41,                       // Keyboard F8
    KBD_KEY_KEYBOARD_F9 = 0x42,                       // Keyboard F9
    KBD_KEY_KEYBOARD_F10 = 0x43,                      // Keyboard F10
    KBD_KEY_KEYBOARD_F11 = 0x44,                      // Keyboard F11
    KBD_KEY_KEYBOARD_F12 = 0x45,                      // Keyboard F12
    KBD_KEY_KEYBOARD_PRINTSCREEN = 0x46,              // Keyboard PrintScreen
    KBD_KEY_KEYBOARD_SCROLL_LOCK = 0x47,              // Keyboard ScrollLock
    KBD_KEY_KEYBOARD_PAUSE = 0x48,                    // Keyboard Pause
    KBD_KEY_KEYBOARD_INSERT = 0x49,                   // Keyboard Insert
    KBD_KEY_KEYBOARD_HOME = 0x4A,                     // Keyboard Home
    KBD_KEY_KEYBOARD_PAGEUP = 0x4B,                   // Keyboard PageUp
    KBD_KEY_KEYBOARD_DELETE = 0x4C,                   // Keyboard Delete Forward
    KBD_KEY_KEYBOARD_END = 0x4D,                      // Keyboard End
    KBD_KEY_KEYBOARD_PAGEDOWN = 0x4E,                 // Keyboard PageDown
    KBD_KEY_KEYBOARD_RIGHTARROW = 0x4F,               // Keyboard RightArrow
    KBD_KEY_KEYBOARD_LEFTARROW = 0x50,                // Keyboard LeftArrow
    KBD_KEY_KEYBOARD_DOWNARROW = 0x51,                // Keyboard DownArrow
    KBD_KEY_KEYBOARD_UPARROW = 0x52,                  // Keyboard UpArrow
    KBD_KEY_KEYPAD_NUMLOCK = 0x53,                    // Keypad Num Lock and Clear
    KBD_KEY_KEYPAD_DIVIDE = 0x54,                     // Keypad /
    KBD_KEY_KEYPAD_MULTIPLY = 0x55,                   // Keypad *
    KBD_KEY_KEYPAD_MINUS = 0x56,                      // Keypad -
    KBD_KEY_KEYPAD_PLUS = 0x57,                       // Keypad +
    KBD_KEY_KEYPAD_ENTER = 0x58,                      // Keypad ENTER
    KBD_KEY_KEYPAD_1_END = 0x59,                      // Keypad 1 and End
    KBD_KEY_KEYPAD_2_DOWNARROW = 0x5A,                // Keypad 2 and DownArrow
    KBD_KEY_KEYPAD_3_PAGEDOWN = 0x5B,                 // Keypad 3 and PageDown
    KBD_KEY_KEYPAD_4_LEFTARROW = 0x5C,                // Keypad 4 and LeftArrow
    KBD_KEY_KEYPAD_5 = 0x5D,                          // Keypad 5
    KBD_KEY_KEYPAD_6_RIGHTARROW = 0x5E,               // Keypad 6 and RightArrow
    KBD_KEY_KEYPAD_7_HOME = 0x5F,                     // Keypad 7 and Home
    KBD_KEY_KEYPAD_8_UPARROW = 0x60,                  // Keypad 8 and UpArrow
    KBD_KEY_KEYPAD_9_PAGEUP = 0x61,                   // Keypad 9 and PageUp
    KBD_KEY_KEYPAD_0_INSERT = 0x62,                   // Keypad 0 and Insert
    KBD_KEY_KEYPAD_PERIOD_DELETE = 0x63,              // Keypad . and Delete
    KBD_KEY_KEYBOARD_NON_US_SLASH = 0x64,             // Keyboard Non-US \ and |
    KBD_KEY_KEYBOARD_APPLICATION = 0x65,              // Keyboard Application
    KBD_KEY_KEYBOARD_POWER = 0x66,                    // Keyboard Power
    KBD_KEY_KEYPAD_EQUAL = 0x67,                      // Keypad =
    KBD_KEY_KEYBOARD_F13 = 0x68,                      // Keyboard F13
    KBD_KEY_KEYBOARD_F14 = 0x69,                      // Keyboard F14
    KBD_KEY_KEYBOARD_F15 = 0x6A,                      // Keyboard F15
    KBD_KEY_KEYBOARD_F16 = 0x6B,                      // Keyboard F16
    KBD_KEY_KEYBOARD_F17 = 0x6C,                      // Keyboard F17
    KBD_KEY_KEYBOARD_F18 = 0x6D,                      // Keyboard F18
    KBD_KEY_KEYBOARD_F19 = 0x6E,                      // Keyboard F19
    KBD_KEY_KEYBOARD_F20 = 0x6F,                      // Keyboard F20
    KBD_KEY_KEYBOARD_F21 = 0x70,                      // Keyboard F21
    KBD_KEY_KEYBOARD_F22 = 0x71,                      // Keyboard F22
    KBD_KEY_KEYBOARD_F23 = 0x72,                      // Keyboard F23
    KBD_KEY_KEYBOARD_F24 = 0x73,                      // Keyboard F24
    KBD_KEY_KEYBOARD_EXECUTE = 0x74,                  // Keyboard Execute
    KBD_KEY_KEYBOARD_HELP = 0x75,                     // Keyboard Help
    KBD_KEY_KEYBOARD_MENU = 0x76,                     // Keyboard Menu
    KBD_KEY_KEYBOARD_SELECT = 0x77,                   // Keyboard Select
    KBD_KEY_KEYBOARD_STOP = 0x78,                     // Keyboard Stop
    KBD_KEY_KEYBOARD_AGAIN = 0x79,                    // Keyboard Again
    KBD_KEY_KEYBOARD_UNDO = 0x7A,                     // Keyboard Undo
    KBD_KEY_KEYBOARD_CUT = 0x7B,                      // Keyboard Cut
    KBD_KEY_KEYBOARD_COPY = 0x7C,                     // Keyboard Copy
    KBD_KEY_KEYBOARD_PASTE = 0x7D,                    // Keyboard Paste
    KBD_KEY_KEYBOARD_FIND = 0x7E,                     // Keyboard Find
    KBD_KEY_KEYBOARD_MUTE = 0x7F,                     // Keyboard Mute
    KBD_KEY_KEYBOARD_VOLUME_UP = 0x80,                // Keyboard Volume Up
    KBD_KEY_KEYBOARD_VOLUME_DOWN = 0x81,              // Keyboard Volume Down
    KBD_KEY_KEYBOARD_LOCKING_CAPS_LOCK = 0x82,        // Keyboad Locking Caps Lock
    KBD_KEY_KEYBOARD_LOCKING_NUM_LOCK = 0x83,         // Keyboad Locking Num Lock
    KBD_KEY_KEYBOARD_LOCKING_SCROLL_LOCK = 0x84,      // Keyboad Locking Scroll Lock
    KBD_KEY_KEYPAD_COMMA = 0x85,                      // Keypad Comma
    KBD_KEY_KEYPAD_EQUALSIGN = 0x86,                  // Keypad Equal Sign
    KBD_KEY_KEYBOARD_INTERNATIONAL1 = 0x87,           // Keyboard International1
    KBD_KEY_KEYBOARD_INTERNATIONAL2 = 0x88,           // Keyboard International2
    KBD_KEY_KEYBOARD_INTERNATIONAL3 = 0x89,           // Keyboard International3
    KBD_KEY_KEYBOARD_INTERNATIONAL4 = 0x8A,           // Keyboard International4
    KBD_KEY_KEYBOARD_INTERNATIONAL5 = 0x8B,           // Keyboard International5
    KBD_KEY_KEYBOARD_INTERNATIONAL6 = 0x8C,           // Keyboard International6
    KBD_KEY_KEYBOARD_INTERNATIONAL7 = 0x8D,           // Keyboard International7
    KBD_KEY_KEYBOARD_INTERNATIONAL8 = 0x8E,           // Keyboard International8
    KBD_KEY_KEYBOARD_INTERNATIONAL9 = 0x8F,           // Keyboard International9
    KBD_KEY_KEYBOARD_LANG1 = 0x90,                    // Keyboard LANG1
    KBD_KEY_KEYBOARD_LANG2 = 0x91,                    // Keyboard LANG2
    KBD_KEY_KEYBOARD_LANG3 = 0x92,                    // Keyboard LANG3
    KBD_KEY_KEYBOARD_LANG4 = 0x93,                    // Keyboard LANG4
    KBD_KEY_KEYBOARD_LANG5 = 0x94,                    // Keyboard LANG5
    KBD_KEY_KEYBOARD_LANG6 = 0x95,                    // Keyboard LANG6
    KBD_KEY_KEYBOARD_LANG7 = 0x96,                    // Keyboard LANG7
    KBD_KEY_KEYBOARD_LANG8 = 0x97,                    // Keyboard LANG8
    KBD_KEY_KEYBOARD_LANG9 = 0x98,                    // Keyboard LANG9
    KBD_KEY_KEYBOARD_ALTERNATE_ERASE = 0x99,          // Keyboard Alternate Erase
    KBD_KEY_KEYBOARD_SYS_REQ_ATTENTION = 0x9A,        // Keyboard SysReq/Attention
    KBD_KEY_KEYBOARD_CANCEL = 0x9B,                   // Keyboard Cancel
    KBD_KEY_KEYBOARD_CLEAR = 0x9C,                    // Keyboard Clear
    KBD_KEY_KEYBOARD_PRIOR = 0x9D,                    // Keyboard Prior
    KBD_KEY_KEYBOARD_RETURN = 0x9E,                   // Keyboard Return
    KBD_KEY_KEYBOARD_SEPARATOR = 0x9F,                // Keyboard Separator
    KBD_KEY_KEYBOARD_OUT = 0xA0,                      // Keyboard Out
    KBD_KEY_KEYBOARD_OPER = 0xA1,                     // Keyboard Oper
    KBD_KEY_KEYBOARD_CLEAR_AGAIN = 0xA2,              // Keyboard Clear/Again
    KBD_KEY_KEYBOARD_CR_SEL_PROPS = 0xA3,             // Keyboard CrSel/Props
    KBD_KEY_KEYBOARD_EX_SEL = 0xA4,                   // Keyboard ExSel
    KBD_KEY_KEYPAD_00 = 0xB0,                         // Keypad 00
    KBD_KEY_KEYPAD_000 = 0xB1,                        // Keypad 000
    KBD_KEY_THOUSANDS_SEPARATOR = 0xB2,               // Thousands Separator
    KBD_KEY_DECIMAL_SEPARATOR = 0xB3,                 // Decimal Separator
    KBD_KEY_CURRENCY_UNIT = 0xB4,                     // Currency Unit
    KBD_KEY_CURRENCY_SUBUNIT = 0xB5,                  // Currency Sub-unit
    KBD_KEY_KEYPAD_OPEN_PARENS = 0xB6,                // Keypad (
    KBD_KEY_KEYPAD_CLOSE_PARENS = 0xB7,               // Keypad )
    KBD_KEY_KEYPAD_OPEN_BRACE = 0xB8,                 // Keypad {
    KBD_KEY_KEYPAD_CLOSE_BRACE = 0xB9,                // Keypad }
    KBD_KEY_KEYPAD_TAB = 0xBA,                        // Keypad Tab
    KBD_KEY_KEYPAD_BACKSPACE = 0xBB,                  // Keypad Backspace
    KBD_KEY_KEYPAD_A = 0xBC,                          // Keypad A
    KBD_KEY_KEYPAD_B = 0xBD,                          // Keypad B
    KBD_KEY_KEYPAD_C = 0xBE,                          // Keypad C
    KBD_KEY_KEYPAD_D = 0xBF,                          // Keypad D
    KBD_KEY_KEYPAD_E = 0xC0,                          // Keypad E
    KBD_KEY_KEYPAD_F = 0xC1,                          // Keypad F
    KBD_KEY_KEYPAD_BITWISE_XOR = 0xC2,                // Keypad XOR
    KBD_KEY_KEYPAD_LOGICAL_XOR = 0xC3,                // Keypad ^
    KBD_KEY_KEYPAD_MODULO = 0xC4,                     // Keypad %
    KBD_KEY_KEYPAD_LESSTHAN = 0xC5,                   // Keypad <
    KBD_KEY_KEYPAD_GREATERTHAN = 0xC6,                // Keypad >
    KBD_KEY_KEYPAD_BITWISE_AND = 0xC7,                // Keypad &
    KBD_KEY_KEYPAD_LOGICAL_AND = 0xC8,                // Keypad &&
    KBD_KEY_KEYPAD_BITWISE_OR = 0xC9,                 // Keypad |
    KBD_KEY_KEYPAD_LOGICAL_OR = 0xCA,                 // Keypad ||
    KBD_KEY_KEYPAD_COLON = 0xCB,                      // Keypad :
    KBD_KEY_KEYPAD_HASH = 0xCC,                       // Keypad #
    KBD_KEY_KEYPAD_SPACE = 0xCD,                      // Keypad Space
    KBD_KEY_KEYPAD_AT = 0xCE,                         // Keypad @
    KBD_KEY_KEYPAD_EXCLAMATION = 0xCF,                // Keypad !
    KBD_KEY_KEYPAD_MEMSTORE = 0xD0,                   // Keypad Memory Store
    KBD_KEY_KEYPAD_MEMRECALL = 0xD1,                  // Keypad Memory Recall
    KBD_KEY_KEYPAD_MEMCLEAR = 0xD2,                   // Keypad Memory Clear
    KBD_KEY_KEYPAD_MEMADD = 0xD3,                     // Keypad Memory Add
    KBD_KEY_KEYPAD_MEMSUB = 0xD4,                     // Keypad Memory Subtract
    KBD_KEY_KEYPAD_MEMMUL = 0xD5,                     // Keypad Memory Multiply
    KBD_KEY_KEYPAD_MEMDIV = 0xD6,                     // Keypad Memory Divice
    KBD_KEY_KEYPAD_PLUSMINUS = 0xD7,                  // Keypad +/-
    KBD_KEY_KEYPAD_CLEAR = 0xD8,                      // Keypad Clear
    KBD_KEY_KEYPAD_CLEAR_ENTRY = 0xD9,                // Keypad Clear Entry
    KBD_KEY_KEYPAD_BINARY = 0xDA,                     // Keypad Binary
    KBD_KEY_KEYPAD_OCTAL = 0xDB,                      // Keypad Octal
    KBD_KEY_KEYPAD_DECIMAL = 0xDC,                    // Keypad Decimal
    KBD_KEY_KEYPAD_HEXADECIMAL = 0xDD,                // Keypad Hexadecimal
    KBD_KEY_KEYBOARD_L_CONTROL = 0xE0,                // Keyboard LeftControl
    KBD_KEY_KEYBOARD_L_SHIFT = 0xE1,                  // Keyboard LeftShift
    KBD_KEY_KEYBOARD_L_ALT = 0xE2,                    // Keyboard LeftAlt
    KBD_KEY_KEYBOARD_L_GUI = 0xE3,                    // Keyboard LeftGUI
    KBD_KEY_KEYBOARD_R_CONTROL = 0xE4,                // Keyboard RightControl
    KBD_KEY_KEYBOARD_R_SHIFT = 0xE5,                  // Keyboard RightShift
    KBD_KEY_KEYBOARD_R_ALT = 0xE6,                    // Keyboard RightAlt
    KBD_KEY_KEYBOARD_R_GUI = 0xE7,                    // Keyboard RightGUI
} KBDHidKeyCode;

// From https://www.usb.org/sites/default/files/hid1_11.pdf
// 8.3 Report Format for Array Items
typedef enum {
    KBD_HID_MOD_L_CTRL = 1 << 0,
    KBD_HID_MOD_L_SHIFT = 1 << 1,
    KBD_HID_MOD_L_ALT = 1 << 2,
    KBD_HID_MOD_L_GUI = 1 << 3,
    KBD_HID_MOD_R_CTRL = 1 << 4,
    KBD_HID_MOD_R_SHIFT = 1 << 5,
    KBD_HID_MOD_R_ALT = 1 << 6,
    KBD_HID_MOD_R_GUI = 1 << 7,
} KBDHidModifierBits;

// From https://www.usb.org/sites/default/files/hid1_11.pdf
// 6.2.1 HID Descriptor
typedef enum _KBDCountryCode {
    KBD_CC_RESERVED = 0,
    KBD_CC_ARABIC,
    KBD_CC_BELGIAN,
    KBD_CC_CANADIAN_BI,
    KBD_CC_CANADIAN_FR,
    KBD_CC_CZECH_REPUBLIC,
    KBD_CC_DANISH,
    KBD_CC_FINNISH,
    KBD_CC_FRENCH,
    KBD_CC_GERMAN,
    KBD_CC_GREEK,
    KBD_CC_HEBREW,
    KBD_CC_HUNGARY,
    KBD_CC_INTERNATIONAL_ISO,
    KBD_CC_ITALIAN,
    KBD_CC_JAPAN,
    KBD_CC_KOREAN,
    KBD_CC_LATIN_AMERICAN,
    KBD_CC_NETHERLANDS_DUTCH,
    KBD_CC_NORWEGIAN,
    KBD_CC_PERSIAN,
    KBD_CC_POLAND,
    KBD_CC_PORTUGUESE,
    KBD_CC_RUSSIA,
    KBD_CC_SLOVAKIA,
    KBD_CC_SPANISH,
    KBD_CC_SWEDISH,
    KBD_CC_SWISS_FR,
    KBD_CC_SWISS_DE,
    KBD_CC_SWITZERLAND,
    KBD_CC_TAIWAN,
    KBD_CC_TURKISH_Q,
    KBD_CC_UNITED_KINGDOM,
    KBD_CC_UNITED_STATES,
    KBD_CC_YUGOSLAVIA,
    KBD_CC_TURKISH_F,
} KBDCountryCode;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KBD_TYPES_H
