#include <nw4r/lyt/drawInfo.h>

#include <nw4r/math.h>

#include <cstring>

namespace nw4r {
    namespace lyt {
        DrawInfo::DrawInfo() : 
        mLocationAdjustScale(1.0f, 1.0f),
        mGlobalAlpha(1.0f) {
            memset(&mFlag, 0, sizeof(mFlag));
            math::MTX34Identity(&mViewMtx);
        }

        DrawInfo::~DrawInfo() {}
    }
}
