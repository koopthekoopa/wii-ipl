#ifndef NW4R_SND_PLAYER_HEAP_H
#define NW4R_SND_PLAYER_HEAP_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/SoundHeap.h>

namespace nw4r {
    namespace snd {
        class SoundPlayer;
        namespace detail {
            class BasicSound;
            class PlayerHeap : public SoundHeap {
                public:
                    PlayerHeap() : mSound(NULL), mPlayer(NULL) {}
                    virtual ~PlayerHeap() {}    // 0x08

                    void    SetSound(BasicSound* sound)         { mSound = sound; }
                    void    SetSoundPlayer(SoundPlayer* player) { mPlayer = player; }

                public:
                    ut::LinkListNode    mLink;      // 0x2C

                private:
                    BasicSound*         mSound;     // 0x34
                    SoundPlayer*        mPlayer;    // 0x38
            };
            typedef ut::LinkList<PlayerHeap, offsetof(PlayerHeap, mLink)> PlayerHeapList;
        }
    }
}

#endif
