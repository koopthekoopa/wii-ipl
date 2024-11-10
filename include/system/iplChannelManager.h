#ifndef IPL_CHANNEL_MANAGER_H
#define IPL_CHANNEL_MANAGER_H

#include <revolution/es.h>

namespace ipl {
     typedef struct {
         u32         unk0;       // 0x00
         u32         unk1;       // 0x04
         ESTitleId   titleId;    // 0x08
     } ChanEntry;
}

#endif // IPL_CHANNEL_MANAGER_H


