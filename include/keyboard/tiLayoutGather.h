#ifndef TEXTINPUT_LAYOUT_GATHER_H
#define TEXTINPUT_LAYOUT_GATHER_H

#include <revolution/types.h>

#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/layout.h>

#include <nw4r/lyt/textbox.h>

namespace textinput {
    class LayoutGather {
    public:
        LayoutGather();
        ~LayoutGather();

        void changeCapsLock(const u8& arg);

        bool isHoldingShift() const {
            return isHWPressedShift() || isPressedShiftB();
        }
        u8 isHWPressedShift() const { return mbPressedShift; }
        u8 isPressedShiftB() const { return mbPressedShiftB; }
        void setHWPressedShift(const u8& arg) { mbPressedShift = arg; }

        class Singleton {
        public:
            static LayoutGather& getInstance() {
                static LayoutGather sGather;
                return sGather;
            }
        };

    private:
        u8 mbCpasLock : 1;       // 0x00
        u8 mbPressedShift : 1;   // 0x00
        u8 mbPressedShiftB : 1;  // 0x00
    };
}  // namespace textinput

#endif  // TEXTINPUT_LAYOUT_GATHER_H
