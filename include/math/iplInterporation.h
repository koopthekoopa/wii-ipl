#ifndef IPL_MATH_INTERPORATION_H
#define IPL_MATH_INTERPORATION_H

#ifdef __cplusplus

#include <nw4r/math.h>

#include "utility/iplFrameController.h"

namespace ipl {
    namespace math {
        class Interporation : utility::FrameController {
            public:
                virtual ~Interporation() {}
        };
        
        class LinearIntp : Interporation {
            public:
                virtual ~LinearIntp() {}
        };
        
        template<typename T> class HermiteIntp : Interporation {
            public:
                virtual ~HermiteIntp() {}

                void    init(const T& start, const T& end, f32 maxFrame, f32 param_5, f32 param_6, int playback, f32 speed = 1.0f);

            private:
                T   mStart;
                T   mEnd;
                f32 unkVal0;
                f32 unkVal1;
        };
    }
}

#endif // __cplusplus

#endif // IPL_MATH_INTERPORATION_H
