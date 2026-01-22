#ifndef IPL_MATH_TYPES_H
#define IPL_MATH_TYPES_H

#ifdef __cplusplus

#include <nw4r/math.h>

#define IPL_MATH_CLAMP(x, min, max) x < min ? min : (x > max ? max : x)

#define IPL_MATH_INF        ((1.0f / 0.0f))
#define IPL_MATH_NAN        ((0.0f / 0.0f))

#define IPL_MATH_NULL_FLOAT IPL_MATH_INF

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
            VEC2() {}

            operator nw4r::math::_VEC2*()               { return reinterpret_cast<nw4r::math::_VEC2*>(this); }
            operator const nw4r::math::_VEC2*() const   { return reinterpret_cast<const nw4r::math::_VEC2*>(this); }

            VEC2(const nw4r::math::_VEC2& r)            { x = r.x; y = r.y; }
            VEC2(f32 fx, f32 fy)                        { x = fx;  y = fy;  }

            VEC2    operator*(f32 val)  const           { return VEC2(x * val, y * val); }

            void    set(f32 fx, f32 fy)                 { x = fx; y = fx; }

            void    clear()                             { y = 0; x = 0; }
        } VEC2;
        
        typedef struct VEC3 : public nw4r::math::VEC3 {
            VEC3() {}

            operator nw4r::math::_VEC3*()               { return reinterpret_cast<nw4r::math::_VEC3*>(this); }
            operator const nw4r::math::_VEC3*() const   { return reinterpret_cast<const nw4r::math::_VEC3*>(this); }

            VEC3(const nw4r::math::_VEC3& r)            { x = r.x; y = r.y; z = r.z;  }
            VEC3(const nw4r::math::_VEC2& r)            { x = r.x; y = r.y; z = 0.0f; }
            VEC3(f32 fx, f32 fy, f32 fz)                { x = fx;  y = fy;  z = fz;   }

            VEC3    operator*(f32 val) const            { return VEC3(x * val, y * val, z * val); }

            void    set(f32 fx, f32 fy, f32 fz)         { x = fx; y = fx; z = fz; }

            void    clear()                             { z = 0; y = 0; x = 0; }
        } VEC3;

        inline VEC3* VEC3Transform(VEC3* pOut, const nw4r::math::MTX34* pMtx, const VEC3* pVec) {
            MTXMultVec(*pMtx, *pVec, *pOut);
            return pOut;
        }
    }
}

#endif // __cplusplus

#endif // IPL_MATH_TYPES_H
