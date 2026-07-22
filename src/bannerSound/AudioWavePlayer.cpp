#include "bannerSound/AudioWavePlayer.h"

#include <egg/prim.h>

void SimpleWavePlayer::MakeWave(nw4r::snd::WavePlayer* player, nw4r::snd::WavePlayer::WavePacket* packet, void* _self) {
    SimpleWavePlayer* self = (SimpleWavePlayer*)_self;
    s16 samples[2];
    s16* waveBufs[2];
    waveBufs[0] = (s16*)packet->GetWaveBuffer().bufferAddress[0];
    waveBufs[1] = (s16*)packet->GetWaveBuffer().bufferAddress[1];

    u32 samplesToRead = packet->GetWaveBuffer().bufferSize / sizeof(s16);

    if (!self->mpFile->isLoop()) {
        u32 frames = self->mpFile->getFrames();
        int channels = self->mpFile->getChannels();
        int dataOff = (u8*)self->mpFile->getDataCur() - (u8*)self->mpFile->getDataBase();

        int remaining = frames - dataOff / 2 / channels;
        if (samplesToRead > remaining) {
            samplesToRead = remaining;
        }
        if (remaining == 0) {
            self->mDataStarvedCount++;
        }
    } else {
        self->mpFile->getDataBase();
        self->mpFile->getDataCur();
        self->mpFile->getChannels();
        self->mpFile->getLoopEnd();
    }

    for (int i = 0; i < samplesToRead; i++) {
        self->mpFile->readData(samples, self->mpFile->getChannels());

        for (int j = 0; j < self->mpFile->getChannels(); j++) {
            waveBufs[j][i] = samples[j];
        }
        self->mCurrSampleIdx++;

        if (self->mpFile->isLoop() && self->mCurrSampleIdx >= self->mpFile->getLoopEnd()) {
            self->mCurrSampleIdx = self->mpFile->getLoopStart();
            self->mpFile->setDataCur(self->mCurrSampleIdx * self->mpFile->getChannels());
        }
    }

    for (int i = 0; i < self->mpFile->getChannels(); i++) {
        DCFlushRange(waveBufs[i], samplesToRead * sizeof(s16));
    }
    if (self->mDataStarvedCount == 0) {
        player->AppendWavePacket(packet);
    }
}

void SimpleWavePlayer::wavePacketCallback(WavePacketCallbackStatus status, WavePlayer* player, WavePacket* packet, void* _self) {
    SimpleWavePlayer* self = (SimpleWavePlayer*)_self;

    if (status != WAVE_PACKET_CALLBACK_STATUS_FINISH) {
        return;
    }

    if (self->mThreadRunning != false) {
        OSSendMessage(&self->mQueue, packet, 0);
        return;
    }

    if (self->unk_0xB5) {
        MakeWave(player, packet, self);
    }
}

SimpleWavePlayer::SimpleWavePlayer() : mSetupParam(1, nw4r::snd::SAMPLE_FORMAT_PCM_S16, 32000, 1.0f, 1) {
    unk_0xB5 = true;
    unk_0xB0 = false;
    mIsSetData = false;
    mIsPlaying = false;
    mIsSetBuf = false;
    mCurrSampleIdx = 0;
    mDataStarvedCount = 0;
    mThreadRunning = false;
}

SimpleWavePlayer::~SimpleWavePlayer() {
}

void SimpleWavePlayer::setBuffer(s16* wavebuf, u32 wavebufsize) {
    int offset = 0;

    // clang-format off
    EGG_ASSERTLINE(109, wavebufsize>=wsize);
    // clang-format on

    for (int i = 0; i < 3; i++) {
        mpBuffers[i] = wavebuf + offset;
        offset += 0x400;
    }

    mIsSetBuf = true;

    return;
}

bool SimpleWavePlayer::setWavData(void* buf, u32 bufSize) {
    EGG_ASSERTLINE(122, mIsSetBuf);

    bool initRes = mWav.init(buf, bufSize);
    if (!initRes) {
        return initRes;
    }

    mSetupParam.channelCount = mWav.getChannels();
    mSetupParam.sampleFormat = nw4r::snd::SAMPLE_FORMAT_PCM_S16;

    mSetupParam.sampleRate = mWav.getSamplingRate();
    mSetupParam.pitchMax = 1.0f;

    bool setupRes = Setup(mSetupParam, wavePacketCallback, this);
    if (setupRes) {
        WaveBufferInfo newWaveBuffer;
        for (int i = 0; i < 3; i++) {
            newWaveBuffer.channelCount = mSetupParam.channelCount;
            for (int j = 0; j < newWaveBuffer.channelCount; j++) {
                newWaveBuffer.bufferAddress[j] = mpBuffers[i] + j * 0x800 / (mWav.getChannels() * 2);
            }
            newWaveBuffer.bufferSize = 0x800 / (mWav.getChannels() * 2) * 2;
            mWavePackets[i].SetWaveBuffer(newWaveBuffer);
        }
        mpFile = &mWav;
        mIsSetData = true;
    }
    return setupRes;
}

bool SimpleWavePlayer::setAiffData(void* buf, u32 bufSize) {
    EGG_ASSERTLINE(156, mIsSetBuf);

    bool initRes = mAiff.init(buf, bufSize);
    if (!initRes) {
        return initRes;
    }

    mSetupParam.channelCount = mAiff.getChannels();
    mSetupParam.sampleFormat = nw4r::snd::SAMPLE_FORMAT_PCM_S16;

    mSetupParam.sampleRate = mAiff.getSamplingRate();
    mSetupParam.pitchMax = 1.0f;

    bool setupRes = Setup(mSetupParam, wavePacketCallback, this);
    if (setupRes) {
        WaveBufferInfo newWaveBuffer;
        for (int i = 0; i < 3; i++) {
            newWaveBuffer.channelCount = mSetupParam.channelCount;
            for (int j = 0; j < newWaveBuffer.channelCount; j++) {
                newWaveBuffer.bufferAddress[j] = mpBuffers[i] + j * 0x800 / (mAiff.getChannels() * 2);
            }
            newWaveBuffer.bufferSize = 0x800 / (mAiff.getChannels() * 2) * 2;
            mWavePackets[i].SetWaveBuffer(newWaveBuffer);
        }
        mpFile = &mAiff;
        mIsSetData = true;
    }
    return setupRes;
}

bool SimpleWavePlayer::start() {
    if (mIsSetData) {
        Stop();
        mCurrSampleIdx = 0;
        mIsPlaying = true;
        mDataStarvedCount = 0;

        if (!mThreadRunning) {
            for (int i = 0; i < 3; i++) {
                MakeWave(this, &mWavePackets[i], this);
            }
        } else {
            for (int i = 0; i < 3; i++) {
                OSSendMessage(&mQueue, &mWavePackets[i], 0);
            }
        }

        Start();
        return true;
    }
    return false;
}

void SimpleWavePlayer::stop() {
    mIsPlaying = false;
    Stop();
}

void SimpleWavePlayer::update() {
    if (mIsPlaying) {
        if (!unk_0xB5) {
            for (int i = 0; i < 3; i++) {
                if (mWavePackets[i].GetAppendFlag()) {
                    continue;
                }

                MakeWave(this, &mWavePackets[i], this);
                break;
            }
        }
        if (mDataStarvedCount == 2) {
            mIsPlaying = false;
            Stop();
        }
    }
}

void* SimpleWavePlayer::makeWaveProc(void* arg) {
    OSMessage msg;
    SimpleWavePlayer* self = (SimpleWavePlayer*)arg;
    while (true) {
        OSReceiveMessage(&self->mQueue, &msg, 1);
        if (msg == NULL) {
            break;
        }
        MakeWave(self, (nw4r::snd::WavePlayer::WavePacket*)msg, self);
    }
    return NULL;
}

bool SimpleWavePlayer::makeThread(s32 prio, void* stack, u32 stackSize) {
    OSInitMessageQueue(&mQueue, mQueueBuf, 8);
    bool wasCreated = OSCreateThread(&mThread, makeWaveProc, this, (u8*)stack + stackSize, stackSize, prio, 0);
    if (wasCreated) {
        OSResumeThread(&mThread);
        mThreadRunning = true;
    }
    return wasCreated == true;
}

void* SimpleWavePlayer::convertDSPAddr(void* addr, u32 offset, int mode) {
    void* out = 0;
    switch (mode) {
        case 0: {
            out = (void*)((u32)addr * 2 + offset % 14 + offset / 14 * 16 + 2);
            break;
        }
        case 25: {
            out = (void*)((u32)addr + offset);
            break;
        }
        case 10: {
            out = (void*)((u32)addr / 2 + offset);
            break;
        }
    }
    return out;
}

void FORCE_GEN_nw4r_ut_AutoInterruptLock() {
    nw4r::ut::AutoInterruptLock lock;
    nw4r::ut::AutoInterruptLock lock2;
}
