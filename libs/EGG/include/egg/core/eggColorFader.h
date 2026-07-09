#ifndef EGG_CORE_COLOR_FADER_H
#define EGG_CORE_COLOR_FADER_H

#include <egg/core/eggFader.h>

#include <egg/prim/eggBitFlag.h>

#include <nw4r/ut.h>

namespace EGG {
    class ColorFader : public Fader {
    public:
        ColorFader(f32 x, f32 y, f32 width, f32 height, nw4r::ut::Color color = nw4r::ut::Color(0), EStatus status = PREPARE_IN);

        virtual ~ColorFader();  // 0x04

        virtual void setStatus(EStatus status);  // 0x08

        virtual EStatus getStatus() const;  // 0x0C

        virtual bool fadeIn();   // 0x10
        virtual bool fadeOut();  // 0x14

        virtual bool calc();  // 0x18
        virtual void draw();  // 0x1C

        void setFrame(u16 frame);
        void setColor(nw4r::ut::Color color);

    private:
        enum {
            BIT_FINISH_AFTER_IN,
            BIT_FINISH_AFTER_OUT,
            BIT_INIT,
        };

        static const u16 DEFAULT_FRAME = 20;

    private:
        EStatus mStatus;  // 0x04

        TBitFlag<u8> mFlags;  // 0x08

        u16 mFadeFrame;  // 0x0A
        u16 mFrame;      // 0x0C

        u8 unk_0x0E[2];

        nw4r::ut::Color mColor;  // 0x10
        nw4r::ut::Rect mSpace;   // 0x14
    };
}  // namespace EGG

#endif  // EGG_CORE_COLOR_FADER_H
