#include "keyboard/tiHwKeyboard.h"

#include "keyboard/tiManager.h"
#include "keyboard/tiHKBManager.h"
#include "keyboard/tiLayoutGather.h"

namespace textinput {

    namespace keyboard {

        namespace hwkey {
            HWKeyboard::HWKeyboard(Manager* manager) : mpManager(manager), field_0x14(0), field_0x15(0), field_0x16(0) {
            }

            void HWKeyboard::init() {
                LayoutGather::Singleton::getInstance().setHWPressedShift(false);

                u32 state = input::HKBManager::getInstance().GetModifierState();
                input::HKBManager::getInstance().SetModifierState(state | 0x100, 0x700);
                field_0x15 = 0;
                field_0x16 = 0;
            }

            void HWKeyboard::updateShift(input::HKBManager& hkbManager) {
                LayoutGather &gather = LayoutGather::Singleton::getInstance();

                u32 state = hkbManager.GetModifierState();

                if (!mgr()->getToolBar()->isQwerty() && !mgr()->getToolBar()->isEnableKeytopChange()) {
                    return;
                }

                bool previousShift = gather.isHoldingShift();

                if (state & 0x2) {
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

            bool HWKeyboard::updateInput(input::HKBManager &hkbManager) {
                cellphonetype::KeySet set;
                mgr()->getSignKeyboard();
                // TODO

                return true;
            }
        }  // namespace hwkey

    }  // namespace keyboard

}  // namespace textinput
