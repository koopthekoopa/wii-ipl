#ifndef NW4R_SND_REMOTE_SPEAKER_MANAGER_H
#define NW4R_SND_REMOTE_SPEAKER_MANAGER_H

#include <nw4r/snd/RemoteSpeaker.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class RemoteSpeakerManager {
                public:
                    static RemoteSpeakerManager&    GetInstance();

                    RemoteSpeaker&                  GetRemoteSpeaker(int idx);

                    void Setup();

                private:
                    static const int SPEAKER_ALARM_HZ = 150;
                    static const int SPEAKER_ALARM_PERIOD_NSEC = static_cast<int>(1.0f / SPEAKER_ALARM_HZ * 1000 * 1000 * 1000);

                private:
                    RemoteSpeakerManager();

                    static void RemoteSpeakerAlarmProc(OSAlarm* alarm, OSContext* context);

                private:
                    bool            mInitialized;                   // 0x00
                    OSAlarm         mRemoteSpeakerAlarm;            // 0x08
                    RemoteSpeaker   mSpeaker[WPAD_MAX_CONTROLLERS]; // 0x38
            };
            }
    }
}

#endif // NW4R_SND_REMOTE_SPEAKER_MANAGER_H
