#ifndef IPL_MATH_TYPES_H
#define IPL_MATH_TYPES_H

#include <revolution.h>

#include <nw4r/math.h>

namespace ipl {
    namespace math {
        #define IPL_MATH_CLAMP(x, min, max) x < min ? min : (x > max ? max : x)
        
        template<typename T> inline T abs(const T& x) {
            return nw4r::math::FAbs(x);
        }

        typedef struct VEC2 : public nw4r::math::VEC2 {
            VEC2()                          {}

            VEC2(const f32* pF)             { x = pF[0]; y = pF[1]; }
            VEC2(f32 fx, f32 fy)            { x = fx; y = fy; }
        } VEC2;
        
        typedef struct VEC3 : public nw4r::math::VEC3 {
            VEC3()                          {}

            VEC3(const f32* pF)             { x = pF[0]; y = pF[1]; z = pF[2]; }
            VEC3(f32 fx, f32 fy, f32 fz)    { x = fx; y = fy; z = fz; }
        } VEC3;

        typedef struct MTX33 : public nw4r::math::MTX33 {
        } MTX33;

        typedef struct MTX34 : public nw4r::math::MTX34 {
        } MTX34;

        typedef struct MTX44 : public nw4r::math::MTX44 {
        } MTX44;
    }
}

#endif // IPL_MATH_TYPES_H
