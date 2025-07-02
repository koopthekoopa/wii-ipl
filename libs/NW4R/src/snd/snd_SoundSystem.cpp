#include <nw4r/snd/SoundSystem.h>

#include <nw4r/snd/TaskThread.h>
#include <nw4r/snd/SoundThread.h>

#include <revolution/sc.h>
#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace {
            bool sInitialized = false;
        }
        void SoundSystem::InitSoundSystem(s32 soundThreadPriority, s32 dvdThreadPriority) {
            if (sInitialized) {
                return;
            }

            sInitialized = true;

            detail::AxManager::GetInstance().Init();

            SCInit();

            u32 status;
            do {
                status = SCCheckStatus();
                OSSleepTicks(OSMillisecondsToTicks(1));
            } while (status == SC_STATUS_BUSY);

            switch (SCGetSoundMode()) {
                case SC_SOUND_MODE_MONO: {
                    detail::AxManager::GetInstance().SetOutputMode(OUTPUT_MODE_MONO);
                    break;
                }
                case SC_SOUND_MODE_STEREO: {
                    detail::AxManager::GetInstance().SetOutputMode(OUTPUT_MODE_STEREO);
                    break;
                }
                case SC_SOUND_MODE_SURROUND: {
                    detail::AxManager::GetInstance().SetOutputMode(OUTPUT_MODE_DPL2);
                    break;
                }
                default: {
                    detail::AxManager::GetInstance().SetOutputMode(OUTPUT_MODE_STEREO);
                    break;
                }
            }

            detail::RemoteSpeakerManager::GetInstance().Setup();

            detail::TaskThread::GetInstance().Create(dvdThreadPriority);
            detail::SoundThread::GetInstance().Create(soundThreadPriority);
        }
    }
}
