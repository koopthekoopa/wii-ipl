#ifndef NW4R_MATH_ARITHMETIC_H
#define NW4R_MATH_ARITHMETIC_H

#include <revolution/types.h>

#include <revolution/os/OSFastCast.h>

namespace nw4r {
    namespace math {
        namespace {
            inline u16 F32ToU16(f32 x) {
                u16 rval;
                OSf32tou16(&x, &rval);
                return rval;
            }

            inline f32 U16ToF32(u16 x) {
                f32 rval;
                OSu16tof32(&x, &rval);
                return rval;
            }
        }

#ifdef TARGET_RVL

        inline f32 FSelect(register f32 cond, register f32 ifPos, register f32 ifNeg) {
            register f32 ret;
            #ifdef __MWERKS__
            asm { fsel ret, cond, ifPos, ifNeg };
            #endif // __MWERKS__
            return ret;
        }

        inline f32 FAbs(register f32 x) {
            register f32 ret;
            #ifdef __MWERKS__
                asm { fabs ret, x }
            #endif // __MWERKS__
            return ret;
        }

#else
        inline f32 FAbs(f32 x) {}
        inline f32 FSelect(f32 cond, f32 ifPos, f32 ifNeg) {}
#endif // TARGET_RVL
        
        f32 FrSqrt(f32 x);
        u32 CntBit1(u32 x);
    }
}

#endif // NW4R_MATH_ARITHMETIC_H
