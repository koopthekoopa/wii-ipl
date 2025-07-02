#include <nw4r/snd/RemoteSpeakerManager.h>

#include <revolution/os.h>
#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            RemoteSpeakerManager& RemoteSpeakerManager::GetInstance() {
                static RemoteSpeakerManager instance;
                return instance;
            }

            RemoteSpeakerManager::RemoteSpeakerManager() : mInitialized(false) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mSpeaker[i].SetChannelIndex(i);
                }
            }

            RemoteSpeaker& RemoteSpeakerManager::GetRemoteSpeaker(int idx) {
                return mSpeaker[idx];
            }

            void RemoteSpeakerManager::Setup() {
                if (mInitialized) {
                    return;
                }

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mSpeaker[i].InitParam();
                }

                OSCreateAlarm(&mRemoteSpeakerAlarm);
                OSSetPeriodicAlarm(&mRemoteSpeakerAlarm, OSGetTime(), OSNanosecondsToTicks(SPEAKER_ALARM_PERIOD_NSEC), RemoteSpeakerAlarmProc);

                mInitialized = true;
            }

            void RemoteSpeakerManager::RemoteSpeakerAlarmProc(OSAlarm* alarm, OSContext* context) {
                RemoteSpeakerManager& rManager = GetInstance();

                s16 samples[RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET];
                if (AXRmtGetSamplesLeft() < RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET) {
                    return;
                }

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    if (rManager.mSpeaker[i].IsAvailable()) {
                        AXRmtGetSamples(i, samples, RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET);
                        rManager.mSpeaker[i].Update(samples);
                    }
                }

                AXRmtAdvancePtr(RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET);
            }
        }
    }
}
