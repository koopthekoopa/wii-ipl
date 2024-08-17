#ifndef EGG_CORE_COLOR_FADER_H
#define EGG_CORE_COLOR_FADER_H

#include <nw4r/ut.h>
#include <egg/core/eggFader.h>

namespace EGG {
    class ColorFader : public Fader {
        public:
            ColorFader(f32, f32, f32, f32, nw4r::ut::Color, EStatus);
            
            virtual void setStatus(EStatus);    // 0x08
            virtual EStatus getStatus() const;  // 0x0C
            virtual bool fadeIn();              // 0x10
            virtual bool fadeOut();             // 0x14
            virtual bool calc();                // 0x18
            virtual void draw();                // 0x1C
            virtual ~ColorFader();              // 0x20
            
         private: /* ? */
            void setFrame(u16 value);
            void setColor(nw4r::ut::Color value);
    };
}

#endif // EGG_CORE_COLOR_FADER_H


