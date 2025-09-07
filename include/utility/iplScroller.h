#ifndef IPL_UTILITY_SCROLLER_H
#define IPL_UTILITY_SCROLLER_H

#include <revolution/types.h>

#include "math/iplInterporation.h"

namespace ipl {
    namespace utility {
        class BScroller {
            public:
                BScroller();

                virtual BOOL    isYoungController();

                void            init();
                void            calc();
                BOOL            isActive();
                BOOL            isDown();
                BOOL            isUp();

            private:
                f32             _get();
                void            set_arw_param();

                u8  unk_0x04[0x1C];
        };

        class Scroller : public math::HermiteIntp<f32> {
            public:
                Scroller();

                void            calc();
                f32             get();

            private:
                void            movable_pos();

                u8  unk_0x04[0x1C];
        };
    }
}

#endif // IPL_UTILITY_SCROLLER_H
