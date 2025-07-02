#ifndef NW4R_SND_WSD_PLAYER_H
#define NW4R_SND_WSD_PLAYER_H

#include <nw4r/snd/WsdTrack.h>
#include <nw4r/snd/BasicPlayer.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class WsdPlayer : public BasicPlayer, public DisposeCallback {
                public:
                    WsdPlayer();

                    void            InitParam(int voices, const WsdTrack::WsdCallback* callback, u32 callbackData);

                    bool            Prepare(const void* waveSoundBase, int index, int voices, const WsdTrack::WsdCallback* callback,u32 callbackData);

                    virtual bool    Start();                                                // 0x0C
                    virtual void    Stop();                                                 // 0x10
                    virtual void    Pause(bool flag);                                       // 0x14
                    virtual bool    IsActive() const        { return mActiveFlag; }         // 0x18
                    virtual bool    IsStarted() const       { return mStartedFlag; };       // 0x20
                    virtual bool    IsPrepared() const      { return mPreparedFlag; };      // 0x1C
                    virtual bool    IsPause() const         { return mPauseFlag; };         // 0x24
                    virtual void    SetVolume(f32 volume);                                  // 0x28
                    virtual void    SetPitch(f32 pitch);                                    // 0x2C
                    virtual void    SetPan(f32 pan);                                        // 0x30
                    virtual void    SetSurroundPan(f32 surroundPan);                        // 0x34
                    virtual void    SetPan2(f32 pan2);                                      // 0x38
                    virtual void    SetSurroundPan2(f32 surroundPan2);                      // 0x3C
                    virtual void    SetLpfFreq(f32 lpfFreq);                                // 0x40
                    virtual f32     GetVolume() const       { return mExtVolume; };         // 0x44
                    virtual f32     GetPitch() const        { return mExtPitch; };          // 0x48
                    virtual f32     GetPan() const          { return mExtPan; };            // 0x4C
                    virtual f32     GetSurroundPan() const  { return mExtSurroundPan; };    // 0x50
                    virtual f32     GetPan2() const         { return mExtPan2; };           // 0x54
                    virtual f32     GetSurroundPan2() const { return mExtSurroundPan2; };   // 0x58
                    virtual f32     GetLpfFreq() const      { return mExtLpfFreq; };        // 0x5C
                    virtual void    SetOutputLine(int lineFlag);                            // 0x60
                    virtual void    SetMainOutVolume(f32 volume);                           // 0x64
                    virtual void    SetMainSend(f32 send);                                  // 0x68
                    virtual void    SetFxSend(AuxBus bus, f32 send);                        // 0x6C
                    virtual void    SetRemoteOutVolume(int remoteIndex, f32 volume);        // 0x70
                    virtual void    SetRemoteSend(int remoteIndex, f32 send);               // 0x74
                    virtual void    SetRemoteFxSend(int remoteIndex, f32 send);             // 0x78
                    virtual int     GetOutputLine() const;                                  // 0x7C
                    virtual f32     GetMainOutVolume() const;                               // 0x80
                    virtual f32     GetMainSend() const;                                    // 0x84
                    virtual f32     GetFxSend(AuxBus bus) const;                            // 0x88
                    virtual f32     GetRemoteOutVolume(int remoteIndex) const;              // 0x8C
                    virtual f32     GetRemoteSend(int remoteIndex) const;                   // 0x90
                    virtual f32     GetRemoteFxSend(int remoteIndex) const;                 // 0x94

                    void            SetChannelPriority(int prio);
                    u8              GetChannelPriority()    { return mPriority; }

                    f32             GetPanRange()           { return mPanRange; }

                    int             GetVoiceOutCount()      { return mVoiceOutCount; }

                    void            FinishPlayer();

                    BOOL            ParseNextTick(bool doNoteOn);

                    void            UpdateChannel();
                    void            Update();

                    static void     UpdateAllPlayers();
                    static void     StopAllPlayers();

                    virtual void    InvalidateData(const void* start, const void* end);
                    virtual void    InvalidateWaveData(const void* start, const void* end) {}

                    ut::LinkListNode                mPlayerLink;                            // 0x14
                private:
                    bool                            mHomeButtonMenuFlag;                    // 0x1C
                    u8                              mActiveFlag;                            // 0x1D
                    u8                              mPreparedFlag;                          // 0x1E
                    u8                              mStartedFlag;                           // 0x1F
                    u8                              mPauseFlag;                             // 0x20
                    u8                              mSkipFlag;                              // 0x21

                    f32                             mExtVolume;                             // 0x24
                    f32                             mExtPan;                                // 0x28
                    f32                             mExtSurroundPan;                        // 0x2C
                    f32                             mPanRange;                              // 0x30
                    f32                             mExtPan2;                               // 0x34
                    f32                             mExtSurroundPan2;                       // 0x38
                    f32                             mExtPitch;                              // 0x3C
                    f32                             mExtLpfFreq;                            // 0x40

                    int                             mOutputLineFlag;                        // 0x44

                    f32                             mMainOutVolume;                         // 0x48

                    f32                             mMainSend;                              // 0x4C
                    f32                             mFxSend[AUX_BUS_NUM];                   // 0x50

                    f32                             mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x5C
                    f32                             mRemoteSend[WPAD_MAX_CONTROLLERS];      // 0x6C
                    f32                             mRemoteFxSend[WPAD_MAX_CONTROLLERS];    // 0x7C

                    int                             mVoiceOutCount;                         // 0x8C

                    u8                              mPriority;                              // 0x90

                    const WsdTrack::WsdCallback*    mCallback;                              // 0x94
                    u32                             mCallbackData;                          // 0x98

                    WsdTrack                        mTrack;                                 // 0x9C

                    u32                             mTickCounter;                           // 0xD0
            };

            typedef ut::LinkList<WsdPlayer, offsetof(WsdPlayer, mPlayerLink)> WsdPlayerList;
        }
    }
}

#endif // NW4R_SND_WSD_PLAYER_H
