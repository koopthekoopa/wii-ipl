#ifndef NW4R_SND_STRM_SOUND_H
#define NW4R_SND_STRM_SOUND_H
#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/StrmPlayer.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        class StrmSoundHandle;
        namespace detail {
            template<typename T> class SoundInstanceManager;
        }

        namespace detail {

            class StrmSound : public BasicSound {
                friend class StrmSoundHandle;

                public:
                    NW4R_UT_RUNTIME_TYPEINFO;

                    explicit StrmSound(SoundInstanceManager<StrmSound>* manager);

                    virtual void                Shutdown(); // 0x28

                    virtual void                SetPlayerPriority(int priority);                // 0x4C

                    virtual bool                IsAttachedTempSpecialHandle();                  // 0x5C
                    virtual void                DetachTempSpecialHandle();                      // 0x60

                    virtual BasicPlayer&        GetBasicPlayer()        { return mStrmPlayer; } // 0x68
                    virtual const BasicPlayer&  GetBasicPlayer() const  { return mStrmPlayer; } // 0x6C

                    void                        Setup(const StrmPlayer::StrmHeader* header);

                    bool                        Prepare(StrmBufferPool* bufferPool,
                                                        StrmPlayer::StartOffsetType startOffsetType, s32 startOffset, int voices,
                                                        StrmPlayer::StrmCallback* callback, u32 callbackData);

                    void                        SetChannelPriority(int priority);

                private:
                    StrmPlayer                          mStrmPlayer;            // 0xD8
                    StrmSoundHandle*                    mTempSpecialHandle;     // 0x1F4
                    SoundInstanceManager<StrmSound>*    mManager;               // 0x1F8

                    u8                                  mNumChannels;           // 0x5FC

                    void*                               mBuffer[CHANNEL_MAX];   // 0x600
                    u32                                 mBufSize;               // 0x608

                    u8                                  mNumBufBlocks;          // 0x60C

                    int                                 mAllocChannelCount;     // 0x610
            };
        }
    }
}

#endif // NW4R_SND_STRM_SOUND_H
