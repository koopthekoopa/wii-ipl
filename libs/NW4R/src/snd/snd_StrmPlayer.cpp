#include <nw4r/snd/StrmPlayer.h>
#include <nw4r/snd/WaveFile.h>
#include <nw4r/snd/AxManager.h>
#include <nw4r/ut.h>

#include <climits>
#include <cstring>

#include <revolution/dvd.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace {
                StrmPlayerList sPlayerList;
            }
            u8 StrmPlayer::LoadCommand::mMramBuf[LOAD_BUFFER_SIZE] ALIGN32;

            StrmPlayer::StrmPlayer() :
            mActiveFlag(false),
            mVoice(NULL) {
                for (u32 i = 0; i < 32; i++) {
                    LoadCommand& loadCommand = mLoadCoammndArray[i];
                    loadCommand.mPlayer = this;
                    mFreeLoadCommandList.PushBack(&loadCommand);
                }
            }

            bool StrmPlayer::Prepare(StrmBufferPool* bufferPool, StartOffsetType startOffsetType, s32 startOffset, int voices, StrmCallback* callback, u32 callbackData) {
                if (mActiveFlag) {
                    ForceStop();
                }

                InitParam(voices);

                mStartOffsetType = startOffsetType;
                mStartOffset = startOffset;
                mCallback = callback;
                mCallbackData = callbackData;
                mBufferPool = bufferPool;

                StrmCallback::Result result = callback->LoadHeader(NotifyStrmHeaderAsyncEndCallback, this, reinterpret_cast<u32>(this), callbackData);

                switch (result) {
                    case StrmCallback::RESULT_FAILED: {
                        ForceStop();
                        break;
                    }
                    case StrmCallback::RESULT_SUCCESS:
                    case StrmCallback::RESULT_ASYNC:
                    default: {
                        break;
                    }
                }

                mActiveFlag = true;

                return true;
            }

            bool StrmPlayer::Start() {
                ut::AutoInterruptLock lock;

                if (!mPreparedFlag) {
                    return false;
                }

                if (!mStartedFlag) {
                    mVoice->Start();
                    UpdatePauseStatus();

                    sPlayerList.PushBack(this);
                    mStartedFlag = true;
                }

                return true;
            }

            void StrmPlayer::Stop() {
                if (mActiveFlag) {
                    ForceStop();
                }
            }

            void StrmPlayer::Pause(bool flag) {
                mPauseFlag = flag;
                if (flag) {
                    mLoadWaitFlag = true;
                }
                if (mStartedFlag) {
                    UpdatePauseStatus();
                }
            }

            void StrmPlayer::UpdateBuffer() {
                if (!mStartedFlag) {
                    return;
                }
                if (mVoice == NULL) {
                    return;
                }

                s32 driveStatus = DVDGetDriveStatus();
                if (driveStatus == DVD_STATE_IDLE) {
                    mDiskErrorFlag = false;
                    UpdatePauseStatus();
                }
                else if (driveStatus != DVD_STATE_BUSY) {
                    mDiskErrorFlag = true;
                    mLoadWaitFlag = true;
                    UpdatePauseStatus();
                }

                if (!mLoadWaitFlag) {
                    if (mFillBufferCommandList.GetSize() >= mBufferBlockCountBase - 1) {
                        mLoadWaitFlag = true;
                        UpdatePauseStatus();
                    }
                }
                else {
                    if (mFillBufferCommandList.IsEmpty()) {
                        mLoadWaitFlag = false;
                        UpdatePauseStatus();
                    }
                }

                if (!mPlayFinishFlag && !mNoRealtimeLoadFlag) {
                    const u32 playingSample = mVoice->GetCurrentPlayingSample();
                    const int axCurrentBlockIndex = static_cast<int>(playingSample / mStrmInfo.blockSamples);

                    while (mPlayingBufferBlockIndex != axCurrentBlockIndex) {
                        UpdatePlayingBlockIndex();
                        UpdateLoadingBlockIndex(LoadCommand::STATE_INTERVAL);
                    }
                }
            }

            void StrmPlayer::Update() {
                if (!mStartedFlag) {
                    return;
                }

                if (mVoice == NULL) {
                    ForceStop();
                    return;
                }

                {
                    ut::AutoInterruptLock lock;

                    f32 volume = 1.0f;
                    volume *= mExtVolume;

                    f32 pitchRatio = 1.0f;
                    pitchRatio *= mExtPitch;

                    f32 pan = 0.0f;
                    pan += mExtPan;

                    f32 surroundPan = 0.0f;
                    surroundPan += mExtSurroundPan;

                    f32 pan2 = 0.0f;
                    pan2 += mExtPan2;

                    f32 surroundPan2 = 0.0f;
                    surroundPan2 += mExtSurroundPan2;

                    f32 lpfFreq = 1.0f;
                    lpfFreq += mExtLpfFreq;

                    f32 mainSend = 0.0f;
                    mainSend += mMainSend;

                    f32 fxSend[AUX_BUS_NUM];
                    for (int i = 0; i < AUX_BUS_NUM; i++) {
                        fxSend[i] = 0.0f;
                        fxSend[i] += mFxSend[i];
                    }

                    f32 remoteSend[WPAD_MAX_CONTROLLERS];
                    f32 remoteFxSend[WPAD_MAX_CONTROLLERS];
                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        remoteSend[i] = 0.0f;
                        remoteSend[i] += mRemoteSend[i];

                        remoteFxSend[i] = 0.0f;
                        remoteFxSend[i] += mRemoteSend[i]; // @bug Should be mRemoteFxSend
                    }

                    mVoice->SetVolume(volume);
                    mVoice->SetPitch(pitchRatio);
                    mVoice->SetPan(pan);
                    mVoice->SetSurroundPan(surroundPan);
                    mVoice->SetPan2(pan2);
                    mVoice->SetSurroundPan2(surroundPan2);
                    mVoice->SetLpfFreq(lpfFreq);
                    mVoice->SetOutputLine(mOutputLineFlag);
                    mVoice->SetMainOutVolume(GetMainOutVolume());
                    mVoice->SetMainSend(mainSend);

                    for (int i = 0; i < AUX_BUS_NUM; i++) {
                        mVoice->SetFxSend(static_cast<AuxBus>(i), fxSend[i]);
                    }

                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        mVoice->SetRemoteOutVolume(i, GetRemoteOutVolume(i));
                        mVoice->SetRemoteSend(i, remoteSend[i]);
                        mVoice->SetRemoteFxSend(i, remoteFxSend[i]);
                    }
                }
            }

            void StrmPlayer::UpdateLoopAddress(u32 startSample, u32 endSample) {
                ut::AutoInterruptLock lock;

                for (int i = 0; i < mChannelCount; i++) {
                    mVoice->SetLoopStart(i, mChannels[i].mBuffer, startSample);
                    mVoice->SetLoopEnd(i, mChannels[i].mBuffer, endSample);
                }

                mVoice->SetLoopFlag(true);
            }

            void StrmPlayer::UpdatePlayingBlockIndex() {
                mPlayingDataBlockIndex++;

                if (mPlayingDataBlockIndex > mLastBlockIndex && mStrmInfo.loopFlag) {
                    mPlayingDataBlockIndex = mLoopStartBlockIndex;

                    if (mLoopCounter < INT_MAX) {
                        mLoopCounter++;
                    }

                    UpdateLoopAddress(0, mPlayingBufferBlockCount * mStrmInfo.blockSamples);
                }

                mPlayingBufferBlockIndex++;

                if (mPlayingBufferBlockIndex >= mPlayingBufferBlockCount) {
                    mPlayingBufferBlockIndex = 0;
                    mPlayingBufferBlockCount = mLoadingBufferBlockCount;

                    UpdateLoopAddress(0, mPlayingBufferBlockCount * mStrmInfo.blockSamples);
                }

                if (mPlayingBufferBlockIndex == mPlayingBufferBlockCount - 1 &&
                    mVoice->GetFormat() == AxVoice::FORMAT_ADPCM) {

                    if (!mSkipUpdateAdpcmLoop && mValidAdpcmLoop) {
                        ut::AutoInterruptLock lock;

                        for (int i = 0; i < mChannelCount; i++) {
                            AdpcmLoopParam loopParam;
                            loopParam.loop_pred_scale = mAdpcmPredScale[i];
                            loopParam.loop_yn1 = 0;
                            loopParam.loop_yn2 = 0;

                            mVoice->SetAdpcmLoop(i, mVoice->GetFormat(), &loopParam);
                        }

                        mVoice->SetVoiceType(AxVoice::VOICE_TYPE_STREAM);
                    }

                    mValidAdpcmLoop = false;
                    mSkipUpdateAdpcmLoop = false;
                }

                if (mPlayingDataBlockIndex == mLastBlockIndex - 1) {
                    const s32 endBlock = mPlayingBufferBlockIndex + 1;

                    if (mStrmInfo.loopFlag) {
                        s32 startBlock = endBlock + 1;
                        if (startBlock >= mPlayingBufferBlockCount) {
                            startBlock -= mPlayingBufferBlockCount;
                        }

                        ut::AutoInterruptLock lock;

                        UpdateLoopAddress(startBlock * mStrmInfo.blockSamples, mStrmInfo.lastBlockSamples + (endBlock * mStrmInfo.blockSamples));

                        if (mStrmInfo.format == WaveFile::FORMAT_ADPCM) {
                            if (mVoice->GetFormat() == AxVoice::FORMAT_ADPCM) {
                                mVoice->SetVoiceType(AxVoice::VOICE_TYPE_NORMAL);

                                for (int i = 0; i < mChannelCount; i++) {
                                    mVoice->SetAdpcmLoop(i, mVoice->GetFormat(), &mChannels[i].mAdpcmInfo.adpcmloop);
                                }
                            }

                            if (endBlock == mPlayingBufferBlockCount - 1) {
                                mSkipUpdateAdpcmLoop = true;
                            }
                        }

                        return;
                    }

                    SetLoopEndToZeroBuffer(endBlock);
                }
            }

            void StrmPlayer::SetLoopEndToZeroBuffer(int endBlock) {
                {
                    ut::AutoInterruptLock lock;

                    for (int i = 0; i < mChannelCount; i++) {
                        mVoice->StopAtPoint(i, mChannels[i].mBuffer, mStrmInfo.lastBlockSamples + (endBlock * mStrmInfo.blockSamples));
                    }
                }

                mPlayFinishFlag = true;
            }

            void StrmPlayer::UpdateLoadingBlockIndex(LoadCommand::Status status) {
                if (mLoadFinishFlag) {
                    return;
                }

                LoadCommand* param;
                {
                    ut::AutoInterruptLock lock;

                    param = &mFreeLoadCommandList.GetFront();
                    mFreeLoadCommandList.PopFront();
                }

                param->mStatus = status;
                param->mBufferBlockIndex = mLoadingBufferBlockIndex;
                param->mStreamBlockIndex = mLoadingDataBlockIndex;

                u32 blockSize = mLoadingDataBlockIndex < static_cast<s32>(mStrmInfo.numBlocks - 1) ? mStrmInfo.blockSize : mStrmInfo.lastBlockPaddedSize;

                u32 loadSize = mStrmInfo.blockHeaderOffset + mChannelCount * ut::RoundUp(blockSize, 32);

                s32 loadOffset = mStrmInfo.dataOffset +
                                mLoadingDataBlockIndex * (mStrmInfo.blockHeaderOffset +
                                                        mStrmInfo.blockSize * mStrmInfo.numChannels);

                mFillBufferCommandList.PushBack(param);

                bool needUpdateAdpcmLoop = mLoadingBufferBlockIndex == 0 && mStrmInfo.format == WaveFile::FORMAT_ADPCM;

                StrmCallback::Result result = mCallback->LoadStream(param->mMramBuf, loadSize, loadOffset, mChannelCount,
                                                                    blockSize, mStrmInfo.blockHeaderOffset, needUpdateAdpcmLoop,
                                                                    *param, reinterpret_cast<u32>(this), mCallbackData);
                switch (result) {
                    case StrmCallback::RESULT_FAILED: {
                        ForceStop();
                        break;
                    }
                    case StrmCallback::RESULT_SUCCESS: {
                        param->NotifyAsyncEnd(true);
                        break;
                    }
                    case StrmCallback::RESULT_ASYNC:
                    default: {
                        break;
                    }
                }
                mLoadingDataBlockIndex++;

                if (mLoadingDataBlockIndex > mLastBlockIndex) {
                    if (mStrmInfo.loopFlag) {
                        mLoadingDataBlockIndex = mLoopStartBlockIndex;
                    }
                    else {
                        mLoadFinishFlag = true;
                        return;
                    }
                }

                mLoadingBufferBlockIndex++;

                if (mLoadingBufferBlockIndex >= mLoadingBufferBlockCount) {
                    mLoadingBufferBlockIndex = 0;
                    mLoadingBufferBlockCount = CalcLoadingBufferBlockCount();
                }
            }

            void StrmPlayer::UpdatePauseStatus() {
                ut::AutoInterruptLock lock;

                bool paused = false;

                if (mPauseFlag) {
                    paused = true;
                }

                if (mLoadWaitFlag) {
                    paused = true;
                }

                if (paused != mPauseStatus) {
                    mVoice->Pause(paused);

                    mPauseStatus = paused;
                }
            }

            int StrmPlayer::CalcLoadingBufferBlockCount() const {
                int restBlocks = (mLastBlockIndex - mLoadingDataBlockIndex) + 1;
                int loopBlocks = (mLastBlockIndex - mLoopStartBlockIndex) + 1;

                if ((mBufferBlockCountBase + 1 - restBlocks) % loopBlocks == 0) {
                    return mBufferBlockCountBase + 1;
                }

                return mBufferBlockCountBase;
            }

            void StrmPlayer::UpdateBufferAllPlayers() {
                for (StrmPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    StrmPlayerList::Iterator currIt = it++;
                    currIt->UpdateBuffer();
                }
            }

            void StrmPlayer::UpdateAllPlayers() {
                for (StrmPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    StrmPlayerList::Iterator currIt = it++;
                    currIt->Update();
                }
            }

            void StrmPlayer::StopAllPlayers() {
                for (StrmPlayerList::Iterator it = sPlayerList.GetBeginIter(); it != sPlayerList.GetEndIter();) {
                    StrmPlayerList::Iterator currIt = it++;
                    currIt->Stop();
                }
            }
            void StrmPlayer::SetMainOutVolume(f32 volume) {
                ut::AutoInterruptLock lock;
                mMainOutVolume = volume;
            }

            f32 StrmPlayer::GetMainOutVolume() const {
                return mMainOutVolume;
            }

            void StrmPlayer::SetMainSend(f32 send) {
                ut::AutoInterruptLock lock;
                mMainSend = send;
            }

            f32 StrmPlayer::GetMainSend() const {
                return mMainSend;
            }

            void StrmPlayer::SetFxSend(AuxBus bus, f32 send) {
                ut::AutoInterruptLock lock;
                mFxSend[bus] = send;
            }

            f32 StrmPlayer::GetFxSend(AuxBus bus) const {
                return mFxSend[bus];
            }

            void StrmPlayer::SetOutputLine(int lineFlag) {
                ut::AutoInterruptLock lock;
                mOutputLineFlag = lineFlag;
            }

            int StrmPlayer::GetOutputLine() const {
                return mOutputLineFlag;
            }

            void StrmPlayer::SetRemoteOutVolume(int remoteIndex, f32 volume) {
                ut::AutoInterruptLock lock;
                mRemoteOutVolume[remoteIndex] = volume;
            }

            f32 StrmPlayer::GetRemoteOutVolume(int remoteIndex) const {
                return mRemoteOutVolume[remoteIndex];
            }

            void StrmPlayer::SetRemoteSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteSend[remoteIndex] = send;
            }

            f32 StrmPlayer::GetRemoteSend(int remoteIndex) const {
                return mRemoteSend[remoteIndex];
            }

            void StrmPlayer::SetRemoteFxSend(int remoteIndex, f32 send) {
                ut::AutoInterruptLock lock;
                mRemoteFxSend[remoteIndex] = send;
            }

            f32 StrmPlayer::GetRemoteFxSend(int remoteIndex) const {
                return mRemoteFxSend[remoteIndex];
            }

            void StrmPlayer::InitParam(int voices) {
                mActiveFlag = false;
                mStartedFlag = false;
                mPreparedFlag = false;
                mLoadFinishFlag = false;
                mPauseFlag = false;
                mDiskErrorFlag = false;
                mPauseStatus = false;
                mLoadWaitFlag = false;
                mNoRealtimeLoadFlag = false;
                mPlayFinishFlag = false;
                mSkipUpdateAdpcmLoop = false;
                mValidAdpcmLoop = false;
                mChannelCount = 0;
                mLoopCounter = 0;

                mExtVolume = 1.0f;
                mExtPitch = 1.0f;
                mExtPan = 0.0f;
                mExtSurroundPan = 0.0f;
                mExtPan2 = 0.0f;
                mExtSurroundPan2 = 0.0f;
                mExtLpfFreq = 0.0f;

                mOutputLineFlag = OUTPUT_LINE_MAIN;
                mMainOutVolume = 1.0f;
                mMainSend = 0.0f;

                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    mFxSend[i] = 0.0f;
                }
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteSend[i] = 0.0f;
                    mRemoteFxSend[i] = 0.0f;
                }

                mVoiceOutCount = voices;

                for (int i = 0; i < CHANNEL_MAX; i++) {
                    mChannels[i].mBuffer = NULL;
                    mChannels[i].mBufferSize = 0;
                }
            }

            void StrmPlayer::Setup(const StrmHeader* header) {
                if (!SetupPlayer(header)) {
                    ForceStop();
                    return;
                }

                mPrepareCounter = 0;
                for (int i = 0; i < mBufferBlockCountBase; i++) {
                    UpdateLoadingBlockIndex(LoadCommand::STATE_SETUP);
                    mPrepareCounter++;

                    if (mLoadFinishFlag) {
                        break;
                    }
                }

                if (mStrmInfo.numBlocks <= 2 && !mStrmInfo.loopFlag)  {
                    SetLoopEndToZeroBuffer(mStrmInfo.numBlocks - 1);
                }
            }

            bool StrmPlayer::SetupPlayer(const StrmHeader* strmHeader) {
                u32 poolBlockSize = mBufferPool->GetBlockSize();
                mStrmInfo = strmHeader->strmInfo;

                u32 blockOffset = 0;
                s32 loopCount = 0;

                if (mStrmInfo.format == WaveFile::FORMAT_ADPCM) {
                    for (int i = 0; i < mStrmInfo.numChannels; i++) {
                        mChannels[i].mAdpcmInfo = strmHeader->adpcmInfo[i];
                    }
                }

                mLoopStartBlockIndex = mStrmInfo.loopStart / mStrmInfo.blockSamples;
                mLastBlockIndex = mStrmInfo.numBlocks - 1;

                mDataBlockSize = mStrmInfo.blockSize;
                if (mDataBlockSize > DATA_BLOCK_SIZE_MAX) {
                    return false;
                }

                mBufferBlockCount = poolBlockSize / mDataBlockSize;
                if (mBufferBlockCount < DATA_BLOCK_COUNT_MIN) {
                    return false;
                }
                else if (mBufferBlockCount > DATA_BLOCK_COUNT_MAX) {
                    mBufferBlockCount = DATA_BLOCK_COUNT_MAX;
                }

                mBufferBlockCountBase = mBufferBlockCount - 1;
                mChangeNumBlocks = mBufferBlockCountBase;

                s32 blockIndex = 0;
                if (mStrmInfo.blockSamples > 0) {
                    if (mStartOffsetType == START_OFFSET_TYPE_SAMPLE) {
                        blockIndex = static_cast<s32>(mStartOffset) / static_cast<s32>(mStrmInfo.blockSamples);
                    }
                    else if (mStartOffsetType == START_OFFSET_TYPE_MILLISEC) {
                        blockIndex = static_cast<s32>(mStrmInfo.sampleRate * mStartOffset / 1000) / static_cast<s32>(mStrmInfo.blockSamples);
                    }
                }
                mPlayingDataBlockIndex = blockIndex;
                mLoadingDataBlockIndex = blockIndex;

                mLoadingBufferBlockIndex = 0;
                mPlayingBufferBlockIndex = 0;

                if (mNoRealtimeLoadFlag) {
                    mLoadingBufferBlockCount = mStrmInfo.numBlocks;
                }
                else {
                    mLoadingBufferBlockCount = CalcLoadingBufferBlockCount();
                }

                mPlayingBufferBlockCount = mLoadingBufferBlockCount;

                {
                    ut::AutoInterruptLock lock;
                    mChannelCount = ut::Min<int>(mStrmInfo.numChannels, CHANNEL_MAX);
                    if (!AllocChannels(mChannelCount, mVoiceOutCount)) {
                        return false;
                    }
                }

                {
                    ut::AutoInterruptLock lock;

                    WaveData waveData;
                    waveData.format = mStrmInfo.format;
                    waveData.loopFlag = true;
                    waveData.numChannels = static_cast<u8>(mChannelCount);
                    waveData.sampleRate = mStrmInfo.sampleRate;
                    waveData.loopStart = 0;
                    waveData.loopEnd = AxVoice::GetSampleByByte(static_cast<u32>(mDataBlockSize * mPlayingBufferBlockCount), WaveFormatToAxFormat(mStrmInfo.format));

                    for (int i = 0; i < mChannelCount; i++) {
                        ChannelParam& channelParam = waveData.channelParam[i];

                        channelParam.dataAddr = mChannels[i].mBuffer;
                        channelParam.adpcmInfo = mChannels[i].mAdpcmInfo;
                    }

                    mVoice->Setup(waveData);
                    mVoice->SetVoiceType(AxVoice::VOICE_TYPE_STREAM);
                }

                return true;
            }

            bool StrmPlayer::AllocChannels(int channels, int voices) {
                for (int i = 0; i < channels; i++) {
                    void* buffer = mBufferPool->Alloc();

                    if (buffer == NULL) {
                        for (int j = 0; j < i; j++) {
                            mBufferPool->Free(mChannels[j].mBuffer);
                        }

                        return false;
                    }

                    mChannels[i].mBuffer = buffer;
                    mChannels[i].mBufferSize = mBufferPool->GetBlockSize();
                }

                AxVoice* voice = AxManager::GetInstance().AllocVoice(channels, voices, AxVoice::PRIORITY_MAX, VoiceCallbackFunc, this);

                if (voice == NULL) {
                    for (int i = 0; i < channels; i++) {
                        mBufferPool->Free(mChannels[i].mBuffer);
                    }

                    return false;
                }

                mVoice = voice;
                return true;
            }

            void StrmPlayer::FreeChannels() {
                ut::AutoInterruptLock lock;

                for (int i = 0; i < mChannelCount; i++) {
                    if (mChannels[i].mBuffer != NULL) {
                        mBufferPool->Free(mChannels[i].mBuffer);

                        mChannels[i].mBuffer = NULL;
                        mChannels[i].mBufferSize = 0;
                    }
                }

                mChannelCount = 0;

                if (mVoice != NULL) {
                    mVoice->Free();
                    mVoice = NULL;
                }
            }

            void StrmPlayer::ForceStop() {
                {
                    ut::AutoInterruptLock lock;
                    if (mVoice != NULL) {
                        mVoice->Stop();
                    }
                    if (mStartedFlag) {
                        sPlayerList.Erase(this);
                        mStartedFlag = false;
                        mPreparedFlag = false;
                    }
                }

                mCallback->CancelLoading(reinterpret_cast<u32>(this), mCallbackData);

                {
                    ut::AutoInterruptLock lock;

                    while (!mFillBufferCommandList.IsEmpty()) {
                        LoadCommand& param = mFillBufferCommandList.GetFront();
                        mFillBufferCommandList.PopFront();
                        mFreeLoadCommandList.PushBack(&param);
                    }
                }

                FreeChannels();
                mActiveFlag = false;
            }

            void StrmPlayer::NotifyStrmHeaderAsyncEndCallback(bool result, const StrmHeader* header, void* userData) {
                StrmPlayer* player = reinterpret_cast<StrmPlayer*>(userData);
                if (result) {
                    player->Setup(header);
                }
                else {
                    player->ForceStop();
                }
            }

            void StrmPlayer::VoiceCallbackFunc(AxVoice* dropVoice, AxVoice::CallbackStatus status, void* arg) {
                StrmPlayer* strmPlayer = static_cast<StrmPlayer*>(arg);

                switch (status) {
                    case AxVoice::CALLBACK_STATUS_FINISH_WAVE:
                    case AxVoice::CALLBACK_STATUS_INVALIDATE_WAVE: {
                        dropVoice->Free();
                        strmPlayer->FreeChannels();
                        break;
                    }
                    case AxVoice::CALLBACK_STATUS_DROP_VOICE:
                    case AxVoice::CALLBACK_STATUS_DROP_DSP: {
                        strmPlayer->mVoice = NULL;
                        strmPlayer->FreeChannels();
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }

            void StrmPlayer::LoadCommand::NotifyAsyncEnd(bool result) {
                ut::AutoInterruptLock lock;

                mPlayer->mFillBufferCommandList.Erase(this);

                if (result) {
                    if (mStatus == STATE_SETUP) {
                        if (--mPlayer->mPrepareCounter == 0) {
                            mPlayer->mPreparedFlag = true;
                        }
                    }
                }
                else {
                    mPlayer->ForceStop();
                }

                mPlayer->mFreeLoadCommandList.PushBack(this);
            }

            void StrmPlayer::LoadCommand::SetAdpcmLoopContext(int channelNum, u16* predScale) {
                if (mPlayer->mStrmInfo.format != WaveFile::FORMAT_ADPCM) return;

                for (int i = 0; i < channelNum && i < CHANNEL_MAX; i++) {
                    mPlayer->mAdpcmPredScale[i] = predScale[i];
                }

                mPlayer->mValidAdpcmLoop = true;
            }

            void* StrmPlayer::LoadCommand::GetBuffer(int channelNum) {
                if (channelNum >= mPlayer->mChannelCount) {
                    return NULL;
                }
                return static_cast<u8*>(mPlayer->mChannels[channelNum].mBuffer) + mPlayer->mDataBlockSize * mBufferBlockIndex;
            }
        }
    }
}
