#ifndef IPL_MATH_INTERPORATION_H
#define IPL_MATH_INTERPORATION_H

#ifdef __cplusplus

#include <nw4r/math.h>

#include "utility/iplFrameController.h"

namespace ipl {
    namespace math {
        template<typename T> class Interporation : public utility::FrameController {
            public:
                void init(int type, f32 maxFrame, f32 minFrame, const T& start, const T& end, f32 speed = 1.0f) {
                    mStart = start; 
                    mEnd = end;
                    utility::FrameController::init(type, maxFrame, minFrame, speed);
                }

                const   T&  getStart()  { return mStart; }
                const   T&  getEnd()    { return mEnd; }

                void playBackwards() {
                    mAnmType = ANIM_TYPE_BACKWARD;
                    mState = ANIM_STATE_PLAY;
                }

            protected:
                T   mStart;
                T   mEnd;
        };
        
        template<typename T> class LinearIntp : public Interporation<T> {
            public:
                T get() const {
                    T r = (mEnd * mFrame);
                    r += (mStart * (mMaxFrame - mFrame));
                    r *= 1.0f / getMaxFrame();
                    return r;
                }

                T get2() const {
                    return (((mStart * (mMaxFrame - mFrame)) + (mEnd * mFrame)) / mMaxFrame);
                }
        };
        
        template<typename T> class HermiteIntp : public Interporation<T> {
            public:
                void    init(const T& start, const T& end, f32 maxFrame, f32 param_5, f32 param_6, int playback, f32 speed = 1.0f);

                T get() const {
                    f32 t1 = mFrame;
                    f32 t2 = 1.0f / mMaxFrame;
                    f32 t1t2 = (t2 * (t2 * (t2 * (t1 * (2.0f * t1 * t1))))) - (t2 * (t2 * (3.0f * t1 * t1)));

                    T r = (mStart * (1.0f + t1t2)) - (mEnd * t1t2);
                    
                    f32 temp_f4 = t1 * t1;
                    f32 temp_f7 = t2 * (t2 * (t1 * temp_f4));
                    f32 temp_f3 = (unkVal0 * (t1 + (temp_f7 - (t2 * (2.0f * t1 * t1))))) + (unkVal1 * (temp_f7 - (t2 * temp_f4)));
                    
                    r = r + temp_f3;

                    return r;
                }

            protected:
                f32 unkVal0;
                f32 unkVal1;
        };
    }
}

#endif // __cplusplus

#endif // IPL_MATH_INTERPORATION_H
