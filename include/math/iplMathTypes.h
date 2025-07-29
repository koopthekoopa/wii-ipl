#ifndef IPL_MATH_TYPES_H
#define IPL_MATH_TYPES_H

#ifdef __cplusplus

#include <nw4r/math.h>

#define IPL_MATH_CLAMP(x, min, max) x < min ? min : (x > max ? max : x)

#define IPL_MATH_NULL_FLOAT ((1.0f / 0.0f))

namespace ipl {
    namespace math {
        template<typename T> inline T abs(const T& x) {
            return nw4r::math::FAbs(x);
        }

        typedef struct MTX33 : public nw4r::math::MTX33 {
        } MTX33;

        typedef struct MTX34 : public nw4r::math::MTX34 {
        } MTX34;

        typedef struct MTX44 : public nw4r::math::MTX44 {
        } MTX44;

        typedef struct VEC2 : public nw4r::math::VEC2 {
            VEC2() :nw4r::math::VEC2()       {}

            VEC2(const f32* pF)  : nw4r::math::VEC2(pF) {}
            VEC2(f32 fx, f32 fy) : nw4r::math::VEC2(fx, fy) {}
        } VEC2;
        
        typedef struct VEC3 : public nw4r::math::VEC3 {
            VEC3()                          { x = 0.0f; y = 0.0f; z = 0.0f; }

            VEC3(const f32* pF)             { x = pF[0]; y = pF[1]; z = pF[2]; }
            VEC3(f32 fx, f32 fy, f32 fz)    { x = fx; y = fy; z = fz; }
        } VEC3;

        inline VEC3* VEC3Transform(VEC3* pOut, const nw4r::math::MTX34* pMtx, const VEC3* pVec) {
            PSMTXMultVec(*pMtx, *pVec, *pOut);
            return pOut;
        }
    }
}

#endif // __cplusplus

#endif // IPL_MATH_TYPES_H
