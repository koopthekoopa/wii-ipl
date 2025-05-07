#ifndef NW4R_LYT_RESOURCE_ACCESSOR_H
#define NW4R_LYT_RESOURCE_ACCESSOR_H

#include <revolution/types.h>

#include <nw4r/ut/Font.h>

namespace nw4r {
    namespace lyt {
        class ResourceAccessor {
        public:
            ResourceAccessor();
            virtual ~ResourceAccessor();
            
            virtual void*       GetResource(u32 resType, const char* name, u32* pSize) = 0;
            virtual ut::Font*   GetFont(const char* name);
        };
    }
}

#endif // NW4R_LYT_RESOURCE_ACCESSOR_H