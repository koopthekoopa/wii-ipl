#ifndef NW4R_SND_SOUND_MEMORY_ALLOCATABLE_H
#define NW4R_SND_SOUND_MEMORY_ALLOCATABLE_H

#include <nw4r/snd/types.h>

namespace nw4r {
namespace snd {
        class SoundMemoryAllocatable {
            public:
                virtual ~SoundMemoryAllocatable() {}    // 0x08
                virtual void*   Alloc(u32 size) = 0;    // 0x0C
        };
    }
}

#endif // NW4R_SND_SOUND_MEMORY_ALLOCATABLE_H
