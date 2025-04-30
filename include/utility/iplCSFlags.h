#ifndef IPL_UTILITY_CS_FLAGS_H
#define IPL_UTILITY_CS_FLAGS_H

#include <revolution/types.h>

namespace ipl {
    namespace utility {
        typedef struct CSFlagsData {
            u8  unk_0x00[0x04-0x00];
            u32 flags;  // 0x04
            u8  unk_0x08[0x20-0x08];

            enum {
                FLAG_SYSCONF_EULA = 0,
            };
        } CSFlagsData;

        class CSFlags {
            static s32  CreateFlagsFile();
            static s32  UpdateFlagsFile();

            static s32  ReadFlags(CSFlagsData* outData);
            static s32  WriteFlags(CSFlagsData* inData);

            static void SetEULAFlag(CSFlagsData* data);
        };
    }
}

#endif // IPL_UTILITY_CS_FLAGS_H
