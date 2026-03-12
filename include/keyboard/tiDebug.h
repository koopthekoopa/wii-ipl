#ifndef TEXTINPUT_DEBUG_H
#define TEXTINPUT_DEBUG_H

#include <revolution/types.h>

#include <revolution/gx.h>
#include <revolution/mtx.h>

namespace textinput {
    namespace debug {
        void    drawBox_(f32 left, f32 top, f32 right, f32 bottom, f32 z, f32 scale, GXColor& color);
        void    drawLine_(f32 x0, f32 y0, f32 x1, f32 y1, f32 z, u8 width, GXColor& color);
    }
}

#endif // TEXTINPUT_DEBUG_H
