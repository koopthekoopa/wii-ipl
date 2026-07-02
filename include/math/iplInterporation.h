#ifndef IPL_MATH_INTERPORATION_H
#define IPL_MATH_INTERPORATION_H

#ifdef __cplusplus

#include <nw4r/math.h>

#include "utility/iplFrameController.h"

namespace ipl {
    namespace math {
        template <typename T>
        class Interporation : public utility::FrameController {
        public:
            void init(int playback, f32 maxFrame, f32 minFrame, const T& start, const T& end, f32 speed = 1.0f) {
                mStart = start;
                mEnd = end;
                utility::FrameController::init(playback, maxFrame, minFrame, speed);
            }

            const T& getStart() { return mStart; }
            const T& getEnd() { return mEnd; }

            void playBackwards() {
                mAnmType = ANIM_TYPE_BACKWARD;
                mState = ANIM_STATE_PLAY;
            }

        protected:
            T mStart;
            T mEnd;
        };

        template <typename T>
        class LinearIntp : public Interporation<T> {
        public:
            T get() const {
                T r = mEnd * getCurrentFrame();
                T b = mStart * (mMaxFrame - mFrame);
                b += r;
                return b * (f64)(1.0f / getMaxFrame());
            }

            T get2() const { return (((mStart * (mMaxFrame - mFrame)) + (mEnd * mFrame)) / mMaxFrame); }
        };

        template <typename T>
        class HermiteIntp : public Interporation<T> {
        public:
            HermiteIntp();

            void init(const T& start, const T& end, f32 maxFrame, f32 param_5, f32 param_6, int playback, f32 speed = 1.0f) {
                mStart = start;
                mEnd = end;
                utility::FrameController::init(playback, maxFrame, 0.0f, speed);
                unkVal0 = param_5;
                unkVal1 = param_6;
            }

            T get() const {
                f32 var_f27 = mFrame;
                f32 var_f28 = 1.0f / mMaxFrame;
                f32 t1t2 =
                    (var_f28 * (var_f28 * (var_f28 * (var_f27 * (2.0f * var_f27 * var_f27))))) - (var_f28 * (var_f28 * (3.0f * var_f27 * var_f27)));

                T r = (mStart * (1.0f + t1t2)) - (mEnd * t1t2);

                f32 temp_f4 = var_f27 * var_f27;
                f32 temp_f7 = var_f28 * (var_f28 * (var_f27 * temp_f4));
                f32 temp_f3 =
                    (unkVal0 * (var_f27 + (temp_f7 - (var_f28 * (2.0f * var_f27 * var_f27))))) + (unkVal1 * (temp_f7 - (var_f28 * temp_f4)));

                r = r + temp_f3;

                return r;

                /*f32 var_f27 = mMaxFrame;
                f32 var_f28 = 1.0f / mMaxFrame;
                T sp28 = mEnd * ((var_f28 * (var_f28 * (var_f28 * (var_f27 * (2.0f * var_f27 * var_f27))))) -
                                 (var_f28 * (var_f28 * (3.0f * var_f27 * var_f27))));
                T sp1C = mStart * (1.0f + ((var_f28 * (var_f28 * (var_f28 * (var_f27 * (2.0f * var_f27 * var_f27))))) -
                                           (var_f28 * (var_f28 * (3.0f * var_f27 * var_f27)))));
                T r = sp1C - sp28;

                f32 temp_f4 = var_f27 * var_f27;
                f32 temp_f7 = var_f28 * (var_f28 * (var_f27 * temp_f4));
                f32 temp_f3 =
                    (unkVal0 * (var_f27 + (temp_f7 - (var_f28 * (2.0f * var_f27 * var_f27))))) + (unkVal1 * (temp_f7 - (var_f28 * temp_f4)));
                r = r + temp_f3;
                return r;*/
            }

        protected:
            f32 unkVal0;
            f32 unkVal1;
        };

        template <typename T>
        HermiteIntp<T>::HermiteIntp() {}
    }  // namespace math
}  // namespace ipl

#endif  // __cplusplus

#endif  // IPL_MATH_INTERPORATION_H
