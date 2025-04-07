#ifndef IPL_CHANNEL_MANAGER_H
#define IPL_CHANNEL_MANAGER_H

#include <revolution/types.h>

#include <private/es.h>

#define CHANNEL_INFO(primary, second, flags, titleId) \
    { primary, second, 0, 0, flags, ES_CHANNEL_ID(titleId), ES_TITLE_ID(titleId) }

#define CHANNEL_INFO_NULL \
    { 0, 0, 0, 0, 0, 0, 0 }

#define MAX_CHANNEL_PAGE    4
#define MAX_CHANNEL_INDEX   12
#define MAX_CHANNEL_TOTAL   (MAX_CHANNEL_PAGE * MAX_CHANNEL_INDEX)

#define CHANNEL_INFO_SIZE(p, i) ((p * i) * sizeof(channel::SInfo))
#define MAX_CHANNEL_INFO_SIZE   CHANNEL_INFO_SIZE(MAX_CHANNEL_PAGE, MAX_CHANNEL_INDEX)

namespace ipl {
    namespace channel {
        enum {
            PRIMARY_TYPE_NONE = 0,
            PRIMARY_TYPE_DISK,
            PRIMARY_TYPE_UNUSED,
            PRIMARY_TYPE_CHANNEL,
        };
        enum {
            SECONARY_TYPE_NORMAL = 0,
            SECONARY_TYPE_SYSTEM,
        };
        
        typedef struct SChannelInfo {
            u8          primaryType;    // 0x00
            u8          secondaryType;  // 0x01

            u8          reserved[2];    // 0x02

            u32         flags;          // 0x04

            ESTitleId32 titleType;      // 0x08
            ESTitleId32 titleCode;      // 0x0C
        } SInfo;
    }
}

#endif // IPL_CHANNEL_MANAGER_H
