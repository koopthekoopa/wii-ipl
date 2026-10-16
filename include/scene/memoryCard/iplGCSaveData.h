#ifndef IPL_SCENE_GC_SAVE_DATA_H
#define IPL_SCENE_GC_SAVE_DATA_H

#include "iplSceneHeader.h"
#include "iplGCWindow.h"
#include "iplMemoryCardBase.h"

namespace ipl {
    namespace scene {
        class GCSaveData : public MemoryBase {
            public:
            GCSaveData(EGG::Heap * heap, ipl::nand::LayoutFile * param_3, const char * param_4, const char* param_5, ipl::math::VEC3 param_6);

            virtual ~GCSaveData();

            private:

            layout::Object* mpLayout; // 0x04
            //gui::PaneManager* mpPaneManager;
            MemoryBaseEvent* mpEvent; // 0x34
            u32 mField_0x38; // 0x38
        };
        

    }
}

#endif  // IPL_SCENE_GC_SAVE_DATA_H
