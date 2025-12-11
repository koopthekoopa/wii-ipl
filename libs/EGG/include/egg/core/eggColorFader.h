#ifndef EGG_CORE_COLOR_FADER_H
#define EGG_CORE_COLOR_FADER_H

#include <nw4r/ut.h>
#include <egg/core/eggFader.h>

namespace EGG {
    class ColorFader : public Fader {
        public:
            ColorFader(f32 left, f32 top, f32 right, f32 bottom, nw4r::ut::Color color = nw4r::ut::Color(0), EStatus status = EGG::ColorFader::PREPARE_IN);
            
            virtual void    setStatus(EStatus status);  // 0x08
            virtual EStatus getStatus() const;          // 0x0C
            
            virtual bool    fadeIn();                   // 0x10
            virtual bool    fadeOut();                  // 0x14
            
            virtual bool    calc();                     // 0x18
            virtual void    draw();                     // 0x1C
            
            virtual ~ColorFader();                      // 0x20
            
        private: /* ? */
            void    setFrame(u16 value);
            void    setColor(nw4r::ut::Color value);

            u8  dummy[0x20];
    };
}

#endif // EGG_CORE_COLOR_FADER_H
