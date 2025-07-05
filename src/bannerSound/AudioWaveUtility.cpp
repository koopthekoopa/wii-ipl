#include <revolution/types.h>

#include <math.h>

/* For AIFF */

class BinaryReader {
    public:
        void    align(u32 alignBytes);
        BOOL    seekChunk(u32 signature, const void* area);

    protected:
        int unk_0x00;
        u8* mpRead;     // 0x04
};

void BinaryReader::align(u32 alignBytes) {
    mpRead = (u8*)PTR_ROUNDUP(mpRead, alignBytes);
}

BOOL BinaryReader::seekChunk(u32 signature, const void* area) {
    while (mpRead < area) {
        mpRead += 4;
        u8* read0 = mpRead;
        mpRead += 4;
        u8* read1 = mpRead;

        if ((u32)read1 == signature) {
            return TRUE;
        }

        mpRead = (read1 - unk_0x00) + (unk_0x00 + (u32)read0);

        align(2);
    }

    return FALSE;
}

/* For WAV */

class BinaryReaderLittleEndian {
    public:
        void    align(u32 alignBytes);
        BOOL    seekChunk(u32 signature, const void* area);

        u32 read32(); // TODO
        u16 read16() {
            u8 read[2];
            read[0] = *mpRead++;
            read[1] = *mpRead++;
            return (read[0] & ~0xFF00) | ((read[1] << 8) & 0xFF00);
        }

    protected:
        int unk_0x00;
        u8* mpRead;     // 0x04
};

void BinaryReaderLittleEndian::align(u32 alignBytes) {
    mpRead = (u8*)PTR_ROUNDUP(mpRead, alignBytes);
}

BOOL BinaryReaderLittleEndian::seekChunk(u32 signature, const void* area) {
    while (mpRead < area) {
        u8* readBegin = mpRead;
        mpRead += 4;
        u32 readSig = *(u32*)readBegin;
        u32 readSize = read32();

        if (readSig == signature) {
            return TRUE;
        }

        mpRead = (mpRead - unk_0x00) + (unk_0x00 + readSize);

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
    exponent.l = (x >= 0.0f ? (s32)(x - 0.5f) : (s32)(x + 0.5f)); // Shift towards 0 and round
    f32 pannedval = x - exponent.l; // strictly between 1.5 and -1.5

    // 2^x will not fit in an IEEE-754 float
    if(exponent.l > 128) {
        return HUGE_VALF;
    }

    // convert to exponent of IEEE-754 float
    exponent.l += 127;
    exponent.l <<= 23;

    // Calculate the mantissa

    static const f32 scale_frac[] = { 0.0f, 0.5f };
    // { 1 , 1/sqrt2 }
    static const f32 two_to_frac[] = {1.0f, 0.70710677f};
    // coefficients of Taylor polynomial of 2^x - 1 at 0:
    // 2^x - 1 = (log2) * x + (log2)^2 / 2! * x^2 + ...
    static const f32 __two_to_x[] = {
        0.6931472f, 0.24022661,
        0.055502914f, 0.009625022f,
        0.0013131053f, 1.8300806E-4f        
    };

    if (pannedval < 0.0f) {
        frac_index += 1;
    }
    
    f32 ret = pannedval + scale_frac[frac_index];

    // Evaluate Taylor polynomial using Horner's method
    ret = ret * (ret * (ret * (ret * (ret * (ret * __two_to_x[5] + __two_to_x[4]) +
        __two_to_x[3]) + __two_to_x[2]) + __two_to_x[1]) + __two_to_x[0]);
    // 2^n * (corrected mantissa)
    ret = exponent.f * (0.75f * two_to_frac[frac_index] + ((0.25f + ret) * two_to_frac[frac_index]));

    return ret;
}
