#ifndef NW4R_MATH_TYPES_H
#define NW4R_MATH_TYPES_H

#include <revolution/types.h>
#include <revolution/mtx.h>

namespace nw4r {
    namespace math {
        struct _MTX33 {
            union {
                struct {
                    f32 _00, _01, _02;
                    f32 _10, _11, _12;
                    f32 _20, _21, _22;
                };
                f32 m[3][3];
                f32 a[3 * 3];
            };
        };

        typedef struct MTX33 : public _MTX33 {
        } MTX33;

        struct _MTX34 {
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
        };

        typedef struct MTX34 : public _MTX34 {
            MTX34() {}

            MTX34(const f32*);
            MTX34(const Mtx& rhs);

            operator f32*()                 { return& _00; }
            operator const f32*() const     { return& _00; }

            operator MtxPtr()               { return (MtxPtr)&_00; }
            operator const MtxPtr() const   { return (const MtxPtr)&_00; }
        } MTX34;

        struct _MTX44 {
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

        typedef struct MTX44 : public _MTX44 {
        } MTX44;

        void MTX44Identity(MTX44 *pMtx);
        
        struct _VEC2 {
            f32 x;
            f32 y;
        };
        
        typedef struct VEC2 : public _VEC2 {
            VEC2()                      {}

            VEC2(const f32* pF)         { x = pF[0]; y = pF[1]; }
            VEC2(f32 fx, f32 fy)        { x = fx; y = fy; }

            operator f32*()             { return reinterpret_cast<f32*>(this); }
            operator const f32*() const { return reinterpret_cast<const f32*>(this); }

            VEC2 operator+(const VEC2& rRhs) const {
                return VEC2(x + rRhs.x, y + rRhs.y);
            }
            VEC2 operator-(const VEC2& rRhs) const {
                return VEC2(x - rRhs.x, y - rRhs.y);
            }
        
            VEC2& operator+=(const VEC2& rRhs) {
                x += rRhs.x;
                y += rRhs.y;
                return *this;
            }
            VEC2& operator-=(const VEC2& rRhs) {
                x -= rRhs.x;
                y -= rRhs.y;
                return *this;
            }
        
            bool operator==(const VEC2& rRhs) const {
                return x == rRhs.x && y == rRhs.y;
            }
            bool operator!=(const VEC2& rRhs) const {
                return x != rRhs.x || y != rRhs.y;
            }
        } VEC2;

        struct _VEC3 {
            f32 x;
            f32 y;
            f32 z;
        };
        
        typedef struct VEC3 : public _VEC3 {
            VEC3()                          {}

            VEC3(const f32* pF)             { x = pF[0]; y = pF[1]; z = pF[2]; }
            VEC3(f32 fx, f32 fy, f32 fz)    { x = fx; y = fy; z = fz; }

            operator Vec*()                 { return reinterpret_cast<Vec*>(this); }
            operator const Vec*() const     { return reinterpret_cast<const Vec*>(this); }

            VEC3& operator+=(const VEC3& rhs);
        } VEC3;

        struct _VEC4 {
            f32 x;
            f32 y;
            f32 z;
            f32 w;
        };

        typedef struct VEC4 : public _VEC4 {
            VEC4()                                  {}

            VEC4(const f32* pF)                     { x = pF[0]; y = pF[1]; z = pF[2]; w = pF[3]; }
            VEC4(f32 fx, f32 fy, f32 fz, f32 fw)    { x = fx; y = fy; z = fz; w = fw; }
        } VEC4;

        inline VEC3* VEC3Transform(VEC3* pOut, const MTX34* pMtx, const VEC3* pVec) {
            PSMTXMultVec(*pMtx, *pVec, *pOut);
            return pOut;
        }
        VEC4* VEC4Transform(VEC4* pOut, const MTX44* pM, const VEC4* pV);

        inline MTX34* MTX34Copy(MTX34* pOut, const MTX34 *p) {
            PSMTXCopy(*p, *pOut);
            return pOut;
        }

        inline MTX34* MTX34Mult(MTX34* pOut, const MTX34 *p1, const MTX34 *p2) {
            PSMTXConcat(*p1, *p2, *pOut);
            return pOut;
        }

        inline MTX34* MTX34Identity(MTX34* pOut) {
            PSMTXIdentity(*pOut);
            return pOut;
        }
    }
}

#endif // NW4R_MATH_TYPES_H
