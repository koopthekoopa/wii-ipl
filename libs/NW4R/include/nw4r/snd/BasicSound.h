#ifndef NW4R_SND_BASIC_SOUND_H
#define NW4R_SND_BASIC_SOUND_H

#include <nw4r/snd/types.h>
#include <nw4r/snd/MoveValue.h>

#include <nw4r/ut.h>

#include <revolution/wpad.h>

#include <stddef.h>

namespace nw4r {
    namespace snd {
        // Forward declarations
        class SoundHandle;
        class SoundPlayer;

        namespace detail {
            class BasicPlayer;
            class ExternalSoundPlayer;
            class PlayerHeap;
        }

        namespace detail {
            class BasicSound {
                public:
                    NW4R_UT_RUNTIME_TYPEINFO;

                    typedef struct AmbientParamUpdateCallback {
                        typedef enum ParamUpdateFlags {
                            PARAM_UPDATE_VOLUME = (1 << 0),
                            PARAM_UPDATE_PAN = (1 << 1),
                            PARAM_UPDATE_SURROUND_PAN = (1 << 2),
                            PARAM_UPDATE_PRIORITY = (1 << 3),
                        } ParamUpdateFlags;

                        virtual void    detail_Update(SoundParam* param, u32 id, BasicSound* sound, const void* arg, u32 flags) = 0;    // 0x0C
                    } AmbientParamUpdateCallback;

                    typedef struct AmbientArgUpdateCallback {
                        virtual void    detail_Update(void* arg, const BasicSound* sound) = 0;                                          // 0x0C
                    } AmbientArgUpdateCallback;

                    typedef struct AmbientArgAllocaterCallback {
                        virtual void*   detail_AllocAmbientArg(u32 size) = 0;                                                           // 0x0C
                        virtual void    detail_FreeAmbientArg(void* arg, const BasicSound* sound) = 0;                                  // 0x10
                    } AmbientArgAllocaterCallback;

                    typedef struct AmbientArgInfo {
                        AmbientParamUpdateCallback*     paramUpdateCallback;    // 0x00
                        AmbientArgUpdateCallback*       argUpdateCallback;      // 0x04
                        AmbientArgAllocaterCallback*    argAllocaterCallback;   // 0x08
                        void*                           arg;                    // 0x0C
                        u32                             argSize;                // 0x10
                    } AmbientArgInfo;

                    static const u32 INVALID_ID = 0xFFFFFFFF;
                    static const int PRIORITY_MAX = 127;

                public:
                    BasicSound();
                    virtual ~BasicSound() {}                                        // 0x08

                    virtual void                    Update();                           // 0x0C
                    virtual void                    StartPrepared();                    // 0x10
                    virtual void                    Stop(int frames = 0);               // 0x14
                    virtual void                    Pause(bool flag, int frames);       // 0x18
                    virtual void                    SetAutoStopCounter(int count);      // 0x1C
                    virtual void                    FadeIn(int frames);                 // 0x20
                    virtual void                    Shutdown();                         // 0x24
                    virtual bool                    IsPrepared() const;                 // 0x28
                    virtual bool                    IsPause() const;                    // 0x2C

                    virtual void                    SetInitialVolume(f32 volume);       // 0x30
                    virtual void                    SetVolume(f32 volume, int frames);  // 0x34
                    virtual void                    SetPitch(f32 pitch);                // 0x38
                    virtual void                    SetPan(f32 pan);                    // 0x3C
                    virtual void                    SetSurroundPan(f32 pan);            // 0x40
                    virtual void                    SetLpfFreq(f32 freq);               // 0x44
                    virtual void                    SetPlayerPriority(int priority);    // 0x48

                    virtual bool                    IsAttachedTempSpecialHandle() = 0;  // 0x4C
                    virtual void                    DetachTempSpecialHandle() = 0;      // 0x50

                    virtual void                    InitParam();                        // 0x54
                    virtual BasicPlayer&            GetBasicPlayer() = 0;               // 0x58
                    virtual const BasicPlayer&      GetBasicPlayer() const = 0;         // 0x5C

                    PlayerHeap*                     GetPlayerHeap()                                         { return mHeap; }
                    void                            SetPlayerHeap(PlayerHeap* heap)                         { mHeap = heap; }

                    bool                            IsAttachedGeneralHandle();
                    void                            DetachGeneralHandle();

                    bool                            IsAttachedTempGeneralHandle();
                    void                            DetachTempGeneralHandle();

                    SoundPlayer*                    GetSoundPlayer()                                        { return mSoundPlayer; }
                    void                            SetSoundPlayer(SoundPlayer* player)                     { mSoundPlayer = player; }

                    ExternalSoundPlayer*            GetExternalSoundPlayer()                                { return mExtSoundPlayer; }
                    void                            SetExternalSoundPlayer(ExternalSoundPlayer* extPlayer)  { mExtSoundPlayer = extPlayer; }

                    AmbientParamUpdateCallback*     GetAmbientParamUpdateCallback()                         { return mAmbientParamUpdateCallback; }
                    AmbientArgUpdateCallback*       GetAmbientArgUpdateCallback()                           { return mAmbientArgUpdateCallback; }
                    void                            ClearAmbientArgUpdateCallback()                         { mAmbientArgUpdateCallback = NULL; }

                    AmbientArgAllocaterCallback*    GetAmbientArgAllocaterCallback()                        { return mAmbientArgAllocaterCallback; }

                    void*                           GetAmbientArg()                                         { return mAmbientArg; }
                    SoundParam&                     GetAmbientParam()                                       { return mAmbientParam; }

                    void                            SetAmbientParamCallback(AmbientParamUpdateCallback* paramUpdateCallback,
                                                                            AmbientArgUpdateCallback* argUpdateCallback,
                                                                            AmbientArgAllocaterCallback* argAllocaterCallback,
                                                                            void* callbackArg);

                    void                            SetPriority(int priority)                               { mPriority = priority; }

                    u32                             GetId() const                                           { return mId; }
                    void                            SetId(u32 id);

                    f32                             GetMoveVolume()                                         { return mExtMoveVolume.GetValue(); }

                    f32                             GetInitialVolume() const;
                    f32                             GetPan() const;
                    f32                             GetSurroundPan() const;
                    f32                             GetPitch() const;
                    f32                             GetVolume() const;

                    void                            SetOutputLine(int flag);
                    bool                            IsEnabledOutputLine() const;
                    int                             GetOutputLine() const;

                    f32                             GetMainOutVolume() const;
                    void                            SetMainOutVolume(f32 volume);

                    f32                             GetRemoteOutVolume(int remote) const;
                    void                            SetRemoteOutVolume(int remote, f32 volume);

                    void                            SetFxSend(AuxBus bus, f32 send);

                    int                             CalcCurrentPlayerPriority() const                        { return ut::Clamp(mPriority + mAmbientParam.priority, (s32)0, (s32)PRIORITY_MAX); }

                private:
                    PlayerHeap*                     mHeap;                                  // 0x04
                    SoundHandle*                    mGeneralHandle;                         // 0x08
                    SoundHandle*                    mTempGeneralHandle;                     // 0x0C
                    SoundPlayer*                    mSoundPlayer;                           // 0x10
                    ExternalSoundPlayer*            mExtSoundPlayer;                        // 0x14

                    AmbientParamUpdateCallback*     mAmbientParamUpdateCallback;            // 0x18
                    AmbientArgUpdateCallback*       mAmbientArgUpdateCallback;              // 0x1C
                    AmbientArgAllocaterCallback*    mAmbientArgAllocaterCallback;           // 0x20
                    void*                           mAmbientArg;                            // 0x24
                    SoundParam                      mAmbientParam;                          // 0x28

                    MoveValue<f32, int>             mFadeVolume;                            // 0x44
                    MoveValue<f32, int>             mPauseFadeVolume;                       // 0x54

                    bool                            mStartFlag;                             // 0x64
                    bool                            mStartedFlag;                           // 0x65
                    bool                            mAutoStopFlag;                          // 0x66
                    bool                            mPauseFlag;                             // 0x67
                    bool                            mPauseFadeFlag;                         // 0x68
                    bool                            mFadeOutFlag;                           // 0x69

                    int                             mAutoStopCounter;                       // 0x6C
                    u32                             mUpdateCounter;                         // 0x70

                    u8                              mPriority;                              // 0x74
                    u32                             mId;                                    // 0x78

                    MoveValue<f32, int>             mExtMoveVolume;                         // 0x7C
                    f32                             mInitVolume;                            // 0x8C
                    f32                             mExtPan;                                // 0x90
                    f32                             mExtSurroundPan;                        // 0x94
                    f32                             mExtPitch;                              // 0x98

                    bool                            mOutputLineFlagEnable;                  // 0x9C
                    int                             mOutputLineFlag;                        // 0xA0

                    f32                             mMainOutVolume;                         // 0xA4
                    f32                             mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0xA8

                public:
                    ut::LinkListNode                mPriorityLink;                          // 0xB8
                    ut::LinkListNode                mSoundPlayerPlayLink;                   // 0xC0
                    ut::LinkListNode                mSoundPlayerPriorityLink;               // 0xC8
                    ut::LinkListNode                mExtSoundPlayerPlayLink;                // 0xD0
            
                friend class SoundHandle;
            };

            typedef ut::LinkList<BasicSound, offsetof(BasicSound, mPriorityLink)>               BasicSoundPrioList;
            typedef ut::LinkList<BasicSound, offsetof(BasicSound, mSoundPlayerPlayLink)>        BasicSoundPlayerPlayList;
            typedef ut::LinkList<BasicSound, offsetof(BasicSound, mSoundPlayerPriorityLink)>    BasicSoundPlayerPrioList;
            typedef ut::LinkList<BasicSound, offsetof(BasicSound, mExtSoundPlayerPlayLink)>     BasicSoundExtPlayList;
        }
    }
}

#endif // NW4R_SND_BASIC_SOUND_H
