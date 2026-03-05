#include "homebutton/HBMRemoteSpk.h"

#include <nw4r/snd.h>

#include <revolution/arc.h>
#include <revolution/os.h>
#include <revolution/wenc.h>
#include <revolution/wpad.h>

#include <cstring>

namespace homebutton {
    RemoteSpk* RemoteSpk::spInstance = NULL;

    void RemoteSpk::SetInstance(RemoteSpk* pThis) {
        spInstance = pThis;
    }

    RemoteSpk* RemoteSpk::GetInstance() {
        return spInstance;
    }

    void RemoteSpk::GetPCMFromSeID(int id, s16*& rpPcm, int& rLength) {
        ARCFileInfo af;
        ARCFastOpen(&handle, id, &af);

        rpPcm = static_cast<s16*>(ARCGetStartAddrInMem(&af));
        rLength = ARCGetLength(&af);

        ARCClose(&af);
    }

    static bool MakeVolumeData(const s16* pSrc, s16* pDst, int vol, u32 size) {
        u32 enc_size = size <= nw4r::snd::RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET ? size : nw4r::snd::RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET;

        for (int i = 0; i < enc_size; i++) {
            *pDst++ = static_cast<s16>(*pSrc++ * vol / 10);
        }

        if (size > nw4r::snd::RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET) {
            return false;
        }

        u32 zero_size = nw4r::snd::RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET - size;

        for (int i = 0; i < zero_size; i++) {
            *pDst++ = 0;
        }

        return true;
    }

    void RemoteSpk::UpdateSpeaker(OSAlarm* alarm, OSContext* context) {
        s16 pcmBuffer[nw4r::snd::RemoteSpeaker::SAMPLES_PER_AUDIO_PACKET];
        u8 adpcmBuffer[nw4r::snd::RemoteSpeaker::SAMPLES_PER_ENCODED_PACKET];

        if (GetInstance() == NULL) {
            return;
        }

        ChanInfo* pInfo = GetInstance()->info;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++, pInfo++) {
            if (pInfo->in_pcm != NULL && WPADIsSpeakerEnabled(i)) {
                BOOL intrStatus = OSDisableInterrupts();

                if (WPADCanSendStreamData(i)) {
                    MakeVolumeData(pInfo->in_pcm, pcmBuffer, pInfo->vol, pInfo->length / sizeof(s16));

                    WENCGetEncodeData(&pInfo->wencinfo, pInfo->first ? 0 : WENC_FLAG_USER_INFO, pcmBuffer, ARRAY_LENGTH(pcmBuffer), adpcmBuffer);

                    WPADSendStreamData(i, adpcmBuffer, ARRAY_LENGTH(adpcmBuffer));

                    pInfo->first = false;
                    pInfo->cannotSendCnt = 0;
                    pInfo->in_pcm += ARRAY_LENGTH(pcmBuffer);
                    pInfo->length -= ARRAY_LENGTH(pcmBuffer) * sizeof(s16);

                    if (pInfo->length <= 0) {
                        pInfo->seId = -1;
                        pInfo->in_pcm = NULL;
                    }
                }
                else {
                    pInfo->cannotSendCnt++;

                    // @bug 300 is out of range of a signed, 8 bit integer
                    if (pInfo->cannotSendCnt > 300) {
                        pInfo->in_pcm = NULL;
                    }
                }

                OSRestoreInterrupts(intrStatus);
            }
        }
    }

    void RemoteSpk::ClearPcm() {
        ChanInfo* pInfo = GetInstance()->info;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++, pInfo++) {
            pInfo->seId = -1;
            pInfo->in_pcm = NULL;
        }
    }

    RemoteSpk::RemoteSpk(void* pSpkSeBuf) {
        SetInstance(this);

        if (pSpkSeBuf != NULL) {
            available = ARCInitHandle(pSpkSeBuf, &handle);
        }
        else {
            available = false;
        }

        OSCreateAlarm(&speakerAlarm);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            OSCreateAlarm(&info[i].alarm);
            info[i].in_pcm = NULL;
            info[i].seId = -1;
            info[i].first = true;
            info[i].playReady = true;
        }
    }

    RemoteSpk::~RemoteSpk() {
        SetInstance(NULL);
        available = false;

        OSCancelAlarm(&speakerAlarm);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            OSCancelAlarm(&info[i].alarm);
        }
    }

    void RemoteSpk::Start() {
        if (!available) {
            return;
        }

        OSCreateAlarm(&speakerAlarm);
        OSSetPeriodicAlarm(&speakerAlarm, OSGetTime(), OSNanosecondsToTicks(nw4r::snd::detail::RemoteSpeakerManager::SPEAKER_ALARM_PERIOD_NSEC),&UpdateSpeaker);
    }

    void RemoteSpk::Stop() {
        OSCancelAlarm(&speakerAlarm);
    }

    void RemoteSpk::DelaySpeakerOnCallback(OSAlarm* alarm, OSContext* context) {
        s32 chan = reinterpret_cast<s32>(OSGetAlarmUserData(alarm));
        s32 result = WPADControlSpeaker(chan, WPAD_SPEAKER_ON, &SpeakerOnCallback);
    }

    void RemoteSpk::SpeakerOnCallback(s32 chan, s32 result) {
        RemoteSpk* pRmtSpk = GetInstance();
        if (pRmtSpk == NULL) {
            return;
        }

        switch (result) {
            case WPAD_ERR_OK: {
                pRmtSpk->info[chan].first = true;
                result = WPADControlSpeaker(chan, WPAD_SPEAKER_PLAY, &SpeakerPlayCallback);
                break;
            }
            case WPAD_ERR_COMMUNICATION_ERROR: {
                OSSetAlarmUserData(&pRmtSpk->info[chan].alarm, reinterpret_cast<void*>(chan));

                OSCancelAlarm(&pRmtSpk->info[chan].alarm);
                OSSetAlarm(&pRmtSpk->info[chan].alarm, OSMillisecondsToTicks(50), &DelaySpeakerOnCallback);
                break;
            }
        }
    }

    void RemoteSpk::DelaySpeakerPlayCallback(OSAlarm* alarm, OSContext* context) {
        s32 chan = reinterpret_cast<s32>(OSGetAlarmUserData(alarm));
        s32 result = WPADControlSpeaker(chan, WPAD_SPEAKER_PLAY, &SpeakerPlayCallback);
    }

    void RemoteSpk::SpeakerPlayCallback(s32 chan, s32 result) {
        RemoteSpk* pRmtSpk = GetInstance();
        if (pRmtSpk == NULL) {
            return;
        }

        switch (result) {
            case WPAD_ERR_OK: {
                pRmtSpk->info[chan].playReady = true;
                break;
            }
            case WPAD_ERR_NO_CONTROLLER: {
                pRmtSpk->info[chan].playReady = false;
                break;
            }
            case WPAD_ERR_COMMUNICATION_ERROR: {
                OSSetAlarmUserData(&pRmtSpk->info[chan].alarm, reinterpret_cast<void*>(chan));

                OSCancelAlarm(&pRmtSpk->info[chan].alarm);
                OSSetAlarm(&pRmtSpk->info[chan].alarm, OSMillisecondsToTicks(50), &DelaySpeakerPlayCallback);
                break;
            }
        }
    }

    void RemoteSpk::Connect(s32 chan) {
        if (!available) {
            return;
        }

        int result = WPADControlSpeaker(chan, WPAD_SPEAKER_ON, &SpeakerOnCallback);

        std::memset(&info[chan].wencinfo, 0, sizeof(WENCInfo));
        info[chan].first = true;
        info[chan].playReady = false;
    }

    void RemoteSpk::Play(s32 chan, int seID, s8 vol) {
        if (!available) {
            return;
        }

        s16* pPcm;
        int length;
        GetPCMFromSeID(seID, pPcm, length);

        info[chan].cannotSendCnt = 0;
        info[chan].seId = seID;
        info[chan].length = length;
        info[chan].vol = vol;
        info[chan].in_pcm = pPcm;
    }

    bool RemoteSpk::isPlaying(s32 chan) const {
        return info[chan].in_pcm != NULL;
    }

    bool RemoteSpk::isPlayingId(s32 chan, int seId) const {
        if (isPlaying(chan) && info[chan].seId == seId) {
            return true;
        }

        return false;
    }

    bool RemoteSpk::isPlayReady(s32 chan) const {
        return info[chan].playReady != false;
    }
}
