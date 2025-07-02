#include <nw4r/snd/SeqTrackAllocator.h>
#include <nw4r/snd/SeqTrack.h>

#include <nw4r/snd/SeqPlayer.h>

#include <nw4r/snd/AxManager.h>

#include <nw4r/snd/NoteOnCallback.h>

#include <nw4r/snd/DisposeCallbackManager.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace {
                SeqPlayerList sPlayerList;
            }
            vs16 SeqPlayer::mGlobalVariable[GLOBAL_VARIABLE_NUM];

            SeqPlayer::SeqPlayer() :
            mActiveFlag(false) {}

            SeqPlayer::~SeqPlayer() {
                if (mActiveFlag) {
                    FinishPlayer();
                }
            }

            void SeqPlayer::InitParam(int voices, NoteOnCallback* callback) {
                mPreparedFlag = false;
                mStartedFlag = false;
                mPauseFlag = false;
                mSkipFlag = false;
                mHomeButtonMenuFlag = false;
                mTempoRatio = 1.0f;
                mTempoCounter = 416;
                mExtVolume = 1.0f;
                mExtPitch = 1.0f;
                mExtPan = 0.0f;
                mExtSurroundPan = 0.0f;
                mExtPan2 = 0.0f;
                mExtSurroundPan2 = 0.0f;
                mPanRange = 1.0f;
                mExtLpfFreq = 0.0f;
                mOutputLineFlag = OUTPUT_LINE_MAIN;
                mMainSend = 0.0f;
                mMainOutVolume = 1.0f;

                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    mFxSend[i] = 0.0f;
                }
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteSend[i] = 0.0f;
                    mRemoteFxSend[i] = 0.0f;
                }

                mTickCounter = 0;
                mVoiceOutCount = voices;

                mParserParam.tempo = DEFAULT_TEMPO;
                mParserParam.volume = 127;
                mParserParam.priority = 64;
                mParserParam.callback = callback;

                for (int i = 0; i < LOCAL_VARIABLE_NUM; i++) {
                    mLocalVariable[i] = DEFAULT_VARIABLE_VALUE;
                }
                for (int i = 0; i < TRACK_NUM; i++) {
                    mTracks[i] = NULL;
                }
            }

            SeqPlayer::SetupResult SeqPlayer::Setup(SeqTrackAllocator* allocator, u32 allocTrackFlags, int voices, NoteOnCallback* callback) {
                ut::AutoInterruptLock lock;

                if (mActiveFlag) {
                    FinishPlayer();
                }

                InitParam(voices, callback);
                {
                    u32 trackFlags = allocTrackFlags;
                    bool allocated = true;
                    
                    for (int i = 0; trackFlags != 0; trackFlags >>= 1, i++) {
                        if (trackFlags & 1) {
                            SeqTrack* track = allocator->AllocTrack(this);
                            if (track == NULL) {
                                allocated = false;
                                break;
                            }
                            SetPlayerTrack(i, track);
                        }
                    }

                    if (!allocated) {
                        u32 trackFlags = allocTrackFlags;

                        for (int i = 0; trackFlags != 0; trackFlags >>= 1, i++) {
                            if (trackFlags & 1) {
                                SeqTrack* track = GetPlayerTrack(i);
                                if (track != NULL) {
                                    allocator->FreeTrack(track);
                                }
                            }
                        }
                        return SETUP_ERR_CANNOT_ALLOCATE_TRACK;
                    }
                }
                DisposeCallbackManager::GetInstance().RegisterDisposeCallback(this);

                mSeqTrackAllocator = allocator;
                mActiveFlag = true;

                return SETUP_SUCCESS;
            }

            void SeqPlayer::SetSeqData(const void* base, s32 offset) {
                SeqTrack* track = GetPlayerTrack(0);

                if (base != NULL) {
                    track->SetSeqData(base, offset);
                }

                mPreparedFlag = true;
            }

            bool SeqPlayer::Start() {
                if (!mPreparedFlag) {
                    return false;
                }

                sPlayerList.PushBack(this);

                mHomeButtonMenuFlag = AxManager::GetInstance().IsHomeButtonMenu();
                mStartedFlag = true;

                return true;
            }

            void SeqPlayer::Stop() {
                if (mActiveFlag) {
                    FinishPlayer();
                }
            }

            void SeqPlayer::Pause(bool flag) {
                ut::AutoInterruptLock lock;

                mPauseFlag = flag;

                for (int i = 0; i < TRACK_NUM; i++) {
                    SeqTrack* track = GetPlayerTrack(i);

                    if (track != NULL) {
                        track->PauseAllChannel(flag);
                    }
                }
            }

            void SeqPlayer::SetVolume(f32 volume) {
                ut::AutoInterruptLock lock;
                mExtVolume = volume;
            }

            void SeqPlayer::SetPitch(f32 pitch) {
                ut::AutoInterruptLock lock;
                mExtPitch = pitch;
            }

            void SeqPlayer::SetPan(f32 pan) {
                ut::AutoInterruptLock lock;
                mExtPan = pan;
            }

            void SeqPlayer::SetSurroundPan(f32 surroundPan) {
                ut::AutoInterruptLock lock;
                mExtSurroundPan = surroundPan;
            }

            void SeqPlayer::SetPan2(f32 pan2) {
                ut::AutoInterruptLock lock;
                mExtPan2 = pan2;
            }

            void SeqPlayer::SetSurroundPan2(f32 surroundPan2) {
                ut::AutoInterruptLock lock;
                mExtSurroundPan2 = surroundPan2;
            }

            void SeqPlayer::SetLpfFreq(f32 lpfFreq) {
                ut::AutoInterruptLock lock;
                mExtLpfFreq = lpfFreq;
            }

            void SeqPlayer::SetMainOutVolume(f32 volume) {
                ut::AutoInterruptLock lock;
                mMainOutVolume = volume;
            }

            f32 SeqPlayer::GetMainOutVolume() const {
                return mMainOutVolume;
            }

            void SeqPlayer::SetMainSend(f32 send) {
                ut::AutoInterruptLock lock;
                mMainSend = send;
            }

            f32 SeqPlayer::GetMainSend() const {
                return mMainSend;
            }

            void SeqPlayer::SetFxSend(AuxBus bus, f32 send) {
                ut::AutoInterruptLock lock;
                mFxSend[bus] = send;
            }

            f32 SeqPlayer::GetFxSend(AuxBus bus) const {
                return mFxSend[bus];
            }

            void SeqPlayer::SetOutputLine(int lineFlag) {
                ut::AutoInterruptLock lock;
                mOutputLineFlag = lineFlag;
            }

            int SeqPlayer::GetOutputLine() const {
                return mOutputLineFlag;
            }

            void SeqPlayer::SetRemoteOutVolume(int remoteIndex, f32 volume) {
                ut::AutoInterruptLock lock;
                mRemoteOutVolume[remoteIndex] = volume;
            }

            f32 SeqPlayer::GetRemoteOutVolume(int remoteIndex) const {
                return mRemoteOutVolume[remoteIndex];
            }

            void SeqPlayer::SetRemoteSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteSend[remoteIndex] = send;
            }

            f32 SeqPlayer::GetRemoteSend(int remoteIndex) const {
                return mRemoteSend[remoteIndex];
            }

            void SeqPlayer::SetRemoteFxSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteFxSend[remoteIndex] = send;
            }

            f32 SeqPlayer::GetRemoteFxSend(int remoteIndex) const {
                return mRemoteFxSend[remoteIndex];
            }

            void SeqPlayer::SetChannelPriority(int prio) {
                ut::AutoInterruptLock lock;
                mParserParam.priority = static_cast<u8>(prio);
            }

            void SeqPlayer::InvalidateData(const void* start, const void* end) {
                ut::AutoInterruptLock lock;

                if (mActiveFlag) {
                    for (int i = 0; i < TRACK_NUM; i++) {
                        SeqTrack* track = GetPlayerTrack(i);
                        if (track == NULL) {
                            continue;
                        }

                        const u8* base = track->GetParserTrackParam().baseAddr;
                        if (start <= base && base <= end) {
                            FinishPlayer();
                            break;
                        }
                    }
                }
            }

            void SeqPlayer::CloseTrack(int trackNo) {
                SeqTrack* track = GetPlayerTrack(trackNo);
                if (track == NULL) {
                    return;
                }

                track->Close();

                mSeqTrackAllocator->FreeTrack(mTracks[trackNo]);
                mTracks[trackNo] = NULL;
            }
            
            SeqTrack* SeqPlayer::GetPlayerTrack(int trackNo) {
                if (trackNo > TRACK_NUM - 1) {
                    return NULL;
                }

                return mTracks[trackNo];
            }

            void SeqPlayer::SetPlayerTrack(int trackNo, SeqTrack* track) {
                if (trackNo > TRACK_NUM - 1) {
                    return;
                }

                mTracks[trackNo] = track;
                track->SetPlayerTrackNo(trackNo);
            }

            void SeqPlayer::FinishPlayer() {
                {
                    ut::AutoInterruptLock lock;

                    if (mStartedFlag) {
                        sPlayerList.Erase(this);
                    }
                    if (mActiveFlag) {
                        DisposeCallbackManager::GetInstance().UnregisterDisposeCallback(this);
                    }
                }

                for (int i = 0; i < TRACK_NUM; i++) {
                    CloseTrack(i);
                }
                mActiveFlag = false;
            }

            int SeqPlayer::ParseNextTick(bool doNoteOn) {
                bool active = false;

                for (int i = 0; i < TRACK_NUM; i++) {
                    SeqTrack* track = GetPlayerTrack(i);
                    if (track == NULL) {
                        continue;
                    }

                    track->UpdateChannelLength();

                    if (track->ParseNextTick(doNoteOn) == 0) {
                        active = true;
                    }
                    else {
                        CloseTrack(i);
                    }
                }

                if (!active) {
                    return 1;
                }

                return 0;
            }

            vs16* SeqPlayer::GetVariablePtr(int trackNo) {
                if (trackNo < LOCAL_VARIABLE_NUM) {
                    return &mLocalVariable[trackNo];
                }

                if (trackNo < VARIABLE_NUM) {
                    return &mGlobalVariable[trackNo - LOCAL_VARIABLE_NUM];
                }

                return NULL;
            }

            int SeqPlayer::UpdateTempoCounter() {
                int tick = 0;
                while (mTempoCounter >= 416) {
                    mTempoCounter -= 416;
                    tick++;
                }

                f32 tempo = mParserParam.tempo;
                tempo *= mTempoRatio;

                mTempoCounter += static_cast<int>(tempo);

                return tick;
            }

            void SeqPlayer::Update() {
                if (!mActiveFlag) {
                    return;
                }
                if (!mStartedFlag) {
                    return;
                }
                if (!mPauseFlag && !mSkipFlag) {
                    if (mHomeButtonMenuFlag || !AxManager::GetInstance().IsHomeButtonMenu()) {
                        for (int tick = UpdateTempoCounter(); tick > 0; tick--) {
                            if (ParseNextTick(true) != 0) {
                                FinishPlayer();
                                break;
                            }
                            mTickCounter++;
                        }
                    }
                }
                UpdateChannelParam();
            }

            void SeqPlayer::UpdateChannelParam() {
                SeqTrack* track;

                for (int trackNo = 0; trackNo < TRACK_NUM; trackNo++) {
                    track = GetPlayerTrack(trackNo);
                    if (track != NULL) {
                        track->UpdateChannelParam();
                    }
                }
            }

            void SeqPlayer::UpdateAllPlayers() {
                for (SeqPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    SeqPlayerList::Iterator currIt = it++;
                    currIt->Update();
                }
            }

            void SeqPlayer::StopAllPlayers() {
                for (SeqPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    SeqPlayerList::Iterator currIt = it++;
                    currIt->Stop();
                }
            }

            Channel* SeqPlayer::NoteOn(int bankNo, const NoteOnInfo& noteOnInfo) {
                return mParserParam.callback->NoteOn(this, bankNo, noteOnInfo);
            }

            // Blank. Not sure if this was explicitly defined here but if the function is defined in the header, it would link to MidiSeqPlayer instead.
            void SeqPlayer::ChannelCallback(Channel* channel) {}
        }
    }
}
