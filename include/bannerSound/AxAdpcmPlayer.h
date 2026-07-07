#ifndef AX_ADPCM_PLAYER_H
#define AX_ADPCM_PLAYER_H

#include <revolution/types.h>

#include <revolution/ax/AXPB.h>

#include <nw4r/snd/WavePlayer.h>

#include "bannerSound/AudioWaveUtility.h"

class VoiceInfo {
public:
    u32 getUnk_x00() { return unk_0x00; }

private:
    u32 unk_0x00;  // 0x00
    u32 unk_0x04;  // 0x04
    u32 unk_0x08;  // 0x08
    u32 unk_0x0c;  // 0x0c
    AXPBMIX mMix;  // 0x10
};

class AxAdpcmHandle {
public:
    AxAdpcmHandle() {
        mVoices[0] = NULL;
        mVoices[1] = NULL;
    }

    bool isPlaying() {
        if (mVoices[0] == NULL)
            return false;
        return mVoices[0]->getUnk_x00() != 0;
    }

    void setVolume(f32 newVolume);

private:
    VoiceInfo* mVoices[2];
};

class AxAdpcmSimplePlayer {
public:
    AxAdpcmSimplePlayer() : unk_0x0(0), mVolume(1.0f) {}
    ~AxAdpcmSimplePlayer() {}

    void init();
    bool checkFile(void* data, u32 length);

    void setVolume(AxAdpcmHandle* handle, f32 newVolume);
    int start(void* data, u32 length, AxAdpcmHandle* handle);
    int stop(AxAdpcmHandle* handle);
    int pause(bool flag);

    void calc();

private:
    undefined4 unk_0x0;  // 0x0
    f32 mVolume;         // 0x4
};

#endif  // AX_ADPCM_PLAYER_H
