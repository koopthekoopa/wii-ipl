#ifndef IPL_UTILITY_JPEG_DECODER
#define IPL_UTILITY_JPEG_DECODER

#include <revolution/types.h>
#include <egg/core.h>


namespace ipl {
    namespace  utility {
        class JpegDecoder {
            public:
                BOOL    decodeJpg(EGG::Heap* heap, u8* buffer, u32 length);
                BOOL    encodeOdh(EGG::Heap* heap, u8* buffer, u32 length);

                BOOL    waitCaptured();

                BOOL    makeRawData();

                void    clear();

            private:
                u32 dummy[32];
        };
    }
}

#endif // IPL_UTILITY_JPEG_DECODER
