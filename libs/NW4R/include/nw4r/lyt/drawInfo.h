#ifndef NW4R_LYT_DRAW_INFO_H
#define NW4R_LYT_DRAW_INFO_H

#include <revolution/gx.h>

#include <nw4r/math.h>

#include <nw4r/ut/Rect.h>

namespace nw4r {
    namespace lyt {
        class DrawInfo {
            public:
                DrawInfo();
                virtual ~DrawInfo();
                
                void                SetViewRect(const ut::Rect& rect)               { mViewRect = rect; }

                const math::MTX34&  GetViewMtx() const                              { return mViewMtx; }
                void                SetViewMtx(const math::MTX34& value)            { mViewMtx = value; }

                const math::VEC2&   GetLocationAdjustScale() const                  { return mLocationAdjustScale; }
                void                SetLocationAdjustScale(const math::VEC2& scale) { mLocationAdjustScale = scale; }

                bool                IsMultipleViewMtxOnDraw()                       { return mFlag.mulViewDraw; }
                void                SetMultipleViewMtxOnDraw(bool value)            { mFlag.mulViewDraw = value; }
                bool                IsInfluencedAlpha()                             { return mFlag.influencedAlpha; }
                void                SetInfluencedAlpha(bool value)                  { mFlag.influencedAlpha = value; }
                bool                IsLocationAdjust()                              { return mFlag.locationAdjust; }
                void                SetLocationAdjust(bool value)                   { mFlag.locationAdjust = value; }
                bool                IsInvisiblePaneCalculateMtx()                   { return mFlag.invisiblePaneCalculateMtx; }
                void                SetInvisiblePaneCalculateMtx(bool value)        { mFlag.invisiblePaneCalculateMtx = value; }
                bool                IsDebugDrawMode()                               { return mFlag.debugDrawMode; }
                void                SetDebugDrawMode(bool value)                    { mFlag.debugDrawMode = value; }

            protected:
                math::MTX34 mViewMtx;               // 0x04
                ut::Rect    mViewRect;              // 0x34

                math::VEC2  mLocationAdjustScale;   // 0x44
                f32         mGlobalAlpha;           // 0x4C

                struct {
                    u8  mulViewDraw : 1;                // 10000000
                    u8  influencedAlpha : 1;            // 01000000
                    u8  locationAdjust : 1;             // 00100000
                    u8  invisiblePaneCalculateMtx : 1;  // 00010000
                    u8  debugDrawMode : 1;              // 00001000
                } mFlag;    // 0x50
        };
    }
}

#endif // NW4R_LYT_DRAW_INFO_H
