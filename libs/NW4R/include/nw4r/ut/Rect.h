#ifndef NW4R_RECT_H
#define NW4R_RECT_H

#include <revolution.h>

namespace nw4r {
    namespace ut {
        class Rect {
            public:
            Rect() : mLeft(0), mTop(0), mRight(0), mBottom(0) {}
            Rect(f32 left, f32 top, f32 right, f32 bottom) : mLeft(left), mTop(top), mRight(right), mBottom(bottom) {}

            f32 mLeft;
            f32 mTop;
            f32 mRight;
            f32 mBottom;
        };
    };
};

#endif // NW4R_RECT_H


