#include <tmc_jpeg_internal.h>

static void TMCJPEGDEC_converterYUV411toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV411toRGB565edge(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV422toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV422toRGB565edge(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV420toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV420toRGB565edge(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV211toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV211toRGB565edge(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV444toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV444toRGB565edge(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV400toRGB565(TMCCJPEGDecWork*, s32, s32);
static void TMCJPEGDEC_converterYUV400toRGB565edge(TMCCJPEGDecWork*, s32, s32);

s32 TMCJPEGDEC_set_converterRGB565(TMCCJPEGDecWork* work) {
    u8* ob;
    s32 cc;
    TMCCJPEGDecState* st;

    ob = work->convBuf;
    cc = work->componentCount;
    st = work->pState;

    switch (cc) {
        case 0: {
            u8 mode = work->idctMode;
            u8* ptr = ob + 4;
            u8* p1 = ptr + mode;
            u8* p2 = p1 + mode;
            u8* p3 = p2 + mode;

            work->pConverterFunc = TMCJPEGDEC_converterYUV411toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV411toRGB565edge;
            work->pConvRowPtrs[0] = (void*)ptr;
            work->pConvRowPtrs[1] = (void*)p1;
            work->pConvRowPtrs[2] = (void*)p2;
            work->pConvRowPtrs[3] = (void*)p3;
            work->pConvRowPtrs[5] = (void*)(ob + 0x104);
            work->pConvRowPtrs[6] = (void*)(ob + 0x144);
            work->pitch = 0x20;
            work->converterFlags = 0;
            break;
        }
        case 1: {
            u8 mode = work->idctMode;
            u8* ptr = ob + 4;
            work->pConverterFunc = TMCJPEGDEC_converterYUV422toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV422toRGB565edge;
            work->pConvRowPtrs[0] = (void*)ptr;
            work->pConvRowPtrs[1] = (void*)(ptr + mode);
            work->pConvRowPtrs[5] = (void*)(ob + 0x84);
            work->pConvRowPtrs[6] = (void*)(ob + 0xC4);
            work->pitch = 0x10;
            work->converterFlags = 0;
            break;
        }
        case 2: {
            u8 mode = work->idctMode;
            u8* ptr = ob + 4;
            work->pConverterFunc = TMCJPEGDEC_converterYUV420toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV420toRGB565edge;
            work->pConvRowPtrs[0] = (void*)ptr;
            work->pConvRowPtrs[1] = (void*)(ptr + mode);
            work->pConvRowPtrs[2] = (void*)(ptr + mode * 16);
            work->pConvRowPtrs[3] = (void*)(ptr + mode * 16 + mode);
            work->pConvRowPtrs[5] = (void*)(ob + 0x104);
            work->pConvRowPtrs[6] = (void*)(ob + 0x144);
            work->pitch = 0x10;
            work->converterFlags = 0;
            break;
        }
        case 3: {
            u8 mode = work->idctMode;
            u8* ptr = ob + 4;
            work->pConverterFunc = TMCJPEGDEC_converterYUV211toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV211toRGB565edge;
            work->pConvRowPtrs[0] = (void*)ptr;
            work->pConvRowPtrs[1] = (void*)(ptr + mode * 8);
            work->pConvRowPtrs[5] = (void*)(ptr + 0x84);
            work->pConvRowPtrs[6] = (void*)(ptr + 0xC4);
            work->pitch = 0x08;
            work->converterFlags = 0;
            break;
        }
        case 4: {
            work->pConverterFunc = TMCJPEGDEC_converterYUV400toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV400toRGB565edge;
            work->pConvRowPtrs[0] = (void*)(ob + 4);
            work->pitch = 0x08;
            work->converterFlags = 0;
            break;
        }
        case 5: {
            work->pConverterFunc = TMCJPEGDEC_converterYUV444toRGB565;
            work->pConverterFuncEdge = TMCJPEGDEC_converterYUV444toRGB565edge;
            work->pConvRowPtrs[0] = (void*)(ob + 4);
            work->pConvRowPtrs[5] = (void*)(ob + 0x44);
            work->pConvRowPtrs[6] = (void*)(ob + 0x84);
            work->pitch = 0x08;
            work->converterFlags = 0;
            break;
        }
        default: {
            return TMCC_ERROR_FORMAT;
        }
    }

    {
        u32 fw = st->jpegWidth;
        u32 fh = st->jpegHeight;
        s32 bw = (s32)(((fw << 30) - (fw >> 31)) * 4 + (fw >> 31));
        s32 bh = (s32)(((fh << 30) - (fh >> 31)) * 4 + (fh >> 31));
        {
            s32 nb = -bw;
            s32 nb2 = -bh;
            bw = ((nb | bw) >> 31) + (fw >> 2);
            bh = ((nb2 | bh) >> 31) + (fh >> 2);
        }
        st->convWidth = bw << 2;
        st->convHeight = bh << 2;
    }
    return 0;
}
