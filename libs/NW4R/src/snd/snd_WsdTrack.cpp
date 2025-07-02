#include <nw4r/snd/WsdTrack.h>
#include <nw4r/snd/WsdPlayer.h>

#include <nw4r/snd/AxManager.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            void WsdTrack::Init(WsdPlayer* player) {
                mWsdPlayer = player;
                mWsdData = NULL;
                mIndex = -1;
                mPriority = 64;
                mBendRange = 2;
                mWaveSoundInfo.pitch = 1.0f;
                mWaveSoundInfo.pan = 64;
                mWaveSoundInfo.surroundPan = 0;
                mWaveSoundInfo.fxSendA = 0;
                mWaveSoundInfo.fxSendB = 0;
                mWaveSoundInfo.fxSendC = 0;
                mWaveSoundInfo.mainSend = 127;
                mLfoParam.Init();
                mCounter = 0;
                mChannelList = NULL;
            }

            void WsdTrack::Start(const void* wsdData, int index) {
                mWsdData = (void*)wsdData;
                mIndex = index;
            }

            void WsdTrack::Close() {
                ReleaseAllChannel(-1);
                FreeAllChannel();
            }

            int WsdTrack::ParseNextTick(const WsdCallback* callback, u32 callbackData, bool doNoteOn) {
                for (Channel* channel = mChannelList; channel != NULL; channel = channel->GetNextTrackChannel()) {
                    s32 length = channel->GetLength();
                    if (length > 0) {
                        channel->SetLength(length-1);
                        if (!channel->IsAutoUpdateSweep()) {
                            channel->UpdateSweep(1);
                        }
                        if (channel->GetLength() == 0) {
                            channel->Release();
                        }
                    }
                }

                if (mCounter != 0 && mChannelList == NULL) {
                    return -1;
                }

                return Parse(callback, callbackData, doNoteOn);
            }

            void WsdTrack::ReleaseAllChannel(int release) {
                UpdateChannel();

                ut::AutoInterruptLock lock;
                AxManager::GetInstance().LockUpdateVoicePriority();

                for (Channel* channel = mChannelList; channel != NULL; channel = channel->GetNextTrackChannel()) {
                    if (channel->IsActive()) {
                        if (release >= 0) {
                            channel->SetRelease(static_cast<u8>(release));
                        }
                        channel->Release();
                    }
                }

                AxManager::GetInstance().UnlockUpdateVoicePriority();
            }

            void WsdTrack::PauseAllChannel(bool flag) {
                for (Channel* channel = mChannelList; channel != NULL; channel = channel->GetNextTrackChannel()) {
                    if (channel->IsActive()) {
                        if (channel->IsPause() != flag) {
                            channel->Pause(flag);
                        }
                    }
                }
            }

            void WsdTrack::UpdateChannel() {
                f32 volume = 1.0f;
                volume *= mWsdPlayer->GetVolume();

                f32 pitchRatio = 1.0f;
                pitchRatio *= mWsdPlayer->GetPitch();
                pitchRatio *= mWaveSoundInfo.pitch;

                f32 pan = 0.0f;
                if (mWaveSoundInfo.pan <= 1) {
                    pan += (mWaveSoundInfo.pan - 63) / 63.0f;
                }
                else {
                    pan += (mWaveSoundInfo.pan - 64) / 63.0f;
                }

                pan *= mWsdPlayer->GetPanRange();
                pan += mWsdPlayer->GetPan();

                f32 surroundPan = 0.0f;
                if (mWaveSoundInfo.surroundPan <= 1) {
                    surroundPan += (mWaveSoundInfo.surroundPan + 1) / 63.0f;
                }
                else {
                    surroundPan += mWaveSoundInfo.surroundPan / 63.0f;
                }

                surroundPan += mWaveSoundInfo.surroundPan / 64.0f;
                surroundPan += mWsdPlayer->GetSurroundPan();

                f32 pan2 = 0.0f;
                pan2 += mWsdPlayer->GetPan2();

                f32 surroundPan2 = 0.0f;
                surroundPan2 += mWsdPlayer->GetSurroundPan2();

                f32 lpfFreq = 0.0f;
                lpfFreq += mWsdPlayer->GetLpfFreq();

                f32 mainSend = 1.0f;
                mainSend += (mWaveSoundInfo.mainSend / 127.0f) - 1.0f;
                mainSend += mWsdPlayer->GetMainSend();

                u8 infoSend[AUX_BUS_NUM];
                infoSend[AUX_A] = mWaveSoundInfo.fxSendA;
                infoSend[AUX_B] = mWaveSoundInfo.fxSendB;
                infoSend[AUX_C] = mWaveSoundInfo.fxSendC;

                f32 fxSend[AUX_BUS_NUM];
                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    fxSend[i] = 0.0f;
                    fxSend[i] += infoSend[i] / 127.0f;
                    fxSend[i] += mWsdPlayer->GetFxSend(static_cast<AuxBus>(i));
                }

                f32 remoteSend[WPAD_MAX_CONTROLLERS];
                f32 remoteFxSend[WPAD_MAX_CONTROLLERS];
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    remoteSend[i] = 0.0f;
                    remoteSend[i] += mWsdPlayer->GetRemoteSend(i);

                    remoteFxSend[i] = 0.0f;
                    remoteFxSend[i] += mWsdPlayer->GetRemoteFxSend(i);
                }

                ut::AutoInterruptLock lock;

                for (Channel* channel = mChannelList; channel != NULL; channel = channel->GetNextTrackChannel()) {
                    channel->SetUserVolume(volume);
                    channel->SetUserPitchRatio(pitchRatio);
                    channel->SetUserPan(pan);
                    channel->SetUserSurroundPan(surroundPan);
                    channel->SetUserPan2(pan2);
                    channel->SetUserSurroundPan2(surroundPan2);
                    channel->SetUserLpfFreq(lpfFreq);
                    channel->SetOutputLine(mWsdPlayer->GetOutputLine());
                    channel->SetMainOutVolume(mWsdPlayer->GetMainOutVolume());
                    channel->SetMainSend(mainSend);

                    for (int i = 0; i < AUX_BUS_NUM; i++) {
                        channel->SetFxSend(static_cast<AuxBus>(i), fxSend[i]);
                    }

                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        channel->SetRemoteOutVolume(i, mWsdPlayer->GetRemoteOutVolume(i));
                        channel->SetRemoteSend(i, remoteSend[i]);
                        channel->SetRemoteFxSend(i, remoteFxSend[i]);
                    }

                    channel->SetLfoParam(mLfoParam);
                }
            }

            void WsdTrack::FreeAllChannel() {
                for (Channel* channel = mChannelList; channel != NULL; channel = channel->GetNextTrackChannel()) {
                    Channel::FreeChannel(channel);
                }
                mChannelList = NULL;
            }

            void WsdTrack::AddChannel(Channel* channel) {
                channel->SetNextTrackChannel(mChannelList);
                mChannelList = channel;
            }

            int WsdTrack::Parse(const WsdCallback* callback, u32 callbackData, bool doNoteOn) {
                WaveData waveData;
                WaveSoundNoteInfo noteInfo;

                if (mCounter == 0) {
                    int priority = mWsdPlayer->GetChannelPriority() + mPriority;

                    bool result = callback->GetWaveSoundData(&mWaveSoundInfo, &noteInfo,
                                                            &waveData, mWsdData,
                                                            mIndex, 0, callbackData);
                    if (!result) {
                        return -1;
                    }

                    Channel* channel;
                    channel = Channel::AllocChannel(ut::Min(static_cast<int>(waveData.numChannels), 2), mWsdPlayer->GetVoiceOutCount(), priority,
                                                    WsdTrack::ChannelCallbackFunc, reinterpret_cast<u32>(this));
                    if (channel == NULL) {
                        return -1;
                    }

                    channel->SetAttack(noteInfo.attack);
                    channel->SetDecay(noteInfo.decay);
                    channel->SetSustain(noteInfo.sustain);
                    channel->SetRelease(noteInfo.release);

                    channel->Start(waveData, -1);

                    AddChannel(channel);
                    
                    mCounter++;
                }
                else {
                    if (mChannelList == NULL) {
                        return -1;
                    }
                }
                return 0;
            }

            void WsdTrack::ChannelCallbackFunc(Channel* dropChannel, Channel::ChannelCallbackStatus status, u32 userData) {
                WsdTrack* track = reinterpret_cast<WsdTrack*>(userData);

                if (status == Channel::CALLBACK_STATUS_FINISH) {
                    Channel::FreeChannel(dropChannel);
                }

                if (track->mChannelList == dropChannel) {
                    track->mChannelList = dropChannel->GetNextTrackChannel();
                    return;
                }

                for (Channel* channel = track->mChannelList; channel->GetNextTrackChannel() != NULL; channel = channel->GetNextTrackChannel()) {
                    if (channel->GetNextTrackChannel() == dropChannel) {
                        channel->SetNextTrackChannel(dropChannel->GetNextTrackChannel());
                        return;
                    }
                }
            }
        }
    }
}
