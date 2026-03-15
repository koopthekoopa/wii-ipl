#include "keyboard/MyTiBg.h"

namespace textinput {
    namespace extend {
        namespace bg {
            void LayoutByNW4R::create(MEMAllocator* allocator) {
                nw4rmanager::Layout::createWithEventHandler(allocator, NULL);
                init();
            }

            void LayoutByNW4R::init() {
                mpLayout->Animate();
                mpLayout->CalculateMtx(mDrawInfo);
            }
        }  // namespace bg
    }  // namespace extend
}  // namespace textinput
