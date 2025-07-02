#ifndef NW4R_SND_STRM_SOUND_HANDLE_H
#define NW4R_SND_STRM_SOUND_HANDLE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/StrmSound.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        class StrmSoundHandle : private ut::NonCopyable {
            public:
                ~StrmSoundHandle() {
                    DetachSound();
                }

                void DetachSound();

                bool IsAttachedSound() const {
                    return mSound != NULL;
                }

            private:
                detail::StrmSound*  mSound; // 0x00
        };

    }
}

#endif // NW4R_SND_STRM_SOUND_HANDLE_H
