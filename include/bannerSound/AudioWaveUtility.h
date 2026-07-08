#ifndef AUDIO_WAVE_UTILITY_H
#define AUDIO_WAVE_UTILITY_H

#include <revolution/types.h>

class WaveFile {
public:
    virtual ~WaveFile() {}

    virtual u32 getBit() const;
    virtual int getChannels() const;
    virtual f64 getSamplingRate() const;
    virtual s32 getFrames() const;

    virtual void* getDataBase() const;
    virtual void* getDataCur() const;

    virtual bool isLoop() const;
    virtual s32 getLoopStart() const;
    virtual s32 getLoopEnd() const;

    virtual s32 readData(s16* samples, s32 numSamples);
    virtual void setDataCur(u32 sampleOffset);

private:
    undefined4 unk_0x4;  // 0x4
};

class WaveFileAiff : public WaveFile {
public:
    WaveFileAiff();
    virtual ~WaveFileAiff() {}

    virtual u32 getBit() const override;
    virtual int getChannels() const override { return mNumChans; }
    virtual f64 getSamplingRate() const override { return mSamplingRate; }
    virtual s32 getFrames() const override;

    virtual void* getDataBase() const override;
    virtual void* getDataCur() const override;

    virtual bool isLoop() const override;
    virtual s32 getLoopStart() const override;
    virtual s32 getLoopEnd() const override;

    virtual s32 readData(s16* samples, s32 numSamples) override;
    virtual void setDataCur(u32 sampleOffset) override;

    bool checkFile(const void* data, u32 length, bool unk);
    bool init(const void* data, u32 length);

private:
    f64 decodeIeeeExtended(u16, u32, u32);

    int mBits;          // 0x08
    int mNumChans;      // 0x0c
    f64 mSamplingRate;  // 0x10
    s32 mFrames;        // 0x18
    bool mIsLoop;       // 0x1c
    s32 mLoopStart;     // 0x20
    s32 mLoopEnd;       // 0x24
    s16* pDataBase;     // 0x28
    s16* pDataCur;      // 0x2c
};

class WaveFileWav : public WaveFile {
public:
    WaveFileWav();
    virtual ~WaveFileWav() {}

    virtual u32 getBit() const override;
    virtual int getChannels() const override { return mNumChans; }
    virtual f64 getSamplingRate() const override { return mSamplingRate; }
    virtual s32 getFrames() const override;

    virtual void* getDataBase() const override;
    virtual void* getDataCur() const override;

    virtual bool isLoop() const override;
    virtual s32 getLoopStart() const override;
    virtual s32 getLoopEnd() const override;

    virtual s32 readData(s16* samples, s32 numSamples) override;
    virtual void setDataCur(u32 sampleOffset) override;

    bool checkFile(const void* data, u32 length, bool unk);
    bool init(const void* data, u32 length);

private:
    int mBits;          // 0x08
    int mNumChans;      // 0x0c
    u32 mSamplingRate;  // 0x10
    s32 mFrames;        // 0x14
    bool mIsLoop;       // 0x18
    s32 mLoopStart;     // 0x1c
    s32 mLoopEnd;       // 0x20
    s16* pDataBase;     // 0x24
    s16* pDataCur;      // 0x28
};

#endif  // AUDIO_WAVE_UTILITY_H
