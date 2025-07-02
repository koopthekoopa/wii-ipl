#ifndef NW4R_SND_STRM_PLAYER_H
#define NW4R_SND_STRM_PLAYER_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicPlayer.h>
#include <nw4r/snd/InstancePool.h>
#include <nw4r/snd/StrmChannel.h>
#include <nw4r/snd/StrmFile.h>
#include <nw4r/snd/AxVoice.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class StrmPlayer : public BasicPlayer {
                public:
                    typedef enum StartOffsetType {
                        START_OFFSET_TYPE_SAMPLE = 0,
                        START_OFFSET_TYPE_MILLISEC
                    } StartOffsetType;

                    typedef struct StrmHeader {
                        // TODO: Why 8 if the player only supports 2???
                        static const int STRM_CHANNEL_MAX = 8;

                        StrmInfo    strmInfo;                       // 0x00
                        AdpcmInfo   adpcmInfo[STRM_CHANNEL_MAX];    // 0x38
                    } StrmHeader;

                    // TODO: How is this calculated?
                    static const int LOAD_BUFFER_SIZE = 0x4000 + 32;
                    class LoadCommand {
                        friend class StrmPlayer;

                        public:
                            virtual void    NotifyAsyncEnd(bool result);

                            void            SetAdpcmLoopContext(int channelNum, u16* predScale);
                            void*           GetBuffer(int channelNum);

                        private:
                            typedef enum Status {
                                STATE_SETUP = 0,
                                STATE_INTERVAL,
                            } Status;

                            StrmPlayer* mPlayer;            // 0x04
                            Status      mStatus;            // 0x08

                            s32         mStreamBlockIndex;  // 0x0C
                            s32         mBufferBlockIndex;  // 0x10

                        public:
                            ut::LinkListNode    mLinkNode;  // 0x14

                            static u8 mMramBuf[LOAD_BUFFER_SIZE] ALIGN32;
                    };
                    typedef ut::LinkList<LoadCommand, offsetof(LoadCommand, mLinkNode)> LoadCommandList;

                    typedef void (*NotifyLoadHeaderAsyncEndCallback)(bool, const StrmHeader*, void*);
                    class StrmCallback {
                        public:
                            typedef enum Result {
                                RESULT_SUCCESS = 0,
                                RESULT_FAILED,
                                RESULT_CANCELED,
                                RESULT_ASYNC,
                                RESULT_RETRY
                            } Result;

                            virtual ~StrmCallback() {}

                            virtual Result  LoadHeader(StrmPlayer::NotifyLoadHeaderAsyncEndCallback callback, void* callbackData, u32 userId, u32 userData) const = 0;
                            virtual Result  LoadStream(void* mramAddr, u32 size, s32 offset, int numChannels,
                                                    u32 blockSize, s32 blockHeaderOffset, bool needUpdateAdpcmLoop,
                                                    StrmPlayer::LoadCommand& callback, u32 userId, u32 userData) const = 0;

                            virtual void    CancelLoading(u32 userId, u32 userData) const = 0;
                    };

                public:
                    StrmPlayer();
                    
                    virtual bool    Start();                                                                    // 0x0C
                    virtual void    Stop();                                                                     // 0x10
                    virtual void    Pause(bool flag);                                                           // 0x14
                    virtual bool    IsActive() const                    { return mActiveFlag; }                 // 0x18
                    virtual bool    IsPrepared() const                  { return mPreparedFlag; };              // 0x1C
                    virtual bool    IsStarted() const                   { return mStartedFlag; };               // 0x20
                    virtual bool    IsPause() const                     { return mPauseFlag; };                 // 0x24
                    virtual void    SetVolume(f32 volume)               { mExtVolume = volume; }                // 0x28
                    virtual void    SetPitch(f32 pitch)                 { mExtPitch = pitch; }                  // 0x2C
                    virtual void    SetPan(f32 pan)                     { mExtPan = pan; }                      // 0x30
                    virtual void    SetSurroundPan(f32 surroundPan)     { mExtSurroundPan = surroundPan; }      // 0x34
                    virtual void    SetPan2(f32 pan2)                   { mExtPan2 = pan2; }                    // 0x38
                    virtual void    SetSurroundPan2(f32 surroundPan2)   { mExtSurroundPan2 = surroundPan2; }    // 0x3C
                    virtual void    SetLpfFreq(f32 lpfFreq)             { mExtLpfFreq = lpfFreq; }              // 0x40
                    virtual f32     GetVolume() const                   { return mExtVolume; };                 // 0x44
                    virtual f32     GetPitch() const                    { return mExtPitch; };                  // 0x48
                    virtual f32     GetPan() const                      { return mExtPan; };                    // 0x4C
                    virtual f32     GetSurroundPan() const              { return mExtSurroundPan; };            // 0x50
                    virtual f32     GetPan2() const                     { return mExtPan2; };                   // 0x54
                    virtual f32     GetSurroundPan2() const             { return mExtSurroundPan2; };           // 0x58
                    virtual f32     GetLpfFreq() const                  { return mExtLpfFreq; };                // 0x5C
                    virtual void    SetOutputLine(int lineFlag);                                                // 0x60
                    virtual void    SetMainOutVolume(f32 volume);                                               // 0x64
                    virtual void    SetMainSend(f32 send);                                                      // 0x68
                    virtual void    SetFxSend(AuxBus bus, f32 send);                                            // 0x6C
                    virtual void    SetRemoteOutVolume(int remoteIndex, f32 volume);                            // 0x70
                    virtual void    SetRemoteSend(int remoteIndex, f32 send);                                   // 0x74
                    virtual void    SetRemoteFxSend(int remoteIndex, f32 send);                                 // 0x78
                    virtual int     GetOutputLine() const;                                                      // 0x7C
                    virtual f32     GetMainOutVolume() const;                                                   // 0x80
                    virtual f32     GetMainSend() const;                                                        // 0x84
                    virtual f32     GetFxSend(AuxBus bus) const;                                                // 0x88
                    virtual f32     GetRemoteOutVolume(int remoteIndex) const;                                  // 0x8C
                    virtual f32     GetRemoteSend(int remoteIndex) const;                                       // 0x90
                    virtual f32     GetRemoteFxSend(int remoteIndex) const;                                     // 0x94

                    void            Setup(const StrmHeader* header);
                    bool            SetupPlayer(const StrmHeader* header);
                    void            Shutdown();

                    bool            Prepare(StrmBufferPool* bufferPool, StartOffsetType startOffsetType, s32 startOffset, int voices, StrmCallback* callback, u32 callbackData);

                    void            InitParam(int voices);
                    void            ForceStop();

                    void            Update();

                    static void     UpdateAllPlayers();
                    static void     StopAllPlayers();
                    static void     UpdateBufferAllPlayers();

                private:
                    static const int DATA_BLOCK_COUNT_MIN = 4;
                    static const int DATA_BLOCK_COUNT_MAX = 32;
                    static const int DATA_BLOCK_SIZE_MAX = 0x2000;

                    bool        AllocChannels(int channels, int voices);
                    void        FreeChannels();

                    void        UpdateBuffer();
                    void        UpdateLoopAddress(u32 startSample, u32 endSample);
                    void        UpdatePlayingBlockIndex();
                    void        UpdateDataLoopAddress(s32 endBlock);
                    void        SetLoopEndToZeroBuffer(int endBlock);
                    void        UpdateLoadingBlockIndex(LoadCommand::Status status);
                    void        UpdatePauseStatus();

                    int         CalcLoadingBufferBlockCount() const;
                    bool        CalcStartOffset(s32* blockIndex, u32* blockOffset, s32* loopCount);

                    static void VoiceCallbackFunc(AxVoice* dropVoice, AxVoice::CallbackStatus status, void* pCallbackArg);

                    static void NotifyStrmHeaderAsyncEndCallback(bool result, const StrmHeader* header, void* userData);

                public:
                    ut::LinkListNode    mPlayerLink;                            // 0x08

                private:
                    StrmInfo            mStrmInfo;                              // 0x10

                    u8                  mActiveFlag;                            // 0x48
                    u8                  mStartedFlag;                           // 0x49
                    u8                  mPreparedFlag;                          // 0x4A
                    u8                  mPauseFlag;                             // 0x4B
                    u8                  mDiskErrorFlag;                         // 0x4C
                    u8                  mPauseStatus;                           // 0x4D
                    u8                  mLoadWaitFlag;                          // 0x4E
                    u8                  mNoRealtimeLoadFlag;                    // 0x4F

                    u8                  mSkipUpdateAdpcmLoop;                   // 0x50
                    u8                  mValidAdpcmLoop;                        // 0x51

                    u8                  mPlayFinishFlag;                        // 0x52
                    u8                  mLoadFinishFlag;                        // 0x53
                    s32                 mLoopCounter;                           // 0x54

                    int                 mPrepareCounter;                        // 0x58

                    int                 mChangeNumBlocks;                       // 0x5C
                    int                 mDataBlockSize;                         // 0x60

                    int                 mBufferBlockCount;                      // 0x64
                    int                 mBufferBlockCountBase;                  // 0x68

                    int                 mLoadingBufferBlockCount;               // 0x6C
                    int                 mLoadingBufferBlockIndex;               // 0x70
                    int                 mLoadingDataBlockIndex;                 // 0x74

                    int                 mPlayingBufferBlockCount;               // 0x78
                    int                 mPlayingBufferBlockIndex;               // 0x7C
                    int                 mPlayingDataBlockIndex;                 // 0x80

                    int                 mLoopStartBlockIndex;                   // 0x84
                    int                 mLastBlockIndex;                        // 0x88

                    StartOffsetType     mStartOffsetType;                       // 0x8C
                    int                 mStartOffset;                           // 0x90

                    LoadCommandList     mFreeLoadCommandList;                   // 0x94
                    LoadCommandList     mFillBufferCommandList;                 // 0xA0
                    LoadCommand         mLoadCoammndArray[32];                  // 0xAC

                    StrmBufferPool*     mBufferPool;                            // 0x42C

                    StrmCallback*       mCallback;                              // 0x430
                    u32                 mCallbackData;                          // 0x434

                    AxVoice*            mVoice;                                 // 0x438

                    f32                 mExtVolume;                             // 0x43C
                    f32                 mExtPan;                                // 0x440
                    f32                 mExtSurroundPan;                        // 0x444
                    f32                 mExtPan2;                               // 0x448
                    f32                 mExtSurroundPan2;                       // 0x44C
                    f32                 mExtPitch;                              // 0x450
                    f32                 mExtLpfFreq;                            // 0x454

                    int                 mOutputLineFlag;                        // 0x458

                    f32                 mMainOutVolume;                         // 0x45C
                    f32                 mMainSend;                              // 0x460

                    f32                 mFxSend[AUX_BUS_NUM];                   // 0x464

                    f32                 mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x470
                    f32                 mRemoteSend[WPAD_MAX_CONTROLLERS];      // 0x480
                    f32                 mRemoteFxSend[WPAD_MAX_CONTROLLERS];    // 0x490

                    s32                 mChannelCount;                          // 0x4A0
                    s32                 mVoiceOutCount;                         // 0x4A4

                    StrmChannel         mChannels[CHANNEL_MAX];                 // 0x4A8
                    u16                 mAdpcmPredScale[CHANNEL_MAX];           // 0x518
            };
            typedef ut::LinkList<StrmPlayer, offsetof(StrmPlayer, mPlayerLink)> StrmPlayerList;
        }
    }
}

#endif // NW4R_SND_STRM_PLAYER_H
