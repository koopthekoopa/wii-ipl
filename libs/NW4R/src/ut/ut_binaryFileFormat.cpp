#include <nw4r/ut/binaryFileFormat.h>

#include <nw4r/config.h>

namespace nw4r {
    namespace ut {
        bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u16 version, u16 minBlocks) {
            // Compare signature
            if (header->signature != signature) {
                return false;
            }
            // Compare BOM
            if (header->byteOrder != NW4R_BYTEORDER_NATIVE) {
                return false;
            }
            // Compare version
            if (header->version != version) {
                return false;
            }
            // Compare size
            if (header->fileSize < sizeof(*header) + sizeof(BinaryBlockHeader) * minBlocks){
                return false;
            }
            // And finally compare the amount of blocks
            if (header->dataBlocks < minBlocks) {
                return false;
            }
            // Passed all of those checks? Then it's valid!
            return true;
        }
    }
}
