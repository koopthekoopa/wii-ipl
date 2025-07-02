#ifndef NW4R_SND_FX_BASE_H
#define NW4R_SND_FX_BASE_H


#include <revolution/axfx.h>

#include <nw4r/snd/AxfxImpl.h>

#include <nw4r/snd/types.h>

#include <nw4r/ut/inlines.h>
#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace snd {
        class FxBase : ut::NonCopyable {
            public:
                virtual ~FxBase() {}    // 0x08

                virtual bool    StartUp() { return true; }                                                                                      // 0x0C
                virtual void    Shutdown() {}                                                                                                   // 0x10

                virtual void    UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode) {}    // 0x14

            public:
                ut::LinkListNode    mFxLink;    // 0x04
        };

        typedef ut::LinkList<FxBase, offsetof(FxBase, mFxLink)> FxList;
    }
}

#endif // NW4R_SND_FX_BASE_H
