#ifndef NW4R_SND_DISPOSE_CALLBACK_H
#define NW4R_SND_DISPOSE_CALLBACK_H

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class DisposeCallback {
                public:
                    ut::LinkListNode    mDisposeLink;                                           // 0x00

                    virtual ~DisposeCallback() {}                                               // 0x08

                    virtual void InvalidateData(const void* start, const void* end) = 0;        // 0x0C
                    virtual void InvalidateWaveData(const void* start, const void* end) = 0;    // 0x10
            };
            typedef ut::LinkList<DisposeCallback, offsetof(DisposeCallback, mDisposeLink)>    DisposeCallbackList;
        }
    }
}

#endif // NW4R_SND_DISPOSE_CALLBACK_H
