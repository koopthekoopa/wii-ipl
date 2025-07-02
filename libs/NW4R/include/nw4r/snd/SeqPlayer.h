#ifndef NW4R_SND_SEQ_PLAYER_H
#define NW4R_SND_SEQ_PLAYER_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicPlayer.h>
#include <nw4r/snd/DisposeCallback.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            // Forward declarations
            class Channel;
            struct NoteOnInfo;
            class NoteOnCallback;
            class SeqTrack;
            class SeqTrackAllocator;

            class SeqPlayer : public BasicPlayer, public DisposeCallback {
                public:
                    typedef struct ParserPlayerParam {
                        u8              volume;     // 0x00
                        u8              priority;   // 0x01
                        u16             tempo;      // 0x02

                        NoteOnCallback* callback;   // 0x04
                    } ParserPlayerParam;

                    typedef enum OffsetType {
                        OFFSET_TYPE_TICK = 0,
                        OFFSET_TYPE_MILLISEC
                    } OffsetType;

                    typedef enum SetupResult {
                        SETUP_SUCCESS = 0,
                        SETUP_ERR_CANNOT_ALLOCATE_TRACK,
                        SETUP_ERR_UNKNOWN
                    } SetupResult;

                    static const int LOCAL_VARIABLE_NUM = 16;
                    static const int GLOBAL_VARIABLE_NUM = 16;
                    static const int VARIABLE_NUM = LOCAL_VARIABLE_NUM + GLOBAL_VARIABLE_NUM;

                    static const int TRACK_NUM = 16;

                    SeqPlayer();
                    virtual ~SeqPlayer(); // 0x8

                    virtual bool    Start(); // 0x0C
                    virtual void    Stop(); // 0x10
                    virtual void    Pause(bool flag); // 0x14
                    virtual bool    IsActive() const        { return mActiveFlag; } // 0x18
                    virtual bool    IsPrepared() const      { return mPreparedFlag; }; // 0x1C
                    virtual bool    IsStarted() const       { return mStartedFlag; }; // 0x20
                    virtual bool    IsPause() const         { return mPauseFlag; };   // 0x24
                    virtual void    SetVolume(f32 volume); // 0x28
                    virtual void    SetPitch(f32 pitch); // 0x2C
                    virtual void    SetPan(f32 pan); // 0x30
                    virtual void    SetSurroundPan(f32 surroundPan); // 0x34
                    virtual void    SetPan2(f32 pan2); // 0x38
                    virtual void    SetSurroundPan2(f32 surroundPan2); // 0x3C
                    virtual void    SetLpfFreq(f32 lpfFreq); // 0x40
                    virtual f32     GetVolume() const       { return mExtVolume; }; // 0x44
                    virtual f32     GetPitch() const        { return mExtPitch; }; // 0x48
                    virtual f32     GetPan() const          { return mExtPan; }; // 0x4C
                    virtual f32     GetSurroundPan() const  { return mExtSurroundPan; }; // 0x50
                    virtual f32     GetPan2() const         { return mExtPan2; }; // 0x54
                    virtual f32     GetSurroundPan2() const { return mExtSurroundPan2; }; // 0x58
                    virtual f32     GetLpfFreq() const      { return mExtLpfFreq; }; // 0x5C
                    virtual void    SetOutputLine(int lineFlag); // 0x60
                    virtual void    SetMainOutVolume(f32 volume); // 0x64
                    virtual void    SetMainSend(f32 send); // 0x68
                    virtual void    SetFxSend(AuxBus bus, f32 send); // 0x6C
                    virtual void    SetRemoteOutVolume(int remoteIndex, f32 volume); // 0x70
                    virtual void    SetRemoteSend(int remoteIndex, f32 send); // 0x74
                    virtual void    SetRemoteFxSend(int remoteIndex, f32 send); // 0x78
                    virtual int     GetOutputLine() const; // 0x7C
                    virtual f32     GetMainOutVolume() const; // 0x80
                    virtual f32     GetMainSend() const; // 0x84
                    virtual f32     GetFxSend(AuxBus bus) const; // 0x88
                    virtual f32     GetRemoteOutVolume(int remoteIndex) const; // 0x8C
                    virtual f32     GetRemoteSend(int remoteIndex) const; // 0x90
                    virtual f32     GetRemoteFxSend(int remoteIndex) const; // 0x94

                    virtual void    InvalidateData(const void* start, const void* end); // 0x50
                    virtual void    InvalidateWaveData(const void* start, const void* end) {} // 0x54

                    virtual void    ChannelCallback(Channel* channel); // 0x58

                    void            InitParam(int voices, NoteOnCallback* callback);

                    SetupResult     Setup(SeqTrackAllocator* allocator, u32 allocTrackFlags, int voices, NoteOnCallback* callback);
                    void            SetSeqData(const void* base, s32 offset);

                    void            Skip(OffsetType type, int offset);

                    void            SetTempoRatio(f32 tempo);
                    void            SetChannelPriority(int priority);
                    void            SetReleasePriorityFix(bool flag);

                    void            SetLocalVariable(int trackNo, s16 value);
                    static void     SetGlobalVariable(int trackNo, s16 value);

                    void            SetTrackVolume(u32 trackFlags, f32 volume);
                    void            SetTrackPitch(u32 trackFlags, f32 pitch);

                    SeqTrack*       GetPlayerTrack(int trackNo);
                    vs16*           GetVariablePtr(int trackNo);
                    void            Update();

                    Channel*        NoteOn(int bankNo, const NoteOnInfo& noteOnInfo);

                    static void     UpdateAllPlayers();
                    static void     StopAllPlayers();

                    template<typename T> void SetTrackParam(u32 trackFlags, void (SeqTrack::*setter)(T), T param) {
                        ut::AutoInterruptLock lock;

                        for (int i = 0; i < TRACK_NUM && trackFlags != 0;
                            trackFlags >>= 1, i++) {

                            if (trackFlags & 1) {
                                SeqTrack* track = GetPlayerTrack(i);

                                if (track != NULL) {
                                    (track->*setter)(param);
                                }
                            }
                        }
                    }

                    f32                 GetPanRange() const         { return mPanRange; }
                    int                 GetVoiceOutCount() const    { return mVoiceOutCount; }
                    ParserPlayerParam&  GetParserPlayerParam()      { return mParserParam; }

                private:
                    static const int DEFAULT_TEMPO = 120;
                    static const int DEFAULT_PRIORITY = 64;
                    static const int DEFAULT_VARIABLE_VALUE = -1;

                    static const int MAX_SKIP_TICK_PER_FRAME = 768;

                    void        CloseTrack(int trackNo);
                    void        SetPlayerTrack(int trackNo, SeqTrack* track);

                    void        FinishPlayer();
                    void        UpdateChannelParam();
                    int         UpdateTempoCounter();
                    int         ParseNextTick(bool doNoteOn);

                    void        UpdateTick(int msec);
                    void        SkipTick();

                    static void InitGlobalVariable();

                    bool                mHomeButtonMenuFlag;                    // 0x14
                    u8                  mActiveFlag;                            // 0x15
                    u8                  mPreparedFlag;                          // 0x16
                    u8                  mStartedFlag;                           // 0x17
                    u8                  mPauseFlag;                             // 0x18
                    bool                mSkipFlag;                              // 0x19

                    f32                 mExtVolume;                             // 0x1C
                    f32                 mExtPan;                                // 0x20
                    f32                 mExtSurroundPan;                        // 0x24
                    f32                 mPanRange;                              // 0x28
                    f32                 mExtPan2;                               // 0x2C
                    f32                 mExtSurroundPan2;                       // 0x30
                    f32                 mExtPitch;                              // 0x34
                    f32                 mExtLpfFreq;                            // 0x38

                    int                 mOutputLineFlag;                        // 0x3C

                    f32                 mMainOutVolume;                         // 0x40
                    f32                 mMainSend;                              // 0x44

                    f32                 mFxSend[AUX_BUS_NUM];                   // 0x48

                    f32                 mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x54
                    f32                 mRemoteSend[WPAD_MAX_CONTROLLERS];      // 0x64
                    f32                 mRemoteFxSend[WPAD_MAX_CONTROLLERS];    // 0x74

                    f32                 mTempoRatio;                            // 0x84
                    u16                 mTempoCounter;                          // 0x88

                    s32                 mVoiceOutCount;                         // 0x8C

                    ParserPlayerParam   mParserParam;                           // 0x90
                    SeqTrackAllocator*  mSeqTrackAllocator;                     // 0x98

                    SeqTrack*           mTracks[TRACK_NUM];                     // 0x9C
                    vs16                mLocalVariable[TRACK_NUM];              // 0xDC

                    u32                 mTickCounter;                           // 0xFC

                    static vs16 mGlobalVariable[LOCAL_VARIABLE_NUM];

                public:
                    ut::LinkListNode    mPlayerLink;                            // 0x100
            };
            typedef ut::LinkList<SeqPlayer, offsetof(SeqPlayer, mPlayerLink)> SeqPlayerList;
        }
    }
}

#endif
