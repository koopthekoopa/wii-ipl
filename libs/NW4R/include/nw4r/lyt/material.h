#ifndef NW4R_LYT_MATERIAL_H
#define NW4R_LYT_MATERIAL_H

#include <revolution.h>

namespace nw4r {
    namespace lyt {
        class Material {
            public:
                Material();

                void GetTexture(GXTexObj* texObj, u8 texMapIdx) const;
                void SetTexture(u8 texMapIdx, const GXTexObj& texObj);
        };
    }
}

#endif // NW4R_LYT_MATERIAL_H
