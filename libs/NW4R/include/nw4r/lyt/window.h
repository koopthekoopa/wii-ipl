#ifndef NW4R_LYT_WINDOW_H
#define NW4R_LYT_WINDOW_H

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/resources.h>
#include <nw4r/lyt/common.h>

namespace nw4r {
    namespace lyt {
        class Window : public Pane {
            private:
                typedef struct Content {
                    ut::Color           vtxColors[4];   // 0x00
                    detail::TexCoordAry texCoordAry;    // 0x10
                } Content;

                typedef struct Frame {
                    u8          textureFlip;    // 0x00
                    Material*   pMaterial;      // 0x04
                } Frame;

            public:
                Window(const res::Window* pBlock, const ResBlockSet& resBlockSet);
                virtual ~Window();

                NW4R_UT_RUNTIME_TYPEINFO;
                
                virtual void            DrawSelf(const DrawInfo& drawInfo);
                virtual void            AnimateSelf(u32 option);

                virtual ut::Color       GetVtxColor(u32 idx) const;
                virtual void            SetVtxColor(u32 idx, ut::Color value);

                virtual u8              GetVtxColorElement(u32 idx) const;
                virtual void            SetVtxColorElement(u32 idx, u8 value);

                virtual Material*       FindMaterialByName(const char* findName, bool bRecursive);

                virtual void            UnbindAnimationSelf(AnimTransform* pAnimTrans);

                virtual AnimationLink*  FindAnimationLink(AnimTransform* pAnimTrans);

                virtual void            SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable, bool bRecursive);

                virtual Material*       GetContentMaterial() const;
                virtual Material*       GetFrameMaterial(u32 frameIdx) const;

                virtual void            DrawContent(const math::VEC2& basePt, const WindowFrameSize& frameSize, u8 alpha);

                virtual void            DrawFrame(const math::VEC2& basePt, const Frame& frame, const WindowFrameSize& frameSize, u8 alpha);
                virtual void            DrawFrame4(const math::VEC2& basePt, const Frame* frames, const WindowFrameSize& frameSize, u8 alpha);
                virtual void            DrawFrame8(const math::VEC2& basePt, const Frame* frames, const WindowFrameSize& frameSize, u8 alpha);

                WindowFrameSize         GetFrameSize(u8 frameNum, const Frame* frames);

            private:
                InflationLRTB   mContentInflation;  // 0x0D4
                Content         mContent;           // 0x0E4
                Frame*          mFrames;            // 0x0FC
                u8              mFrameNum;          // 0x100
        };
    }
}

#endif // NW4R_LYT_WINDOW_H
