#include <nw4r/snd/SeqSound.h>
#include <nw4r/snd/SeqSoundHandle.h>

#include <nw4r/snd/SoundInstanceManager.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(SeqSound, BasicSound);

            SeqSound::SeqSound(SoundInstanceManager<SeqSound>* manager) :
            mTempSpecialHandle(NULL),
            mManager(manager),
            mCallback(NULL),
            mLoadingFlag(false) {}

            void SeqSound::InitParam() {
                BasicSound::InitParam();
                mCallback = NULL;
                mCallbackData = 0;
            }

            SeqPlayer::SetupResult SeqSound::Setup(SeqTrackAllocator* allocator, u32 allocTrackFlags, int voices, NoteOnCallback* callback) {
                InitParam();
                return mSeqPlayer.Setup(allocator, allocTrackFlags, voices, callback);
            }

            void SeqSound::Prepare(const void* base, s32 seqOffset) {
                mSeqPlayer.SetSeqData(base, seqOffset);
            }

            void SeqSound::Prepare(const SeqLoadCallback* callback, u32 callbackData) {
                if (callback == NULL) {
                    return;
                }
                callback->LoadData(NotifyLoadAsyncEndSeqData, this, callbackData);

                mCallback = callback;
                mCallbackData = callbackData;
                mLoadingFlag = true;
            }

            void SeqSound::NotifyLoadAsyncEndSeqData(bool result, const void* seqBase, s32 seqOffset, void* userData) {
                detail::SeqSound* sound = static_cast<detail::SeqSound*>(userData);
                sound->mLoadingFlag = false;
                if (!result) {
                    sound->Stop();
                    return;
                }

                sound->Prepare(seqBase, seqOffset);
            }

            void SeqSound::Shutdown() {
                if (mLoadingFlag) {
                    if (mCallback != NULL) {
                        mCallback->CancelLoading(mCallbackData);
                    }
                }
                BasicSound::Shutdown();
                mManager->Free(this);
            }

            void SeqSound::SetChannelPriority(int priority) {
                mSeqPlayer.SetChannelPriority(priority);
            }

            void SeqSound::SetPlayerPriority(int priority) {
                BasicSound::SetPlayerPriority(priority);
                mManager->UpdatePriority(this, CalcCurrentPlayerPriority());
            }

            bool SeqSound::IsAttachedTempSpecialHandle() {
                return mTempSpecialHandle != NULL;
            }

            void SeqSound::DetachTempSpecialHandle() {
                mTempSpecialHandle->DetachSound();
            }
        }
    }
}
