#ifndef NW4R_SND_WAVE_SOUND_HANDLE_H
#define NW4R_SND_WAVE_SOUND_HANDLE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/WaveSound.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        class WaveSoundHandle : private ut::NonCopyable {
            public:
                ~WaveSoundHandle() {
                    DetachSound();
                }

                void DetachSound();

                bool IsAttachedSound() const {
                    return mSound != NULL;
                }

            private:
                detail::WaveSound*  mSound; // 0x00
        };

    }
}

#endif // NW4R_SND_WAVE_SOUND_HANDLE_H
