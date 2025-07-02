#ifndef NW4R_SND_AX_VOICE_H
#define NW4R_SND_AX_VOICE_H

#include <nw4r/snd/DisposeCallback.h>
#include <nw4r/snd/types.h>

#include <nw4r/ut/LinkList.h>

#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class WaveData;
            class AxVoice : public DisposeCallback {
                friend class AxManager;

                public:
                    typedef enum CallbackStatus {
                        CALLBACK_STATUS_FINISH_WAVE = 0,
                        CALLBACK_STATUS_INVALIDATE_WAVE,
                        CALLBACK_STATUS_DROP_VOICE,
                        CALLBACK_STATUS_DROP_DSP
                    } CallbackStatus;

                    typedef enum VoiceSyncFlag {
                        SYNC_AX_SRC_INITIAL = (1 << 0),
                        SYNC_AX_VOICE = (1 << 1),
                        SYNC_AX_SRC = (1 << 3),
                        SYNC_AX_VE = (1 << 4),
                        SYNC_AX_MIX = (1 << 5),
                        SYNC_AX_LPF = (1 << 6),
                        SYNC_AX_REMOTE = (1 << 7),
                        SYNC_AX_BIQUAD = (1 << 8),
                    } VoiceSyncFlag;

                    typedef enum Format {
                        FORMAT_PCM16 = 10,
                        FORMAT_PCM8 = 25,
                        FORMAT_ADPCM = 0
                    } Format;

                    typedef enum VoiceType {
                        VOICE_TYPE_NORMAL = 0,
                        VOICE_TYPE_STREAM
                    } VoiceType;

                    typedef enum SrcType {
                        SRC_NONE = 0,
                        SRC_LINEAR,
                        SRC_4TAP_8K ,
                        SRC_4TAP_12K,
                        SRC_4TAP_16K,
                        SRC_4TAP_AUTO
                    } SrcType;

                    typedef void (*AxVoiceCallback)(AxVoice* drovoice, CallbackStatus status, void* callbackArg);

                    AxVoice();
                    virtual ~AxVoice(); // 0x08

                    virtual void    InvalidateData(const void* start, const void* end) {}   // 0x0C
                    virtual void    InvalidateWaveData(const void* start, const void* end); // 0x10

                    void            Setup(const WaveData& waveParam);
                    void            Update();
                    void            Free();

                    void            Start();
                    void            Stop();

                    void            Pause(bool flag);

                    void            SetVolume(f32 volume);
                    void            SetVeVolume(f32 targetVolume, f32 initVolume);
                    void            SetMainOutVolume(f32 volume);
                    void            SetRemoteOutVolume(int remoteIndex, f32 volume);

                    void            SetPitch(f32 pitch);
                    void            SetPan(f32 pan);
                    void            SetPan2(f32 pan);
                    void            SetSurroundPan(f32 surroundPan);
                    void            SetSurroundPan2(f32 surroundPan);

                    void            SetLpfFreq(f32 lpfFreq);

                    void            SetOutputLine(int lineFlag);

                    void            SetMainSend(f32 send);
                    void            SetFxSend(AuxBus bus, f32 send);
                    void            SetRemoteSend(int remoteIndex, f32 send);
                    void            SetRemoteFxSend(int remoteIndex, f32 send);
                    
                    void            SetPriority(int priority);
                    int             GetPriority() const { return mPriority; }

                    u32             GetCurrentPlayingDspAddress() const;
                    u32             GetLoopStartDspAddress() const;
                    u32             GetLoopEndDspAddress() const;

                    u32             GetCurrentPlayingSample() const;

                    void            SetAdpcmLoop(int channelIndex, Format format, const AdpcmLoopParam* param);
                    void            SetBaseAddress(int channelIndex, const void* baseAddress);

                    bool            IsPlayFinished() const;
                    bool            IsRun();

                    void            SetAxAddr(int channelIndex, bool loopFlag, Format format, const void* waveAddr, u32 loopStart, u32 loopEnd);

                    void            SetLoopStart(int channelIndex, const void* baseAddress, u32 samples);
                    void            SetLoopEnd(int channelIndex, const void* baseAddress, u32 samples);
                    void            SetLoopFlag(bool loopFlag);

                    void            StopAtPoint(int channelIndex, const void* baseAddress, u32 samples);
                    void            SetVoiceType(VoiceType type);

                    void            UpdateAxSrc(bool initialUpdate);
                    void            SetAxSrcType(SrcType type);

                    void            SetAxAdpcm(int channelIndex, Format format, const AdpcmParam* param);
                    void            SetAxAdpcmLoop(int channelIndex, Format format, const AdpcmLoopParam* param) NO_INLINE;

                    bool            UpdateAxVe();
                    void            UpdateAxMix();
                    void            UpdateAxLpf();

                    void            InitParam(int channels, int voices, AxVoiceCallback callback, void* callbackData);
                    bool            Acquire(int channels, int voices, int priority, AxVoiceCallback callback, void* callbackData);

                    int             GetAxVoiceCount() const { return mChannelCount * mVoiceOutCount; }

                    static u32      GetDspAddressBySample(const void* baseAddress, u32 samples, Format format);
                    static u32      GetSampleByDspAddress(const void* baseAddress, u32 addr, Format format);
                    static u32      GetSampleByByte(u32 byte, Format format);

                    template<typename T> void SetAxParam(void (*func)(AXVPB*, T), T param) {
                        for (int i = 0; i < mChannelCount; i++) {
                            for (int j = 0; j < mVoiceOutCount; j++) {
                                if (mVpb[i][j] != NULL) {
                                    func(mVpb[i][j], param);
                                }
                            }
                        }
                    }

                    Format          GetFormat() { return mFormat; }

                    static const int    VOICES_MAX = 4;
                    static const int    PRIORITY_MAX = 255;

                protected:
                    static void     VoiceCallback(void* callbackData);

                    void            TransformDpl2Pan(f32* outPan, f32* outSurroundPan, f32 inPan, f32 inSurroundPan);

                    void            CalcAXPBMIX(int channelIndex, int voiceIndex, AXPBMIX* mix);
                    void            CalcAXPBRMTMIX(int channelIndex, int voiceIndex, AXPBRMTMIX* mix);

                    AXVPB*              mVpb[CHANNEL_MAX][VOICES_MAX];          // 0x0C

                    VoiceChannelParam   mVoiceChannelParam[CHANNEL_MAX];        // 0x2C
                    SoundParam          mVoiceOutParam[VOICES_MAX];             // 0x94
                    s32                 mChannelCount;                          // 0x104
                    s32                 mVoiceOutCount;                         // 0x108

                    AxVoiceCallback     mCallback;                              // 0x10C
                    void*               mCallbackData;                          // 0x110

                    int                 mSampleRate;                            // 0x114

                    Format              mFormat;                                // 0x118

                    bool                mActiveFlag;                            // 0x11C
                    bool                mStartFlag;                             // 0x11D
                    bool                mStartedFlag;                           // 0x11E
                    bool                mPauseFlag;                             // 0x11F
                    bool                mPausingFlag;                           // 0x120
                    bool                mFirstVeUpdateFlag;                     // 0x121
                    bool                mHomeButtonMuteFlag;                    // 0x122
                    u8                  mSyncFlag;                              // 0x123

                    int                 mPriority;                              // 0x124

                    f32                 mPan;                                   // 0x128
                    f32                 mSurroundPan;                           // 0x12C
                    f32                 mPan2;                                  // 0x130
                    f32                 mSurroundPan2;                          // 0x134

                    f32                 mLpfFreq;                               // 0x138

                    int                 mOutputLineFlag;                        // 0x13C

                    f32                 mMainOutVolume;                         // 0x140
                    f32                 mMainSend;                              // 0x144

                    f32                 mFxSend[AUX_BUS_NUM];                   // 0x148

                    f32                 mRemoteOutVolume[VOICES_MAX];           // 0x154
                    f32                 mRemoteSend[VOICES_MAX];                // 0x164
                    f32                 mRemoteFxSend[VOICES_MAX];              // 0x174

                    f32                 mPitch;                                 // 0x184

                    f32                 mVolume;                                // 0x188
                    f32                 mVolumePrev[VOICES_MAX];                // 0x18C

                    f32                 mVeInitVolume;                          // 0x19C
                    f32                 mVeTargetVolume;                        // 0x1A0

                    u16                 mGainPrev;                              // 0x1A4

                public:
                    ut::LinkListNode    mLinkNode;                              // 0x1A8
            };

            typedef ut::LinkList<AxVoice, offsetof(AxVoice, mLinkNode)> AxVoiceList;
        }
    }
}

#endif // NW4R_SND_AX_VOICE_H
