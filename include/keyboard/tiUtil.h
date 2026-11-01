#ifndef TEXTINPUT_UTIL_H
#define TEXTINPUT_UTIL_H

#include <revolution/types.h>

#include <nw4r/ut/Rect.h>

namespace textinput {
    namespace util {
        wchar_t toWLower(wchar_t ch);
        wchar_t toWUpper(wchar_t ch);

        wchar_t reverseLetterCaseW(wchar_t ch);

        wchar_t HankakuToZenkaku(wchar_t ch);

        wchar_t KBD_ConvertDakuten(wchar_t ch);
        wchar_t KBD_ConvertHandaku(wchar_t ch);
        wchar_t KBD_ConvertSmall(wchar_t ch);
        wchar_t KBD_ConvertAll(wchar_t ch);

        BOOL KBD_IsDakuten(wchar_t ch);
        BOOL KBD_IsHandaku(wchar_t ch);
        BOOL KBD_IsSmall(wchar_t ch);

        bool strcmp(const char* s1, const char* s2);
        void replaceChar(char* dest, u32 destLen, const char* src, int replaceIdx, char newCh);
        bool isAlphabet(wchar_t ch);

        f32 hermiteInterporation(f32 currVal, f32 startVal, f32 startPos, f32 startMomentum, f32 endVal, f32 endPos, f32 endMomentum);

        void getProjectionRect4x3(nw4r::ut::Rect* rect);
        void getProjectionRect16x9(nw4r::ut::Rect* rect);

        class AnimObserver {
        public:
            enum AnmEvent {
                AE_Start,
                AE_End,
                // ...
                AE_Last
            };

            virtual void onAnmEvent(AnmEvent event, void*) = 0;
        };

        class Animation {
        public:
            Animation() : mfAnimationTime(0.0f), mbInAnimation(false), mbSE(false), mpAnimObserver(NULL) {}

            virtual void startAnm(f32 startPoint, f32 endPoint, f32 animTime, AnimObserver* observer, void* data) {
                mfStartPoint = startPoint;
                mfEndPoint = endPoint;
                mfAnimationTime = animTime;
                mfCurrentFrame = 0.0f;
                mbInAnimation = true;
                mpAnimObserver = observer;
                mpData = data;
                mbSE = false;

                if (observer)
                    observer->onAnmEvent(AnimObserver::AE_Start, data);
            }  // 0x08
            virtual void calc() {
                if (!mbInAnimation)
                    return;

                if (mfCurrentFrame < mfAnimationTime) {
                    mfCurrentFrame = mfCurrentFrame + 1.0f;
                } else {
                    if (mbInAnimation && mpAnimObserver != NULL) {
                        mpAnimObserver->onAnmEvent(AnimObserver::AE_End, mpData);
                    }
                    mbInAnimation = false;
                }
            }  // 0x0C
            virtual f32 getValue() { return hermiteInterporation(mfCurrentFrame, 0, mfStartPoint, 0, mfAnimationTime, mfEndPoint, 0); }  // 0x10
            virtual bool isActive() { return mbInAnimation; }                                                                            // 0x14
            virtual void setSEFlag(bool flag) { mbSE = flag; }                                                                           // 0x18
            virtual bool isSEFlag() { return mbSE; }                                                                                     // 0x1C
            virtual void stop() { mbInAnimation = false; }                                                                               // 0x20

        private:
            f32 mfStartPoint;              // 0x04
            f32 mfEndPoint;                // 0x08
            f32 mfCurrentFrame;            // 0x0C
            f32 mfAnimationTime;           // 0x10
            bool mbInAnimation;            // 0x14
            bool mbSE;                     // 0x15
            AnimObserver* mpAnimObserver;  // 0x18
            void* mpData;                  // 0x1C
        };
    }  // namespace util
}  // namespace textinput

#endif  // TEXTINPUT_UTIL_H
