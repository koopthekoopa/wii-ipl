#ifndef IPL_CHANNEL_MANAGER_H
#define IPL_CHANNEL_MANAGER_H

#include <revolution/es.h>

namespace ipl {
     typedef struct {
         u32         unk0;       // 0x00 (x slot?)
         u32         unk1;       // 0x04 (y slot)
         ESTitleId   titleId;    // 0x08
     } ChanEntry;
}

#endif // IPL_CHANNEL_MANAGER_H


