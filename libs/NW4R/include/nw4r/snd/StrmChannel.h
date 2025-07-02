#ifndef NW4R_SND_STRM_CHANNEL_H
#define NW4R_SND_STRM_CHANNEL_H

#include <nw4r/snd/types.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            typedef struct StrmChannel {
                void*       mBuffer;        // 0x00
                u32         mBufferSize;    // 0x04

                AdpcmInfo   mAdpcmInfo;     // 0x08
            } StrmChannel;

            class StrmBufferPool {
                public:
                    void    Setup(void* base, u32 size, int count);
                    void    Shutdown();

                    void*   Alloc();
                    void    Free(void* buffer);

                    u32     GetBlockSize() const    { return mBlockSize; }

                private:
                    static const int BLOCK_MAX = 32;
                    static const int BITS_PER_BYTE = 8;

                    void*   mBuffer;                                // 0x00
                    u32     mBufferSize;                            // 0x04

                    u32     mBlockSize;                             // 0x08
                    int     mBlockCount;                            // 0x0C

                    int     mAllocCount;                            // 0x10
                    u8      mAllocFlags[BLOCK_MAX / BITS_PER_BYTE]; // 0x14
            };
        }
    }
}

#endif
