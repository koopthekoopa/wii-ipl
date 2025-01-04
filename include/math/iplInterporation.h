#ifndef IPL_MATH_INTERPORATION_H
#define IPL_MATH_INTERPORATION_H

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
        
        class HermiteIntp : Interporation {
            public:
                virtual ~HermiteIntp() {}
        };
    }
}

#endif // IPL_MATH_INTERPORATION_H
