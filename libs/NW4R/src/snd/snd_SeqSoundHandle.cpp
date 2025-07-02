#include <nw4r/snd/SeqSoundHandle.h>

namespace nw4r {
    namespace snd {
        void SeqSoundHandle::DetachSound() {
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
