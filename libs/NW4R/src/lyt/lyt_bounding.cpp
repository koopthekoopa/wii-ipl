#include <nw4r/lyt/bounding.h>

namespace nw4r {
    namespace lyt {
        NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(Bounding, Pane);

        Bounding::Bounding(const res::Bounding *pBlock, const ResBlockSet&) :
        Pane(pBlock) {}

        Bounding::~Bounding() {}

        void Bounding::DrawSelf(const DrawInfo& drawInfo) {}
    }
}
