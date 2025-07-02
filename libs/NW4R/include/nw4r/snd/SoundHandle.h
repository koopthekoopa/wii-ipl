#ifndef NW4R_SND_SOUND_HANDLE_H
#define NW4R_SND_SOUND_HANDLE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicSound.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        class SoundHandle : private ut::NonCopyable {
            public:
                SoundHandle() : mSound(NULL) {}
                ~SoundHandle() {
                    DetachSound();
                }

                void    detail_AttachSound(detail::BasicSound* sound);
                void    detail_AttachSoundAsTempHandle(detail::BasicSound* sound);

                bool IsAttachedSound() const {
                    return mSound != NULL;
                }

                detail::BasicSound* detail_GetAttachedSound() {
                    return mSound;
                }

                void DetachSound();

                bool IsPrepared() const {
                    if (IsAttachedSound()) {
                        return mSound->IsPrepared();
                    }

                    return false;
                }

                u32 GetId() const {
                    if (IsAttachedSound()) {
                        return mSound->GetId();
                    }

                    return -1;
                }

                void StartPrepared() {
                    if (IsAttachedSound()) {
                        mSound->StartPrepared();
                    }
                }
                void Stop(int frames) {
                    if (IsAttachedSound()) {
                        mSound->Stop(frames);
                    }
                }

                void Pause(bool flag, int frames) {
                    if (IsAttachedSound()) {
                        mSound->Pause(flag, frames);
                    }
                }

                void SetVolume(f32 volume, int frames) {
                    if (IsAttachedSound()) {
                        mSound->SetVolume(volume, frames);
                    }
                }
                void SetPan(f32 pan) {
                    if (IsAttachedSound()) {
                        mSound->SetPan(pan);
                    }
                }
                void SetPitch(f32 pitch) {
                    if (IsAttachedSound()) {
                        mSound->SetPitch(pitch);
                    }
                }

                void SetOutputLine(int flag) {
                    if (IsAttachedSound()) {
                        mSound->SetOutputLine(flag);
                    }
                }

                void SetMainOutVolume(f32 volume) {
                    if (IsAttachedSound()) {
                        mSound->SetMainOutVolume(volume);
                    }
                }
                void SetRemoteOutVolume(int remote, f32 volume) {
                    if (IsAttachedSound()) {
                        mSound->SetRemoteOutVolume(remote, volume);
                    }
                }

                void SetFxSend(AuxBus bus, f32 send) {
                    if (IsAttachedSound()) {
                        mSound->SetFxSend(bus, send);
                    }
                }

            private:
                detail::BasicSound* mSound; // 0x00
        };
    }
}

#endif
