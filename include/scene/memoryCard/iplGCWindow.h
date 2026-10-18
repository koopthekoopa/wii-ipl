#ifndef IPL_SCENE_GC_WINDOW_H
#define IPL_SCENE_GC_WINDOW_H

#include "iplSceneHeader.h"
#include "iplMemoryCardBase.h"

namespace ipl {
    namespace scene {        

        class MemoryBaseEvent {
            public:
                MemoryBaseEvent(MemoryBase*);
                virtual ~MemoryBaseEvent();

            private:
                int m_unk08;              // Offset 0x08: Set to 0 in assembly
                MemoryBase* m_memoryBase; // Offset 0x0C: Pointer passed to constructor
        };
    }
}

#endif // IPL_SCENE_GC_WINDOW_H
