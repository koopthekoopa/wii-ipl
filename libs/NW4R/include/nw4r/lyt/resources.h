#ifndef NW4R_LYT_RESOURCES_H
#define NW4R_LYT_RESOURCES_H

#include <revolution/types.h>

namespace nw4r {
    namespace lyt {
        namespace res {
            typedef struct DataBlockHeader {
                char    kind[4];    // 0x00
                u32     size;       // 0x04
            } DataBlockHeader;

            typedef struct AnimationBlock {
                DataBlockHeader blockHeader;            // 0x00

                u16             frameSize;              // 0x08
                u8              loop;                   // 0x0A

                u8              padding1;               // 0x0B

                u16             fileNum;                // 0x0C

                u16             animContNum;            // 0x0E
                u32             animContOffsetsOffset;  // 0x10
            } AnimationBlock;
        }
    }
}

#endif // NW4R_LYT_RESOURCES_H


