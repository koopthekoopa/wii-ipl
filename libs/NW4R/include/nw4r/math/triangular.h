#ifndef NW4R_MATH_TRIANGULAR_H
#define NW4R_MATH_TRIANGULAR_H

#include <revolution/types.h>

#include <nw4r/math/triangular.h>

#include <cmath>

namespace nw4r {
    namespace math {
        #define NW4R_MATH_PI                M_PI
        #define NW4R_MATH_LN_2              0.69314718056f

        // [0, 65535] -> [0.0, 256.0f]
        #define NW4R_MATH_IDX_TO_FIDX(x)    ((x) * (1.0f / 256.0f))

        // Convert degrees <-> lookup-table index
        #define NW4R_MATH_DEG_TO_FIDX(x)    ((x) * (256.0f / 360.0f))
        #define NW4R_MATH_FIDX_TO_DEG(x)    ((x) * (360.0f / 256.0f))

        // Convert radians <-> lookup-table index
        #define NW4R_MATH_RAD_TO_FIDX(x)    ((x) * (128.0f / NW4R_MATH_PI))
        #define NW4R_MATH_FIDX_TO_RAD(x)    ((x) * (NW4R_MATH_PI / 128.0f))

        f32 AtanFIdx(f32 x);

        f32 SinFIdx(f32 fidx);
        inline f32 SinIdx(u16 idx) {
            return SinFIdx(NW4R_MATH_IDX_TO_FIDX(U16ToF32(idx)));
        }
        inline f32 SinDeg(f32 deg) {
            return SinFIdx(NW4R_MATH_DEG_TO_FIDX(deg));
        }
        inline f32 SinRad(f32 rad) {
            return SinFIdx(NW4R_MATH_RAD_TO_FIDX(rad));
        }

        f32 CosFIdx(f32 fidx);
        inline f32 CosDeg(f32 deg) {
            return CosFIdx(NW4R_MATH_DEG_TO_FIDX(deg));
        }
        inline f32 CosRad(f32 rad) {
            return CosFIdx(NW4R_MATH_RAD_TO_FIDX(rad));
        }

        f32 Atan2FIdx(f32 y, f32 x);
        inline f32 Atan2Deg(f32 y, f32 x)  {
            return NW4R_MATH_FIDX_TO_DEG(Atan2FIdx(y, x));
        }
        inline f32 Atan2Rad(f32 y, f32 x) {
            return NW4R_MATH_FIDX_TO_RAD(Atan2FIdx(y, x));
        }
    }
}

#endif // NW4R_MATH_TRIANGULAR_H


