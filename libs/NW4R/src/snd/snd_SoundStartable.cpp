#include <nw4r/snd/SoundStartable.h>
#include <nw4r/snd/SoundHandle.h>

namespace nw4r {
    namespace snd {
        SoundStartable::StartResult SoundStartable::detail_StartSound(SoundHandle* soundHandle, u32 id, detail::BasicSound::AmbientArgInfo* ambientArgInfo, detail::ExternalSoundPlayer* extPlayer, const StartInfo* pStartInfo) {
            StartResult result = detail_SetupSound(soundHandle, id, ambientArgInfo, extPlayer, false, pStartInfo);

            if (result != START_SUCCESS) {
                return result;
            }

            soundHandle->StartPrepared();
            return START_SUCCESS;
        }

        SoundStartable::StartResult SoundStartable::detail_HoldSound(SoundHandle* soundHandle, u32 id, detail::BasicSound::AmbientArgInfo* ambientArgInfo, detail::ExternalSoundPlayer* extPlayer, const StartInfo* pStartInfo) {
            if (soundHandle->IsAttachedSound() && id == soundHandle->GetId()) {
                soundHandle->detail_GetAttachedSound()->SetAutoStopCounter(1);
                return START_SUCCESS;
            }

            StartResult result = detail_SetupSound(soundHandle, id, ambientArgInfo, extPlayer, true, pStartInfo);

            if (result != START_SUCCESS) {
                return result;
            }

            soundHandle->StartPrepared();
            soundHandle->detail_GetAttachedSound()->SetAutoStopCounter(1);
            return START_SUCCESS;
        }

        SoundStartable::StartResult SoundStartable::detail_PrepareSound(SoundHandle* handle, u32 targetID, detail::BasicSound::AmbientArgInfo* argInfo, detail::ExternalSoundPlayer* player, const StartInfo* startInfo) {
            return detail_SetupSound(handle, targetID, argInfo, player, false, startInfo);
        }
    }
}
