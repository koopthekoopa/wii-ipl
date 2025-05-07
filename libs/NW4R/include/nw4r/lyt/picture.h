#ifndef NW4R_LYT_PICTURE_H
#define NW4R_LYT_PICTURE_H

#include <nw4r/lyt/pane.h>

#include <nw4r/lyt/common.h>

namespace nw4r {
    namespace lyt {
        class Picture : public Pane {
            public:
                Picture(u8 num);
                Picture(const res::Picture *pResPic, const ResBlockSet& resBlockSet);
                virtual ~Picture();

                NW4R_UT_RUNTIME_TYPEINFO;

                virtual void        DrawSelf(const DrawInfo& drawInfo);

                virtual ut::Color   GetVtxColor(u32 idx) const;
                virtual void        SetVtxColor(u32 idx, ut::Color value);

                virtual u8          GetVtxColorElement(u32 idx) const;
                virtual void        SetVtxColorElement(u32 idx, u8 value);

                virtual void        Append(TPLPalette *pTplRes);
                virtual void        Append(const GXTexObj& texObj);

                void                SetTexCoordNum(u8 num);
                u8                  GetTexCoordNum() const;

                void                GetTexCoord(u32 idx, math::VEC2* coords) const;
                void                SetTexCoord(u32 idx, const math::VEC2* coords);

                void                Init(u8 texNum);
                void                ReserveTexCoord(u8 num);

            private:
                ut::Color           mVtxColors[VERTEXCOLOR_MAX] ATTRIBUTE_ALIGN(4); // 0xD4
                detail::TexCoordAry mTexCoordAry;                                   // 0xE4
        };
    }
}

#endif // NW4R_LYT_PICTURE_H
