#ifndef TEXTINPUT_CELL_PHONE_H
#define TEXTINPUT_CELL_PHONE_H

#include "tiNw4rManager.h"

namespace textinput {
    namespace keyboard {
        namespace cellphonetype {
            class Base {
            public:
                // TODO
                virtual void vt_0x08();
                virtual void vt_0x0C();
                virtual void vt_0x10();
                virtual void vt_0x14();
                virtual void vt_0x18();
                virtual void vt_0x1C();
                virtual void vt_0x20();
                virtual void vt_0x24();
                virtual void vt_0x28();
                virtual void vt_0x2C();
                virtual void vt_0x30();
                virtual void vt_0x34();
                virtual void vt_0x38();
                virtual void vt_0x3C();
                virtual void vt_0x40();
                virtual void vt_0x44();

                virtual bool isNumeric() const;

                virtual void vt_0x4C();
                virtual void vt_0x50();
                virtual void vt_0x54();
                virtual void vt_0x58();
                virtual void vt_0x5C();
                virtual void vt_0x60();
                virtual void vt_0x64();
                virtual void vt_0x68(bool);

                virtual bool onClose();

                // TODO enum?
                int getInputType() const;
            };

            class LayoutByNW4R : public Base, public nw4rmanager::Layout {
            public:
                virtual bool onClose();

                void onPressedShift(bool shift);
                void onReleasedShift();
            };

        }  // namespace cellphonetype
    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_CELL_PHONE_H
