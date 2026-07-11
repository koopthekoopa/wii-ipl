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
    void setBuffer(s16* wavebuf, u32 wavebufsize);

    bool start();
    void stop();
    void pause(bool flag);
    void update();

    bool setWavData(void* data, u32 length);
    bool setAiffData(void* data, u32 length);

    bool isPlaying() { return mIsPlaying; }
    WaveFileWav* getWav() { return &mWav; }
    WaveFileAiff* getAiff() { return &mAiff; }

    static void* convertDSPAddr(void* addr, u32 offset, int mode);

    static const u32 wsize = 0x3000;

private:
    static void MakeWave(nw4r::snd::WavePlayer* player, nw4r::snd::WavePlayer::WavePacket* packet, void* self);
    static void wavePacketCallback(WavePacketCallbackStatus, WavePlayer*, WavePacket*, void*);
    static void* makeWaveProc(void*);

private:
    SetupParam mSetupParam;                             // 0x09c
    bool unk_0x0b0;                                     // 0x0b0
    bool mIsSetData;                                    // 0x0b1
    bool mIsPlaying;                                    // 0x0b2
    bool mIsSetBuf;                                     // 0x0b3
    bool mThreadRunning;                                // 0x0b4
    bool unk_0x0b5;                                     // 0x0b5
    WaveFileAiff mAiff;                                 // 0x0b8
    WaveFileWav mWav;                                   // 0x0e8
    WaveFile* pFile;                                    // 0x114
    nw4r::snd::WavePlayer::WavePacket mWavePackets[3];  // 0x118
    s16* mBuffers[3];                                   // 0x178
    u32 mCurrSampleIdx;                                 // 0x184
    undefined4 mDataStarvedCount;                       // 0x188
    OSThread mThread;                                   // 0x190
    OSMessageQueue mQueue;                              // 0x4a8
    OSMessage mQueueBuf[8];                             // 0x4c8
};

// extern "C" {
// void* AudioWavePlayer_8140D938(void* a, u32 b, int mode);
// }

#endif  // AUDIO_WAVE_PLAYER_H
