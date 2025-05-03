#ifndef NW4R_RECT_H
#define NW4R_RECT_H

#include <revolution/types.h>

#include <nw4r/math/arithmetic.h>

namespace nw4r {
    namespace ut {
        class Rect {
            public:
            Rect() : left(0), top(0), right(0), bottom(0) {}
            Rect(f32 left, f32 top, f32 right, f32 bottom) : left(left), top(top), right(right), bottom(bottom) {}

            f32 GetWidth() const    { return right - left; }
            f32 GetHeight() const   { return bottom - top; }

            void MoveTo(f32 x, f32 y) {
                right   = x + GetWidth();
                left    = x;

                bottom  = y + GetHeight();
                top     = y;
            }

            void Normalize() {
                f32 l = left;
                f32 t = top;
                f32 r = right;
                f32 b = bottom;

                left    = math::FSelect(r - l, l, r);
                right   = math::FSelect(r - l, r, l);
                top     = math::FSelect(b - t, t, b);
                bottom  = math::FSelect(b - t, b, t);
            }

            f32 left, top;      // 0x00
            f32 right, bottom;  // 0x08
        };
    };
};

#endif // NW4R_RECT_H
