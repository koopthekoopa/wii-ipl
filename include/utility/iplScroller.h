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
                BOOL            calc();

                bool            isActive() const;
                bool            isDown() const;
                bool            isUp() const;

                f32             getSpeed()          { return mSpeed; }
                f32             addSoundFreq(f32 v) { return mSoundFreq += v; }

            protected:
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

        class Scroller {
            protected:
                enum {
                    STATE_NORMAL = 0,
                    STATE_SCROLL_CON_UP,
                    STATE_SCROLL_CON_DOWN,
                    STATE_SCROLL_BTN_UP,
                    STATE_SCROLL_BTN_DOWN,
                };

            public:
                Scroller();

                void init() {
                    mState = 0;
                    mScroll = 0.0f;
                    unk_0x3C = 0.0f;
                    mUpLimit = 0.0f;
                    mDownLimit = 0.0f;
                }

                void            calc();
                f32             get() const;

                f32             movable_pos(f32 speed) const;

                void            scrollUpByCon()     { mState = STATE_SCROLL_CON_UP; }
                void            scrollDownByCon()   { mState = STATE_SCROLL_CON_DOWN; }
                void            scrollUpByBtn()     { mState = STATE_SCROLL_BTN_UP; }
                void            scrollDownByBtn()   { mState = STATE_SCROLL_BTN_DOWN; }

                void            setDownLimit(f32 v) { mDownLimit = v; }
                void            setUpLimit(f32 v)   { mUpLimit = v; }

                void            addScroll(f32 v)    { mScroll += v; }

                bool            isActive() const    { return mState == STATE_NORMAL; }

                bool            isDownEnd() const   { return mScroll == mDownLimit; }
                bool            isUpEnd() const     { return mScroll == mUpLimit; }

            protected:
                void            movable_pos();

                math::HermiteIntp<f32>  anim;

                int                     mState;     // 0x30
                f32                     mDownLimit; // 0x34
                f32                     mUpLimit;   // 0x38
                f32                     unk_0x3C;
                f32                     mScroll;    // 0x40
                f32                     unk_0x44;
                f32                     unk_0x48;
                f32                     unk_0x4C;
        };
    }
}

#endif // IPL_UTILITY_SCROLLER_H
