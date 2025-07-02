#ifndef NW4R_SND_MOVE_VALUE_H
#define NW4R_SND_MOVE_VALUE_H

namespace nw4r {
    namespace snd {
        namespace detail {
            template<typename TValue, typename TTime> class MoveValue {
                public:
                    MoveValue() :
                    mOrigin(TValue()),
                    mTarget(TValue()),
                    mFrame(TTime()),
                    mCounter(TTime()) {}

                    void InitValue(TValue t1) {
                        mOrigin = t1;
                        mTarget = t1;
                        mFrame = 0;
                        mCounter = 0;
                    }

                    bool IsFinished() const {
                        return mCounter >= mFrame;
                    }

                    TValue GetValue() const {
                        if (IsFinished()) {
                            return mTarget;
                        }
                        return mOrigin + mCounter * (mTarget - mOrigin) / mFrame;
                    }

                    void Update() {
                        if (mCounter < mFrame) {
                            mCounter++;
                        }
                    }

                    void SetTarget(TValue target, TTime frame) {
                        mOrigin = GetValue();
                        mTarget = target;
                        mFrame = frame;
                        mCounter = 0;
                    }

                private:
                    TValue  mOrigin;    // 0x00
                    TValue  mTarget;    // 0x04
                    TTime   mFrame;     // 0x08
                    TTime   mCounter;   // 0x0C
            };
        }
    }
}

#endif // NW4R_SND_MOVE_VALUE_H
