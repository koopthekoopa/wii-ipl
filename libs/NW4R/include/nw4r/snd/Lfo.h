#ifndef NW4R_SND_LFO_H
#define NW4R_SND_LFO_H

#include <revolution/axfx.h>
#include <revolution/mem/heapCommon.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            typedef struct LfoParam {
                LfoParam() {
                    Init();
                }

                void    Init();

                f32 depth;                  // 0x00
                f32 speed;                  // 0x04
                u32 delay;                  // 0x08
                u8  range;                  // 0x0C

                u8  padding[3];
            } LfoParam;

            class Lfo {
                public:
                    Lfo() :
                    mDelayCounter(0),
                    mCounter(0.0f) {}

                    LfoParam&   GetParam()                          { return mParam; }
                    void        SetParam(const LfoParam& rParam)    { mParam = rParam; }

                    void        Reset();
                    void        Update(int msec);

                    f32         GetValue() const;

                private:
                    static const int TABLE_SIZE = 32;

                    static s8   GetSinIdx(int idx);

                    LfoParam    mParam;         // 0x00
                    u32         mDelayCounter;  // 0x10
                    f32         mCounter;       // 0x14
            };
        }
    }
}

#endif // NW4R_SND_LFO_H
