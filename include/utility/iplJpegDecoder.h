#ifndef IPL_UTILITY_JPEG_DECODER
#define IPL_UTILITY_JPEG_DECODER

#include <revolution/os/OSSemaphore.h>
#include <revolution/types.h>

#include <egg/core.h>
#include <tmc_jpeg.h>

namespace ipl {
    namespace utility {
        class Capture;

        class JpegDecoder {
        public:
            JpegDecoder(EGG::Heap* heap);

            BOOL decodeJpg(EGG::Heap* heap, u8* buffer, u32 length);
            BOOL encodeOdh(EGG::Heap* heap, u8* buffer, u32 length);

            BOOL waitCaptured();

            void makeRawData();

            void clear();

        private:
            static s32 readStreamCallback(void* ctx, u8* buf, unsigned int size);

            int get_orientation();
            int get_resolution(int w, int h);
            void calc_capture_size(int w, int h);

            TMCCJPEGDecWork* mpBuf1;     // 0x00
            void* mpBuf2;                // 0x04
            u8* mpData;                  // 0x08
            u32 mLength;                 // 0x0C
            u32 mReadPos;                // 0x10
            u8* mpTextureBuffer;         // 0x14
            u32 mTextureSize;            // 0x18
            u16 mCaptureSizeW;           // 0x1C
            u16 mCaptureSizeH;           // 0x1E
            Capture* mpCapture;          // 0x20
            s32 mInitResult;             // 0x24
            TMCCJPEGDecState mTMCState;  // 0x28
            OSSemaphore mSemaphore;      // 0x6FC
            s32 mStatus;                 // 0x708 - 0=idle, 1=decoded, 2=captured
            s32 mOrientation;            // 0x70C - 0=none, 1=90CW, 2=90CCW
        };
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_UTILITY_JPEG_DECODER
