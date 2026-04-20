
#include "keyboard/tiLayoutGather.h"

#include "keyboard/tiHKBManager.h"

namespace textinput {
    LayoutGather::LayoutGather() {
        mbCpasLock = 0;
        mbPressedShift = 0;
        mbPressedShiftB = 0;
    }

    LayoutGather::~LayoutGather() {
    }

    void LayoutGather::changeCapsLock(const u8& arg) {
        mbCpasLock = arg;
        if (mbCpasLock) {
            input::HKBManager::getInstance().SetModifierState(0x200, 0x200);
        } else {
            input::HKBManager::getInstance().SetModifierState(0x0, 0x200);
        }
    }

};  // namespace textinput
