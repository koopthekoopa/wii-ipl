#include <nw4r/snd/StrmSound.h>
#include <nw4r/snd/StrmSoundHandle.h>

#include <nw4r/snd/SoundInstanceManager.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(StrmSound, BasicSound);

            StrmSound::StrmSound(SoundInstanceManager<StrmSound>* manager) :
            mTempSpecialHandle(NULL),
            mManager(manager) {}

            bool StrmSound::Prepare(StrmBufferPool* bufferPool, StrmPlayer::StartOffsetType startOffsetType, s32 offset, int voices, StrmPlayer::StrmCallback* callback, u32 callbackData) {
                if (bufferPool == NULL) {
                    return NULL;
                }
                InitParam();
                return mStrmPlayer.Prepare(bufferPool, startOffsetType, offset, voices, callback, callbackData);
            }

            void StrmSound::Shutdown() {
                BasicSound::Shutdown();
                mManager->Free(this);
            }

            void StrmSound::SetPlayerPriority(int priority) {
                BasicSound::SetPlayerPriority(priority);
                mManager->UpdatePriority(this, CalcCurrentPlayerPriority());
            }

            bool StrmSound::IsAttachedTempSpecialHandle() {
                return mTempSpecialHandle != NULL;
            }

            void StrmSound::DetachTempSpecialHandle() {
                mTempSpecialHandle->DetachSound();
            }
        }
    }
}
