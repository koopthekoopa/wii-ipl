#ifndef NW4R_SND_SEQ_SOUND_HANDLE_H
#define NW4R_SND_SEQ_SOUND_HANDLE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/SeqSound.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        class SeqSoundHandle : private ut::NonCopyable {
            public:
                ~SeqSoundHandle() {
                    DetachSound();
                }

                void DetachSound();

                bool IsAttachedSound() const {
                    return mSound != NULL;
                }

            private:
                detail::SeqSound*   mSound; // 0x00
        };

    }
}

#endif // NW4R_SND_SEQ_SOUND_HANDLE_H
