#include "scene/memoryCard/iplGCWindow.h"
#include "scene/memoryCard/iplMemoryCardBase.h"
#include "scene/memoryCard/iplGCWindow.h"

namespace ipl {
    namespace scene {

        MemoryBase::MemoryBase()
{
    mField_0x04 = 0;
    mField_0x08 = 0;
    nw4r::ut::List_Init(&mList_0x10, 0x08);
    nw4r::ut::List_Init(&mList_0x1C, 0x0C);
    nw4r::ut::List_Init(&mList_0x28, 0x1C);
}
    }
}
