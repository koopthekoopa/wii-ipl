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

                bool            isActive() const;
                bool            isDown() const;
                bool            isUp() const;

                f32             getSpeed()          { return mSpeed; }
                f32             addSoundFreq(f32 v) { return mSoundFreq += v; }

            private:
                f32             _get();
                void            set_arw_param();

                u8  unk_0x04[0x14];
                f32 mSpeed;     // 0x18
                f32 mSoundFreq; // 0x1C
        };

        class YoungBScroller : public BScroller {
            public:
                YoungBScroller() : BScroller() {}

                virtual BOOL    isYoungController();
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
