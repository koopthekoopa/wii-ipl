#ifndef NW4R_UT_INLINE_FUNCTIONS_H
#define NW4R_UT_INLINE_FUNCTIONS_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        class NonCopyable {
            protected:
                NonCopyable()   {}
                ~NonCopyable()  {}
            private:
                NonCopyable(const NonCopyable&);
                const NonCopyable& operator=(const NonCopyable&);
        };

        template<typename T> inline T Min(T a, T b) {
            return (a > b) ? b : a;
        }

        template<typename T> inline T Max(T a, T b) {
            return (a < b) ? b : a;
        }

        template<typename T> inline T Clamp(T x, T low, T high) {
            return (x > high) ? high : ((x < low) ? low : x);
        }
    }
}

#endif // NW4R_UT_INLINE_FUNCTIONS_H


