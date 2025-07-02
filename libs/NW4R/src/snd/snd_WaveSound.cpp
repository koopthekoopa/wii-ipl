#include <nw4r/snd/WaveSound.h>
#include <nw4r/snd/WaveSoundHandle.h>

#include <nw4r/snd/SoundInstanceManager.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(WaveSound, BasicSound);

            WaveSound::WaveSound(SoundInstanceManager<WaveSound>* manager) :
            mManager(manager),
            mTempSpecialHandle(NULL) {}

            bool WaveSound::Prepare(const void* waveSoundBase, s32 waveSoundOffset, int voices, const WsdTrack::WsdCallback* callback, u32 callbackData) {
                InitParam();

                if (!mWsdPlayer.Prepare(waveSoundBase, waveSoundOffset, voices, callback, callbackData)) {
                    return false;
                }

                return true;
            }

            void WaveSound::Shutdown() {
                BasicSound::Shutdown();
                mManager->Free(this);
            }

            void WaveSound::SetChannelPriority(int priority) {
                mWsdPlayer.SetChannelPriority(priority);
            }

            void WaveSound::SetPlayerPriority(int priority) {
                BasicSound::SetPlayerPriority(priority);
                mManager->UpdatePriority(this, CalcCurrentPlayerPriority());
            }

            bool WaveSound::IsAttachedTempSpecialHandle() {
                return mTempSpecialHandle != NULL;
            }

            void WaveSound::DetachTempSpecialHandle() {
                mTempSpecialHandle->DetachSound();
            }
        }
    }
}
