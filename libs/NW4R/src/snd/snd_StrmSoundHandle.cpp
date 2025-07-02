#include <nw4r/snd/StrmSoundHandle.h>

namespace nw4r {
    namespace snd {
        void StrmSoundHandle::DetachSound() {
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
