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
// 0x00, 0xA5-0xAF, 0xDE-0xDF, 0xE8-0xFF
typedef enum {
    KBD_KEY_KEYBOARD_ERRORROLLOVER = 0x01,     // Keyboard ErrorRollOver
    KBD_KEY_KEYBOARD_POSTFAIL = 0x02,          // Keyboard POSTFail
    KBD_KEY_KEYBOARD_ERRORUNDEFINED = 0x03,    // Keyboard ErrorUndefined
    KBD_KEY_KEYBOARD_A,                        // Keyboard a and A
    KBD_KEY_KEYBOARD_B,                        // Keyboard b and B
    KBD_KEY_KEYBOARD_C,                        // Keyboard c and C
    KBD_KEY_KEYBOARD_D,                        // Keyboard d and D
    KBD_KEY_KEYBOARD_E,                        // Keyboard e and E
    KBD_KEY_KEYBOARD_F,                        // Keyboard f and F
    KBD_KEY_KEYBOARD_G,                        // Keyboard g and G
    KBD_KEY_KEYBOARD_H,                        // Keyboard h and H
    KBD_KEY_KEYBOARD_I,                        // Keyboard i and I
    KBD_KEY_KEYBOARD_J,                        // Keyboard j and J
    KBD_KEY_KEYBOARD_K,                        // Keyboard k and K
    KBD_KEY_KEYBOARD_L,                        // Keyboard l and L
    KBD_KEY_KEYBOARD_M,                        // Keyboard m and M
    KBD_KEY_KEYBOARD_N,                        // Keyboard n and N
    KBD_KEY_KEYBOARD_O,                        // Keyboard o and O
    KBD_KEY_KEYBOARD_P,                        // Keyboard p and P
    KBD_KEY_KEYBOARD_Q,                        // Keyboard q and Q
    KBD_KEY_KEYBOARD_R,                        // Keyboard r and R
    KBD_KEY_KEYBOARD_S,                        // Keyboard s and S
    KBD_KEY_KEYBOARD_T,                        // Keyboard t and T
    KBD_KEY_KEYBOARD_U,                        // Keyboard u and U
    KBD_KEY_KEYBOARD_V,                        // Keyboard v and V
    KBD_KEY_KEYBOARD_W,                        // Keyboard w and W
    KBD_KEY_KEYBOARD_X,                        // Keyboard x and X
    KBD_KEY_KEYBOARD_Y,                        // Keyboard y and Y
    KBD_KEY_KEYBOARD_Z,                        // Keyboard z and Z
    KBD_KEY_KEYBOARD_1_EXCLAMATION,            // Keyboard 1 and !
    KBD_KEY_KEYBOARD_2_AT,                     // Keyboard 2 and @
    KBD_KEY_KEYBOARD_3_HASH,                   // Keyboard 3 and #
    KBD_KEY_KEYBOARD_4_DOLLAR,                 // Keyboard 4 and $
    KBD_KEY_KEYBOARD_5_PERCENT,                // Keyboard 5 and %
    KBD_KEY_KEYBOARD_6_CARET,                  // Keyboard 6 and ^
    KBD_KEY_KEYBOARD_7_AMPERSAND,              // Keyboard 7 and &
    KBD_KEY_KEYBOARD_8_ASTERISK,               // Keyboard 8 and *
    KBD_KEY_KEYBOARD_9_OPENPARENS,             // Keyboard 9 and (
    KBD_KEY_KEYBOARD_0_CLOSEPARENS,            // Keyboard 0 and )
    KBD_KEY_KEYBOARD_ENTER,                    // Keyboard Return (ENTER)
    KBD_KEY_KEYBOARD_ESCAPE,                   // Keyboard ESCAPE
    KBD_KEY_KEYBOARD_BACKSPACE,                // Keyboard DELETE (Backspace)
    KBD_KEY_KEYBOARD_TAB,                      // Keyboard Tab
    KBD_KEY_KEYBOARD_SPACEBAR,                 // Keyboard Spacebar
    KBD_KEY_KEYBOARD_DASH_UNDERSCORE,          // Keyboard - and _
    KBD_KEY_KEYBOARD_EQUAL_PLUS,               // Keyboard = and +
    KBD_KEY_KEYBOARD_OPENBRACKET_OPENBRACE,    // Keyboard [ and {
    KBD_KEY_KEYBOARD_CLOSEBRACKET_CLOSEBRACE,  // Keyboard ] and }
    KBD_KEY_KEYBOARD_BACKSLASH_BAR,            // Keyboard \ and |
    KBD_KEY_KEYBOARD_NON_US_HASH,              // Keyboard Non-US # and small-tilde
    KBD_KEY_KEYBOARD_SEMICOLON_COLON,          // Keyboard ; and :
    KBD_KEY_KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE,  // Keyboard ' and "
    KBD_KEY_KEYBOARD_BACKTICK_TILDE,           // Keyboard ` and ~
    KBD_KEY_KEYBOARD_COMMA_LESSTHAN,           // Keyboard , and <
    KBD_KEY_KEYBOARD_PERIOD_GREATERTHAN,       // Keyboard . and >
    KBD_KEY_KEYBOARD_SLASH_QUESTION,           // Keyboard / and ?
    KBD_KEY_KEYBOARD_CAPSLOCK,                 // Keyboard Caps Lock
    KBD_KEY_KEYBOARD_F1,                       // Keyboard F1
    KBD_KEY_KEYBOARD_F2,                       // Keyboard F2
    KBD_KEY_KEYBOARD_F3,                       // Keyboard F3
    KBD_KEY_KEYBOARD_F4,                       // Keyboard F4
    KBD_KEY_KEYBOARD_F5,                       // Keyboard F5
    KBD_KEY_KEYBOARD_F6,                       // Keyboard F6
    KBD_KEY_KEYBOARD_F7,                       // Keyboard F7
    KBD_KEY_KEYBOARD_F8,                       // Keyboard F8
    KBD_KEY_KEYBOARD_F9,                       // Keyboard F9
    KBD_KEY_KEYBOARD_F10,                      // Keyboard F10
    KBD_KEY_KEYBOARD_F11,                      // Keyboard F11
    KBD_KEY_KEYBOARD_F12,                      // Keyboard F12
    KBD_KEY_KEYBOARD_PRINTSCREEN,              // Keyboard PrintScreen
    KBD_KEY_KEYBOARD_SCROLL_LOCK,              // Keyboard ScrollLock
    KBD_KEY_KEYBOARD_PAUSE,                    // Keyboard Pause
    KBD_KEY_KEYBOARD_INSERT,                   // Keyboard Insert
    KBD_KEY_KEYBOARD_HOME,                     // Keyboard Home
    KBD_KEY_KEYBOARD_PAGEUP,                   // Keyboard PageUp
    KBD_KEY_KEYBOARD_DELETE,                   // Keyboard Delete Forward
    KBD_KEY_KEYBOARD_END,                      // Keyboard End
    KBD_KEY_KEYBOARD_PAGEDOWN,                 // Keyboard PageDown
    KBD_KEY_KEYBOARD_RIGHTARROW,               // Keyboard RightArrow
    KBD_KEY_KEYBOARD_LEFTARROW,                // Keyboard LeftArrow
    KBD_KEY_KEYBOARD_DOWNARROW,                // Keyboard DownArrow
    KBD_KEY_KEYBOARD_UPARROW,                  // Keyboard UpArrow
    KBD_KEY_KEYPAD_NUMLOCK,                    // Keypad Num Lock and Clear
    KBD_KEY_KEYPAD_DIVIDE,                     // Keypad /
    KBD_KEY_KEYPAD_MULTIPLY,                   // Keypad *
    KBD_KEY_KEYPAD_MINUS,                      // Keypad -
    KBD_KEY_KEYPAD_PLUS,                       // Keypad +
    KBD_KEY_KEYPAD_ENTER,                      // Keypad ENTER
    KBD_KEY_KEYPAD_1_END,                      // Keypad 1 and End
    KBD_KEY_KEYPAD_2_DOWNARROW,                // Keypad 2 and DownArrow
    KBD_KEY_KEYPAD_3_PAGEDOWN,                 // Keypad 3 and PageDown
    KBD_KEY_KEYPAD_4_LEFTARROW,                // Keypad 4 and LeftArrow
    KBD_KEY_KEYPAD_5,                          // Keypad 5
    KBD_KEY_KEYPAD_6_RIGHTARROW,               // Keypad 6 and RightArrow
    KBD_KEY_KEYPAD_7_HOME,                     // Keypad 7 and Home
    KBD_KEY_KEYPAD_8_UPARROW,                  // Keypad 8 and UpArrow
    KBD_KEY_KEYPAD_9_PAGEUP,                   // Keypad 9 and PageUp
    KBD_KEY_KEYPAD_0_INSERT,                   // Keypad 0 and Insert
    KBD_KEY_KEYPAD_PERIOD_DELETE,              // Keypad . and Delete
    KBD_KEY_KEYBOARD_NON_US_SLASH,             // Keyboard Non-US \ and |
    KBD_KEY_KEYBOARD_APPLICATION,              // Keyboard Application
    KBD_KEY_KEYBOARD_POWER,                    // Keyboard Power
    KBD_KEY_KEYPAD_EQUAL,                      // Keypad =
    KBD_KEY_KEYBOARD_F13,                      // Keyboard F13
    KBD_KEY_KEYBOARD_F14,                      // Keyboard F14
    KBD_KEY_KEYBOARD_F15,                      // Keyboard F15
    KBD_KEY_KEYBOARD_F16,                      // Keyboard F16
    KBD_KEY_KEYBOARD_F17,                      // Keyboard F17
    KBD_KEY_KEYBOARD_F18,                      // Keyboard F18
    KBD_KEY_KEYBOARD_F19,                      // Keyboard F19
    KBD_KEY_KEYBOARD_F20,                      // Keyboard F20
    KBD_KEY_KEYBOARD_F21,                      // Keyboard F21
    KBD_KEY_KEYBOARD_F22,                      // Keyboard F22
    KBD_KEY_KEYBOARD_F23,                      // Keyboard F23
    KBD_KEY_KEYBOARD_F24,                      // Keyboard F24
    KBD_KEY_KEYBOARD_EXECUTE,                  // Keyboard Execute
    KBD_KEY_KEYBOARD_HELP,                     // Keyboard Help
    KBD_KEY_KEYBOARD_MENU,                     // Keyboard Menu
    KBD_KEY_KEYBOARD_SELECT,                   // Keyboard Select
    KBD_KEY_KEYBOARD_STOP,                     // Keyboard Stop
    KBD_KEY_KEYBOARD_AGAIN,                    // Keyboard Again
    KBD_KEY_KEYBOARD_UNDO,                     // Keyboard Undo
    KBD_KEY_KEYBOARD_CUT,                      // Keyboard Cut
    KBD_KEY_KEYBOARD_COPY,                     // Keyboard Copy
    KBD_KEY_KEYBOARD_PASTE,                    // Keyboard Paste
    KBD_KEY_KEYBOARD_FIND,                     // Keyboard Find
    KBD_KEY_KEYBOARD_MUTE,                     // Keyboard Mute
    KBD_KEY_KEYBOARD_VOLUME_UP,                // Keyboard Volume Up
    KBD_KEY_KEYBOARD_VOLUME_DOWN,              // Keyboard Volume Down
    KBD_KEY_KEYBOARD_LOCKING_CAPS_LOCK,        // Keyboad Locking Caps Lock
    KBD_KEY_KEYBOARD_LOCKING_NUM_LOCK,         // Keyboad Locking Num Lock
    KBD_KEY_KEYBOARD_LOCKING_SCROLL_LOCK,      // Keyboad Locking Scroll Lock
    KBD_KEY_KEYPAD_COMMA,                      // Keypad Comma
    KBD_KEY_KEYPAD_EQUALSIGN,                  // Keypad Equal Sign
    KBD_KEY_KEYBOARD_INTERNATIONAL1,           // Keyboard International1
    KBD_KEY_KEYBOARD_INTERNATIONAL2,           // Keyboard International2
    KBD_KEY_KEYBOARD_INTERNATIONAL3,           // Keyboard International3
    KBD_KEY_KEYBOARD_INTERNATIONAL4,           // Keyboard International4
    KBD_KEY_KEYBOARD_INTERNATIONAL5,           // Keyboard International5
    KBD_KEY_KEYBOARD_INTERNATIONAL6,           // Keyboard International6
    KBD_KEY_KEYBOARD_INTERNATIONAL7,           // Keyboard International7
    KBD_KEY_KEYBOARD_INTERNATIONAL8,           // Keyboard International8
    KBD_KEY_KEYBOARD_INTERNATIONAL9,           // Keyboard International9
    KBD_KEY_KEYBOARD_LANG1,                    // Keyboard LANG1
    KBD_KEY_KEYBOARD_LANG2,                    // Keyboard LANG2
    KBD_KEY_KEYBOARD_LANG3,                    // Keyboard LANG3
    KBD_KEY_KEYBOARD_LANG4,                    // Keyboard LANG4
    KBD_KEY_KEYBOARD_LANG5,                    // Keyboard LANG5
    KBD_KEY_KEYBOARD_LANG6,                    // Keyboard LANG6
    KBD_KEY_KEYBOARD_LANG7,                    // Keyboard LANG7
    KBD_KEY_KEYBOARD_LANG8,                    // Keyboard LANG8
    KBD_KEY_KEYBOARD_LANG9,                    // Keyboard LANG9
    KBD_KEY_KEYBOARD_ALTERNATE_ERASE,          // Keyboard Alternate Erase
    KBD_KEY_KEYBOARD_SYS_REQ_ATTENTION,        // Keyboard SysReq/Attention
    KBD_KEY_KEYBOARD_CANCEL,                   // Keyboard Cancel
    KBD_KEY_KEYBOARD_CLEAR,                    // Keyboard Clear
    KBD_KEY_KEYBOARD_PRIOR,                    // Keyboard Prior
    KBD_KEY_KEYBOARD_RETURN,                   // Keyboard Return
    KBD_KEY_KEYBOARD_SEPARATOR,                // Keyboard Separator
    KBD_KEY_KEYBOARD_OUT,                      // Keyboard Out
    KBD_KEY_KEYBOARD_OPER,                     // Keyboard Oper
    KBD_KEY_KEYBOARD_CLEAR_AGAIN,              // Keyboard Clear/Again
    KBD_KEY_KEYBOARD_CR_SEL_PROPS,             // Keyboard CrSel/Props
    KBD_KEY_KEYBOARD_EX_SEL,                   // Keyboard ExSel

    KBD_KEY_KEYPAD_00 = 0xB0,     // Keypad 00
    KBD_KEY_KEYPAD_000,           // Keypad 000
    KBD_KEY_THOUSANDS_SEPARATOR,  // Thousands Separator
    KBD_KEY_DECIMAL_SEPARATOR,    // Decimal Separator
    KBD_KEY_CURRENCY_UNIT,        // Currency Unit
    KBD_KEY_CURRENCY_SUBUNIT,     // Currency Sub-unit
    KBD_KEY_KEYPAD_OPEN_PARENS,   // Keypad (
    KBD_KEY_KEYPAD_CLOSE_PARENS,  // Keypad )
    KBD_KEY_KEYPAD_OPEN_BRACE,    // Keypad {
    KBD_KEY_KEYPAD_CLOSE_BRACE,   // Keypad }
    KBD_KEY_KEYPAD_TAB,           // Keypad Tab
    KBD_KEY_KEYPAD_BACKSPACE,     // Keypad Backspace
    KBD_KEY_KEYPAD_A,             // Keypad A
    KBD_KEY_KEYPAD_B,             // Keypad B
    KBD_KEY_KEYPAD_C,             // Keypad C
    KBD_KEY_KEYPAD_D,             // Keypad D
    KBD_KEY_KEYPAD_E,             // Keypad E
    KBD_KEY_KEYPAD_F,             // Keypad F
    KBD_KEY_KEYPAD_BITWISE_XOR,   // Keypad XOR
    KBD_KEY_KEYPAD_LOGICAL_XOR,   // Keypad ^
    KBD_KEY_KEYPAD_MODULO,        // Keypad %
    KBD_KEY_KEYPAD_LESSTHAN,      // Keypad <
    KBD_KEY_KEYPAD_GREATERTHAN,   // Keypad >
    KBD_KEY_KEYPAD_BITWISE_AND,   // Keypad &
    KBD_KEY_KEYPAD_LOGICAL_AND,   // Keypad &&
    KBD_KEY_KEYPAD_BITWISE_OR,    // Keypad |
    KBD_KEY_KEYPAD_LOGICAL_OR,    // Keypad ||
    KBD_KEY_KEYPAD_COLON,         // Keypad :
    KBD_KEY_KEYPAD_HASH,          // Keypad #
    KBD_KEY_KEYPAD_SPACE,         // Keypad Space
    KBD_KEY_KEYPAD_AT,            // Keypad @
    KBD_KEY_KEYPAD_EXCLAMATION,   // Keypad !
    KBD_KEY_KEYPAD_MEMSTORE,      // Keypad Memory Store
    KBD_KEY_KEYPAD_MEMRECALL,     // Keypad Memory Recall
    KBD_KEY_KEYPAD_MEMCLEAR,      // Keypad Memory Clear
    KBD_KEY_KEYPAD_MEMADD,        // Keypad Memory Add
    KBD_KEY_KEYPAD_MEMSUB,        // Keypad Memory Subtract
    KBD_KEY_KEYPAD_MEMMUL,        // Keypad Memory Multiply
    KBD_KEY_KEYPAD_MEMDIV,        // Keypad Memory Divice
    KBD_KEY_KEYPAD_PLUSMINUS,     // Keypad +/-
    KBD_KEY_KEYPAD_CLEAR,         // Keypad Clear
    KBD_KEY_KEYPAD_CLEAR_ENTRY,   // Keypad Clear Entry
    KBD_KEY_KEYPAD_BINARY,        // Keypad Binary
    KBD_KEY_KEYPAD_OCTAL,         // Keypad Octal
    KBD_KEY_KEYPAD_DECIMAL,       // Keypad Decimal
    KBD_KEY_KEYPAD_HEXADECIMAL,   // Keypad Hexadecimal

    KBD_KEY_MODIFIER_BASE = 0xE0,
    KBD_KEY_KEYBOARD_L_CONTROL = KBD_KEY_MODIFIER_BASE,  // Keyboard LeftControl
    KBD_KEY_KEYBOARD_L_SHIFT,                            // Keyboard LeftShift
    KBD_KEY_KEYBOARD_L_ALT,                              // Keyboard LeftAlt
    KBD_KEY_KEYBOARD_L_GUI,                              // Keyboard LeftGUI
    KBD_KEY_KEYBOARD_R_CONTROL,                          // Keyboard RightControl
    KBD_KEY_KEYBOARD_R_SHIFT,                            // Keyboard RightShift
    KBD_KEY_KEYBOARD_R_ALT,                              // Keyboard RightAlt
    KBD_KEY_KEYBOARD_R_GUI,                              // Keyboard RightGUI
} KBDHidKeyCode;

// From https://www.usb.org/sites/default/files/hid1_11.pdf
// 8.3 Report Format for Array Items
typedef enum {
    KBD_HID_MOD_BITIDX_CTRL = 0,
    KBD_HID_MOD_BITIDX_SHIFT = 1,
    KBD_HID_MOD_BITIDX_ALT = 2,
    KBD_HID_MOD_BITIDX_GUI = 3,
    KBD_HID_MOD_BITIDX_UNK_4 = 4,
    KBD_HID_MOD_BITIDX_ALTGR = 5,
    KBD_HID_MOD_BITIDX_LANG2 = 6,
    KBD_HID_MOD_BITIDX_LANG3 = 7,
    KBD_HID_MOD_BITIDX_NUM_LOCK = 8,
    KBD_HID_MOD_BITIDX_CAPS_LOCK = 9,
    KBD_HID_MOD_BITIDX_SCROLL_LOCK = 10,
    KBD_HID_MOD_BITIDX_UNK_11 = 11,
    KBD_HID_MOD_BITIDX_UNK_12 = 12,

    KBD_HID_MOD_CTRL = 1 << KBD_HID_MOD_BITIDX_CTRL,
    KBD_HID_MOD_SHIFT = 1 << KBD_HID_MOD_BITIDX_SHIFT,
    KBD_HID_MOD_ALT = 1 << KBD_HID_MOD_BITIDX_ALT,
    KBD_HID_MOD_GUI = 1 << KBD_HID_MOD_BITIDX_GUI,
    KBD_HID_MOD_UNK_4 = 1 << KBD_HID_MOD_BITIDX_UNK_4,
    KBD_HID_MOD_ALTGR = 1 << KBD_HID_MOD_BITIDX_ALTGR,
    KBD_HID_MOD_LANG2 = 1 << KBD_HID_MOD_BITIDX_LANG2,
    KBD_HID_MOD_LANG3 = 1 << KBD_HID_MOD_BITIDX_LANG3,
    KBD_HID_MOD_NUM_LOCK = 1 << KBD_HID_MOD_BITIDX_NUM_LOCK,
    KBD_HID_MOD_CAPSLOCK = 1 << KBD_HID_MOD_BITIDX_CAPS_LOCK,
    KBD_HID_MOD_SCROLL_LOCK = 1 << KBD_HID_MOD_BITIDX_SCROLL_LOCK,
    KBD_HID_MOD_UNK_11 = 1 << KBD_HID_MOD_BITIDX_UNK_11,
    KBD_HID_MOD_UNK_12 = 1 << KBD_HID_MOD_BITIDX_UNK_12,

    KBD_HID_MODS_WITHLEDS = KBD_HID_MOD_NUM_LOCK | KBD_HID_MOD_CAPSLOCK | KBD_HID_MOD_SCROLL_LOCK,
} KBDHidModifierBits;

// From https://www.usb.org/sites/default/files/hid1_11.pdf
// 6.2.1 HID Descriptor
typedef enum _KBDCountryCode {
    KBD_CC_INTERNATIONAL = 0,
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
    KBD_CC_MAX,
} KBDCountryCode;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KBD_TYPES_H
