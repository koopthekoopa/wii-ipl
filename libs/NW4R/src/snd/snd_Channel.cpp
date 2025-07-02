#include <nw4r/snd/Channel.h>
#include <nw4r/snd/ChannelManager.h>

#include <nw4r/snd/AxManager.h>

#include <nw4r/snd/Util.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            Channel Channel::mChannel[AX_VOICE_MAX+1];

            Channel::Channel() :
            mPauseFlag(0),
            mActiveFlag(false),
            mAllocFlag(false),
            mVoice(NULL) {
                ChannelManager::GetInstance().Append(this);
            }

            Channel::~Channel() {
                ChannelManager::GetInstance().Remove(this);
            }

            void Channel::InitParam(ChannelCallback callback, u32 callbackArg) {
                mNextLink = NULL;

                mCallback = callback;
                mCallbackData = callbackArg;

                mPauseFlag = false;
                mAutoSweep = true;

                mLength = 0;
                mKey = KEY_INIT;
                mOriginalKey = ORIGINAL_KEY_INIT;

                mInitVolume = 1.0f;
                mInitPan = 0.0f;
                mInitSurroundPan = 0.0f;
                mTune = 1.0f;

                mUserVolume = 1.0f;
                mUserPitch = 0.0f;
                mUserPitchRatio = 1.0f;
                mUserPan = 0.0f;
                mUserSurroundPan = 0.0f;
                mUserPan2 = 0.0f;
                mUserSurroundPan2 = 0.0f;
                mUserLpfFreq = 0.0f;

                mOutputLineFlag = OUTPUT_LINE_MAIN;

                mMainOutVolume = 1.0f;
                mMainSend = 0.0f;

                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    mFxSend[i] = 0.0f;
                }

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteOutVolume[i] = 1.0f;
                    mRemoteSend[i] = 0.0f;
                    mRemoteFxSend[i] = 0.0f;
                }

                mSilenceVolume.InitValue(SILENCE_VOLUME_MAX);

                mSweepPitch = 0.0f;
                mSweepLength = 0;
                mSweepCounter = 0;

                mEnvelope.Init();
                mLfo.GetParam().Init();

                mLfoTarget = LFO_TARGET_PITCH;
            }

            void Channel::Update(bool periodic) {
                if (!mActiveFlag) {
                    return;
                }

                if (mPauseFlag) {
                    periodic = false;
                }

                f32 lfoValue = mLfo.GetValue();
                mSilenceVolume.Update();

                f32 volume = 1.0f;
                volume *= mInitVolume;
                volume *= mUserVolume;
                volume *= mSilenceVolume.GetValue() / static_cast<f32>(SILENCE_VOLUME_MAX);

                f32 veInitVolume = 1.0f;
                veInitVolume *= mEnvelope.GetValue();
                if (mLfoTarget == LFO_TARGET_VOLUME) {
                    veInitVolume *= Util::CalcVolumeRatio(VOLUME_MAX_DB * lfoValue);
                }

                if (mEnvelope.GetStatus() == EnvGenerator::STATUS_RELEASE) {
                    if (volume * veInitVolume == 0.0f) {
                        Stop();
                        return;
                    }
                }

                f32 cent = 0.0f;
                cent += mKey - mOriginalKey;
                cent += GetSweepValue();
                cent += mUserPitch;
                if (mLfoTarget == LFO_TARGET_PITCH) {
                    cent += lfoValue;
                }

                f32 pitchRatio = 1.0f;
                pitchRatio *= mTune;
                pitchRatio *= mUserPitchRatio;

                f32 pitch = Util::CalcPitchRatio(Util::MICROTONE_MAX * cent);
                pitch *= pitchRatio;

                f32 pan = 0.0f;
                pan += mInitPan;
                pan += mUserPan;
                if (mLfoTarget == LFO_TARGET_PAN) {
                    pan += lfoValue;
                }

                f32 surroundPan = 0.0f;
                surroundPan += mInitSurroundPan;
                surroundPan += mUserSurroundPan;

                f32 pan2 = 0.0f;
                pan2 += mUserPan2;

                f32 surroundPan2 = 0.0f;
                surroundPan2 += mUserSurroundPan2;

                f32 lpfFreq = 1.0f;
                lpfFreq += mUserLpfFreq;

                f32 mainOutVolume = 1.0f;
                mainOutVolume *= mMainOutVolume;

                f32 mainSend = 0.0f;
                mainSend += mMainSend;

                f32 fxSend[AUX_BUS_NUM];
                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    fxSend[i] = 0.0f;
                    fxSend[i] += mFxSend[i];
                }

                f32 remoteOutVolume[WPAD_MAX_CONTROLLERS];
                f32 remoteSend[WPAD_MAX_CONTROLLERS];
                f32 remoteFxSend[WPAD_MAX_CONTROLLERS];
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    remoteOutVolume[i] = 1.0f;
                    remoteOutVolume[i] *= mRemoteOutVolume[i];

                    remoteSend[i] = 0.0f;
                    remoteSend[i] += mRemoteSend[i];

                    remoteFxSend[i] = 0.0f;
                    remoteFxSend[i] += mRemoteFxSend[i];
                }

                if (periodic) {
                    if (mAutoSweep) {
                        UpdateSweep(3);
                    }

                    mLfo.Update(3);
                    mEnvelope.Update(3);
                }

                f32 nextLfoValue = mLfo.GetValue();

                f32 veTargetVolume = 1.0f;
                veTargetVolume *= mEnvelope.GetValue();
                if (mLfoTarget == LFO_TARGET_VOLUME) {
                    veTargetVolume *= Util::CalcVolumeRatio(VOLUME_MAX_DB * nextLfoValue);
                }

                ut::AutoInterruptLock lock;
                if (mVoice != NULL) {
                    mVoice->SetVolume(volume);
                    mVoice->SetVeVolume(veTargetVolume, veInitVolume);
                    mVoice->SetPitch(pitch);
                    mVoice->SetPan(pan);
                    mVoice->SetSurroundPan(surroundPan);
                    mVoice->SetPan2(pan2);
                    mVoice->SetSurroundPan2(surroundPan2);
                    mVoice->SetLpfFreq(lpfFreq);
                    mVoice->SetOutputLine(mOutputLineFlag);
                    mVoice->SetMainOutVolume(mainOutVolume);
                    mVoice->SetMainSend(mainSend);

                    for (int i = 0; i < AUX_BUS_NUM; i++) {
                        mVoice->SetFxSend(static_cast<AuxBus>(i), fxSend[i]);
                    }

                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        mVoice->SetRemoteOutVolume(i, remoteOutVolume[i]);
                        mVoice->SetRemoteSend(i, remoteSend[i]);
                        // @bug Should use remoteFxSend
                        mVoice->SetRemoteFxSend(i, remoteSend[i]);
                    }
                }
            }

            void Channel::Start(const WaveData& rData, s32 length) {
                mLength = length;

                mLfo.Reset();
                mEnvelope.Reset();
                mSweepCounter = 0;

                mVoice->Setup(rData);
                mVoice->Start();
                mActiveFlag = true;
            }

            void Channel::Release() {
                if (mEnvelope.GetStatus() != EnvGenerator::STATUS_RELEASE) {
                    if (mVoice != NULL) {
                        mVoice->SetPriority(PRIORITY_RELEASE);
                    }

                    mEnvelope.SetStatus(EnvGenerator::STATUS_RELEASE);
                }

                mPauseFlag = false;
            }

            void Channel::Stop() {
                ut::AutoInterruptLock lock;
                if (mVoice == NULL) {
                    return;
                }

                mVoice->Stop();
                mVoice->Free();
                mVoice = NULL;

                mPauseFlag = false;
                mActiveFlag = false;

                if (mAllocFlag) {
                    mAllocFlag = false;
                    ChannelManager::GetInstance().Free(this);
                }

                if (mCallback != NULL) {
                    mCallback(this, CALLBACK_STATUS_STOPPED, mCallbackData);
                }
            }

            void Channel::UpdateSweep(int count) {
                mSweepCounter += count;

                if (mSweepCounter > mSweepLength) {
                    mSweepCounter = mSweepLength;
                }
            }

            void Channel::SetSweepParam(f32 pitch, int time, bool autoUpdate) {
                mSweepPitch = pitch;
                mSweepLength = time;
                mAutoSweep = autoUpdate;
                mSweepCounter = 0;
            }

            f32 Channel::GetSweepValue() const {
                if (mSweepPitch == 0.0f) {
                    return 0.0f;
                }

                if (mSweepCounter >= mSweepLength) {
                    return 0.0f;
                }

                f32 sweep = mSweepPitch;
                sweep *= mSweepLength - mSweepCounter;
                sweep /= mSweepLength;

                return sweep;
            }

            void Channel::VoiceCallback(AxVoice* voice, AxVoice::CallbackStatus status, void* arg) {
                ChannelCallbackStatus channelStatus;

                switch (status) {
                    case AxVoice::CALLBACK_STATUS_FINISH_WAVE: {
                        channelStatus = CALLBACK_STATUS_FINISH;
                        voice->Free();
                        break;
                    }
                    case AxVoice::CALLBACK_STATUS_INVALIDATE_WAVE: {
                        channelStatus = CALLBACK_STATUS_CANCEL;
                        voice->Free();
                        break;
                    }
                    case AxVoice::CALLBACK_STATUS_DROP_VOICE:
                    case AxVoice::CALLBACK_STATUS_DROP_DSP: {
                        channelStatus = CALLBACK_STATUS_DROP;
                        break;
                    }
                }

                Channel* channel = static_cast<Channel*>(arg);

                if (channel->mCallback != NULL) {
                    channel->mCallback(channel, channelStatus, channel->mCallbackData);
                }

                channel->mVoice = NULL;
                channel->mPauseFlag = false;
                channel->mActiveFlag = false;
                channel->mAllocFlag = false;

                ChannelManager::GetInstance().Free(channel);
            }

            Channel* Channel::AllocChannel(int channels, int voices, int priority, ChannelCallback callback, u32 callbackArg) {
                ut::AutoInterruptLock lock;

                Channel* channel = ChannelManager::GetInstance().Alloc();
                if (channel == NULL) {
                    return NULL;
                }

                channel->mAllocFlag = true;

                AxVoice* voice = AxManager::GetInstance().AllocVoice(channels, voices, priority, VoiceCallback, channel);

                if (voice == NULL) {
                    return NULL;
                }

                channel->mVoice = voice;
                channel->InitParam(callback, callbackArg);
                return channel;
            }

            void Channel::FreeChannel(Channel* channel) {
                if (channel == NULL) {
                    return;
                }
                channel->mCallback = NULL;
                channel->mCallbackData = 0;
            }

            void Channel::UpdateAllChannel() {
                for (ChannelManager::Iterator it = ChannelManager::GetInstance().GetBeginIter(); it != ChannelManager::GetInstance().GetEndIter();) {
                    ChannelManager::Iterator currIt = it++;
                    currIt->Update(true);
                }
            }
        }
    }
}
