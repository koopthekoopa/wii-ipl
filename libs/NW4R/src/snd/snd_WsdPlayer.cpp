#include <nw4r/snd/WsdPlayer.h>
#include <nw4r/snd/DisposeCallbackManager.h>

#include <nw4r/snd/AxManager.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace {
                WsdPlayerList sPlayerList;
            }

            WsdPlayer::WsdPlayer() :
            BasicPlayer(),
            DisposeCallback(),
            mPlayerLink(),
            mActiveFlag(false),
            mTrack() {}

            void WsdPlayer::InitParam(int voices, const WsdTrack::WsdCallback* callback, u32 callbackData) {
                mPreparedFlag = false;
                mStartedFlag = false;
                mPauseFlag = false;
                mSkipFlag = false;
                mHomeButtonMenuFlag = false;
                mExtVolume = 1.0f;
                mExtPitch = 1.0f;
                mExtPan = 0.0f;
                mExtSurroundPan = 0.0f;
                mExtPan2 = 0.0f;
                mExtSurroundPan2 = 0.0f;
                mPanRange = 1.0f;
                mExtLpfFreq = 0.0f;
                mOutputLineFlag = OUTPUT_LINE_MAIN;
                mMainOutVolume = 1.0f;
                mMainSend = 0.0f;
                for (int i = 0; i<AUX_BUS_NUM; i++) {
                    mFxSend[i] = 0.0f;
                }
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteSend[i] = 0.0f;
                    mRemoteFxSend[i] = 0.0f;
                }
                mTickCounter = 0;
                mVoiceOutCount = voices;
                mPriority = 64;
                mCallback = callback;
                mCallbackData = callbackData;
            }

            bool WsdPlayer::Prepare(const void* waveSoundBase, int index, int voices, const WsdTrack::WsdCallback* callback, u32 callbackData) {
                ut::AutoInterruptLock lock;

                if (mActiveFlag) {
                    FinishPlayer();
                }

                InitParam(voices, callback, callbackData);

                mTrack.Init(this);

                mTrack.Start(waveSoundBase, index);

                DisposeCallbackManager::GetInstance().RegisterDisposeCallback(this);

                mActiveFlag = true;
                mPreparedFlag = true;

                return true;
            }

            bool WsdPlayer::Start() {
                if (!mPreparedFlag) {
                    return false;
                }
                sPlayerList.PushBack(this);
                mHomeButtonMenuFlag = AxManager::GetInstance().IsHomeButtonMenu();
                mStartedFlag = true;

                return true;
            }

            void WsdPlayer::Stop() {
                if (mActiveFlag) {
                    FinishPlayer();
                }
            }

            void WsdPlayer::Pause(bool flag) {
                ut::AutoInterruptLock lock;

                mPauseFlag = static_cast<u8>(flag);
                mTrack.PauseAllChannel(flag);
            }

            void WsdPlayer::SetVolume(f32 volume) {
                ut::AutoInterruptLock lock;
                mExtVolume = volume;
            }

            void WsdPlayer::SetPitch(f32 pitch) {
                ut::AutoInterruptLock lock;
                mExtPitch = pitch;
            }

            void WsdPlayer::SetPan(f32 pan) {
                ut::AutoInterruptLock lock;
                mExtPan = pan;
            }

            void WsdPlayer::SetSurroundPan(f32 surroundPan) {
                ut::AutoInterruptLock lock;
                mExtSurroundPan = surroundPan;
            }

            void WsdPlayer::SetPan2(f32 pan2) {
                ut::AutoInterruptLock lock;
                mExtPan2 = pan2;
            }

            void WsdPlayer::SetSurroundPan2(f32 surroundPan2) {
                ut::AutoInterruptLock lock;
                mExtSurroundPan2 = surroundPan2;
            }

            void WsdPlayer::SetLpfFreq(f32 lpfFreq) {
                ut::AutoInterruptLock lock;
                mExtLpfFreq = lpfFreq;
            }

            void WsdPlayer::SetMainSend(f32 send) {
                ut::AutoInterruptLock lock;
                mMainSend = send;
            }

            f32 WsdPlayer::GetMainSend() const {
                return mMainSend;
            }

            void WsdPlayer::SetFxSend(AuxBus bus, f32 send) {
                mFxSend[bus] = send;
            }

            f32 WsdPlayer::GetFxSend(AuxBus bus) const {
                return mFxSend[bus];
            }

            void WsdPlayer::SetOutputLine(int lineFlag) {
                ut::AutoInterruptLock lock;
                mOutputLineFlag = lineFlag;
            }

            int WsdPlayer::GetOutputLine() const {
                return mOutputLineFlag;
            }

            void WsdPlayer::SetRemoteOutVolume(int remoteIndex, f32 volume) {
                ut::AutoInterruptLock lock;
                mRemoteOutVolume[remoteIndex] = volume;
            }

            f32 WsdPlayer::GetRemoteOutVolume(int remoteIndex) const {
                return mRemoteOutVolume[remoteIndex];
            }

            void WsdPlayer::SetRemoteSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteSend[remoteIndex] = send;
            }

            f32 WsdPlayer::GetRemoteSend(int remoteIndex) const {
                return mRemoteSend[remoteIndex];
            }

            void WsdPlayer::SetRemoteFxSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteFxSend[remoteIndex] = send;
            }

            f32 WsdPlayer::GetRemoteFxSend(int remoteIndex) const {
                return mRemoteFxSend[remoteIndex];
            }

            void WsdPlayer::SetMainOutVolume(f32 volume) {
                ut::AutoInterruptLock lock;
                mMainOutVolume = volume;
            }

            f32 WsdPlayer::GetMainOutVolume() const {
                return mMainOutVolume;
            }

            void WsdPlayer::SetChannelPriority(int prio) {
                ut::AutoInterruptLock lock;
                mPriority = static_cast<u8>(prio);
            }

            void WsdPlayer::InvalidateData(const void* start, const void* end)  {
                ut::AutoInterruptLock lock;

                if (mActiveFlag) {
                    const void* current = mTrack.GetWsdDataAddress();
                    if (start <= current && current <= end) {
                        FinishPlayer();
                    }
                }
            }

            void WsdPlayer::FinishPlayer() {
                {
                    ut::AutoInterruptLock lock;

                    if (mStartedFlag) {
                        sPlayerList.Erase(this);
                    }

                    if (mActiveFlag) {
                        DisposeCallbackManager::GetInstance().UnregisterDisposeCallback(this);
                    }
                }

                mTrack.Close();
                mActiveFlag = false;
            }

            BOOL WsdPlayer::ParseNextTick(bool doNoteOn) {
                bool active = false;

                if (mTrack.ParseNextTick(mCallback, mCallbackData, doNoteOn) >= 0) {
                    active = true;
                }
                else {
                    mTrack.Close();
                }

                if (!active) {
                    return TRUE;
                }
                else {
                    return FALSE;
                }
            }

            void WsdPlayer::UpdateChannel() {
                mTrack.UpdateChannel();
            }

            void WsdPlayer::Update() {
                if (!mActiveFlag) {
                    return;
                }
                if (!mStartedFlag) {
                    return;
                }
                if (!mPauseFlag && !mSkipFlag) {
                    if (mHomeButtonMenuFlag || !AxManager::GetInstance().IsHomeButtonMenu()) {
                        if (ParseNextTick(true) != 0) {
                            FinishPlayer();
                            return;
                        }
                    }
                }
                UpdateChannel();
            }

            void WsdPlayer::UpdateAllPlayers() {
                for (WsdPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    WsdPlayerList::Iterator currIt = it++;
                    currIt->Update();
                }
            }

            void WsdPlayer::StopAllPlayers() {
                for (WsdPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    WsdPlayerList::Iterator currIt = it++;
                    currIt->Stop();
                }
            }
        }
    }
}
