#ifndef NW4R_SND_SEQ_SOUND_H
#define NW4R_SND_SEQ_SOUND_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/SeqPlayer.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        // Forward declarations
        class SeqSoundHandle;
        namespace detail {
            class NoteOnCallback;
            class SeqTrackAllocator;
            template<typename T> class SoundInstanceManager;
        }
        namespace detail {
            class SeqSound : public BasicSound {
                friend class SeqSoundHandle;

                public:
                    NW4R_UT_RUNTIME_TYPEINFO;
                    typedef void (*NotifyAsyncEndCallback)(bool result, const void* seqBase, s32 seqOffset, void* userData);

                    class SeqLoadCallback {
                        public:
                            typedef enum Result {
                                RESULT_SUCCESS = 0,
                                RESULT_FAILED,
                                RESULT_CANCELED,
                                RESULT_ASYNC,
                                RESULT_RETRY
                            } Result;

                            virtual ~SeqLoadCallback() {}

                            virtual Result  LoadData(SeqSound::NotifyAsyncEndCallback callback, void* callbackArg, u32 userData) const = 0;
                            virtual void    CancelLoading(u32 userData) const = 0;
                    };
                    explicit SeqSound(SoundInstanceManager<SeqSound>* nanager);

                    virtual void                Shutdown();                                     // 0x28

                    virtual void                SetPlayerPriority(int priority);                // 0x4C

                    virtual bool                IsAttachedTempSpecialHandle();                  // 0x5C
                    virtual void                DetachTempSpecialHandle();                      // 0x60

                    virtual void                InitParam();                                    // 0x64

                    virtual BasicPlayer&        GetBasicPlayer()        { return mSeqPlayer; }  // 0x68
                    virtual const BasicPlayer&  GetBasicPlayer() const  { return mSeqPlayer; }  // 0x6C

                    SeqPlayer::SetupResult      Setup(SeqTrackAllocator* trackAllocator, u32 allocTrackFlags, int voices, NoteOnCallback* callback);

                    void                        Prepare(const void* base, s32 seqOffset);
                    void                        Prepare(const SeqLoadCallback* callback, u32 callbackData);

                    void SetChannelPriority(int priority);

                private:
                    static void NotifyLoadAsyncEndSeqData(bool result, const void* seqBase, s32 seqOffset, void* userData);

                    SeqPlayer                       mSeqPlayer;         // 0xD8
                    SeqSoundHandle*                 mTempSpecialHandle; // 0x1F4
                    SoundInstanceManager<SeqSound>* mManager;           // 0x1F8

                    bool                            mLoadingFlag;       // 0x1E8
                    const SeqLoadCallback*          mCallback;          // 0x1EC
                    u32                             mCallbackData;      // 0x1F0
            };
        }
    }
}

#endif
