#ifndef IPL_GUI_MANAGER_H
#define IPL_GUI_MANAGER_H

#include "layout/GUIManager.h"

#include <egg/core.h>

namespace ipl {
    namespace gui {
        class PaneManager : public ::gui::PaneManager {
            public:
                PaneManager(::gui::EventHandler* event, const nw4r::lyt::DrawInfo* drawInfo, EGG::Heap* heap, EGG::Allocator* allocator, bool bDisableCon = false) :
                ::gui::PaneManager(event, allocator, drawInfo),
                mpHeap(heap),
                mbDisableCon(bDisableCon) {}

                virtual ~PaneManager() {}

                void update();
                void update(int chan);

                void setTriggerTarget(nw4r::lyt::Pane* pane, bool bEnable);
                void initPane(nw4r::lyt::Pane* pane);
            
            private:
                u32         unk_0x28;
                EGG::Heap*  mpHeap;

                bool        mbDisableCon;           // 0x30
                bool        mbDoneUpdateWithCon;    // 0x31
        };
    }
}

#endif // IPL_GUI_MANAGER_H
