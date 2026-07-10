#ifndef AX_ADPCM_PLAYER_H
#define AX_ADPCM_PLAYER_H

#include <revolution/types.h>

#include <revolution/ax/AXPB.h>

#include <nw4r/snd/WavePlayer.h>

#include "bannerSound/AudioWaveUtility.h"

class VoiceInfo {
public:
    VoiceInfo() { initAXPBMIX(&mMix); }

    AXVPB* getAXVPB() { return mAxVPB; }
    u32 getState() { return mState; }
    u32 getUnk_x08() { return unk_0x08; }
    int getUnk_x0c() { return unk_0x0c; }

    void setAXVPB(AXVPB* newVal) { mAxVPB = newVal; }
    void setState(u32 newVal) { mState = newVal; }
    void setUnk_x08(u32 newVal) { unk_0x08 = newVal; }
    void setUnk_x0c(u32 newVal) { unk_0x0c = newVal; }

    AXPBMIX* getMix() { return &mMix; }

    static void initAXPBMIX(AXPBMIX* mix);

private:
    AXVPB* mAxVPB;  // 0x00
    u32 mState;     // 0x04
    u32 unk_0x08;   // 0x08
    int unk_0x0c;   // 0x0c
    AXPBMIX mMix;   // 0x10
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
        return mVoices[0]->getAXVPB() != 0;
    }

    bool setVolume(f32 newVolume);

    VoiceInfo* getVoice(u32 idx) { return mVoices[idx]; }
    void setVoice(u32 idx, VoiceInfo* voice) { mVoices[idx] = voice; }

private:
    VoiceInfo* mVoices[2];
};

class AxAdpcmSimplePlayer {
public:
    AxAdpcmSimplePlayer() : pBnsData(NULL), mVolume(1.0f) {}
    ~AxAdpcmSimplePlayer() {}

    void init();
    bool checkFile(void* data, u32 length);

    void setVolume(AxAdpcmHandle* handle, f32 newVolume);
    int start(void* data, u32 length, AxAdpcmHandle* handle);
    void stop(AxAdpcmHandle* handle);
    int pause(bool flag);

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
        u32 chanStart;   // 0x0
        u32 coeffStart;  // 0x4
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

    // AXPBADPCM axAdpcm;
    // AXPBSRC axSrc;
    // AXPBADDR axAddr;
    // AXVPB* axVoiceBuf[2];
    // AXPBADPCMLOOP axAdpcmLoop;
    int setupChannels(Header* head, u32 length, AxAdpcmHandle* handle, AXPBADPCM* axAdpcm, AXPBSRC* axSrc, AXPBADDR* axAddr, AXVPB** axVoiceBuf,
                      AXPBADPCMLOOP* axLoop);

    void* pBnsData;  // 0x0
    f32 mVolume;     // 0x4

public:
    static bool sSysInit;
    static bool sSysPauseFlag;
    static bool sPlayingFlag;
    static AXOutCallback sCallback;
};

#endif  // AX_ADPCM_PLAYER_H
