#ifndef AUDIO_WAVE_UTILITY_H
#define AUDIO_WAVE_UTILITY_H

#include <revolution/types.h>

class WaveFile {
public:
    virtual ~WaveFile() {}

    virtual u32 getBit() const;
    virtual u32 getChannels() const;
    virtual f32 getSamplingRate() const;
    virtual u32 getFrames() const;

    virtual void* getDataBase() const;
    virtual void* getDataCur() const;

    virtual bool isLoop() const;
    virtual u32 getLoopStart() const;
    virtual u32 getLoopEnd() const;

    virtual s32 readData(s16* samples, s32 numSamples);
    virtual void setDataCur(u32 sampleOffset);

private:
    undefined4 unk_0x4;  // 0x4
};

class WaveFileAiff : public WaveFile {
public:
    virtual ~WaveFileAiff() {}

    virtual u32 getBit() const override;
    virtual u32 getChannels() const override;
    virtual f32 getSamplingRate() const override;
    virtual u32 getFrames() const override;

    virtual void* getDataBase() const override;
    virtual void* getDataCur() const override;

    virtual bool isLoop() const override;
    virtual u32 getLoopStart() const override;
    virtual u32 getLoopEnd() const override;

    virtual s32 readData(s16* samples, s32 numSamples) override;
    virtual void setDataCur(u32 sampleOffset) override;

    bool checkFile(const void* data, u32 length, bool unk);

private:
    u32 mBits;          // 0x08
    u32 mNumChans;      // 0x0c
    f64 mSamplingRate;  // 0x10
    u32 mNumSamples;    // 0x18
    bool mIsLoop;       // 0x1c
    u32 mLoopStart;     // 0x20
    u32 mLoopEnd;       // 0x24
    void* pDataBase;    // 0x28
    void* pDataCur;     // 0x2c
};

class WaveFileWav : public WaveFile {
public:
    virtual ~WaveFileWav() {}

    virtual u32 getBit() const override;
    virtual u32 getChannels() const override;
    virtual f32 getSamplingRate() const override;
    virtual u32 getFrames() const override;

    virtual void* getDataBase() const override;
    virtual void* getDataCur() const override;

    virtual bool isLoop() const override;
    virtual u32 getLoopStart() const override;
    virtual u32 getLoopEnd() const override;

    virtual s32 readData(s16* samples, s32 numSamples) override;
    virtual void setDataCur(u32 sampleOffset) override;

    bool checkFile(const void* data, u32 length, bool unk);

private:
    u32 mBits;          // 0x08
    u32 mNumChans;      // 0x0c
    u32 mSamplingRate;  // 0x10
    u32 mNumSamples;    // 0x14
    bool mIsLoop;       // 0x18
    u32 mLoopStart;     // 0x1c
    u32 mLoopEnd;       // 0x20
    void* pDataBase;    // 0x24
    void* pDataCur;     // 0x28
};

#endif  // AUDIO_WAVE_UTILITY_H
