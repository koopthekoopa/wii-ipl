#include <nw4r/snd/WaveSoundHandle.h>

namespace nw4r {
    namespace snd {
        void WaveSoundHandle::DetachSound() {
            if (IsAttachedSound()) {
                if (mSound->mTempSpecialHandle == this) {
                    mSound->mTempSpecialHandle = NULL;
                }
            }

            if (mSound != NULL) {
                mSound = NULL;
            }
        }
    }
}
