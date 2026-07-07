#ifndef AUDIO_WAVE_PLAYER_H
#define AUDIO_WAVE_PLAYER_H

#include <revolution/types.h>

#include <nw4r/snd/WavePlayer.h>

#include "bannerSound/AudioWaveUtility.h"

class SimpleWavePlayer : public nw4r::snd::WavePlayer {
public:
    SimpleWavePlayer();
    virtual ~SimpleWavePlayer();

    bool makeThread(s32 prio, void* stack, u32 stackSize);
    void setBuffer(s16* sampleBuf, u32 bufSize);

    bool start();
    void stop();
    void pause(bool flag);
    void update();

    void setWavData(void* data, u32 length);
    void setAiffData(void* data, u32 length);

    bool isPlaying() { return mIsPlaying; }
    WaveFileWav* getWav() { return &mWav; }
    WaveFileAiff* getAiff() { return &mAiff; }

private:
    undefined4 unk_0x09c;                               // 0x09c
    undefined4 unk_0x0a0;                               // 0x0a0
    undefined4 unk_0x0a4;                               // 0x0a4
    undefined4 unk_0x0a8;                               // 0x0a8
    undefined4 unk_0x0ac;                               // 0x0ac
    u8 unk_0x0b0;                                       // 0x0b0
    u8 unk_0x0b1;                                       // 0x0b1
    bool mIsPlaying;                                    // 0x0b2
    u8 unk_0x0b3;                                       // 0x0b3
    bool mThreadRunning;                                // 0x0b4
    u8 unk_0x0b5;                                       // 0x0b5
    WaveFileAiff mAiff;                                 // 0x0b8
    WaveFileWav mWav;                                   // 0x0e8
    WaveFile* pFile;                                    // 0x114
    nw4r::snd::WavePlayer::WavePacket mWavePackets[3];  // 0x118
    undefined4 mBuffers[3];                             // 0x178
    undefined4 unk_0x184;                               // 0x184
    undefined4 unk_0x188;                               // 0x188
    OSThread mThread;                                   // 0x190
    OSMessageQueue mQueue;                              // 0x4a8
    OSMessage mQueueBuf[8];                             // 0x4c8
};

#endif  // AUDIO_WAVE_PLAYER_H
