#ifndef NW4R_MATH_TRIANGULAR_H
#define NW4R_MATH_TRIANGULAR_H

#include <revolution/types.h>

namespace nw4r {
    namespace math {
        #define MATHFidxToDeg(fidx) ((fidx) * (360.f / 256.f))

        f32 AtanFIdx(f32 x);
        f32 Atan2FIdx(f32 y, f32 x);

        inline f32 Atan2Deg(f32 y, f32 x)  { return MATHFidxToDeg(Atan2FIdx(y, x)); }
    }
}

#endif // NW4R_MATH_TRIANGULAR_H


