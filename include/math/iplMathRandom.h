#ifndef IPL_MATH_RANDOM_H
#define IPL_MATH_RANDOM_H

#include <revolution/types.h>

#ifdef __cplusplus

namespace ipl {
    namespace math {
        class Random {
// Based on https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use
// Numerical Recipes
#define NEXT (next = next * 1664525 + 1013904223)

        public:
            Random(u32 myNext) : next(myNext) {}

            u8 get_u8() { return (u8)NEXT; }
            u16 get_u16() NO_INLINE { return (u16)NEXT; }
            u32 get_u32() { return (u32)NEXT; }

            f32 get_f01() { return (f32)NEXT / 0xFFFFFFFF; }

        private:
            u32 next;

#undef NEXT
        };
    }  // namespace math
}  // namespace ipl

#endif  // __cplusplus

#endif  // IPL_MATH_RANDOM_H
