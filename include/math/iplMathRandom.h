#ifndef IPL_MATH_RANDOM_H
#define IPL_MATH_RANDOM_H

#include <revolution/types.h>

namespace ipl {
    namespace math {
        class Random {
            #define NEXT    (next = next * 1664525 + 1013904223)
            
            public:
                u8  get_u8()    { return (u8) NEXT; }
                u16 get_u16()   { return (u16)NEXT; }
                u32 get_u32()   { return (u32)NEXT; }
                
                f32 get_f01()   { return (f32)NEXT / 0xFFFFFFFF; }
            
            private:
                u32 next;
            
            #undef NEXT
        };
    }
}

#endif // IPL_MATH_RANDOM_H


