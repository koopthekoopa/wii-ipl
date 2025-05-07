#ifndef NW4R_LYT_BOUNDING_H
#define NW4R_LYT_BOUNDING_H

#include <nw4r/lyt/pane.h>

namespace nw4r {
    namespace lyt {
        class Bounding : public Pane {
            public:
                Bounding(const res::Bounding *pBlock, const ResBlockSet& resBlockSet);
                virtual ~Bounding();

                NW4R_UT_RUNTIME_TYPEINFO;

                virtual void    DrawSelf(const DrawInfo& drawInfo);
        };
    }
}

#endif // NW4R_LYT_BOUNDING_H
