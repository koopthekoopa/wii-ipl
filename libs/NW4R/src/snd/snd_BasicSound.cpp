#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/BasicPlayer.h>

#include <nw4r/snd/SoundPlayer.h>
#include <nw4r/snd/ExternalSoundPlayer.h>

#include <climits>

namespace nw4r {
    namespace snd {
        namespace detail {
            NW4R_UT_GET_RUNTIME_TYPEINFO(BasicSound);

            BasicSound::BasicSound() :
            mHeap(NULL),
            mGeneralHandle(NULL),
            mTempGeneralHandle(NULL),
            mSoundPlayer(NULL),
            mExtSoundPlayer(NULL),
            mAmbientParamUpdateCallback(NULL),
            mAmbientArgUpdateCallback(NULL),
            mAmbientArgAllocaterCallback(NULL),
            mAmbientArg(NULL),
            mId(INVALID_ID) {}

            void BasicSound::InitParam() {
                mPauseFlag = false;
                mPauseFadeFlag = false;
                mStartFlag = false;
                mStartedFlag = false;
                mAutoStopFlag = false;
                mFadeOutFlag = false;

                mAutoStopCounter = 0;
                mUpdateCounter = 0;

                mFadeVolume.InitValue(0.0f);
                mPauseFadeVolume.InitValue(1.0f);
                mFadeVolume.SetTarget(1.0f, 1);

                mInitVolume = 1.0f;
                mExtPitch = 1.0f;
                mExtPan = 0.0f;
                mExtSurroundPan = 0.0f;
                mExtMoveVolume.InitValue(1.0f);

                mOutputLineFlag = OUTPUT_LINE_MAIN;
                mOutputLineFlagEnable = false;

                mMainOutVolume = 1.0f;
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteOutVolume[i] = 1.0f;
                }

                mAmbientParam.volume = 1.0f;
                mAmbientParam.pitch = 1.0f;
                mAmbientParam.pan = 0.0f;
                mAmbientParam.surroundPan = 0.0f;
                mAmbientParam.fxSend = 0.0f;
                mAmbientParam.lpf = 0.0f;
                mAmbientParam.priority = 0;
            }

            void BasicSound::StartPrepared() {
                if (!mStartedFlag) {
                    mStartFlag = true;
                }
            }

            void BasicSound::Stop(int frames) {
                BasicPlayer& rPlayer = GetBasicPlayer();

                if (frames == 0 || !rPlayer.IsActive() || !rPlayer.IsStarted() ||
                    rPlayer.IsPause()) {
                    Shutdown();
                    return;
                }

                int t = frames * mFadeVolume.GetValue();
                mFadeVolume.SetTarget(0.0f, t);

                SetPlayerPriority(0);
                mAutoStopFlag = false;
                mPauseFlag = false;
                mPauseFadeFlag = false;
                mFadeOutFlag = true;
            }

            void BasicSound::Pause(bool flag, int frames) {
                BasicPlayer& rPlayer = GetBasicPlayer();

                if (flag) {
                    int t = frames * mPauseFadeVolume.GetValue();
                    mPauseFadeFlag = true;

                    if (t <= 0) {
                        t = 1;
                    }

                    mPauseFadeVolume.SetTarget(0.0f, t);
                }
                else {
                    // what
                    if ((mPauseFlag != false) != flag) {
                        rPlayer.Pause(false);
                    }

                    int t = frames * (1.0f - mPauseFadeVolume.GetValue());
                    mPauseFadeFlag = true;

                    if (t <= 0) {
                        t = 1;
                    }

                    mPauseFadeVolume.SetTarget(1.0f, t);
                }

                mPauseFlag = flag;
            }

            void BasicSound::SetAutoStopCounter(int count) {
                mAutoStopCounter = count;
                mAutoStopFlag = count > 0;
            }

            void BasicSound::FadeIn(int frames) {
                if (!mFadeOutFlag) {
                    int t = frames * (1.0f - mFadeVolume.GetValue());
                    mFadeVolume.SetTarget(1.0f, t);
                }
            }

            bool BasicSound::IsPrepared() const {
                return GetBasicPlayer().IsPrepared();
            }

            bool BasicSound::IsPause() const {
                return mPauseFlag != false;
            }

            void BasicSound::Update() {
                BasicPlayer& rPlayer = GetBasicPlayer();

                if (mAutoStopFlag && rPlayer.IsActive()) {
                    if (mAutoStopCounter == 0) {
                        Stop(0);
                        return;
                    }

                    mAutoStopCounter--;
                }

                bool startPlayer = false;
                if (!mStartedFlag) {
                    if (!mStartFlag) {
                        return;
                    }
                    startPlayer = true;
                }

                if (rPlayer.IsStarted() && mUpdateCounter < ULONG_MAX) {
                    mUpdateCounter++;
                }

                if (!rPlayer.IsActive()) {
                    Shutdown();
                    return;
                }

                if (rPlayer.IsPause()) {
                    return;
                }

                if (mPauseFadeFlag) {
                    mPauseFadeVolume.Update();
                }
                else {
                    mFadeVolume.Update();
                    mExtMoveVolume.Update();
                }

                if (mAmbientArgUpdateCallback != NULL) {
                    mAmbientArgUpdateCallback->detail_Update(mAmbientArg, this);
                }

                if (mAmbientParamUpdateCallback != NULL) {
                    mAmbientParamUpdateCallback->detail_Update(&mAmbientParam, mId, this, mAmbientArg, 0xFFFFFFFF);
                }

                f32 volume;
                f32 pan;
                f32 surroundPan;
                f32 pan2;
                f32 surroundPan2;
                f32 pitch;
                f32 mainOutVol;

                volume = 1.0f;
                volume *= GetInitialVolume();
                volume *= mSoundPlayer->GetVolume();
                if (mExtSoundPlayer != NULL) {
                    volume *= mExtSoundPlayer->detail_GetVolume();
                }
                volume *= GetMoveVolume();
                volume *= mFadeVolume.GetValue();
                volume *= mPauseFadeVolume.GetValue();
                volume *= GetAmbientParam().volume;

                pan = 0.0f;
                pan += GetPan();

                surroundPan = 0.0f;
                surroundPan += GetSurroundPan();

                pan2 = 0.0f;
                pan2 += GetAmbientParam().pan;

                surroundPan2 = 0.0f;
                surroundPan2 += GetAmbientParam().surroundPan;

                pitch = 1.0f;
                pitch *= GetPitch();

                mainOutVol = 1.0f;
                mainOutVol *= mSoundPlayer->detail_GetMainOutVolume();
                mainOutVol *= GetMainOutVolume();

                int outputLine = OUTPUT_LINE_MAIN;
                if (mSoundPlayer->detail_IsEnabledOutputLine()) {
                    outputLine = mSoundPlayer->detail_GetOutputLine();
                }
                if (mOutputLineFlagEnable) {
                    outputLine = GetOutputLine();
                }

                f32 remoteOutVol[WPAD_MAX_CONTROLLERS];
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    remoteOutVol[i] = 1.0f;
                    remoteOutVol[i] *= mSoundPlayer->detail_GetRemoteOutVolume(i);
                    remoteOutVol[i] *= GetRemoteOutVolume(i);
                }

                rPlayer.SetVolume(volume);
                rPlayer.SetPan(pan);
                rPlayer.SetSurroundPan(surroundPan);
                rPlayer.SetPan2(pan2);
                rPlayer.SetSurroundPan2(surroundPan2);
                rPlayer.SetPitch(pitch);
                rPlayer.SetOutputLine(outputLine);
                rPlayer.SetMainOutVolume(mainOutVol);

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    rPlayer.SetRemoteOutVolume(i, remoteOutVol[i]);
                }

                if (mFadeOutFlag && mFadeVolume.IsFinished()) {
                    mFadeOutFlag = false;
                    Shutdown();
                    return;
                }

                if (mPauseFadeFlag && mPauseFadeVolume.IsFinished()) {
                    mPauseFadeFlag = false;

                    if (mPauseFlag) {
                        rPlayer.Pause(mPauseFlag != false);
                    }
                }

                if (startPlayer && rPlayer.Start()) {
                    mStartedFlag = true;
                    mStartFlag = false;
                }
            }

            void BasicSound::Shutdown() {
                BasicPlayer& rPlayer = GetBasicPlayer();

                if (rPlayer.IsActive()) {
                    if (mFadeOutFlag) {
                        rPlayer.SetVolume(0.0f);
                    }

                    rPlayer.Stop();
                }

                SetId(INVALID_ID);

                if (IsAttachedGeneralHandle()) {
                    DetachGeneralHandle();
                }

                if (IsAttachedTempGeneralHandle()) {
                    DetachTempGeneralHandle();
                }

                if (IsAttachedTempSpecialHandle()) {
                    DetachTempSpecialHandle();
                }

                if (mHeap != NULL) {
                    mSoundPlayer->detail_FreePlayerHeap(this);
                }

                mSoundPlayer->detail_RemovePriorityList(this);
                mSoundPlayer->detail_RemoveSoundList(this);

                if (mExtSoundPlayer != NULL) {
                    mExtSoundPlayer->RemoveSoundList(this);
                }

                if (mAmbientArgAllocaterCallback != NULL) {
                    mAmbientArgAllocaterCallback->detail_FreeAmbientArg(mAmbientArg, this);
                    mAmbientArg = NULL;
                }

                mStartedFlag = false;
                mFadeOutFlag = false;
            }

            void BasicSound::SetPlayerPriority(int priority) {
                mPriority = priority;

                if (mSoundPlayer != NULL) {
                    mSoundPlayer->detail_RemovePriorityList(this);
                    mSoundPlayer->detail_InsertPriorityList(this);
                }
            }

            void BasicSound::SetInitialVolume(f32 volume) {
                mInitVolume = volume;
            }

            void BasicSound::SetVolume(f32 volume, int frames) {
                f32 target = volume;
                mExtMoveVolume.SetTarget(target, frames);
            }

            void BasicSound::SetPitch(f32 pitch) {
                mExtPitch = pitch;
            }

            void BasicSound::SetPan(f32 pan) {
                mExtPan = pan;
            }

            void BasicSound::SetSurroundPan(f32 pan) {
                mExtSurroundPan = pan;
            }

            void BasicSound::SetLpfFreq(f32 freq) {
                GetBasicPlayer().SetLpfFreq(freq);
            }

            void BasicSound::SetOutputLine(int flag) {
                mOutputLineFlag = flag;
                mOutputLineFlagEnable = true;
            }

            bool BasicSound::IsEnabledOutputLine() const {
                return mOutputLineFlagEnable;
            }

            int BasicSound::GetOutputLine() const {
                return mOutputLineFlag;
            }

            void BasicSound::SetMainOutVolume(f32 volume) {
                mMainOutVolume = ut::Clamp(volume, 0.0f, 1.0f);
            }

            void BasicSound::SetRemoteOutVolume(int remote, f32 volume) {
                mRemoteOutVolume[remote] = ut::Clamp(volume, 0.0f, 1.0f);
            }

            void BasicSound::SetFxSend(AuxBus bus, f32 send) {
                GetBasicPlayer().SetFxSend(bus, send);
            }

            f32 BasicSound::GetInitialVolume() const {
                return mInitVolume;
            }

            f32 BasicSound::GetPitch() const {
                return mExtPitch;
            }

            f32 BasicSound::GetPan() const {
                return mExtPan;
            }

            f32 BasicSound::GetSurroundPan() const {
                return mExtSurroundPan;
            }

            f32 BasicSound::GetMainOutVolume() const {
                return mMainOutVolume;
            }

            f32 BasicSound::GetRemoteOutVolume(int remote) const {
                return mRemoteOutVolume[remote];
            }

            void BasicSound::SetAmbientParamCallback(AmbientParamUpdateCallback* paramUpdateCallback,
                                                    AmbientArgUpdateCallback* argUpdateCallback,
                                                    AmbientArgAllocaterCallback* argAllocaterCallback,
                                                    void* arg) {
                mAmbientParamUpdateCallback = paramUpdateCallback;
                mAmbientArgUpdateCallback = argUpdateCallback;
                mAmbientArgAllocaterCallback = argAllocaterCallback;
                mAmbientArg = arg;
            }

            bool BasicSound::IsAttachedGeneralHandle() {
                return mGeneralHandle != NULL;
            }

            bool BasicSound::IsAttachedTempGeneralHandle() {
                return mTempGeneralHandle != NULL;
            }

            void BasicSound::DetachGeneralHandle() {
                mGeneralHandle->DetachSound();
            }

            void BasicSound::DetachTempGeneralHandle() {
                mTempGeneralHandle->DetachSound();
            }

            void BasicSound::SetId(u32 id) {
                mId = id;
                GetBasicPlayer().SetId(id);
            }
        }
    }
}
