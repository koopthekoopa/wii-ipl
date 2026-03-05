#ifndef HOME_BUTTON_REMOTE_SPEAKER_H
#define HOME_BUTTON_REMOTE_SPEAKER_H

#include <revolution/arc.h>
#include <revolution/os.h>
#include <revolution/wenc.h>
#include <revolution/wpad.h>

namespace homebutton {
    class RemoteSpk {
        private:
            typedef struct ChanInfo {
                OSAlarm     alarm;          // 0x00
                WENCInfo    wencinfo;       // 0x30

                const s16*  in_pcm;         // 0x50
                int         length;         // 0x54

                int         seId;           // 0x58
                bool        first;          // 0x5C
                s8          vol;            // 0x5D
                s8          cannotSendCnt;  // 0x5E
                u16         pad;            // 0x60
                bool        playReady;      // 0x62
            } ChanInfo;

        private:
            static RemoteSpk*   spInstance;

            ChanInfo    info[WPAD_MAX_CONTROLLERS]; // 0x00
            OSAlarm     speakerAlarm;               // 0x1A0
            ARCHandle   handle;                     // 0x1D0
            bool        available;                  // 0x1EC

        public:
            static void SetInstance(RemoteSpk* pThis);
            static RemoteSpk* GetInstance();

            RemoteSpk(void* pSpkSeBuf);
            virtual ~RemoteSpk();   // 0x08

            bool    isPlayReady(s32 chan) const;
            bool    isPlaying(s32 chan) const;
            bool    isPlayingId(s32 chan, int seId) const;

            void    GetPCMFromSeID(int id, s16*& rpPcm, int& rLength);
            void    ClearPcm();
            void    Start();
            void    Stop();
            void    Connect(s32 chan);
            void    Play(s32 chan, int seID, s8 vol);

        private:
            static void UpdateSpeaker(OSAlarm* alarm, OSContext* context);

            static void SpeakerOnCallback(s32 chan, s32 result);
            static void DelaySpeakerOnCallback(OSAlarm* alarm, OSContext* context);

            static void SpeakerPlayCallback(s32 chan, s32 result);
            static void DelaySpeakerPlayCallback(OSAlarm* alarm, OSContext* context);
    };
}

#endif // HOME_BUTTON_REMOTE_SPEAKER_H
