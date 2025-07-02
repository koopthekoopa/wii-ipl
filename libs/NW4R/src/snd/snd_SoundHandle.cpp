#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/SoundHandle.h>

namespace nw4r {
    namespace snd {
        void SoundHandle::detail_AttachSound(detail::BasicSound* sound) {
            mSound = sound;

            if (sound->IsAttachedGeneralHandle()) {
                mSound->DetachGeneralHandle();
            }

            mSound->mGeneralHandle = this;
        }

        void SoundHandle::DetachSound() {
            if (IsAttachedSound()) {
                if (mSound->mGeneralHandle == this) {
                    mSound->mGeneralHandle = NULL;
                }

                if (mSound->mTempGeneralHandle == this) {
                    mSound->mTempGeneralHandle = NULL;
                }
            }

            if (mSound != NULL) {
                mSound = NULL;
            }
        }
    }
}
