#ifndef NW4R_SND_WAVE_PLAYER_H
#define NW4R_SND_WAVE_PLAYER_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/AxVoice.h>

#include <nw4r/ut.h>

#include <revolution/wpad.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class SoundThread;
        }
        class WavePlayer {
            public:
                friend class detail::SoundThread;
                typedef struct WaveBufferInfo {
                    int     channelCount;
                    void*   bufferAddress[CHANNEL_MAX];
                    u32     bufferSize;
                } WaveBufferInfo;

                class WavePacket {
                    WavePacket();
                    virtual ~WavePacket() {}

                    private:
                        WaveBufferInfo      mWaveBuffer;    // 0x04
                        bool                mAppendFlag;    // 0x14

                    public:
                        ut::LinkListNode    mLinkNode;      // 0x18

                    friend class WavePlayer;
                };
                typedef ut::LinkList<WavePacket, offsetof(WavePacket, mLinkNode)> WavePacketList;

                typedef enum WavePacketCallbackStatus {
                    WAVE_PACKET_CALLBACK_STATUS_FINISH = 0,
                    WAVE_PACKET_CALLBACK_STATUS_CANCEL,
                } WavePacketCallbackStatus;

                typedef void (*WavePacketCallback)(WavePacketCallbackStatus, WavePlayer*, WavePacket*, void*);

                typedef struct SetupParam {
                    int             channelCount;   // 0x00
                    SampleFormat    sampleFormat;   // 0x04
                    int             sampleRate;     // 0x08
                    f32           pitchMax;       // 0x0C
                    int             voices;     // 0x10
                } SetupParam;

                WavePlayer();
                virtual ~WavePlayer();

                void    InitParam();
                bool    Setup(const SetupParam& setupParam, WavePacketCallback callback, void* callbackArg);
                
                bool    AppendWavePacket(WavePacket* packet);

                void    Start();
                void    Stop();
                void    Pause(bool flag);

                void    Shutdown();

                void    StartVoice();
                void    StopVoice();

                bool    IsNextWavePacket() const;
                void    SetNextWavePacket();
                void    UpdateWavePacket();
                
            private:
                void            detail_Update();
                void            detail_UpdateBuffer();

                static void     detail_UpdateAllPlayers();
                static void     detail_UpdateBufferAllPlayers();
                static void     detail_StopAllPlayers();

                static void     VoiceCallbackFunc(detail::AxVoice* voice, detail::AxVoice::CallbackStatus status, void* arg);

                WavePacketList      mWavePacketList;                        // 0x04

                int                 mChannelCount;                          // 0x10

                f32                 mPitchMax;                              // 0x14

                detail::AxVoice*    mVoice;                                 // 0x18

                bool                mStartFlag;                             // 0x1C
                bool                mVoiceStartFlag;                        // 0x1D
                bool                mLoopSetFlag;                           // 0x1E
                bool                mPauseFlag;                             // 0x1F

                SampleFormat        mSampleFormat;                          // 0x20
                int                 mSampleRate;                            // 0x24

                s64                 mPlaySampleCount;                       // 0x28
                f32                 mVolume;                                // 0x30
                f32                 mPan;                                   // 0x34
                f32                 mSurroundPan;                           // 0x38
                f32                 mPitch;                                 // 0x3C
                f32                 mLpfFreq;                               // 0x40

                int                 mOutputLineFlag;                        // 0x44

                f32                 mMainOutVolume;                         // 0x48
                f32                 mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x4C

                f32                 mMainSend;                              // 0x5C
                f32                 mFxSend[AUX_BUS_NUM];                   // 0x60

                f32                 mRemoteSend[WPAD_MAX_CONTROLLERS];      // 0x6C
                f32                 mRemoteFxSend[WPAD_MAX_CONTROLLERS];    // 0x7C

                WavePacketCallback  mCallback;                              // 0x8C
                void*               mCallbackArg;                           // 0x90

            public:
                ut::LinkListNode    mPlayerLink;                            // 0x94
        };
        typedef ut::LinkList<WavePlayer, offsetof(WavePlayer, mPlayerLink)> WavePlayerList;
    }
}

#endif // NW4R_SND_WAVE_PLAYER_H
