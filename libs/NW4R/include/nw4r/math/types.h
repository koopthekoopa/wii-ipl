#ifndef NW4R_MATH_TYPES_H
#define NW4R_MATH_TYPES_H

#include <revolution/types.h>
#include <revolution/mtx.h>

namespace nw4r {
    namespace math {
        typedef struct _VEC2 {
            f32 x;
            f32 y;
        };
        
        typedef struct VEC2 : public _VEC2 {
            VEC2()                  {}

            VEC2(const f32* pF)     { x = pF[0]; y = pF[1]; }
            VEC2(f32 fx, f32 fy)    { x = fx; y = fy; }
        };

        typedef struct _VEC3 {
            f32 x;
            f32 y;
            f32 z;
        };
        
        typedef struct VEC3 : public _VEC3 {
            VEC3()                          {}

            VEC3(const f32* pF)             { x = pF[0]; y = pF[1]; z = pF[2]; }
            VEC3(f32 fx, f32 fy, f32 fz)    { x = fx; y = fy; z = fz; }
        };
        
        typedef struct _MTX33 {
            union {
                struct {
                    f32 _00, _01, _02;
                    f32 _10, _11, _12;
                    f32 _20, _21, _22;
                };
                f32 m[3][3];
                f32 a[3 * 3];
            };
        } MTX33;

        typedef struct _MTX34 {
            union {
                struct {
                    f32 _00, _01, _02, _03;
                    f32 _10, _11, _12, _13;
                    f32 _20, _21, _22, _23;
                };
                f32 m[3][4];
                f32 a[3 * 4];
                Mtx mtx;
            };
        } MTX34;

        typedef  struct _MTX44 {
            union {
                struct {
                    f32 _00, _01, _02, _03;
                    f32 _10, _11, _12, _13;
                    f32 _20, _21, _22, _23;
                    f32 _30, _31, _32, _33;
                };
                f32 m[4][4];
                f32 a[4 * 4];
                Mtx44 mtx;
            };
        };
    }
}

#endif // NW4R_MATH_TYPES_H


