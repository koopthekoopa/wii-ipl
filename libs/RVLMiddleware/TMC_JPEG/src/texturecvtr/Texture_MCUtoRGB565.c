#include <tmc_jpeg_internal.h>

static void TMCJPEGDEC_converterYUV411toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV411toRGB565edge(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV422toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV422toRGB565edge(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV420toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV420toRGB565edge(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV211toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV211toRGB565edge(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV444toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV444toRGB565edge(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV400toRGB565(TMCJpegDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV400toRGB565edge(TMCJpegDecWork*, s32, s32);

s32 TMCJPEGDEC_set_converterRGB565(TMCJpegDecWork* work) {
    u8* ob;
    s32 cc;
    TMCCJPEGDecState* st;

    ob = work->mConvBuf;
    cc = work->mComponentCount;
    st = work->mpState;

    switch (cc) {
    case 0: {
        u8 mode = work->mIdctMode;
        u8* ptr = ob + 4;
        u8* p1 = ptr + mode;
        u8* p2 = p1 + mode;
        u8* p3 = p2 + mode;

        work->mpConverterFunc = TMCJPEGDEC_converterYUV411toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV411toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)ptr;
        work->mpConvRowPtrs[1] = (void*)p1;
        work->mpConvRowPtrs[2] = (void*)p2;
        work->mpConvRowPtrs[3] = (void*)p3;
        work->mpConvRowPtrs[5] = (void*)(ob + 0x104);
        work->mpConvRowPtrs[6] = (void*)(ob + 0x144);
        work->mPitch = 0x20;
        work->mConverterFlags = 0;
        break;
    }
    case 1: {
        u8 mode = work->mIdctMode;
        u8* ptr = ob + 4;
        work->mpConverterFunc = TMCJPEGDEC_converterYUV422toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV422toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)ptr;
        work->mpConvRowPtrs[1] = (void*)(ptr + mode);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x84);
        work->mpConvRowPtrs[6] = (void*)(ob + 0xC4);
        work->mPitch = 0x10;
        work->mConverterFlags = 0;
        break;
    }
    case 2: {
        u8 mode = work->mIdctMode;
        u8* ptr = ob + 4;
        work->mpConverterFunc = TMCJPEGDEC_converterYUV420toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV420toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)ptr;
        work->mpConvRowPtrs[1] = (void*)(ptr + mode);
        work->mpConvRowPtrs[2] = (void*)(ptr + mode * 16);
        work->mpConvRowPtrs[3] = (void*)(ptr + mode * 16 + mode);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x104);
        work->mpConvRowPtrs[6] = (void*)(ob + 0x144);
        work->mPitch = 0x10;
        work->mConverterFlags = 0;
        break;
    }
    case 3: {
        u8 mode = work->mIdctMode;
        u8* ptr = ob + 4;
        work->mpConverterFunc = TMCJPEGDEC_converterYUV211toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV211toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)ptr;
        work->mpConvRowPtrs[1] = (void*)(ptr + mode * 8);
        work->mpConvRowPtrs[5] = (void*)(ptr + 0x84);
        work->mpConvRowPtrs[6] = (void*)(ptr + 0xC4);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    case 4: {
        work->mpConverterFunc = TMCJPEGDEC_converterYUV400toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV400toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    case 5: {
        work->mpConverterFunc = TMCJPEGDEC_converterYUV444toRGB565;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV444toRGB565edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x44);
        work->mpConvRowPtrs[6] = (void*)(ob + 0x84);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    default:
        return -0x70;
    }

    {
        u32 fw = st->mJpegWidth;
        u32 fh = st->mJpegHeight;
        s32 bw = (s32)((u32)((fw << 30) - (fw >> 31)) * 4 + (fw >> 31));
        s32 bh = (s32)((u32)((fh << 30) - (fh >> 31)) * 4 + (fh >> 31));
        {
            s32 nb = -bw;
            s32 nb2 = -bh;
            bw = ((nb | bw) >> 31) + (fw >> 2);
            bh = ((nb2 | bh) >> 31) + (fh >> 2);
        }
        st->mConvWidth = bw << 2;
        st->mConvHeight = bh << 2;
    }
    return 0;
}
