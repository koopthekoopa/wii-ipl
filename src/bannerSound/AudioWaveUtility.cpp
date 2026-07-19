#include "bannerSound/AudioWaveUtility.h"

#include <revolution/types.h>

#include <math.h>

#include <prim/eggAssert.h>

/* For AIFF */

class BinaryReader {
public:
    BinaryReader(u8* ptr) : mpBase(ptr) { mpRead.p8 = ptr; }

    void align(u32 alignBytes);
    BOOL seekChunk(u32 signature, const void* area);

    u8* getBase() { return mpBase; }
    u8* getRead() { return mpRead.p8; }

    void seekTo(u32 off) { mpRead.p8 = mpBase + off; }
    void advance(u32 by) { mpRead.uint32 += by; }
    u32 getOffset() { return mpRead.p8 - mpBase; }

    u32 peek32() { return *mpRead.p32; }
    u32 read32() {
        u32* u32Ptr = mpRead.p32;
        mpRead.p32++;
        return *u32Ptr;
    }
    u16 peek16() { return *mpRead.p16; }
    u16 read16() {
        u16* u16Ptr = mpRead.p16;
        mpRead.p16++;
        return *u16Ptr;
    }
    u8 read8() {
        u8* u8Ptr = mpRead.p8;
        mpRead.p8++;
        return *u8Ptr;
    }

    u32 peekTag() { return *mpRead.p32; }
    u32 readTag() { return *mpRead.p32++; }
    u32 read32A() {
        void* u32Ptr = mpRead.p8;
        mpRead.uint32 += 4;
        return *(u32*)u32Ptr;
    }

protected:
    u8* mpBase;  // 0x00
    union {
        u8* p8;
        u16* p16;
        u32* p32;
        u32 uint32;
    } mpRead;  // 0x04
};

void BinaryReader::align(u32 alignBytes) {
    mpRead.p8 = (u8*)PTR_ROUNDUP(mpRead.p8, alignBytes);
}

BOOL BinaryReader::seekChunk(u32 signature, const void* area) {
    while (mpRead.p8 < area) {
        u32 readSig = readTag();
        u32 readSize = read32();

        if (readSig == signature) {
            return TRUE;
        }

        mpRead.uint32 = (u32)mpBase + readSize + getOffset();

        align(2);
    }

    return FALSE;
}

/* For WAV */

class BinaryReaderLittleEndian {
public:
    BinaryReaderLittleEndian(u8* ptr) : mpBase(ptr) { mpRead.p8 = ptr; }
    void setBase(u8* ptr) { mpBase = ptr; }
    void setRead(u8* ptr) { mpRead.p8 = ptr; }

    u8* getBase() { return mpBase; }
    u8* getRead() { return mpRead.p8; }

    void align(u32 alignBytes);
    BOOL seekChunk(u32 signature, const void* area);

    void seekTo(u32 off) { mpRead.p8 = mpBase + off; }
    void advance(u32 by) { mpRead.uint32 += by; }
    u32 getOffset() { return mpRead.p8 - mpBase; }

    u32 read32() {
        u32 value = 0;
        value |= *mpRead.p8++ << 0x00;
        value |= *mpRead.p8++ << 0x08;
        value |= *mpRead.p8++ << 0x10;
        value |= *mpRead.p8++ << 0x18;
        return value;
    }
    u16 read16() {
        u16 value = 0;
        value |= *mpRead.p8++ << 0x00;
        value |= *mpRead.p8++ << 0x08;
        return value;
    }

    u32 peekTag() { return *mpRead.p32; }
    u32 readTag() { return *mpRead.p32++; }

protected:
    u8* mpBase;  // 0x00
    union {
        u8* p8;
        u16* p16;
        u32* p32;
        u32 uint32;
    } mpRead;  // 0x04
};

void BinaryReaderLittleEndian::align(u32 alignBytes) {
    mpRead.p8 = (u8*)PTR_ROUNDUP(mpRead.p8, alignBytes);
}

BOOL BinaryReaderLittleEndian::seekChunk(u32 signature, const void* area) {
    while (mpRead.p8 < area) {
        u32 readSig = readTag();
        u32 readSize = read32();

        if (readSig == signature) {
            return TRUE;
        }

        mpRead.uint32 = (u32)mpBase + readSize + getOffset();

        align(2);
    }

    return FALSE;
}

/* JAudio function from JASCalc. */
/* (From zeldaret/tp) */
f32 pow2(f32 x) {
    s32 frac_index = 0;
    union {
        s32 l;
        f32 f;
    } exponent;
    exponent.l = (x >= 0.0f ? (s32)(x - 0.5f) : (s32)(x + 0.5f));  // Shift towards 0 and round
    f32 pannedval = x - exponent.l;                                // strictly between 1.5 and -1.5

    // 2^x will not fit in an IEEE-754 float
    if (exponent.l > 128) {
        return HUGE_VALF;
    }

    // convert to exponent of IEEE-754 float
    exponent.l += 127;
    exponent.l <<= 23;

    // Calculate the mantissa

    static const f32 scale_frac[] = {0.0f, 0.5f};
    // { 1 , 1/sqrt2 }
    static const f32 two_to_frac[] = {1.0f, 0.70710677f};
    // coefficients of Taylor polynomial of 2^x - 1 at 0:
    // 2^x - 1 = (log2) * x + (log2)^2 / 2! * x^2 + ...
    static const f32 __two_to_x[] = {0.6931472f, 0.24022661, 0.055502914f, 0.009625022f, 0.0013131053f, 1.8300806E-4f};

    if (pannedval < 0.0f) {
        frac_index += 1;
    }

    f32 ret = pannedval + scale_frac[frac_index];

    // Evaluate Taylor polynomial using Horner's method
    ret = ret * (ret * (ret * (ret * (ret * (ret * __two_to_x[5] + __two_to_x[4]) + __two_to_x[3]) + __two_to_x[2]) + __two_to_x[1]) + __two_to_x[0]);
    // 2^n * (corrected mantissa)
    ret = exponent.f * (0.75f * two_to_frac[frac_index] + ((0.25f + ret) * two_to_frac[frac_index]));

    return ret;
}

WaveFileAiff::WaveFileAiff() {
    pDataBase = NULL;
    pDataCur = NULL;
}

bool WaveFileAiff::init(const void* dataOffset, u32 dataLen) {
    BinaryReader reader((u8*)dataOffset);

    u32 chunkID = reader.readTag();
    EGG_ASSERT(chunkID == 'FORM', 0xd6);
    if (chunkID != 'FORM')
        return false;

    u32 fileSize = reader.read32();
    u32 format = reader.readTag();

    u16 markerIdBegin, markerIdEnd;
    u8* fileEnd = (u8*)dataOffset + fileSize;

    EGG_ASSERT(format == 'AIFF', 0xdd);
    if (format != 'AIFF')
        return false;

    u32 offsetAfterHdr = reader.getOffset();

    BOOL ret = reader.seekChunk('COMM', fileEnd);
    EGG_ASSERT(ret, 0xe4);
    if (!ret)
        return false;

    mNumChans = reader.read16();
    mFrames = reader.read32();
    mBits = reader.read16();
    EGG_ASSERT(mBits == 16, 0xef);
    if (mBits != 16)
        return false;

    // Why did Apple choose an 80-bit float for this?
    // If it was a 64-bit floating point number, it literally would've taken the
    // age of the universe before it would be off by 1% of a second.
    u16 f80_1st = reader.read16();
    u32 f80_2nd = reader.read32();
    u32 f80_3rd = reader.read32();
    mSamplingRate = decodeIeeeExtended(f80_1st, f80_2nd, f80_3rd);

    reader.seekTo(offsetAfterHdr);
    if (reader.seekChunk('INST', fileEnd)) {
        reader.seekTo(reader.getOffset() + 8);

        u16 loopMode = reader.read16();
        markerIdBegin = reader.read16();
        markerIdEnd = reader.read16();

        switch (loopMode) {
            case 0:  // No looping
                mIsLoop = false;
                break;

            case 1: {  // Forward looping
                mIsLoop = true;

                reader.seekTo(offsetAfterHdr);
                ret = reader.seekChunk('MARK', fileEnd);
                EGG_ASSERT(ret, 0x10c);

                int markerCount = reader.read16();
                // reader.advance(2);
                for (int i = 0; i < markerCount; i++) {
                    int markerId = reader.read16();
                    // reader.advance(2);
                    u32 position = reader.read32();
                    // reader.advance(6);
                    u8 pstringLen = reader.read8();
                    if (markerId == markerIdBegin) {
                        mLoopStart = position;
                    } else if (markerId == markerIdEnd) {
                        mLoopEnd = position;
                    }
                    reader.advance(pstringLen);
                    reader.align(2);
                }
                break;
            }

            case 2:  // Forward backward looping
            default:
                // reader.advance(0xe);
                system_print(true, __FILE__, "Unsupported LoopMode %d", loopMode);
                mIsLoop = false;
                break;
        }
    } else {
        mIsLoop = false;
    }

    reader.seekTo(offsetAfterHdr);
    ret = reader.seekChunk('SSND', fileEnd);
    EGG_ASSERT(ret, 0x130);

    dataOffset = (void*)reader.read32();
    u32 dataBlockSize = reader.read32();

    EGG_ASSERT(dataOffset == 0, 0x134);
    EGG_ASSERT(dataBlockSize == 0, 0x135);
    if (dataOffset != 0)
        return false;
    if (dataBlockSize != 0)
        return false;

    pDataCur = (s16*)reader.getRead();
    pDataBase = pDataCur;

    return true;
}

bool WaveFileAiff::checkFile(const void* _data, u32 _dataLen, bool ignoreSize) {
    u32 chunkID;
    u32 fileSize;
    u16 markerIdBegin, markerIdEnd;
    u8* fileEnd;
    u32 format;
    u32 offsetAfterHdr;
    BOOL ret;
    u16 loopMode;
    int i;

    u32 dataLen = *(u32*)&_dataLen;
    const u8* data = (u8*)_data;
    WaveFileAiff* self = reinterpret_cast<WaveFileAiff*>((void*)this);

    int markerCount;

    BinaryReader reader((u8*)data);

    chunkID = reader.readTag();
    if (chunkID != 'FORM')
        return false;

    fileSize = reader.read32();
    if (!ignoreSize && ROUNDUP(fileSize + 8, 0x20) != ROUNDUP(dataLen, 0x20))
        return false;

    format = reader.readTag();
    fileEnd = (u8*)data + fileSize;
    if (format != 'AIFF')
        return false;

    offsetAfterHdr = reader.getOffset();

    ret = reader.seekChunk('COMM', fileEnd);
    if (!ret)
        return false;

    self->mNumChans = reader.read16();

    // Either 1 or 2 channels
    if (self->mNumChans == 0)
        return false;
    if (self->mNumChans > 2)
        return false;

    self->mFrames = reader.read32();
    self->mBits = reader.read16();
    if (self->mBits != 16)
        return false;

    // Why did apple choose an 80-bit float for this?
    // If it was a 64-bit floating point number, it literally would've taken the
    // age of the universe before it would be off by .01 seconds. (worst case)
    u16 f80_signExpon = reader.read16();
    u32 f80_mantissaHi = reader.read32();
    u32 f80_mantissaLo = reader.read32();
    self->mSamplingRate = self->decodeIeeeExtended(f80_signExpon, f80_mantissaHi, f80_mantissaLo);

    // Sampling rate between 4000hz and 48khz
    if (self->mSamplingRate > 48000 || self->mSamplingRate < 4000)
        return false;

    reader.seekTo(offsetAfterHdr);
    if (reader.seekChunk('INST', fileEnd)) {
        reader.seekTo(reader.getOffset() + 8);

        loopMode = reader.read16();
        markerIdBegin = reader.read16();
        markerIdEnd = reader.read16();

        switch (loopMode) {
            case 0:  // No looping
                self->mIsLoop = false;
                break;

            case 1: {  // Forward looping
                self->mIsLoop = true;

                reader.seekTo(offsetAfterHdr);
                ret = reader.seekChunk('MARK', fileEnd);
                EGG_ASSERT(ret, 0x180);

                for (i = 0, markerCount = reader.read16(); i < markerCount; i++) {
                    int markerId = reader.read16();
                    u32 position = reader.read32();
                    u8 pstringLen = reader.read8();
                    if (markerId == markerIdBegin) {
                        self->mLoopStart = position;
                    } else if (markerId == markerIdEnd) {
                        self->mLoopEnd = position;
                    }
                    reader.advance(pstringLen);
                    reader.align(2);
                }
                break;
            }

            case 2:  // Forward backward looping
            default:
                // reader.advance(0xe);
                system_print(true, __FILE__, "Unsupported LoopMode %d", loopMode);
                self->mIsLoop = false;
                break;
        }
    } else {
        self->mIsLoop = false;
    }

    reader.seekTo(offsetAfterHdr);
    ret = reader.seekChunk('SSND', fileEnd);
    if (!ret)
        return false;

    u32 dataOffset = reader.read32();
    u32 dataBlockSize = reader.read32();

    EGG_ASSERT(dataOffset == 0, 0x1a8);
    EGG_ASSERT(dataBlockSize == 0, 0x1a9);
    if (dataOffset != 0)
        return false;
    if (dataBlockSize != 0)
        return false;

    self->pDataCur = (s16*)reader.getRead();
    self->pDataBase = self->pDataCur;

    if ((dataLen - ((u8*)self->pDataCur - (u8*)data)) / (self->mNumChans * 2) < self->mFrames)
        return false;

    if (self->mIsLoop != false) {
        // Loop start must be before end, start must be before end of data, end must
        // be at or before end of data
        if (self->mLoopStart >= self->mLoopEnd)
            return false;
        if (self->mLoopStart >= self->mFrames)
            return false;
        if (self->mLoopEnd > self->mFrames)
            return false;
    }

    return true;
}

static void memcpy_a(void* _dest, void* _src, u32 size) {
    u8* src = (u8*)_src;
    u32 srcAlign, destAlign;
    srcAlign = reinterpret_cast<u32>(src) & 3;
    destAlign = reinterpret_cast<u32>(_dest) & 3;
    if (srcAlign == destAlign && (size & 0x0f) == 0) {
        u8* dest = (u8*)_dest;
        EGG_ASSERT((reinterpret_cast<u32>(src) & 0x03) == 0, 0x46);
        EGG_ASSERT((reinterpret_cast<u32>(dest) & 0x03) == 0, 0x47);
        EGG_ASSERT((size & 0x0f) == 0, 0x48);

        u32* src32 = (u32*)src;
        u32* dest32 = (u32*)dest;
        for (int steps = size / 16; steps != 0; steps--) {
            u32 w3, w2, w1, w0;
            w0 = src32[0];
            w1 = src32[1];
            w2 = src32[2];
            w3 = src32[3];
            src32 += 4;

            dest32[0] = w0;
            dest32[1] = w1;
            dest32[2] = w2;
            dest32[3] = w3;
            dest32 += 4;
        }
    } else if (srcAlign == destAlign && size >= 0x10) {
        u8* dest = (u8*)_dest;
        if ((reinterpret_cast<u32>(src) & 0x03) != 0) {
            for (u8 steps = 4 - (reinterpret_cast<u32>(src) & 3); steps != 0; steps--) {
                size--;
                u8 b = *src++;
                *dest = b;
                dest++;
            }
        }

        for (; size >= 4; size -= 4) {
            u32 w = *(u32*)src;
            src += 4;

            *(u32*)dest = w;
            dest += 4;
        }
        // }
        if (size != 0) {
            for (; size != 0; size--) {
                u8 b = *src++;
                *dest = b;
                dest++;
            }
        }
    } else {
        u8* dest = (u8*)_dest;
        for (; size != 0; size--) {
            u8 b = *src++;
            *dest = b;
            dest++;
        }
    }
}

s32 WaveFileAiff::readData(s16* dataOut, s32 numSamples) {
    if (pDataCur == NULL)
        return 0;

    u32 offset = pDataCur - pDataBase;
    s32 remainingSamples = mFrames * mNumChans - offset;
    if (numSamples > remainingSamples) {
        numSamples = remainingSamples;
    }

    memcpy_a(dataOut, pDataCur, numSamples << 1);

    pDataCur += numSamples;
    return numSamples;
}

f64 WaveFileAiff::decodeIeeeExtended(u16 signExpon, u32 mantissaHi, u32 mantissaLo) {
    double val;
    int expon;

    expon = signExpon & 0x7FFF;

    // Handle Zero
    if (expon == 0 && mantissaHi == 0 && mantissaLo == 0) {
        val = 0.0;
    } else {
        // Assert not infinity or NaN
        EGG_ASSERT(expon != 0x7FFF, 0x1d5);

        // Combine mantissas
        int power = expon - 16414;
        val = mantissaHi * pow2(power);
        val += mantissaLo * pow2(power - 32);
    }
    return (signExpon & 0x8000) != 0 ? -val : val;
}

WaveFileWav::WaveFileWav() {
    pDataBase = NULL;
    pDataCur = NULL;
}

bool WaveFileWav::init(const void* data, u32 dataLen) {
    BinaryReaderLittleEndian reader((u8*)data);

    u32 riffTag = reader.peekTag();
    reader.advance(4);
    if (riffTag != 'RIFF')
        return false;

    u32 fileSize = reader.read32();
    u8* fileEnd = (u8*)data + fileSize;

    if (reader.readTag() != 'WAVE')
        return false;

    u32 offsetAfterRiffChunk = reader.getOffset();

    if (reader.seekChunk('fmt ', fileEnd) == FALSE) {
        return false;
    }

    u16 audioFmt = reader.read16();
    mNumChans = reader.read16();
    mSamplingRate = reader.read32();

    reader.seekTo(reader.getOffset() + 6);

    mBits = reader.read16();

    if (audioFmt != 1)
        return false;
    if (mBits != 16)
        return false;

    reader.seekTo(offsetAfterRiffChunk);
    if (reader.seekChunk('smpl', fileEnd)) {
        reader.seekTo(reader.getOffset() + 0x1c);
        // reader.advance(0x1c);

        // sample_loop_count
        if (reader.read32() > 0) {
            mIsLoop = true;
            reader.seekTo(reader.getOffset() + 0xc);
            mLoopStart = reader.read32();
            mLoopEnd = reader.read32() + 1;
        } else {
            mIsLoop = false;
        }
    } else {
        mIsLoop = false;
    }

    reader.seekTo(offsetAfterRiffChunk);
    if (reader.seekChunk('data', fileEnd) == FALSE)
        return false;

    reader.seekTo(reader.getOffset() - 4);

    u32 dataSize = reader.read32();
    mFrames = dataSize / mNumChans / (mBits / 8);

    pDataCur = (s16*)reader.getRead();
    pDataBase = pDataCur;

    return true;
}

bool WaveFileWav::checkFile(const void* data, u32 dataLen, bool ignoreSize) {
    BinaryReaderLittleEndian reader((u8*)data);

    if (reader.readTag() != 'RIFF')
        return false;

    u32 fileSize = reader.read32();
    if (!ignoreSize && ROUNDUP(fileSize + 8, 0x20) != ROUNDUP(dataLen, 0x20))
        return false;

    u8* fileEnd = (u8*)data + fileSize;

    if (reader.readTag() != 'WAVE')
        return false;

    u32 offsetAfterRiffChunk = reader.getOffset();

    if (reader.seekChunk('fmt ', fileEnd) == FALSE) {
        return false;
    }

    u16 audioFmt = reader.read16();
    mNumChans = reader.read16();
    mSamplingRate = reader.read32();

    reader.seekTo(reader.getOffset() + 6);

    mBits = reader.read16();

    // Audio format as PCM only (no floats)
    if (audioFmt != 1)
        return false;

    // Either 1 or 2 channels
    if (mNumChans == 0)
        return false;
    if (mNumChans > 2)
        return false;

    // Sampling rate between 4000hz and 48khz
    if (mSamplingRate > 48000 || mSamplingRate < 4000) {
        return false;
    }

    // 16-bit bit depth only
    if (mBits != 16)
        return false;

    reader.seekTo(offsetAfterRiffChunk);
    if (reader.seekChunk('smpl', fileEnd)) {
        reader.seekTo(reader.getOffset() + 0x1c);
        // reader.advance(0x1c);

        // sample_loop_count
        if (reader.read32() > 0) {
            mIsLoop = true;
            reader.seekTo(reader.getOffset() + 0xc);
            mLoopStart = reader.read32();
            mLoopEnd = reader.read32() + 1;
        } else {
            mIsLoop = false;
        }
    } else {
        mIsLoop = false;
    }

    reader.seekTo(offsetAfterRiffChunk);
    if (reader.seekChunk('data', fileEnd) == FALSE)
        return false;

    reader.seekTo(reader.getOffset() - 4);

    u32 dataSize = reader.read32();
    mFrames = dataSize / mNumChans / (mBits / 8);

    pDataCur = (s16*)reader.getRead();
    pDataBase = pDataCur;

    if ((dataLen - ((u8*)pDataCur - (u8*)data)) / (mNumChans * 2) < mFrames)
        return false;

    // Loop start must be before end, start must be before end of data, end must
    // be at or before end of data
    if (mIsLoop != false) {
        if (mLoopStart >= mLoopEnd)
            return false;
        if (mLoopStart >= mFrames)
            return false;
        if (mLoopEnd > mFrames)
            return false;
    }

    return true;
}

s32 WaveFileWav::readData(s16* dataOut, s32 numSamples) {
    if (pDataCur == NULL)
        return 0;

    u32 offset = pDataCur - pDataBase;
    s32 remainingSamples = mFrames * mNumChans - offset;
    if (numSamples > remainingSamples) {
        numSamples = remainingSamples;
    }

    for (s32 i = 0; i < numSamples; i++) {
        u16 sample = *pDataCur;
        *dataOut++ = (u16)(sample << 8) | (sample >> 8);
        pDataCur++;
    }
    return numSamples;
}

s32 WaveFileWav::getLoopEnd() const {
    return mIsLoop ? mLoopEnd : -1;
}
s32 WaveFileWav::getLoopStart() const {
    return mIsLoop ? mLoopStart : -1;
}
bool WaveFileWav::isLoop() const {
    return mIsLoop;
}
void WaveFileWav::setDataCur(u32 sampleOffset) {
    pDataCur = pDataBase + sampleOffset;
}
void* WaveFileWav::getDataCur() const {
    return pDataCur;
}
void* WaveFileWav::getDataBase() const {
    return pDataBase;
}
s32 WaveFileWav::getFrames() const {
    return mFrames;
}
u32 WaveFileWav::getBit() const {
    return mBits;
}

s32 WaveFileAiff::getLoopEnd() const {
    return mIsLoop ? mLoopEnd : -1;
}
s32 WaveFileAiff::getLoopStart() const {
    return mIsLoop ? mLoopStart : -1;
}
bool WaveFileAiff::isLoop() const {
    return mIsLoop;
}
void WaveFileAiff::setDataCur(u32 sampleOffset) {
    pDataCur = pDataBase + sampleOffset;
}
void* WaveFileAiff::getDataCur() const {
    return pDataCur;
}
void* WaveFileAiff::getDataBase() const {
    return pDataBase;
}
s32 WaveFileAiff::getFrames() const {
    return mFrames;
}
u32 WaveFileAiff::getBit() const {
    return mBits;
}
