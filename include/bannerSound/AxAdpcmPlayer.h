#ifndef AX_ADPCM_PLAYER_H
#define AX_ADPCM_PLAYER_H

#include <revolution/types.h>

#include <revolution/ax/AXPB.h>

#include <nw4r/snd/WavePlayer.h>

#include "bannerSound/AudioWaveUtility.h"

class VoiceInfo {
public:
    VoiceInfo() { initAXPBMIX(&mMix); }

    AXVPB* getAXVPB() { return mpVPB; }
    u32 getState() { return mState; }
    u32 getUnk_0x08() { return unk_0x08; }
    int getUnk_0x0C() { return unk_0x0C; }

    void setAXVPB(AXVPB* newVal) { mpVPB = newVal; }
    void setState(u32 newVal) { mState = newVal; }
    void setUnk_0x08(u32 newVal) { unk_0x08 = newVal; }
    void setUnk_0x0C(u32 newVal) { unk_0x0C = newVal; }

    AXPBMIX* getMix() { return &mMix; }

    static void initAXPBMIX(AXPBMIX* mix);

private:
    AXVPB* mpVPB;  // 0x00
    u32 mState;    // 0x04
    u32 unk_0x08;  // 0x08
    int unk_0x0C;  // 0x0c
    AXPBMIX mMix;  // 0x10
};

class AxAdpcmHandle {
public:
    AxAdpcmHandle() {
        mpVoices[0] = NULL;
        mpVoices[1] = NULL;
    }

    bool isPlaying() {
        if (mpVoices[0] == NULL)
            return false;
        return mpVoices[0]->getAXVPB() != 0;
    }

    bool setVolume(f32 newVolume);

    VoiceInfo* getVoice(u32 idx) { return mpVoices[idx]; }
    void setVoice(u32 idx, VoiceInfo* voice) { mpVoices[idx] = voice; }

private:
    VoiceInfo* mpVoices[2];
};

class AxAdpcmSimplePlayer {
public:
    AxAdpcmSimplePlayer() : mpBNSBuffer(NULL), mVolume(1.0f) {}
    ~AxAdpcmSimplePlayer() {}

    void init();
    bool checkFile(void* data, u32 length);

    void setVolume(AxAdpcmHandle* handle, f32 newVolume);
    int start(void* data, u32 length, AxAdpcmHandle* handle);
    void stop(AxAdpcmHandle* handle);
    BOOL pause(bool flag);

    void calc();

private:
    struct BlockInfo {
        u32 offset;  // 0x00
        u32 size;    // 0x04
    };

    struct BlockHead {
        u32 sig;   // 0x00
        u32 size;  // 0x04
    };

    struct INFOBlock {
        BlockHead head;          // 0x00
        u8 codec;                // 0x08
        u8 hasLoop;              // 0x09
        u8 channelCount;         // 0x0a
        u16 sampleRate;          // 0x0c
        u32 loopStart;           // 0x10
        u32 loopEnd;             // 0x14
        u32 offsToChannelStart;  // 0x18
    };
    struct ChannelInfo {
        u32 dataOff;   // 0x0
        u32 coeffOff;  // 0x4
    };

    struct ChannelConfig {
        u16 gain;           // 0x0
        u16 predScale;      // 0x2
        u16 yn1;            // 0x4
        u16 yn2;            // 0x6
        u16 loopPredScale;  // 0x8
        u16 loopYn1;        // 0xa
        u16 loopYn2;        // 0xc
        u16 loopPadding;    // 0xe
    };
    struct AdpcmCoeffs {
        u16 a[8][2];
        ChannelConfig cfg;
    };

    struct DATABlock {
        BlockHead head;  // 0x00
    };

    struct Header {
        u32 signature;  // 0x00
        u16 byteOrder;  // 0x04
        u16 version;    // 0x06

        u32 fileSize;    // 0x08
        u16 headerSize;  // 0x0C

        u16 dataBlocks;  // 0x0E

        BlockInfo infoHead;  // 0x10
        BlockInfo dataHead;  // 0x18
    };

    Header* mpBNSBuffer;  // 0x00
    f32 mVolume;          // 0x04

public:
    static bool sSysInit;
    static bool sSysPauseFlag;
    static bool sPlayingFlag;
    static AXOutCallback sCallback;
};

#endif  // AX_ADPCM_PLAYER_H
