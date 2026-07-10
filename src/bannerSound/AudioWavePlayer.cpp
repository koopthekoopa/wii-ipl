#include "bannerSound/AudioWavePlayer.h"

#include <prim/eggAssert.h>

void SimpleWavePlayer::MakeWave(nw4r::snd::WavePlayer* player, nw4r::snd::WavePlayer::WavePacket* packet, void* _self) {
    SimpleWavePlayer* self = (SimpleWavePlayer*)_self;
    s16 samples[2];
    s16* waveBufs[2];
    waveBufs[0] = (s16*)packet->GetWaveBuffer().bufferAddress[0];
    waveBufs[1] = (s16*)packet->GetWaveBuffer().bufferAddress[1];

    u32 samplesToRead = packet->GetWaveBuffer().bufferSize / sizeof(s16);

    if (!self->pFile->isLoop()) {
        u32 frames = self->pFile->getFrames();
        int channels = self->pFile->getChannels();
        int dataOff = (u8*)self->pFile->getDataCur() - (u8*)self->pFile->getDataBase();

        int remaining = frames - dataOff / 2 / channels;
        if (samplesToRead > remaining) {
            samplesToRead = remaining;
        }
        if (remaining == 0) {
            self->mDataStarvedCount++;
        }
    } else {
        self->pFile->getDataBase();
        self->pFile->getDataCur();
        self->pFile->getChannels();
        self->pFile->getLoopEnd();
    }

    for (int sampleI = 0; sampleI < samplesToRead; sampleI++) {
        self->pFile->readData(samples, self->pFile->getChannels());

        for (int channelI = 0; channelI < self->pFile->getChannels(); channelI++) {
            waveBufs[channelI][sampleI] = samples[channelI];
        }
        self->mCurrSampleIdx++;

        if (self->pFile->isLoop() && self->mCurrSampleIdx >= self->pFile->getLoopEnd()) {
            self->mCurrSampleIdx = self->pFile->getLoopStart();
            self->pFile->setDataCur(self->mCurrSampleIdx * self->pFile->getChannels());
        }
    }

    for (int channelI = 0; channelI < self->pFile->getChannels(); channelI++) {
        DCFlushRange(waveBufs[channelI], samplesToRead * sizeof(s16));
    }
    if (self->mDataStarvedCount == 0) {
        player->AppendWavePacket(packet);
    }
}

void SimpleWavePlayer::wavePacketCallback(WavePacketCallbackStatus status, WavePlayer* player, WavePacket* packet, void* _self) {
    SimpleWavePlayer* self = (SimpleWavePlayer*)_self;

    if (status != WAVE_PACKET_CALLBACK_STATUS_FINISH)
        return;

    if (self->mThreadRunning != false) {
        OSSendMessage(&self->mQueue, packet, 0);
        return;
    }
    if (self->unk_0x0b5) {
        MakeWave(player, packet, self);
    }
}

SimpleWavePlayer::SimpleWavePlayer() {
    unk_0x0b5 = true;
    unk_0x0b0 = false;
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
    EGG_ASSERT(wavebufsize>=wsize, 0x6d);
    // clang-format on

    for (int i = 0; i < 3; i++) {
        mBuffers[i] = wavebuf + offset;
        offset += 0x400;
    }
    mIsSetBuf = 1;
    return;
}

bool SimpleWavePlayer::setWavData(void* buf, u32 bufSize) {
    EGG_ASSERT(mIsSetBuf, 0x7a);

    bool initRes = mWav.init(buf, bufSize);
    if (!initRes)
        return initRes;

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
                newWaveBuffer.bufferAddress[j] = mBuffers[i] + j * 0x800 / (mWav.getChannels() * 2);
            }
            newWaveBuffer.bufferSize = 0x800 / (mWav.getChannels() * 2) * 2;
            mWavePackets[i].SetWaveBuffer(newWaveBuffer);
        }
        pFile = &mWav;
        mIsSetData = true;
    }
    return setupRes;
}

bool SimpleWavePlayer::setAiffData(void* buf, u32 bufSize) {
    EGG_ASSERT(mIsSetBuf, 0x9c);

    bool initRes = mAiff.init(buf, bufSize);
    if (!initRes)
        return initRes;

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
                newWaveBuffer.bufferAddress[j] = mBuffers[i] + j * 0x800 / (mAiff.getChannels() * 2);
            }
            newWaveBuffer.bufferSize = 0x800 / (mAiff.getChannels() * 2) * 2;
            mWavePackets[i].SetWaveBuffer(newWaveBuffer);
        }
        pFile = &mAiff;
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
        if (!unk_0x0b5) {
            for (int i = 0; i < 3; i++) {
                if (mWavePackets[i].getAppendFlag())
                    continue;

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
        if (msg == NULL)
            break;
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

u32 AudioWavePlayer_8140D938(u32 a, u32 b, int mode) {
    u32 out = 0;
    switch (mode) {
        case 0:
            out = a * 2 + b % 14 + b / 14 * 16 + 2;
            break;
        case 25:
            out = a + b;
            break;
        case 10:
            out = a / 2 + b;
            break;
    }
    return out;
}

void FORCE_GEN_nw4r_ut_AutoInterrupLock() {
    nw4r::ut::AutoInterruptLock lock;
    nw4r::ut::AutoInterruptLock lock2;
}
