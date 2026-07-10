#include "bannerSound/BannerSoundPlayer.h"

static u8 s_player_thread_stack[0x4000];
s16* pBSWaveBuffer = NULL;

BannerSoundPlayer::BannerSoundPlayer() : mSndMoveValue(), mWavePlayer(), mAdpcmPlayer(), mAdpcmHandle(), unk_0x510(0) {
    mIsInitialized = 0;
    mMasterVolume = 1.0f;
}

BannerSoundPlayer::~BannerSoundPlayer() {
    stop(0);
}

void BannerSoundPlayer::init(s32 prio) {
    mIsStarted = 0;
    mSoundType = SOUND_TYPE_UNINIT;
    if (prio >= 0) {
        mWavePlayer.makeThread(prio, s_player_thread_stack, 0x4000);
    }
    mWavePlayer.setBuffer(pBSWaveBuffer, SimpleWavePlayer::wsize);
    mAdpcmPlayer.init();
    mIsInitialized = 1;
}

BannerSoundPlayer::SoundType BannerSoundPlayer::checkHeader(void* data, u32 dataLen) {
    if (*(u32*)data == 'RIFF') {
        return SOUND_TYPE_WAV;
    }
    if (*(u32*)data == 'FORM') {
        return SOUND_TYPE_AIFF;
    }
    if (*(u32*)data == 'BNS ') {
        return SOUND_TYPE_ADPCM;
    }
    return SOUND_TYPE_UNSUPPORTED;
}

bool BannerSoundPlayer::checkData(void* data, u32 length, bool unk) {
    if (*(u32*)data == 'RIFF') {
        return mWavePlayer.getWav()->checkFile(data, length, unk);
    }
    if (*(u32*)data == 'FORM') {
        return mWavePlayer.getAiff()->checkFile(data, length, unk);
    }
    if (*(u32*)data == 'BNS ') {
        return mAdpcmPlayer.checkFile(data, length);
    }
    return false;
}

bool BannerSoundPlayer::start(void* data, u32 length) {
    bool startSuccess = 0;

    stop(0);
    mSoundType = checkHeader(data, length);
    mSndMoveValue.init();
    switch (mSoundType) {
        case SOUND_TYPE_WAV:
            mWavePlayer.setVolume(mMasterVolume);
            mWavePlayer.setWavData(data, length);
            startSuccess = mWavePlayer.start();
            break;
        case SOUND_TYPE_AIFF:
            mWavePlayer.setVolume(mMasterVolume);
            mWavePlayer.setAiffData(data, length);
            startSuccess = mWavePlayer.start();
            break;
        case SOUND_TYPE_ADPCM:
            mAdpcmPlayer.setVolume(&mAdpcmHandle, mMasterVolume);
            startSuccess = mAdpcmPlayer.start(data, length, &mAdpcmHandle) > 0;
            break;

        case SOUND_TYPE_UNSUPPORTED:
        default:
            break;
    }

    mIsStarted = startSuccess;
    return startSuccess;
}

void BannerSoundPlayer::stop(u32 fadeoutSteps) {
    if (mSoundType == SOUND_TYPE_UNSUPPORTED)
        return;
    if (mSoundType == SOUND_TYPE_UNINIT || !mIsStarted)
        return;

    if (fadeoutSteps == 0) {
        switch (mSoundType) {
            case SOUND_TYPE_WAV:
                mWavePlayer.stop();
                break;
            case SOUND_TYPE_AIFF:
                mWavePlayer.stop();
                break;
            case SOUND_TYPE_ADPCM:
                mAdpcmPlayer.stop(&mAdpcmHandle);
                break;
            default:
                break;
        }
        mIsStarted = false;
    } else {
        mSndMoveValue.moveValue(0.0f, fadeoutSteps);
    }
}

void BannerSoundPlayer::pause(bool flag) {
    if (mSoundType == SOUND_TYPE_UNSUPPORTED)
        return;
    if (mSoundType == SOUND_TYPE_UNINIT || !mIsStarted)
        return;

    switch (mSoundType) {
        case SOUND_TYPE_WAV:
            mWavePlayer.Pause(flag);
            break;
        case SOUND_TYPE_AIFF:
            mWavePlayer.Pause(flag);
            break;
        case SOUND_TYPE_ADPCM:
            mAdpcmPlayer.pause(flag);
            break;
        default:
            break;
    }
}

void BannerSoundPlayer::calc() {
    if (mSndMoveValue.update()) {
        if (mSndMoveValue.getStepsLeft() == 0) {
            stop(0);
        } else {
            switch (mSoundType) {
                case SOUND_TYPE_WAV:
                    mWavePlayer.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
                    break;
                case SOUND_TYPE_AIFF:
                    mWavePlayer.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
                    break;
                case SOUND_TYPE_ADPCM:
                    mAdpcmHandle.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
                    break;
                default:
                    break;
            }
        }
    }
    mAdpcmPlayer.calc();
    mWavePlayer.update();

    if (mIsStarted) {
        switch (mSoundType) {
            case SOUND_TYPE_WAV:
            case SOUND_TYPE_AIFF:
                mIsStarted = mWavePlayer.isPlaying();
                break;
            case SOUND_TYPE_ADPCM:
                mIsStarted = mAdpcmHandle.isPlaying();
                break;
            default:
                break;
        }
    }
}

void BannerSoundPlayer::setMasterVolume(f32 newVolume) {
    mMasterVolume = newVolume;
    switch (mSoundType) {
        case SOUND_TYPE_WAV:
            mWavePlayer.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
            break;
        case SOUND_TYPE_AIFF:
            mWavePlayer.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
            break;
        case SOUND_TYPE_ADPCM:
            mAdpcmHandle.setVolume(mSndMoveValue.getVolumeScale() * mMasterVolume);
            break;
        default:
            break;
    }
}

SndMoveValueF32::SndMoveValueF32() : mStepsLeft(0), mFinalVal(1.0f), mVolumeScale(1.0f), mStepSize(1.0f) {
}

void SndMoveValueF32::moveValue(f32 targetVal, u32 steps) {
    mFinalVal = targetVal;
    mStepsLeft = steps;
    if (steps == 0) {
        mVolumeScale = targetVal;
    } else {
        mStepSize = (mVolumeScale - targetVal) / steps;
    }
}

bool SndMoveValueF32::update() {
    if (mStepsLeft != 0) {
        if (--mStepsLeft != 0) {
            this->mVolumeScale -= this->mStepSize;
        } else {
            this->mVolumeScale = mFinalVal;
        }
        return true;
    }
    return false;
}
