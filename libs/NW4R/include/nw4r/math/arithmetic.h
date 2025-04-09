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
        
        inline f32 FAbs(register f32 x) {
            #ifdef __MWERKS__
                asm { fabs x, x }
            #endif
            return x;
        }
        
        f32 FrSqrt(f32 x);
        u32 CntBit1(u32 x);
    }
}

#endif // NW4R_MATH_ARITHMETIC_H
