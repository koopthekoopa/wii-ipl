#ifndef NW4R_UT_BINARY_FILE_FORMAT_H
#define NW4R_UT_BINARY_FILE_FORMAT_H

#include <revolution/types.h>

#define NW4R_UT_MAKE_SIGWORD(a, b, c, d)   \
    static_cast<u32>(                       \
          (static_cast<u8>(a) << 24)        \
        | (static_cast<u8>(b) << 16)        \
        | (static_cast<u8>(c) <<  8)        \
        | (static_cast<u8>(d) <<  0)        \
    )

namespace nw4r {
    namespace ut {
        typedef struct BinaryFileHeader {
            u32 signature;
            u16 byteOrder;
            u16 version;
            u32 fileSize;
            u16 headerSize;
            u16 dataBlocks;
        } BinaryFileHeader;

        typedef struct BinaryBlockHeader {
            u32 kind;
            u32 size;
        } BinaryBlockHeader;

        bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u16 version, u16 minBlocks);
    }
}

#endif // NW4R_UT_BINARY_FILE_FORMAT_H


