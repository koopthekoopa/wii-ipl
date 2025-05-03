#ifndef NW4R_UT_BINARY_FILE_FORMAT_H
#define NW4R_UT_BINARY_FILE_FORMAT_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        typedef struct BinaryFileHeader {
            u32 signature;  // 0x00
            u16 byteOrder;  // 0x04
            u16 version;    // 0x06

            u32 fileSize;   // 0x08
            u16 headerSize; // 0x0C

            u16 dataBlocks; // 0x0E
        } BinaryFileHeader;

        typedef struct BinaryBlockHeader {
            u32 kind;   // 0x00
            u32 size;   // 0x04
        } BinaryBlockHeader;

        bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u16 version, u16 minBlocks);
    }
}

#endif // NW4R_UT_BINARY_FILE_FORMAT_H
