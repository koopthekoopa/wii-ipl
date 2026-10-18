#ifndef IPL_SCENE_GC_WINDOW_H
#define IPL_SCENE_GC_WINDOW_H

#include "iplSceneHeader.h"
#include "iplMemoryCardBase.h"
#include "layout/GUIManager.h"

namespace ipl {
    namespace scene {        

        class MemoryBaseEvent : public gui::EventHandler {
            public:
                MemoryBaseEvent(MemoryBase*);
                virtual ~MemoryBaseEvent();

            private:
                void* m_unk04;            // Offset 0x04
                int m_unk08;              // Offset 0x08
                MemoryBase* m_memoryBase; // Offset 0x0C
        };
    }
}

#endif // IPL_SCENE_GC_WINDOW_H
