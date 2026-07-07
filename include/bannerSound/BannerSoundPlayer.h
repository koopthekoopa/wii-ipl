#ifndef BANNER_SOUND_PLAYER_H
#define BANNER_SOUND_PLAYER_H

#include <revolution/types.h>

#include "bannerSound/AudioWavePlayer.h"
#include "bannerSound/AxAdpcmPlayer.h"

// #include <nw4r/snd.h>

class SndMoveValueF32 {
public:
    SndMoveValueF32();

    void init() {
        mStepsLeft = 0;
        mVolumeScale = 1.0f;
    }

    void moveValue(f32 targetVal, u32 steps);
    bool update();

    u32 getStepsLeft() { return mStepsLeft; }
    f32 getVolumeScale() { return mVolumeScale; }

private:
    u32 mStepsLeft;    // 0x0
    f32 mFinalVal;     // 0x4
    f32 mVolumeScale;  // 0x8
    f32 mStepSize;     // 0xc
};

class BannerSoundPlayer {
public:
    enum SoundType {
        SOUND_TYPE_WAV = 0,
        SOUND_TYPE_AIFF = 1,
        SOUND_TYPE_ADPCM = 2,
        SOUND_TYPE_UNINIT = 3,
        SOUND_TYPE_UNSUPPORTED = 4,
    };
    BannerSoundPlayer();
    ~BannerSoundPlayer();

    void init(s32);
    BannerSoundPlayer::SoundType checkHeader(void* data, u32 length);
    bool checkData(void* data, u32 length, bool unk);

    void calc();

    void pause(bool flag);

    bool start(void* data, u32 dataLen);
    void stop(u32 fadeoutSteps);

    void setMasterVolume(f32 volume);

    int getUnk_0x00() const { return mIsStarted; }

private:
    bool mIsStarted;                   // 0x000
    bool mIsInitialized;               // 0x001
    SndMoveValueF32 mSndMoveValue;     // 0x004
    SoundType mSoundType;              // 0x014
    SimpleWavePlayer mWavePlayer;      // 0x018
    AxAdpcmSimplePlayer mAdpcmPlayer;  // 0x500
    AxAdpcmHandle mAdpcmHandle;        // 0x508
    u8 unk_0x510;                      // 0x510
    f32 mMasterVolume;                 // 0x514
};

#endif  // BANNER_SOUND_PLAYER_H
