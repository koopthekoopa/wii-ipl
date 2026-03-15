#include "keyboard/tiDebug.h"

namespace textinput {
    namespace debug {
        struct iVertex {
            iVertex(f32 posX, f32 posY, f32 posZ, u32 red, u32 green, u32 blue, u32 alpha)
                : x(posX), y(posY), z(posZ), r(red), g(green), b(blue), a(alpha) {
            }

            f32 x, y, z;  // 0x00

            u32 r, g, b, a;  // 0x0C
        };

        DECOMP_FORCE_LITERAL(tiDebug_cpp, 0.0f);

        static void draw_rect(const iVertex& v0, const iVertex& v1, const iVertex& v2, const iVertex& v3) {
            GXBegin(GX_QUADS, GX_VTXFMT0, 4);
            {
                GXPosition3f32(v0.x, v0.y, v0.z);
                GXColor4u8(v0.r, v0.g, v0.b, v0.a);
                GXPosition3f32(v2.x, v2.y, v2.z);
                GXColor4u8(v2.r, v2.g, v2.b, v2.a);
                GXPosition3f32(v3.x, v3.y, v3.z);
                GXColor4u8(v3.r, v3.g, v3.b, v3.a);
                GXPosition3f32(v1.x, v1.y, v1.z);
                GXColor4u8(v1.r, v1.g, v1.b, v1.a);
            }
            GXEnd();
        }

        void drawBox_(f32 left, f32 top, f32 right, f32 bottom, f32 z, f32 scale, GXColor& color) {
            GXClearVtxDesc();
            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);

            GXSetCullMode(GX_CULL_NONE);

            GXSetNumChans(1);
            GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);

            GXSetNumTexGens(0);
            GXSetNumTevStages(1);

            GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);

            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);

            f32 centerX = (right - left) / 2 + left;
            f32 centerY = (bottom - top) / 2 + top;

            Mtx mtx;
            Mtx mtxScale;
            MTXScale(mtxScale, scale, scale, scale);
            MTXTrans(mtx, centerX, centerY, z);
            MTXConcat(mtx, mtxScale, mtx);
            GXLoadPosMtxImm(mtx, 0);

            draw_rect(iVertex(left - centerX, top - centerY, 0, color.r, color.g, color.b, color.a),
                      iVertex(right - centerX, top - centerY, 0, color.r, color.g, color.b, color.a),
                      iVertex(left - centerX, bottom - centerY, 0, color.r, color.g, color.b, color.a),
                      iVertex(right - centerX, bottom - centerY, 0, color.r, color.g, color.b, color.a));

            Mtx mtx2;
            MTXIdentity(mtx2);
            GXLoadPosMtxImm(mtx2, GX_PNMTX0);
            GXSetCurrentMtx(GX_PNMTX0);
        }

        void drawLine_(f32 x0, f32 y0, f32 x1, f32 y1, f32 z, u8 width, GXColor& color) {
            GXClearVtxDesc();
            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);

            GXSetCullMode(GX_CULL_NONE);

            GXSetNumChans(1);
            GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);

            GXSetNumTexGens(0);
            GXSetNumTevStages(1);

            GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);

            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);

            Mtx mtx;
            MTXTrans(mtx, 0.0f, 0.0f, 0.0f);
            GXLoadPosMtxImm(mtx, 0);

            GXSetLineWidth(width, GX_TO_ZERO);

            f32 realWidth = (width / 6.0f) / 2.0f;

            if (x0 == x1) {
                GXBegin(GX_QUADS, GX_VTXFMT0, 4);
                {
                    GXPosition3f32(x0 - realWidth, y0, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x0 - realWidth, y1, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x1 + realWidth, y1, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x1 + realWidth, y0, z);
                    GXColor1u32(*(u32*)&color);
                }
                GXEnd();
            } else {
                GXBegin(GX_QUADS, GX_VTXFMT0, 4);
                {
                    GXPosition3f32(x0, y0 - realWidth, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x0, y1 + realWidth, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x1, y1 + realWidth, z);
                    GXColor1u32(*(u32*)&color);
                    GXPosition3f32(x1, y0 - realWidth, z);
                    GXColor1u32(*(u32*)&color);
                }
                GXEnd();
            }
        }
    }  // namespace debug
}  // namespace textinput
