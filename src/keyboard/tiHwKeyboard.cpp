#include "keyboard/tiHwKeyboard.h"

#include "keyboard/tiHKBManager.h"
#include "keyboard/tiLayoutGather.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiSignWindow.h"

#include <revolution/kbd/hidtypes.h>

namespace textinput {

    namespace keyboard {

        namespace hwkey {
            HWKeyboard::HWKeyboard(Manager* manager) : mpManager(manager), mbShiftHeld(0), mbSingleQuoteR(false), mbDoubleQuoteR(false) {
            }

            void HWKeyboard::init() {
                LayoutGather::Singleton::getInstance().setHWPressedShift(false);

                u32 modifierState = input::HKBManager::getInstance().GetModifierState();
                input::HKBManager::getInstance().SetModifierState(modifierState | KBD_HID_MOD_NUM_LOCK, KBD_HID_MODS_WITHLEDS);

                resetQuotes();
            }

            void HWKeyboard::updateShift(input::HKBManager& hkbManager) {
                LayoutGather& gather = LayoutGather::Singleton::getInstance();

                u32 modifierState = hkbManager.GetModifierState();

                if (!mgr()->getToolBar()->isQwerty() && !mgr()->getToolBar()->isEnableKeytopChange()) {
                    return;
                }

                bool previousShift = gather.isHoldingShift();

                if (modifierState & KBD_HID_MOD_SHIFT) {
                    gather.setHWPressedShift(true);
                    if (!previousShift) {
                        mgr()->getPCKeyboard()->onPressedShift(true);
                    }
                } else {
                    gather.setHWPressedShift(false);
                    if (previousShift) {
                        if (!gather.isHoldingShift()) {
                            mgr()->getPCKeyboard()->onReleasedShift();
                        }
                    }
                }
            }

            bool HWKeyboard::updateInput(input::HKBManager& hkbManager) {
                if (!mgr()->getSignKeyboard()->isActive()) {
                    if (!updateFinalizeKey_(hkbManager)) {
                        if (!updateRepeatKey_(hkbManager)) {
                            if (!updateTriggerKey_(hkbManager)) {
                                updateTappingShift_(hkbManager);
                            }
                        }
                    }
                }
                updateShift(hkbManager);

                return false;
            }

            bool HWKeyboard::updateFinalizeKey_(input::HKBManager& hkbManager) {
                if (!(hkbManager.GetModifierState() & KBD_HID_MOD_ALT)) {
                    return false;
                }

                input::HKBManager::KeySet currKeySet;
                for (currKeySet = hkbManager.GetTriggeredKeySet(); currKeySet.IsValid(); currKeySet = currKeySet.GetNext()) {
                    switch (currKeySet.GetKey()) {
                        case KBD_KEY_KEYBOARD_ENTER:
                        case KBD_KEY_KEYPAD_ENTER:
                            mgr()->getToolBar()->onOK();
                            return true;

                        case KBD_KEY_KEYBOARD_ESCAPE:
                        case KBD_KEY_KEYBOARD_BACKSPACE:
                            mgr()->getToolBar()->onCancel();
                            return true;
                    }
                }
                return false;
            }

            bool HWKeyboard::updateRepeatKey_(input::HKBManager& hkbManager) {
                u32 modifierState = hkbManager.GetModifierState();

                input::HKBManager::KeySet currKeySet;
                currKeySet = hkbManager.GetRepeatedKeySet();
                if (!currKeySet.IsValid())
                    return false;

                if (!mgr()->getToolBar()->isQwerty() && mgr()->getToolBar()->isEnableKeytopChange()) {
                    return true;
                }

                for (; currKeySet.IsValid(); currKeySet = currKeySet.GetNext()) {
                    switch (currKeySet.GetKey()) {
                        case KBD_KEY_KEYBOARD_DELETE:
                            sendCommand(CommandReceiver::INPUT_COMMAND_2, NULL);
                            break;

                        case KBD_KEY_KEYBOARD_BACKSPACE:
                            sendCommand(CommandReceiver::INPUT_COMMAND_1, NULL);
                            break;

                            // TODO: un-goto this thing
                            {
                                HVKCode ctrlCode;
                                case KBD_KEY_KEYBOARD_RIGHTARROW:
                                    ctrlCode = HVK_UNK_0x20;
                                    goto SEND_CTRL_CODE_CMD;
                                case KBD_KEY_KEYBOARD_LEFTARROW:
                                    ctrlCode = HVK_UNK_0x1F;
                                    goto SEND_CTRL_CODE_CMD;
                                case KBD_KEY_KEYBOARD_DOWNARROW:
                                    ctrlCode = HVK_UNK_0x1E;
                                    goto SEND_CTRL_CODE_CMD;
                                case KBD_KEY_KEYBOARD_UPARROW:
                                    ctrlCode = HVK_UNK_0x1D;
                                    goto SEND_CTRL_CODE_CMD;

                                SEND_CTRL_CODE_CMD:
                                    CommandReceiver::Command38Data cmdData = {ctrlCode, modifierState};
                                    sendCommand(CommandReceiver::INPUT_COMMAND_38, &cmdData);
                                    break;
                            }

                        case KBD_KEY_KEYBOARD_SPACEBAR:
                            if (mgr()->getToolBar()->isQwerty() || !mgr()->getCellPhoneKeyboard()->isNumeric()) {
                                if (!(modifierState & KBD_HID_MOD_GUI)) {
                                    CommandReceiver::Command38Data values = {HVK_UNK_0x08, modifierState};
                                    sendCommand(CommandReceiver::INPUT_COMMAND_38, &values);
                                }
                            }
                            break;
                    }
                }
                return false;
            }

            bool HWKeyboard::updateTriggerKey_(input::HKBManager& hkbManager) {
                u32 modifierState = hkbManager.GetModifierState();

                input::HKBManager::KeySet currKeySet;
                currKeySet = hkbManager.GetTriggeredKeySet();
                if (!currKeySet.IsValid())
                    return false;

                if (!mgr()->getToolBar()->isQwerty() && mgr()->getToolBar()->isEnableKeytopChange()) {
                    return true;
                }
                if (!mgr()->getPCKeyboard()->isABC()) {
                    if (mgr()->getToolBar()->isQwerty()) {
                        mgr()->onSE(sound::SE_KETAI_MODE_SWITCHING);
                    }
                    mgr()->getPCKeyboard()->setABC(true);
                }

                for (; currKeySet.IsValid(); currKeySet = currKeySet.GetNext()) {
                    wchar_t ch = currKeySet.GetWChar();
                    u8 key = currKeySet.GetKey();

                    if (ch == L' ') {
                        if (modifierState & KBD_HID_MOD_GUI) {
                            CommandReceiver::Command38Data cmdData = {HVK_UNK_0x08, modifierState};
                            sendCommand(CommandReceiver::INPUT_COMMAND_38, &cmdData);
                        }
                    } else if (ch != L'\0') {
                        bool chValid = true;
                        if (!mgr()->getToolBar()->isQwerty() && mgr()->getCellPhoneKeyboard()->isNumeric()) {
                            switch (ch) {
                                case L'0':
                                case L'1':
                                case L'2':
                                case L'3':
                                case L'4':
                                case L'5':
                                case L'6':
                                case L'7':
                                case L'8':
                                case L'9':
                                    break;

                                case L'.':
                                    if (mgr()->getCellPhoneKeyboard()->isNumericWithDot())
                                        break;

                                default:
                                    chValid = false;
                                    break;
                            }
                        }
                        if (chValid) {
                            modifierState = 0;
                            if (hkbManager.GetModifierState() & KBD_HID_MOD_SHIFT) {
                                modifierState |= KBD_HID_MOD_CTRL;
                            }
                            if (hkbManager.GetModifierState() & KBD_HID_MOD_CAPSLOCK) {
                                modifierState |= KBD_HID_MOD_SHIFT;
                            }
                            if (!(modifierState & KBD_HID_MOD_CTRL)) {
                                mgr()->getPCKeyboard()->getKeyState()->andABCFlag(~0x8F);
                            }

                            ch = (wchar_t)convertWCCode(ch);
                            CommandReceiver::Command0Data cmdData = {ch, modifierState, true, false, 0};
                            sendCommand(CommandReceiver::INPUT_COMMAND_0, &cmdData);
                            if (mgr()->getLanguage() == CN) {
                                if (ch == L'“' || ch == L'”') {
                                    mbDoubleQuoteR = !mbDoubleQuoteR;
                                } else if (ch == L'‘' || ch == L'’') {
                                    mbSingleQuoteR = !mbSingleQuoteR;
                                }
                            }
                        }
                    } else {
                        bool shouldSendHwKeycode = true;

                        // I can't get sCtrlCodeMap to go into r26 instead of r31

                        HVKCode hwCode;

                        // Outlined
                        hwCode = hidCodeToHwKeycode_(key);

                        // Inlined
                        // if (key < KBD_KEY_KEYBOARD_3_HASH) {
                        //     hwCode = HVK_NONE;
                        // } else if (key < KBD_KEY_KEYBOARD_LANG9) {
                        //     hwCode = (HVKCode)sCtrlCodeMap.nonModifier[key - KBD_KEY_KEYBOARD_3_HASH];
                        // } else if (key < KBD_KEY_MODIFIER_BASE) {
                        //     hwCode = HVK_NONE;
                        // } else if (key < KBD_KEY_MODIFIER_BASE + 0x10) {
                        //     hwCode = (HVKCode)sCtrlCodeMap.modifier[key - KBD_KEY_MODIFIER_BASE];
                        // } else {
                        //     hwCode = HVK_NONE;
                        // }

                        if (hwCode == HVK_UNK_0x1C) {
                            bool isNumLock = !(hkbManager.GetModifierState() & KBD_HID_MOD_NUM_LOCK);
                            if (!mgr()->getToolBar()->isQwerty() && mgr()->getCellPhoneKeyboard()->isNumeric()) {
                                isNumLock = true;
                            }
                            hkbManager.SetModifierState(isNumLock ? KBD_HID_MOD_NUM_LOCK : 0, KBD_HID_MOD_NUM_LOCK);
                        }

                        if (!mgr()->getToolBar()->isQwerty() && mgr()->getCellPhoneKeyboard()->isNumeric()) {
                            switch (hwCode) {
                                default:
                                    shouldSendHwKeycode = false;
                                    break;

                                case HVK_UNK_0x15:
                                case HVK_UNK_0x16:
                                case HVK_UNK_0x1D:
                                case HVK_UNK_0x1E:
                                case HVK_UNK_0x1F:
                                case HVK_UNK_0x20:
                                    break;
                            }
                        }
                        if (shouldSendHwKeycode) {
                            CommandReceiver::Command38Data cmdData = {hwCode, modifierState};
                            sendCommand(CommandReceiver::INPUT_COMMAND_38, &cmdData);
                        }
                    }

                    switch (currKeySet.GetKey()) {
                        case KBD_KEY_KEYBOARD_CAPSLOCK:
                            if (mgr()->getToolBar()->isQwerty() || mgr()->getToolBar()->isEnableKeytopChange()) {
                                mgr()->getPCKeyboard()->onPressedCaps();
                            }
                            break;
                    }
                }
                return false;
            }

            HVKCode HWKeyboard::hidCodeToHwKeycode_(u8 key) {
                if (key < KBD_KEY_KEYBOARD_3_HASH) {
                    return HVK_NONE;
                } else if (key < KBD_KEY_KEYBOARD_LANG9) {
                    return (HVKCode)sCtrlCodeMap.nonModifier[key - KBD_KEY_KEYBOARD_3_HASH];
                } else if (key < KBD_KEY_MODIFIER_BASE) {
                    return HVK_NONE;
                } else if (key < KBD_KEY_MODIFIER_BASE + 0x10) {
                    return (HVKCode)sCtrlCodeMap.modifier[key - KBD_KEY_MODIFIER_BASE];
                } else {
                    return HVK_NONE;
                }
            }

            bool HWKeyboard::updateTappingShift_(input::HKBManager& hkbManager) {
                u32 modifierState = hkbManager.GetModifierState();  // Unused

                input::HKBManager::KeySet currKeySet;
                for (currKeySet = hkbManager.GetTriggeredKeySet(); currKeySet.IsValid(); currKeySet = currKeySet.GetNext()) {
                    switch (currKeySet.GetKey()) {
                        case KBD_KEY_KEYBOARD_L_SHIFT:
                        case KBD_KEY_KEYBOARD_R_SHIFT:
                            mbShiftHeld = true;
                            return false;

                        default:
                            mbShiftHeld = false;
                            break;
                    }
                }
                if (!mbShiftHeld)
                    return false;

                for (currKeySet = hkbManager.GetReleasedKeySet(); currKeySet.IsValid(); currKeySet = currKeySet.GetNext()) {
                    switch (currKeySet.GetKey()) {
                        case KBD_KEY_KEYBOARD_L_SHIFT:
                        case KBD_KEY_KEYBOARD_R_SHIFT:
                            mbShiftHeld = false;
                            if (mgr()->getToolBar()->isQwerty() && mgr()->getPCKeyboard()->getUnkValue3()) {
                                sendCommand(CommandReceiver::INPUT_COMMAND_46, NULL);
                            }
                            return false;
                    }
                }
                return false;
            }

            void HWKeyboard::updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
                if (trig != 0) {
                    mbShiftHeld = false;
                }
            }

            wchar_t HWKeyboard::convertWCCode(wchar_t code) const {
                if (mgr()->getToolBar()->isQwerty()) {
                    if (mgr()->getPCKeyboard()->getTranslateMode() != pctype::Base::TM_00) {
                        if (mgr()->getLanguage() == JP) {
                            switch (code) {
                                case L',':
                                    return L'、';
                                case L'.':
                                    return L'。';
                                case L'-':
                                    return L'ー';
                                case L'[':
                                    return L'「';
                                case L']':
                                    return L'」';
                            }
                        } else if (mgr()->getLanguage() == CN) {
                            switch (code) {
                                case L',':
                                    return L'，';
                                case L'.':
                                    return L'。';
                                case L'<':
                                    return L'《';
                                case L'>':
                                    return L'》';
                                case L'!':
                                    return L'！';
                                case L'?':
                                    return L'？';
                                case L'(':
                                    return L'（';
                                case L')':
                                    return L'）';
                                case L':':
                                    return L'：';
                                case L';':
                                    return L'；';
                                case L'-':
                                    return L'－';
                                case L'_':
                                    return L'＿';
                                case L'\\':
                                    return L'、';
                                case L'\'':
                                    return mbSingleQuoteR ? L'’' : L'‘';
                                case L'"':
                                    return mbDoubleQuoteR ? L'”' : L'“';
                            }
                        }
                    }
                }
                return code;
            }

            void HWKeyboard::setLanguage(textinput::Destination destination, textinput::Language language) {
                if (destination == DST_EU) {
                    input::HKBManager::getInstance().SetCountry(sKbdCountryCodesEur[language]);
                } else {
                    input::HKBManager::getInstance().SetCountry(sKbdCountryCodesAll[language]);
                }
            }

            const u8 HWKeyboard::sKbdCountryCodesEur[textinput::LanguageEnd] = {
                KBD_CC_JAPAN,   KBD_CC_UNITED_STATES, KBD_CC_UNITED_KINGDOM, KBD_CC_FRENCH,        KBD_CC_GERMAN,
                KBD_CC_ITALIAN, KBD_CC_SPANISH,       KBD_CC_INTERNATIONAL,  KBD_CC_UNITED_STATES, KBD_CC_UNITED_STATES,
            };
            const u8 HWKeyboard::sKbdCountryCodesAll[textinput::LanguageEnd] = {
                KBD_CC_JAPAN,   KBD_CC_UNITED_STATES,  KBD_CC_UNITED_KINGDOM, KBD_CC_CANADIAN_FR,   KBD_CC_GERMAN,
                KBD_CC_ITALIAN, KBD_CC_LATIN_AMERICAN, KBD_CC_INTERNATIONAL,  KBD_CC_UNITED_STATES, KBD_CC_UNITED_STATES,
            };

            // clang-format off
            const HWKeyboard::CtrlCodeMap HWKeyboard::sCtrlCodeMap = {{
                0,             // KEYBOARD_3_HASH
                0,             // KEYBOARD_4_DOLLAR
                0,             // KEYBOARD_5_PERCENT
                0,             // KEYBOARD_6_CARET
                0,             // KEYBOARD_7_AMPERSAND
                0,             // KEYBOARD_8_ASTERISK
                0,             // KEYBOARD_9_OPENPARENS
                0,             // KEYBOARD_0_CLOSEPARENS
                HVK_UNK_0x09,  // KEYBOARD_ENTER
                HVK_UNK_0x01,  // KEYBOARD_ESCAPE
                HVK_UNK_0x0A,  // KEYBOARD_BACKSPACE
                HVK_UNK_0x03,  // KEYBOARD_TAB
                HVK_UNK_0x08,  // KEYBOARD_SPACEBAR
                0,             // KEYBOARD_DASH_UNDERSCORE
                0,             // KEYBOARD_EQUAL_PLUS
                0,             // KEYBOARD_OPENBRACKET_OPENBRACE
                0,             // KEYBOARD_CLOSEBRACKET_CLOSEBRACE
                0,             // KEYBOARD_BACKSLASH_BAR
                0,             // KEYBOARD_NON_US_HASH
                0,             // KEYBOARD_SEMICOLON_COLON
                0,             // KEYBOARD_SINGLEQUOTE_DOUBLEQUOTE
                HVK_UNK_0x02,  // KEYBOARD_BACKTICK_TILDE
                0,             // KEYBOARD_COMMA_LESSTHAN
                0,             // KEYBOARD_PERIOD_GREATERTHAN
                0,             // KEYBOARD_SLASH_QUESTION
                HVK_UNK_0x04,  // KEYBOARD_CAPSLOCK
                HVK_UNK_0x21,  // KEYBOARD_F1
                HVK_UNK_0x22,  // KEYBOARD_F2
                HVK_UNK_0x23,  // KEYBOARD_F3
                HVK_UNK_0x24,  // KEYBOARD_F4
                HVK_UNK_0x25,  // KEYBOARD_F5
                HVK_UNK_0x26,  // KEYBOARD_F6
                HVK_UNK_0x27,  // KEYBOARD_F7
                HVK_UNK_0x28,  // KEYBOARD_F8
                HVK_UNK_0x29,  // KEYBOARD_F9
                HVK_UNK_0x2A,  // KEYBOARD_F10
                HVK_UNK_0x2B,  // KEYBOARD_F11
                HVK_UNK_0x2C,  // KEYBOARD_F12
                HVK_UNK_0x19,  // KEYBOARD_PRINTSCREEN
                HVK_UNK_0x1A,  // KEYBOARD_SCROLL_LOCK
                HVK_UNK_0x1B,  // KEYBOARD_PAUSE
                HVK_UNK_0x13,  // KEYBOARD_INSERT
                HVK_UNK_0x15,  // KEYBOARD_HOME
                HVK_UNK_0x17,  // KEYBOARD_PAGEUP
                HVK_UNK_0x14,  // KEYBOARD_DELETE
                HVK_UNK_0x16,  // KEYBOARD_END
                HVK_UNK_0x18,  // KEYBOARD_PAGEDOWN
                0,             // KEYBOARD_RIGHTARROW
                0,             // KEYBOARD_LEFTARROW
                0,             // KEYBOARD_DOWNARROW
                0,             // KEYBOARD_UPARROW
                HVK_UNK_0x1C,  // KEYPAD_NUMLOCK
                0,             // KEYPAD_DIVIDE
                0,             // KEYPAD_MULTIPLY
                0,             // KEYPAD_MINUS
                0,             // KEYPAD_PLUS
                HVK_UNK_0x09,  // KEYPAD_ENTER
                0,             // KEYPAD_1_END
                0,             // KEYPAD_2_DOWNARROW
                0,             // KEYPAD_3_PAGEDOWN
                0,             // KEYPAD_4_LEFTARROW
                0,             // KEYPAD_5
                0,             // KEYPAD_6_RIGHTARROW
                0,             // KEYPAD_7_HOME
                0,             // KEYPAD_8_UPARROW
                0,             // KEYPAD_9_PAGEUP
                0,             // KEYPAD_0_INSERT
                0,             // KEYPAD_PERIOD_DELETE
                0,             // KEYBOARD_NON_US_SLASH
                HVK_UNK_0x0C,  // KEYBOARD_APPLICATION
                0,             // KEYBOARD_POWER
                0,             // KEYPAD_EQUAL
                0,             // KEYBOARD_F13
                0,             // KEYBOARD_F14
                0,             // KEYBOARD_F15
                0,             // KEYBOARD_F16
                0,             // KEYBOARD_F17
                0,             // KEYBOARD_F18
                0,             // KEYBOARD_F19
                0,             // KEYBOARD_F20
                0,             // KEYBOARD_F21
                0,             // KEYBOARD_F22
                0,             // KEYBOARD_F23
                0,             // KEYBOARD_F24
                0,             // KEYBOARD_EXECUTE
                0,             // KEYBOARD_HELP
                0,             // KEYBOARD_MENU
                0,             // KEYBOARD_SELECT
                0,             // KEYBOARD_STOP
                0,             // KEYBOARD_AGAIN
                0,             // KEYBOARD_UNDO
                0,             // KEYBOARD_CUT
                0,             // KEYBOARD_COPY
                0,             // KEYBOARD_PASTE
                0,             // KEYBOARD_FIND
                0,             // KEYBOARD_MUTE
                0,             // KEYBOARD_VOLUME_UP
                0,             // KEYBOARD_VOLUME_DOWN
                0,             // KEYBOARD_LOCKING_CAPS_LOCK
                0,             // KEYBOARD_LOCKING_NUM_LOCK
                0,             // KEYBOARD_LOCKING_SCROLL_LOCK
                0,             // KEYPAD_COMMA
                0,             // KEYPAD_EQUALSIGN
                0,             // KEYBOARD_INTERNATIONAL1
                HVK_UNK_0x10,  // KEYBOARD_INTERNATIONAL2
                0,             // KEYBOARD_INTERNATIONAL3
                HVK_UNK_0x0F,  // KEYBOARD_INTERNATIONAL4
                HVK_UNK_0x0E,  // KEYBOARD_INTERNATIONAL5
                0,             // KEYBOARD_INTERNATIONAL6
                0,             // KEYBOARD_INTERNATIONAL7
                0,             // KEYBOARD_INTERNATIONAL8
                0,             // KEYBOARD_INTERNATIONAL9
                HVK_UNK_0x11,  // KEYBOARD_LANG1
                HVK_UNK_0x12,  // KEYBOARD_LANG2
                0,             // KEYBOARD_LANG3
                0,             // KEYBOARD_LANG4
                0,             // KEYBOARD_LANG5
                0,             // KEYBOARD_LANG6
                0,             // KEYBOARD_LANG7
                0,             // KEYBOARD_LANG8
            }, {
                HVK_UNK_0x06,  // KEYBOARD_L_CONTROL
                HVK_UNK_0x05,  // KEYBOARD_L_SHIFT
                HVK_UNK_0x07,  // KEYBOARD_L_ALT
                HVK_UNK_0x0B,  // KEYBOARD_L_GUI
                HVK_UNK_0x06,  // KEYBOARD_R_CONTROL
                HVK_UNK_0x05,  // KEYBOARD_R_SHIFT
                HVK_UNK_0x07,  // KEYBOARD_R_ALT
                HVK_UNK_0x0B,  // KEYBOARD_R_GUI
            },};
            // clang-format on
        }  // namespace hwkey

    }  // namespace keyboard

}  // namespace textinput
