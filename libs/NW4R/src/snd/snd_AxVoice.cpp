#include <nw4r/snd/AxVoice.h>
#include <nw4r/snd/AxManager.h>
#include <nw4r/snd/DisposeCallbackManager.h>

#include <nw4r/snd/WaveFile.h>
#include <nw4r/snd/Util.h>

#include <nw4r/ut.h>
#include <nw4r/math.h>

#include <revolution/wpad.h>
#include <revolution/os.h>

#include <cmath>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace {
                void SetVoiceLoop(AXVPB* vpb, u32 loopAddr);
                void SetVoiceLoopAddr(AXVPB* vpb, u32 loopAddr);
                void SetVoiceEndAddr(AXVPB* vpb, u32 endAddr);
            }

            AxVoice::AxVoice() :
            mCallback(NULL),
            mActiveFlag(false),
            mStartFlag(false),
            mStartedFlag(false),
            mPauseFlag(false),
            mFirstVeUpdateFlag(0),
            mHomeButtonMuteFlag(0),
            mSyncFlag(0) {
                for (int i = 0; i < CHANNEL_MAX; i++) {
                    for (int j = 0; j < VOICES_MAX; j++) {
                        mVpb[i][j] = NULL;
                    }
                }
            }

            AxVoice::~AxVoice() {
                for (int i = 0; i < CHANNEL_MAX; i++) {
                    for (int j = 0; j < VOICES_MAX; j++) {
                        AXVPB* vpb = mVpb[i][j];
                        if (vpb != NULL) {
                            AXFreeVoice(vpb);
                        }
                    }
                }
            }

            void AxVoice::InitParam(int channels, int voices, AxVoiceCallback callback, void* callbackArg) {
                for (int i = 0; i < channels; i++) {
                    mVoiceChannelParam[i].waveData = NULL;
                }
                
                mChannelCount = channels;
                mVoiceOutCount = voices;
                mCallback = callback;
                mCallbackData = callbackArg;

                mSyncFlag = 0;
                mPauseFlag = false;
                mPausingFlag = false;
                mStartedFlag = false;

                mFirstVeUpdateFlag = true;
                mHomeButtonMuteFlag = false;

                mVolume = 1.0f;
                for (int i = 0; i < VOICES_MAX; i++) {
                    mVolumePrev[i] = 1;
                }
                mVeInitVolume = 0.0f;
                mVeTargetVolume = 1.0f;
                mGainPrev = 0.0f;
                mLpfFreq = 1.0f;
                mPan = 0.0f;
                mSurroundPan = 0.0f;
                mPan2 = 0;
                mSurroundPan2 = 0;
                mOutputLineFlag = OUTPUT_LINE_MAIN;
                mMainOutVolume = 1.0f;
                mMainSend = 1.0f;

                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    mFxSend[i] = 0.0f;
                }

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mRemoteOutVolume[i] = 1.0f;
                    mRemoteSend[i] = 1.0f;
                    mRemoteFxSend[i] = 0.0f;
                }

                mPitch = 1.0f;
            }

            void AxVoice::Update() {
                if (mActiveFlag) {
                    if (mStartedFlag && IsPlayFinished()) {
                        if (mCallback) {
                         mCallback(this, CALLBACK_STATUS_FINISH_WAVE, mCallbackData);
                        }
                        mStartedFlag = false;
                        mStartFlag = false;
                    }
                    if ((mSyncFlag & SYNC_AX_SRC_INITIAL) && mStartFlag && !mStartedFlag) {
                        UpdateAxSrc(true);
                        SetAxParam(AXSetVoiceState, (u16)AX_VOICE_STREAM);

                        mStartedFlag = true;

                        mSyncFlag &= ~SYNC_AX_SRC_INITIAL;
                        mSyncFlag &= ~SYNC_AX_SRC;
                    }
                    if (mStartedFlag) {
                        if (mSyncFlag & SYNC_AX_VOICE && mStartFlag) {
                            if (mPauseFlag || mHomeButtonMuteFlag || AxManager::GetInstance().IsDiskError()) {
                                SetAxParam(AXSetVoiceState, (u16)AX_VOICE_STOP);
                                mPausingFlag = true;
                            }
                            else {
                                SetAxParam(AXSetVoiceState, (u16)AX_VOICE_STREAM);
                                mPausingFlag = false;
                            }
                            mSyncFlag &= ~SYNC_AX_VOICE;
                        }

                        if (mSyncFlag & SYNC_AX_SRC) {
                            UpdateAxSrc(false);
                            mSyncFlag &= ~SYNC_AX_SRC;
                        }

                        if (mSyncFlag & SYNC_AX_VE) {
                            bool result = UpdateAxVe();
                            if (!result) {
                                mSyncFlag &= ~SYNC_AX_VE;
                            }
                        }

                        if (mSyncFlag & SYNC_AX_MIX) {
                            UpdateAxMix();
                            mSyncFlag &= ~SYNC_AX_MIX;
                        }

                        if (mSyncFlag & SYNC_AX_LPF) {
                            UpdateAxLpf();
                            mSyncFlag &= ~SYNC_AX_LPF;
                        }
                    }
                }
            }

            bool AxVoice::Acquire(int channels, int voices, int priority, AxVoiceCallback callback, void* callbackArg) {
                channels = ut::Clamp(channels, 1, CHANNEL_MAX);
                voices = ut::Clamp(voices, 1, VOICES_MAX);

                ut::AutoInterruptLock lock;

                u32 axPrio;
                if (priority == PRIORITY_MAX) {
                    axPrio = AX_PRIORITY_MAX;
                }
                else {
                    axPrio = (AX_PRIORITY_MAX / 2) + 1;
                }

                int required = channels * voices;
                AXVPB* vpbTable[CHANNEL_MAX * VOICES_MAX];

                for (int i = 0; required > i; i++) {
                    AXVPB* vpb = AXAcquireVoice(axPrio, VoiceCallback, reinterpret_cast<u32>(this));

                    if (vpb == NULL) {
                        int rest = required - i;

                        const AxVoiceList& rVoiceList = AxManager::GetInstance().GetVoiceList();

                        for (AxVoiceList::ConstIterator it = rVoiceList.GetBeginIter();
                            it != rVoiceList.GetEndIter(); it++) {

                            if (priority < it->GetPriority()) {
                                break;
                            }

                            rest -= it->GetAxVoiceCount();
                            if (rest <= 0) {
                                break;
                            }
                        }

                        if (rest > 0) {
                            for (int j = 0; j < i; j++) {
                                AXFreeVoice(vpbTable[j]);
                            }

                            return false;
                        }

                        u32 allocPrio;
                        if (axPrio < AX_PRIORITY_MAX) {
                            allocPrio = axPrio+1;
                        }
                        else {
                            allocPrio = axPrio;
                        }

                        vpb = AXAcquireVoice(allocPrio, VoiceCallback, reinterpret_cast<u32>(this));
                    }

                    if (vpb == NULL) {
                        for (int j = 0; j < i; j++) {
                            AXFreeVoice(vpbTable[j]);
                        }

                        return false;
                    }

                    vpbTable[i] = vpb;
                }

                int idx = 0;
                for (int i = 0; i < channels; i++) {
                    for (int j = 0; j < voices; j++) {
                        AXSetVoicePriority(vpbTable[idx], axPrio);
                        mVpb[i][j] = vpbTable[idx];
                        idx++;
                    }
                }

                InitParam(channels, voices, callback, callbackArg);
                DisposeCallbackManager::GetInstance().RegisterDisposeCallback(this);
                mActiveFlag = true;
                return true;
            }

            void AxVoice::Free() {
                ut::AutoInterruptLock lock;

                if (!mActiveFlag) {
                    return;
                }

                for (int i = 0; i < mChannelCount; i++) {
                    for (int j = 0; j < mVoiceOutCount; j++) {
                        AXVPB* vpb = mVpb[i][j];
                        if (vpb != NULL) {
                            AXFreeVoice(vpb);
                            mVpb[i][j] = NULL;
                        }
                    }
                }

                mChannelCount = 0;
                DisposeCallbackManager::GetInstance().UnregisterDisposeCallback(this);
                AxManager::GetInstance().FreeVoice(this);
                mActiveFlag = false;
            }

            void AxVoice::Setup(const WaveData& waveParam) {
                mFormat = WaveFormatToAxFormat(waveParam.format);
                mSampleRate = waveParam.sampleRate;

                for (int i = 0; i < mChannelCount; i++) {
                    if (mVpb[i][0] == NULL) {
                        continue;
                    }

                    mVoiceChannelParam[i].waveData = waveParam.channelParam[i].dataAddr;
                    mVoiceChannelParam[i].adpcmInfo = waveParam.channelParam[i].adpcmInfo;

                    SetAxAddr(i, waveParam.loopFlag, mFormat, mVoiceChannelParam[i].waveData, waveParam.loopStart, waveParam.loopEnd);

                    if (mFormat == FORMAT_ADPCM) {
                        SetAxAdpcm(i, mFormat, (const AdpcmParam*)&mVoiceChannelParam[i].adpcmInfo);
                        SetAxAdpcmLoop(i, mFormat, &mVoiceChannelParam[i].adpcmInfo.adpcmloop);
                    }
                }

                for (int i = 0; i < mVoiceOutCount; i++) {
                    mVoiceOutParam[i].volume = 1.0f;
                    mVoiceOutParam[i].pitch = 1.0f;
                    mVoiceOutParam[i].pan = 0.0f;
                    mVoiceOutParam[i].surroundPan = 0.0f;
                    mVoiceOutParam[i].fxSend = 0.0f;
                    mVoiceOutParam[i].lpf = 0.0f;
                    mVoiceOutParam[i].priority = 0;
                }

                SetVoiceType(VOICE_TYPE_NORMAL);
                SetAxSrcType(SRC_4TAP_AUTO);

                mPauseFlag = false;
                mPausingFlag = false;
                mStartFlag = false;
                mStartedFlag = false;

                mSyncFlag |= SYNC_AX_MIX;
                mSyncFlag |= SYNC_AX_VE;
                mSyncFlag |= SYNC_AX_LPF;
            }

            void AxVoice::Start() {
                ut::AutoInterruptLock lock;

                mStartFlag = true;
                mPauseFlag = false;
                mSyncFlag |= SYNC_AX_SRC_INITIAL;
            }

            void AxVoice::Stop() {
                ut::AutoInterruptLock lock;

                if (mStartedFlag) {
                    if (IsRun()) {
                        SetAxParam(AXSetVoiceState, (u16)AX_VOICE_STOP);
                    }
                    mStartedFlag = false;
                }
                mPausingFlag = false;
                mPauseFlag = false;
                mStartFlag = false;
            }

            void AxVoice::Pause(bool flag) {
                ut::AutoInterruptLock lock;

                if (mPauseFlag == flag) {
                    return;
                }
                mPauseFlag = flag;
                mSyncFlag |= SYNC_AX_VOICE;
            }

            bool AxVoice::IsRun() {
                ut::AutoInterruptLock lock;
    
                if (mVpb[0][0] == NULL) {
                    return false;
                }
                else {
                    return mVpb[0][0]->pb.state == AX_VOICE_RUN;
                }
            }

            void AxVoice::SetVolume(f32 volume) {
                volume = ut::Clamp(volume, 0.0f, 1.0f);

                if (volume != mVolume) {
                    mVolume = volume;
                    mSyncFlag |= SYNC_AX_VE;
                }
            }

            void AxVoice::SetVeVolume(f32 target, f32 init) {
                if (init < 0.0f) {
                    target = ut::Clamp(target, 0.0f, 1.0f);
                    if (target != mVeTargetVolume) {
                        mVeTargetVolume = target;
                        mSyncFlag |= SYNC_AX_VE;
                    }
                }
                else {
                    target = ut::Clamp(target, 0.0f, 1.0f);
                    init = ut::Clamp(init, 0.0f, 1.0f);
                    if (init != mVeInitVolume || target != mVeTargetVolume) {
                        mVeInitVolume = init;
                        mVeTargetVolume = target;
                        mSyncFlag |= SYNC_AX_VE;
                    }
                }
            }

            void AxVoice::SetPitch(f32 pitch) {
                if (pitch != mPitch) {
                    mPitch = pitch;
                    mSyncFlag |= SYNC_AX_SRC;
                }
            }

            void AxVoice::SetPan(f32 pan) {
                pan = ut::Clamp(pan, -1.0f, 1.0f);
                if (pan != mPan) {
                    mPan = pan;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetSurroundPan(f32 pan) {
                pan = ut::Clamp(pan, 0.0f, 2.0f);
                if (pan != mSurroundPan) {
                    mSurroundPan = pan;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetPan2(f32 pan) {
                if (pan != mPan2) {
                    mPan2 = pan;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetSurroundPan2(f32 pan) {
                pan = ut::Clamp(pan, 0.0f, 2.0f);
                if (pan != mSurroundPan2) {
                    mSurroundPan2 = pan;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetLpfFreq(f32 freq) {
                freq = ut::Clamp(freq, 0.0f, 1.0f);

                if (freq != mLpfFreq) {
                    mLpfFreq = freq;
                    mSyncFlag |= SYNC_AX_LPF;
                }
            }

            
            void AxVoice::SetOutputLine(int flag) {
                if (flag != mOutputLineFlag) {
                    mOutputLineFlag = flag;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetMainOutVolume(f32 volume) {
                volume = ut::Clamp(volume, 0.0f, 1.0f);

                if (volume != mMainOutVolume) {
                    mMainOutVolume = volume;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetRemoteOutVolume(int remoteIndex, f32 volume) {
                volume = ut::Clamp(volume, 0.0f, 1.0f);

                if (volume != mRemoteOutVolume[remoteIndex]) {
                    mRemoteOutVolume[remoteIndex] = volume;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetMainSend(f32 send) {
                send += 1.0f;
                send = ut::Clamp(send, 0.0f, 1.0f);

                if (send != mMainSend) {
                    mMainSend = send;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetFxSend(AuxBus bus, f32 send) {
                send = ut::Clamp(send, 0.0f, 1.0f);

                if (send != mFxSend[bus]) {
                    mFxSend[bus] = send;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetRemoteSend(int remote, f32 send) {
                send += 1.0f;
                send = ut::Clamp(send, 0.0f, 1.0f);

                if (send != mRemoteSend[remote]) {
                    mRemoteSend[remote] = send;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetRemoteFxSend(int remote, f32 send) {
                send = ut::Clamp(send, 0.0f, 1.0f);

                if (send != mRemoteFxSend[remote]) {
                    mRemoteFxSend[remote] = send;
                    mSyncFlag |= SYNC_AX_MIX;
                }
            }

            void AxVoice::SetPriority(int priority) {
                mPriority = priority;
                AxManager::GetInstance().ChangeVoicePriority(this);
            }

            u32 AxVoice::GetCurrentPlayingDspAddress() const {
                ut::AutoInterruptLock lock;

                const AXPB* vpb = &mVpb[0][0]->pb;
                if (vpb == NULL) {
                    return 0;
                }
                else {
                    return ((vpb->addr.currentAddressHi << 16) + vpb->addr.currentAddressLo);
                }
            }

            u32 AxVoice::GetLoopEndDspAddress() const {
                ut::AutoInterruptLock lock;

                const AXPB* vpb = &mVpb[0][0]->pb;
                if (vpb == NULL) {
                    return 0;
                }
                else {
                    return ((vpb->addr.endAddressHi << 16) + vpb->addr.endAddressLo);
                }
            }

            void AxVoice::SetAdpcmLoop(int channelIndex, Format format, const AdpcmLoopParam* param) {
                SetAxAdpcmLoop(channelIndex, format, param);
            }

            void AxVoice::SetBaseAddress(int channelIndex, const void* baseAddress) {
                ut::AutoInterruptLock lock;
                mVoiceChannelParam[channelIndex].waveData = (void*)baseAddress;
            }

            bool AxVoice::IsPlayFinished() const {
                ut::AutoInterruptLock lock;

                if (mVoiceChannelParam[0].waveData == NULL) {
                    return false;
                }

                u32 dspAddr = GetCurrentPlayingDspAddress();
                const void* buffer = AxManager::GetInstance().GetZeroBufferAddress();
                u32 samples = GetDspAddressBySample(buffer, 0, mFormat);

                u32 addr = samples;

                switch (mFormat) {
                    case FORMAT_ADPCM: {
                        addr += 0x200;
                        break;
                    }
                    case FORMAT_PCM8: {
                        addr += 0x100;
                        break;
                    }
                    case FORMAT_PCM16: {
                        addr += 0x80;
                        break;
                    }
                }

                if (samples <= dspAddr && dspAddr < addr) {
                    return true;
                }
                else {
                    return false;
                }
            }

            u32 AxVoice::GetCurrentPlayingSample() const {
                ut::AutoInterruptLock lock;

                void* baseAddress = mVoiceChannelParam[0].waveData;
                if (!baseAddress) {
                    return 0;
                }

                if (IsPlayFinished()) {
                    u32 end = GetLoopEndDspAddress();
                    u32 samples = GetSampleByDspAddress(baseAddress, end, mFormat);
                    return samples + 1;
                }

                u32 now = GetCurrentPlayingDspAddress();
                u32 samples = GetSampleByDspAddress(baseAddress, now, mFormat);
                return samples;
            }

            void AxVoice::SetAxAddr(int channelIndex, bool loopFlag, Format format, const void* waveAddr, u32 loopStart, u32 loopEnd) {
                u32 loopAddr;

                if (loopFlag) {
                    loopAddr = GetDspAddressBySample(waveAddr, loopStart, mFormat);
                }
                else {
                    void* zeroAddr = AxManager::GetInstance().GetZeroBufferAddress();
                    loopAddr = GetDspAddressBySample(zeroAddr, 0, mFormat);
                }

                u32 startAddr = GetDspAddressBySample(waveAddr, 0, mFormat);
                u32 endAddr = GetDspAddressBySample(waveAddr, loopEnd-1, mFormat);

                AXPBADDR addr;

                addr.loopFlag = loopFlag;
                addr.format = format;

                addr.loopAddressHi = loopAddr >> 16;
                addr.loopAddressLo = loopAddr & 0xFFFF;

                addr.endAddressHi = endAddr >> 16;
                addr.endAddressLo = endAddr & 0xFFFF;

                addr.currentAddressHi = startAddr >> 16;
                addr.currentAddressLo = startAddr & 0xFFFF;

                for (int i = 0; i < mVoiceOutCount; i++) {
                    AXSetVoiceAddr(mVpb[channelIndex][i], &addr);
                }
            }

            void AxVoice::SetLoopStart(int channelIndex, const void* baseAddress, u32 samples) {
                ut::AutoInterruptLock lock;
                u32 addr = GetDspAddressBySample(baseAddress, samples, mFormat);
                for (int i = 0; i < mVoiceOutCount; i++) {
                    SetVoiceLoopAddr(mVpb[channelIndex][i], addr);
                }
            }

            void AxVoice::SetLoopEnd(int channelIndex, const void* baseAddress, u32 samples) {
                ut::AutoInterruptLock lock;
                u32 addr = GetDspAddressBySample(baseAddress, samples-1, mFormat);
                for (int i = 0; i < mVoiceOutCount; i++) {
                    SetVoiceEndAddr(mVpb[channelIndex][i], addr);
                }
            }

            void AxVoice::SetLoopFlag(bool loopFlag) {
                ut::AutoInterruptLock lock;
                for (int i = 0; i < mChannelCount; i++) {
                    for (int j = 0; j < mVoiceOutCount; j++) {
                        SetVoiceLoop(mVpb[i][j], loopFlag);
                    }
                }
            }

            void AxVoice::StopAtPoint(int channelIndex, const void* baseAddress, u32 samples) {
                ut::AutoInterruptLock lock;

                void* zeroAddr = AxManager::GetInstance().GetZeroBufferAddress();
                u32 startAddr = GetDspAddressBySample(zeroAddr, 0, mFormat);
                u32 endAddr = GetDspAddressBySample(baseAddress, samples-1, mFormat);

                for (int i = 0; i < mVoiceOutCount; i++) {
                    AXVPB* vpb = mVpb[channelIndex][i];
                    if (vpb != NULL) {
                        SetVoiceLoopAddr(vpb, startAddr);
                        SetVoiceEndAddr(vpb, endAddr);
                        SetVoiceLoop(vpb, false);
                    }
                }
            }

            void AxVoice::SetVoiceType(VoiceType type) {
                SetAxParam(AXSetVoiceType, (u16)type);
            }

            void AxVoice::UpdateAxSrc(bool initialUpdate) {
                f32 ratio = mPitch * mSampleRate / AX_SAMPLE_RATE;

                for (int i = 0; i < mVoiceOutCount; i++) {
                    f32 pitch = ut::Clamp(mVoiceOutParam[i].pitch, 0.0f, 1.0f);

                    if (initialUpdate) {
                        AXPBSRC src;
                        u32 srcBits = 65536 * ratio * pitch;

                        src.ratioHi = srcBits >> 16;
                        src.ratioLo = srcBits;

                        src.currentAddressFrac = 0;
                        src.last_samples[0] = 0;
                        src.last_samples[1] = 0;
                        src.last_samples[2] = 0;
                        src.last_samples[3] = 0;

                        for (int j = 0; j < mChannelCount; j++) {
                            AXSetVoiceSrc(mVpb[j][i], &src);
                        }
                    }
                    else {
                        for (int j = 0; j < mChannelCount; j++) {
                            AXSetVoiceSrcRatio(mVpb[j][i], ratio * pitch);
                        }
                    }
                }
            }

            void AxVoice::SetAxAdpcm(int channelIndex, Format format, const AdpcmParam* param) {
                AXPBADPCM adpcmParam;
                switch (format) {
                    case FORMAT_ADPCM: {
                        memcpy(adpcmParam.a, param, 32);
                        adpcmParam.gain = param->gain;
                        adpcmParam.pred_scale = param->pred_scale;
                        adpcmParam.yn1 = param->yn1;
                        adpcmParam.yn2 = param->yn2;
                        break;
                    }
                    case FORMAT_PCM16: {
                        memset(adpcmParam.a, 0, 32);
                        adpcmParam.gain = 0x800;
                        adpcmParam.pred_scale = 0;
                        adpcmParam.yn1 = 0;
                        adpcmParam.yn2 = 0;
                        break;
                    }
                    case FORMAT_PCM8: {
                        memset(adpcmParam.a, 0, 32);
                        adpcmParam.gain = 0x100;
                        adpcmParam.pred_scale = 0;
                        adpcmParam.yn1 = 0;
                        adpcmParam.yn2 = 0;
                        break;
                    }
                }

                for (int i = 0; i < mVoiceOutCount; i++) {
                    AXSetVoiceAdpcm(mVpb[channelIndex][i], &adpcmParam);
                }
            }

            void AxVoice::SetAxAdpcmLoop(int channelIndex, Format format, const AdpcmLoopParam* param) {
                AXPBADPCMLOOP adpcmLoop;
                if (format == AxVoice::FORMAT_ADPCM) {
                    adpcmLoop.loop_pred_scale = param->loop_pred_scale;
                    adpcmLoop.loop_yn1 = param->loop_yn1;
                    adpcmLoop.loop_yn2 = param->loop_yn2;
                }
                else {
                    adpcmLoop.loop_pred_scale = 0;
                    adpcmLoop.loop_yn1 = 0;
                    adpcmLoop.loop_yn2 = 0;
                }

                for (int i = 0; i < mVoiceOutCount; i++) {
                    AXSetVoiceAdpcmLoop(mVpb[channelIndex][i], &adpcmLoop);
                }
            }

            bool AxVoice::UpdateAxVe() {
                bool done = false;

                f32 baseVolume = 1.0f;
                baseVolume *= mVolume;
                baseVolume *= AxManager::GetInstance().GetOutputVolume();
                
                if (mHomeButtonMuteFlag) {
                    baseVolume = 0.0f;
                }
                
                for (int i = 0; i < mVoiceOutCount; i++) {
                    f32& volumePrev = mVolumePrev[i];
                    f32 volume = baseVolume * mVoiceOutParam[i].volume;

                    for (int j = 0; j < mChannelCount; j++) {
                        AXPBVE pbVe;

                        u16 initVol;
                        u16 targetVol;

                        if (mFirstVeUpdateFlag || !IsRun()) {
                            initVol = volume * mVeInitVolume * (AX_MAX_VOLUME-1);
                            targetVol = volume * mVeTargetVolume * (AX_MAX_VOLUME-1);
                        }
                        else {
                            initVol = volumePrev * mVeInitVolume * (AX_MAX_VOLUME-1);
                            targetVol = volume * mVeTargetVolume * (AX_MAX_VOLUME-1);
                        }

                        pbVe.currentVolume = initVol;
                        pbVe.currentDelta = (targetVol - initVol) / AX_VOICE_MAX;
                        AXSetVoiceVe(mVpb[j][i], &pbVe);

                        if (targetVol != initVol) {
                            done = true;
                        }
                    }

                    volumePrev = volume;
                }

                if (mFirstVeUpdateFlag || !IsRun()) {
                    mFirstVeUpdateFlag = false;
                }

                mVeInitVolume = mVeTargetVolume;

                return done;
            }

            void AxVoice::UpdateAxMix() {
                AXPBRMTMIX rmtMix;
                AXPBMIX mix;
                
                for (int i = 0; i < mChannelCount; i = i + 1) {
                    for (int j = 0; j < mVoiceOutCount; j = j + 1) {
                        CalcAXPBMIX(i,j,&mix);

                        AXSetVoiceMix(mVpb[i][j],&mix);

                        if (mOutputLineFlag == 0 || mOutputLineFlag == OUTPUT_LINE_MAIN) {
                            AXSetVoiceRmtOn(mVpb[i][j],0);
                        }
                        else {
                            CalcAXPBRMTMIX(i,j,&rmtMix);
                            AXSetVoiceRmtOn(mVpb[i][j],1);
                            AXSetVoiceRmtMix(mVpb[i][j],&rmtMix);
                        }
                    }
                }
            }

            void AxVoice::UpdateAxLpf() {
                for (int i = 0; i < mVoiceOutCount; i++) {
                    u16 freq = Util::CalcLpfFreq(mLpfFreq + mVoiceOutParam[i].lpf);
                    if (freq >= 16000) {
                        AXPBLPF lpf;

                        lpf.on = FALSE;
                        lpf.yn1 = 0;

                        for (int j = 0; j < mChannelCount; j++) {
                            AXSetVoiceLpf(mVpb[j][i], &lpf);
                        }
                    }
                    else {
                        u16 a0, b0;

                        if (mVpb[0][0]->pb.lpf.on == TRUE) {
                            AXGetLpfCoefs(freq, &a0, &b0);

                            for (int j = 0; j < mChannelCount; j++) {
                                AXSetVoiceLpfCoefs(mVpb[j][i], a0, b0);
                            }
                        }
                        else {
                            AXPBLPF lpf;

                            lpf.on = TRUE;
                            lpf.yn1 = 0;

                            AXGetLpfCoefs(freq, &lpf.a0, &lpf.b0);

                            for (int j = 0; j < mChannelCount; j++) {
                                AXSetVoiceLpf(mVpb[j][i], &lpf);
                            }
                        }
                    }
                }
            }

            void AxVoice::VoiceCallback(void* callbackData) {
                ut::AutoInterruptLock lock;

                AXVPB* vpb = static_cast<AXVPB*>(callbackData);
                AxVoice* voice = reinterpret_cast<AxVoice*>(vpb->userContext);

                if (voice->mCallback) {
                    voice->mCallback(voice, CALLBACK_STATUS_DROP_DSP, voice->mCallbackData);
                }

                for (int i = 0; i < voice->mChannelCount; i++) {
                    for (int j = 0; j < voice->mVoiceOutCount; j++) {
                        AXVPB* vpbElement = voice->mVpb[i][j];
                        if (vpbElement != NULL && vpbElement != vpb) {
                            AXFreeVoice(vpbElement);
                        }
                        vpbElement = NULL;
                    }
                }

                DisposeCallbackManager::GetInstance().UnregisterDisposeCallback(voice);
                AxManager::GetInstance().FreeVoice(voice);
                voice->mPauseFlag = false;
                voice->mStartFlag = false;
                voice->mChannelCount = 0;
                voice->mActiveFlag = false;
            }

            u32 AxVoice::GetDspAddressBySample(const void* base, u32 samples, Format fmt) {
                if (base != NULL) {
                    base = (const void*)OSCachedToPhysical(base);
                }

                u32 addr = 0;

                switch (fmt) {
                    case FORMAT_ADPCM: {
                        addr = (samples / AX_ADPCM_SAMPLES_PER_FRAME * AX_ADPCM_NIBBLES_PER_FRAME) + (samples % AX_ADPCM_SAMPLES_PER_FRAME)
                             + (reinterpret_cast<u32>(base) * sizeof(u16)) + sizeof(u16);
                        break;
                    }

                    case FORMAT_PCM8: {
                        addr = reinterpret_cast<u32>(base) + samples;
                        break;
                    }
                    case FORMAT_PCM16: {
                        addr = reinterpret_cast<u32>(base) / sizeof(u16) + samples;
                        break;
                    }
                }

                return addr;
            }

            u32 AxVoice::GetSampleByDspAddress(const void* base, u32 addr, Format fmt) {
                if (base != NULL) {
                    base = (const void*)OSCachedToPhysical(base);
                }

                u32 samples = 0;

                switch (fmt) {
                    case FORMAT_ADPCM: {
                        samples = addr - reinterpret_cast<u32>(base) * sizeof(u16);
                        samples = (samples % AX_ADPCM_NIBBLES_PER_FRAME) + (samples / AX_ADPCM_NIBBLES_PER_FRAME * AX_ADPCM_SAMPLES_PER_FRAME) - sizeof(u16);
                        break;
                    }

                    case FORMAT_PCM8: {
                        samples = addr - reinterpret_cast<u32>(base);
                        break;
                    }

                    case FORMAT_PCM16: {
                        samples = addr - reinterpret_cast<u32>(base) / sizeof(u16);
                        break;
                    }
                }

                return samples;
            }

            u32 AxVoice::GetSampleByByte(u32 addr, Format fmt) {
                u32 samples = 0;
                u32 frac;

                switch (fmt) {
                    case FORMAT_ADPCM: {
                        samples = addr / AX_ADPCM_FRAME_SIZE * AX_ADPCM_SAMPLES_PER_FRAME;
                        frac = addr % AX_ADPCM_FRAME_SIZE;
                        if (frac != 0) {
                            samples += (frac - 1) * sizeof(u16);
                        }
                        break;
                    }
                    case FORMAT_PCM8: {
                        samples = addr;
                        break;
                    }
                    case FORMAT_PCM16: {
                        samples = addr / sizeof(u16);
                        break;
                    }
                }

                return samples;
            }

            void AxVoice::SetAxSrcType(SrcType type) {
                if (type == SRC_4TAP_AUTO) {
                    f32 ratio = mPitch * mSampleRate / AX_SAMPLE_RATE;

                    if (ratio > 4.0f / 3.0f) {
                        type = SRC_4TAP_8K;
                    }
                    else if (ratio > 1.0f) {
                        type = SRC_4TAP_12K;
                    }
                    else {
                        type = SRC_4TAP_16K;
                    }
                }
                SetAxParam(AXSetVoiceSrcType, static_cast<u32>(type));
            }

            void AxVoice::TransformDpl2Pan(f32* pPan, f32* pSurroundPan, f32 pan, f32 surroundPan) {
                surroundPan -= 1.0f;

                if (math::FAbs(pan) <= math::FAbs(surroundPan)) {
                    if (surroundPan <= 0.0f) {
                        *pPan = pan;
                        *pSurroundPan = -0.12f + 0.88f * surroundPan;
                    }
                    else {
                        *pPan = 0.5f * pan;
                        *pSurroundPan = -0.12f + 1.12f * surroundPan;
                    }
                }
                else if (pan >= 0.0f) {
                    if (surroundPan <= 0.0f) {
                        *pPan = (0.85f + (1.0f - 0.85f) * (-surroundPan / pan)) * math::FAbs(pan);
                        *pSurroundPan = -0.12f + (2.0f * surroundPan + 0.88f * pan);
                    }
                    else {
                        *pPan =
                            (0.85f + (1.0f - 0.65f) * (-surroundPan / pan)) * math::FAbs(pan);
                        *pSurroundPan = -0.12f + 1.12f * pan;
                    }
                }
                else if (surroundPan <= 0.0f) {
                    *pPan = ((1.0f - 0.85f) * (-surroundPan / pan) - 0.85f) * math::FAbs(pan);
                    *pSurroundPan = -0.12f + (2.0f * surroundPan - 1.12f * pan);
                }
                else {
                    *pPan = ((1.0f - 0.65f) * (-surroundPan / pan) - 0.85f) * math::FAbs(pan);
                    *pSurroundPan = -0.12f + 1.12f * -pan;
                }

                *pSurroundPan += 1.0f;
            }

            void AxVoice::CalcAXPBMIX(int channelIndex, int voiceIndex, AXPBMIX* mix) {
                f32 vL = 1.0f;
                f32 vR = 1.0f;
                f32 vS = 1.0f;
                f32 vAuxAL = 1.0f;
                f32 vAuxAR = 1.0f;
                f32 vAuxAS = 1.0f;
                f32 vAuxBL = 1.0f;
                f32 vAuxBR = 1.0f;
                f32 vAuxBS = 1.0f;
                f32 vAuxCL = 1.0f;
                f32 vAuxCR = 1.0f;
                f32 vAuxCS = 1.0f;

                f32& vSL = vS;
                f32& vSR = vAuxCL;
                f32& vAuxASL = vAuxAS;
                f32& vAuxASR = vAuxCR;
                f32& vAuxBSL = vAuxBS;
                f32& vAuxBSR = vAuxCS;

                OutputMode outputMode = AxManager::GetInstance().GetOutputMode();

                switch (outputMode) {
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_MONO: {
                        vS = 0.0f;
                        vAuxAS = 0.0f;
                        vAuxBS = 0.0f;
                        vAuxCS = 0.0f;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                /* Volume */

                f32 volume = 1.0f;
                if (mOutputLineFlag & OUTPUT_LINE_MAIN) {
                    volume *= mMainOutVolume;
                }
                else {
                    volume = 0.0f;
                }

                switch (AxManager::GetInstance().GetOutputMode()) {
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_MONO: {
                        vL *= volume;
                        vR *= volume;
                        vAuxAL *= volume;
                        vAuxAR *= volume;
                        vAuxBL *= volume;
                        vAuxBR *= volume;
                        vAuxCL *= volume;
                        vAuxCR *= volume;
                        break;
                    }
                    case OUTPUT_MODE_SURROUND: {
                        vL *= volume;
                        vR *= volume;
                        vS *= volume;
                        vAuxAL *= volume;
                        vAuxAR *= volume;
                        vAuxAS *= volume;
                        vAuxBL *= volume;
                        vAuxBR *= volume;
                        vAuxBS *= volume;
                        vAuxCL *= volume;
                        vAuxCR *= volume;
                        vAuxCS *= volume;
                        break;
                    }
                    case OUTPUT_MODE_DPL2: {
                        vL *= volume;
                        vR *= volume;
                        vSL *= volume;
                        vSR *= volume;
                        vAuxAL *= volume;
                        vAuxAR *= volume;
                        vAuxASL *= volume;
                        vAuxASR *= volume;
                        vAuxBL *= volume;
                        vAuxBR *= volume;
                        vAuxBSL *= volume;
                        vAuxBSR *= volume;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                /* Calculate Panning */

                f32 vPan = 0.0f;
                if (mChannelCount == 2) {
                    if (channelIndex == 0) {
                        vPan = -1.0f;
                    }
                    if (channelIndex == 1) {
                        vPan = 1.0f;
                    }
                }

                f32 pan, surroundPan;
                switch (AxManager::GetInstance().GetOutputMode()) {
                    case OUTPUT_MODE_DPL2: {
                        TransformDpl2Pan(&pan, &surroundPan,
                                        mPan +         mPan2 +  vPan + mVoiceOutParam[voiceIndex].pan,
                                        mSurroundPan + mSurroundPan2 + mVoiceOutParam[voiceIndex].surroundPan);
                        break;
                    }
                    case OUTPUT_MODE_MONO: {
                        pan = 0.0f;
                        surroundPan = 0.0f;
                        break;
                    }
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_SURROUND:
                    default: {
                        pan =         mPan +         mPan2 +  vPan + mVoiceOutParam[voiceIndex].pan;
                        surroundPan = mSurroundPan + mSurroundPan2 + mVoiceOutParam[voiceIndex].surroundPan;
                        break;
                    }
                }

                /* Panning */

                f32 leftVol = Util::CalcPanRatio(pan);
                f32 rightVol = Util::CalcPanRatio(-pan);
                f32 surroundVol = Util::CalcVolumeRatio(-3.0);

                switch (AxManager::GetInstance().GetOutputMode()) {
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_MONO: {
                        vL *= leftVol;
                        vR *= rightVol;
                        vAuxAL *= leftVol;
                        vAuxAR *= rightVol;
                        vAuxBL *= leftVol;
                        vAuxBR *= rightVol;
                        vAuxCL *= leftVol;
                        vAuxCR *= rightVol;
                        break;
                    }
                    case OUTPUT_MODE_SURROUND: {
                        vL *= leftVol;
                        vR *= rightVol;
                        vS *= surroundVol;
                        vAuxAL *= leftVol;
                        vAuxAR *= rightVol;
                        vAuxAS *= surroundVol;
                        vAuxBL *= leftVol;
                        vAuxBR *= rightVol;
                        vAuxBS *= surroundVol;
                        vAuxCL *= leftVol;
                        vAuxCR *= rightVol;
                        vAuxCS *= surroundVol;
                        break;
                    }
                    case OUTPUT_MODE_DPL2: {
                        vL *= leftVol;
                        vR *= rightVol;
                        vSL *= leftVol;
                        vSR *= rightVol;
                        vAuxAL  *= leftVol;
                        vAuxAR  *= rightVol;
                        vAuxASL *= leftVol;
                        vAuxASR *= rightVol;
                        vAuxBL  *= leftVol;
                        vAuxBR  *= rightVol;
                        vAuxBSL *= leftVol;
                        vAuxBSR *= rightVol;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                /* Surround panning */

                f32 frontVol = Util::CalcSurroundPanRatio(surroundPan);
                f32 backVol = Util::CalcSurroundPanRatio(2.0f - surroundPan);

                switch (AxManager::GetInstance().GetOutputMode()) {
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_MONO: {
                        break;
                    }
                    case OUTPUT_MODE_SURROUND: {
                        vL *= frontVol;
                        vR *= frontVol;
                        vS *= backVol;
                        vAuxAL *= frontVol;
                        vAuxAR *= frontVol;
                        vAuxAS *= backVol;
                        vAuxBL *= frontVol;
                        vAuxBR *= frontVol;
                        vAuxBS *= backVol;
                        vAuxCL *= frontVol;
                        vAuxCR *= frontVol;
                        vAuxCS *= backVol;
                        break;
                    }
                    case OUTPUT_MODE_DPL2: {
                        vL *= frontVol;
                        vR *= frontVol;
                        vSL *= backVol;
                        vSR *= backVol;
                        vAuxAL *= frontVol;
                        vAuxAR *= frontVol;
                        vAuxASL *= backVol;
                        vAuxASR *= backVol;

                        vAuxBL *= frontVol;
                        vAuxBR *= frontVol;
                        vAuxBSL *= backVol;
                        vAuxBSR *= backVol;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                /* FX Send */
                f32 send = mMainSend;
                f32 sendA = ut::Clamp(mFxSend[AUX_A] + mVoiceOutParam[voiceIndex].fxSend, 0.0f, 1.0f);
                f32 sendB = mFxSend[AUX_B];
                f32 sendC = mFxSend[AUX_C];

                switch (AxManager::GetInstance().GetOutputMode()) {
                    case OUTPUT_MODE_STEREO:
                    case OUTPUT_MODE_MONO: {
                        vL *= send;
                        vR *= send;
                        vAuxAL *= sendA;
                        vAuxAR *= sendA;
                        vAuxBL *= sendB;
                        vAuxBR *= sendB;
                        vAuxCL *= sendC;
                        vAuxCR *= sendC;
                        break;
                    }
                    case OUTPUT_MODE_SURROUND: {
                        vL *= send;
                        vR *= send;
                        vS *= send;
                        vAuxAL *= sendA;
                        vAuxAR *= sendA;
                        vAuxAS *= sendA;
                        vAuxBL *= sendB;
                        vAuxBR *= sendB;
                        vAuxBS *= sendB;
                        vAuxCL *= sendC;
                        vAuxCR *= sendC;
                        vAuxCS *= sendC;
                        break;
                    }
                    case OUTPUT_MODE_DPL2: {
                        vL *= send;
                        vR *= send;
                        vSL *= send;
                        vSR *= send;
                        vAuxAL *= sendA;
                        vAuxAR *= sendA;
                        vAuxASL *= sendA;
                        vAuxASR *= sendA;
                        vAuxBL *= sendB;
                        vAuxBR *= sendB;
                        vAuxBSL *= sendB;
                        vAuxBSR *= sendB;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                mix->vL = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vL * AX_MAX_VOLUME));
                mix->vR = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vR * AX_MAX_VOLUME));
                mix->vS = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vS * AX_MAX_VOLUME));

                mix->vAuxAL = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxAL * AX_MAX_VOLUME));
                mix->vAuxAR = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxAR * AX_MAX_VOLUME));
                mix->vAuxAS = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxAS * AX_MAX_VOLUME));
                mix->vAuxBL = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxBL * AX_MAX_VOLUME));
                mix->vAuxBR = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxBR * AX_MAX_VOLUME));
                mix->vAuxBS = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxBS * AX_MAX_VOLUME));
                mix->vAuxCL = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxCL * AX_MAX_VOLUME));
                mix->vAuxCR = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxCR * AX_MAX_VOLUME));
                mix->vAuxCS = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(vAuxCS * AX_MAX_VOLUME));

                mix->vDeltaL = 0;
                mix->vDeltaR = 0;
                mix->vDeltaS = 0;

                mix->vDeltaAuxAL = 0;
                mix->vDeltaAuxAR = 0;
                mix->vDeltaAuxAS = 0;
                mix->vDeltaAuxBL = 0;
                mix->vDeltaAuxBR = 0;
                mix->vDeltaAuxBS = 0;
                mix->vDeltaAuxCL = 0;
                mix->vDeltaAuxCR = 0;
                mix->vDeltaAuxCS = 0;
            }

            void AxVoice::CalcAXPBRMTMIX(int channelIndex, int voiceIndex, AXPBRMTMIX* mix) {
                f32 rmts[WPAD_MAX_CONTROLLERS];
                f32 rmtFxs[WPAD_MAX_CONTROLLERS];

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    f32& rmt = rmts[i];
                    f32& rmtFx = rmtFxs[i];

                    rmt = 1.0f;
                    rmtFx = 1.0f;

                    /* Volume */

                    f32 volume = 1.0f;
                    if (mOutputLineFlag & (OUTPUT_LINE_REMOTE_N << i)) {
                        volume *= mRemoteOutVolume[i];
                    }
                    else {
                        volume = 0.0f;
                    }
                    rmt *= volume;
                    rmtFx *= volume;

                    /* FX Send */

                    f32 remoteSend = mRemoteSend[i];
                    f32 remoteFxSend = mRemoteFxSend[i];
                    rmt *= remoteSend;
                    rmtFx *= remoteFxSend;
                }

                mix->vMain0 = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(rmts[WPAD_CHAN0] * AX_MAX_VOLUME));
                mix->vAux0 = 0;
                mix->vMain1 = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(rmts[WPAD_CHAN1] * AX_MAX_VOLUME));
                mix->vAux1 = 0;
                mix->vMain2 = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(rmts[WPAD_CHAN2] * AX_MAX_VOLUME));
                mix->vAux2 = 0;
                mix->vMain3 = ut::Min(static_cast<u32>(0xFFFF), static_cast<u32>(rmts[WPAD_CHAN3] * AX_MAX_VOLUME));
                mix->vAux3 = 0;

                mix->vDeltaMain0 = 0;
                mix->vDeltaAux0 = 0;
                mix->vDeltaMain1 = 0;
                mix->vDeltaAux1 = 0;
                mix->vDeltaMain2 = 0;
                mix->vDeltaAux2 = 0;
                mix->vDeltaMain3 = 0;
                mix->vDeltaAux3 = 0;
            }

            namespace {
                void SetVoiceLoop(AXVPB* vpb, u32 loopFlag) {
                    ut::AutoInterruptLock lock;

                    vpb->pb.addr.loopFlag = loopFlag;

                    if (!(vpb->sync & 0x400)) {
                        vpb->sync |= 0x800;
                    }
                }

                void SetVoiceLoopAddr(AXVPB* vpb, u32 loopAddr) {
                    ut::AutoInterruptLock lock;

                    vpb->pb.addr.loopAddressHi = (loopAddr >> 16);
                    vpb->pb.addr.loopAddressLo = loopAddr & 0xFFFF;

                    if (!(vpb->sync & 0x400)) {
                        vpb->sync |= 0x1000;
                    }
                }

                void SetVoiceEndAddr(AXVPB* vpb, u32 endAddr) {
                    ut::AutoInterruptLock lock;

                    vpb->pb.addr.endAddressHi = (endAddr >> 16);
                    vpb->pb.addr.endAddressLo = endAddr & 0xFFFF;

                    if (!(vpb->sync & 0x400)) {
                        vpb->sync |= 0x2000;
                    }
                }
            }

            void AxVoice::InvalidateWaveData(const void* start, const void* end) {
                ut::AutoInterruptLock lock;

                if (mActiveFlag) {
                    bool flag = false;
                    for (int i = 0; i < mChannelCount; i++) {
                        if (start <= mVoiceChannelParam[i].waveData && mVoiceChannelParam[i].waveData <= end) {
                            flag = true;
                        }
                    }

                    if (flag) {
                        Stop();

                        if (mCallback) {
                            mCallback(this, CALLBACK_STATUS_INVALIDATE_WAVE, mCallbackData);
                        }
                    }
                }
            }
        }
    }
}
