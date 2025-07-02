#ifndef NW4R_SND_CHANNEL_H
#define NW4R_SND_CHANNEL_H

#include <revolution/types.h>

#include <nw4r/snd/EnvGenerator.h>
#include <nw4r/snd/Lfo.h>
#include <nw4r/snd/MoveValue.h>
#include <nw4r/snd/types.h>
#include <nw4r/snd/AxVoice.h>

#include <revolution/wpad.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class Channel : public LinkedInstance {
                public:
                    typedef enum ChannelCallbackStatus {
                        CALLBACK_STATUS_STOPPED = 0,
                        CALLBACK_STATUS_DROP,
                        CALLBACK_STATUS_FINISH,
                        CALLBACK_STATUS_CANCEL
                    } ChannelCallbackStatus;

                    typedef void (*ChannelCallback)(Channel* dropChannel, ChannelCallbackStatus status, u32 callbackArg);

                    typedef enum LfoTarget {
                        LFO_TARGET_PITCH = 0,
                        LFO_TARGET_VOLUME,
                        LFO_TARGET_PAN
                    } LfoTarget;

                public:
                    Channel();
                    ~Channel();

                    void            InitParam(ChannelCallback callback, u32 callbackArg);
                    void            Update(bool doPeriodicProc);
                    void            Start(const WaveData& waveData, s32 length);
                    void            Release();
                    void            Stop();

                    void            SetAttack(int attack)                       { mEnvelope.SetAttack(attack); }
                    void            SetDecay(int decay)                         { mEnvelope.SetDecay(decay); }
                    void            SetSustain(int sustain)                     { mEnvelope.SetSustain(sustain); }

                    void            SetRelease(int release)                     { mEnvelope.SetRelease(release); }
                    bool            IsRelease() const                           { return mEnvelope.GetStatus() == EnvGenerator::STATUS_RELEASE; }

                    void            SetLfoParam(const LfoParam& rParam)         { mLfo.SetParam(rParam); }
                    void            SetLfoTarget(LfoTarget target)              { mLfoTarget = target; }

                    void Pause(bool pause) {
                        mPauseFlag = pause;
                        mVoice->Pause(pause);
                    }

                    bool            IsPause() const                             { return mPauseFlag != false; }
                    bool            IsActive() const                            { return mActiveFlag; }
                    bool            IsAutoUpdateSweep() const                   { return mAutoSweep; }

                    void            SetUserVolume(f32 volume)                   { mUserVolume = volume; }
                    void            SetUserPitch(f32 pitch)                     { mUserPitch = pitch; }
                    void            SetUserPitchRatio(f32 ratio)                { mUserPitchRatio = ratio; }
                    void            SetUserPan(f32 pan)                         { mUserPan = pan; }
                    void            SetUserSurroundPan(f32 pan)                 { mUserSurroundPan = pan; }
                    void            SetUserPan2(f32 pan2)                       { mUserPan2 = pan2; }
                    void            SetUserSurroundPan2(f32 pan2)               { mUserSurroundPan2 = pan2; }
                    void            SetUserLpfFreq(f32 freq)                    { mUserLpfFreq = freq; }

                    void            SetOutputLine(int flag)                     { mOutputLineFlag = flag; }

                    void            SetMainOutVolume(f32 volume)                { mMainOutVolume = volume; }
                    void            SetMainSend(f32 send)                       { mMainSend = send; }
                    void            SetFxSend(AuxBus bus, f32 send)             { mFxSend[bus] = send; }

                    void            SetRemoteOutVolume(int remote, f32 volume)  { mRemoteOutVolume[remote] = volume; }
                    void            SetRemoteSend(int remote, f32 send)         { mRemoteSend[remote] = send; }
                    void            SetRemoteFxSend(int remote, f32 send)       { mRemoteFxSend[remote] = send; }

                    void            UpdateSweep(int count);
                    void            SetSweepParam(f32 pitch, int time, bool autoUpdate);
                    f32             GetSweepValue() const;

                    void            SetInitVolume(f32 volume)                   { mInitVolume = volume; }
                    void            SetInitPan(f32 pan)                         { mInitPan = pan; }
                    void            SetInitSurroundPan(f32 pan)                 { mInitSurroundPan = pan; }
                    void            SetTune(f32 tune)                           { mTune = tune; }
                    void            SetSilence(bool silence, int fadeTime)      { mSilenceVolume.SetTarget(silence ? 0 : SILENCE_VOLUME_MAX, fadeTime); }

                    void            SetKey(int key)                             { mKey = key; }
                    void            SetOriginalKey(int key)                     { mOriginalKey = key; }

                    s32             GetLength() const                           { return mLength; }
                    void            SetLength(s32 length)                       { mLength = length; }

                    Channel*        GetNextTrackChannel() const                 { return mNextLink; }
                    void            SetNextTrackChannel(Channel* channel)       { mNextLink = channel; }

                    static void     UpdateAllChannel();
                    static Channel* AllocChannel(int channels, int voices, int priority, ChannelCallback pCallback, u32 callbackArg);
                    static void     FreeChannel(Channel* channel);

                    static void     VoiceCallback(AxVoice* voice, AxVoice::CallbackStatus status, void* arg);

                private:
                    static const u8 SILENCE_VOLUME_MAX = 255;

                    static const int KEY_INIT = 60;
                    static const int ORIGINAL_KEY_INIT = 60;

                    static const int PRIORITY_RELEASE = 1;

                    EnvGenerator        mEnvelope;                              // 0x08

                    Lfo                 mLfo;                                   // 0x20
                    u8                  mLfoTarget;                             // 0x38

                    bool                mPauseFlag;                             // 0x39
                    bool                mActiveFlag;                            // 0x3A
                    bool                mAllocFlag;                             // 0x3B
                    bool                mAutoSweep;                             // 0x3C

                    f32                 mUserVolume;                            // 0x40
                    f32                 mUserPitchRatio;                        // 0x44
                    f32                 mUserPan;                               // 0x48
                    f32                 mUserSurroundPan;                       // 0x4C
                    f32                 mUserPan2;                              // 0x50
                    f32                 mUserSurroundPan2;                      // 0x54
                    f32                 mUserLpfFreq;                           // 0x58

                    int                 mOutputLineFlag;                        // 0x5C

                    f32                 mMainOutVolume;                         // 0x60
                    f32                 mMainSend;                              // 0x64
                    f32                 mFxSend[AUX_BUS_NUM];                   // 0x68

                    f32                 mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x74
                    f32                 mRemoteSend[WPAD_MAX_CONTROLLERS];      // 0x84
                    f32                 mRemoteFxSend[WPAD_MAX_CONTROLLERS];    // 0x94

                    f32                 mUserPitch;                             // 0xA4

                    f32                 mSweepPitch;                            // 0xA8
                    s32                 mSweepCounter;                          // 0xAC
                    s32                 mSweepLength;                           // 0xB0

                    f32                 mInitVolume;                            // 0xB4
                    f32                 mInitPan;                               // 0xB8
                    f32                 mInitSurroundPan;                       // 0xBC

                    f32                 mTune;                                  // 0xC0
                    MoveValue<u8, u16>  mSilenceVolume;                         // 0xC4
                    int                 mKey;                                   // 0xCC
                    int                 mOriginalKey;                           // 0xD0
                    s32                 mLength;                                // 0xD4

                    ChannelCallback     mCallback;                              // 0xD8
                    u32                 mCallbackData;                          // 0xDC

                    AxVoice*            mVoice;                                 // 0xE0
                    Channel*            mNextLink;                              // 0xE4

                    static Channel      mChannel[AX_VOICE_MAX+1];
            };
        }
    }
}

#endif // NW4R_SND_CHANNEL_H
