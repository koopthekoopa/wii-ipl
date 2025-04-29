#ifndef NW4R_RECT_H
#define NW4R_RECT_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        class Rect {
            public:
            Rect() : left(0), top(0), right(0), bottom(0) {}
            Rect(f32 left, f32 top, f32 right, f32 bottom) : left(left), top(top), right(right), bottom(bottom) {}

            f32 GetWidth() const    { return right - left; }
            f32 GetHeight() const   { return bottom - top; }

            f32 left, top;      // 0x00
            f32 right, bottom;  // 0x08
        };
    };
};

#endif // NW4R_RECT_H
