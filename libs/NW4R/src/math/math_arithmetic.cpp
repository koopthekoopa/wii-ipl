#include <nw4r/math.h>

namespace nw4r {
    namespace math {
        f32 FrSqrt(register f32 x) {
            register f32 rsqrt;
            register f32 c_half = 0.5f, c_three = 3.0f;
            register f32 work0, work1;
            #ifdef __MWERKS__
                asm {
                    // Estimate reciprocal square root
                    frsqrte rsqrt, x
                    
                    // Refine estimate using Newton-Raphson method
                    // y = 1 / sqrt(x)
                    fmuls work0, rsqrt, rsqrt         // rsqrt^2
                    fmuls work1, rsqrt, c_half        // rsqrt * 0.5
                    fnmsubs work0, work0, x, c_three  // (3 - x * rsqrt^2)
                    fmuls work1, work0, work1         // (3 - x * rsqrt^2) * (rsqrt * 0.5)
                }
            #endif
            return work1;
        }

        u32 CntBit1(register u32 x) {
            x = x - ((x >> 1)&  0x55555555);
            x = (x&  0x33333333) + ((x >> 2)&  0x33333333);
            x = (x + (x >> 4))&  0x0f0f0f0f;
            x = x + (x >> 8);
            x = x + (x >> 16);
            return x&  0x0000003f;
        }
    }
}


