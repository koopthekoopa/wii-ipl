#ifndef NW4R_UT_IO_STREAM_H
#define NW4R_UT_IO_STREAM_H

#include <revolution/types.h>

#include <nw4r/ut/RuntimeTypeInfo.h>

namespace nw4r {
    namespace ut {
        class IOStream {
            public:
                typedef void (*IOStreamCallback)(s32 result, IOStream* pStream, void* pCallbackArg);

                NW4R_UT_RUNTIME_TYPEINFO;

                IOStream() :
                mAvailable(false),
                mCallback(NULL),
                mArg(NULL) {}

                virtual ~IOStream() {}                                                                                      // 0x0C

                virtual void    Close() = 0;                                                                                // 0x10

                virtual s32     Read(void* pDst, u32 size) = 0;                                                             // 0x14
                virtual bool    ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg);            // 0x18

                virtual void    Write(const void* pSrc, u32 size);                                                          // 0x1C
                virtual bool    WriteAsync(const void* pSrc, u32 size, IOStreamCallback pCallback, void* pCallbackArg);     // 0x20

                virtual bool    IsBusy() const;                                                                             // 0x24

                virtual bool    CanAsync() const = 0;                                                                       // 0x28
                virtual bool    CanRead() const = 0;                                                                        // 0x2C
                virtual bool    CanWrite() const = 0;                                                                       // 0x30

                virtual u32     GetOffsetAlign() const  { return 1; }                                                       // 0x34
                virtual u32     GetSizeAlign() const    { return 1; }                                                       // 0x38
                virtual u32     GetBufferAlign() const  { return 1; }                                                       // 0x3C

                bool            IsAvailable() const { return mAvailable; }
                
            protected:
                bool                mAvailable;     // 0x04

                s32                 mAsyncResult;   // 0x08

                IOStreamCallback    mCallback;      // 0x0C
                void*               mArg;           // 0x10
        };
    };
};

#endif // NW4R_UT_IO_STREAM_H
