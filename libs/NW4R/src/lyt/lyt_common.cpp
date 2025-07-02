#include <nw4r/lyt/common.h>
#include <nw4r/lyt/layout.h>
#include <nw4r/lyt/types.h>

#include <revolution/gx.h>
#include <revolution/tpl.h>

#include <nw4r/config.h>
#include <nw4r/lyt/config.h>

#include <string.h>

namespace nw4r {
    namespace lyt {
        namespace detail {
            bool EqualsPaneName(const char* name1, const char* name2) {
                return strncmp(name1, name2, 16) == 0;
            }

            bool EqualsMaterialName(const char* name1, const char* name2) {
                return strncmp(name1, name2, 20) == 0;
            }

            bool TestFileHeader(const res::BinaryFileHeader& fileHeader) {
                return fileHeader.byteOrder == NW4R_BYTEORDER_NATIVE && fileHeader.version == NW4R_LYT_VERSION;
            }

            bool TestFileHeader(const res::BinaryFileHeader& fileHeader, u32 testSig) {
                return static_cast<u32>(GetSignatureInt(fileHeader.signature)) == testSig && TestFileHeader(fileHeader);
            }

            TexCoordAry::TexCoordAry():
            mCap(0),
            mNum(0),
            mpData(NULL) {}

            void TexCoordAry::Free() {
                if (mpData != NULL) {
                    Layout::FreeMemory(mpData);
                    mpData = NULL;

                    mCap = 0;
                    mNum = 0;
                }
            }

            void TexCoordAry::Reserve(u8 num) {
                if (mCap < num) {
                    Free();
                    mpData = static_cast<TexCoords*>(Layout::AllocMemory(sizeof(*mpData) * num));
                    if (mpData != NULL) {
                        mCap = num;
                    }
                }
            }

            void TexCoordAry::SetSize(u8 num) {
                if (mpData == NULL) {
                    return;
                }

                if (num > mCap) {
                    return;
                }

                static TexCoords texCoords = {
                    math::VEC2(0.0f, 0.0f),
                    math::VEC2(1.0f, 0.0f),
                    math::VEC2(0.0f, 1.0f),
                    math::VEC2(1.0f, 1.0f)
                };

                for (int j = mNum; j < num; j++) {
                    for (int i = 0; i < (int)ARRSIZE(mpData[j]); i++) {
                        mpData[j][i] = texCoords[i];
                    }
                }

                mNum = num;
            }

            void TexCoordAry::GetCoord(u32 idx, math::VEC2* vec) const {
                for (int i = 0; i < VERTEXCOLOR_MAX; i++) {
                    vec[i] = mpData[idx][i];
                }
            }

            void TexCoordAry::SetCoord(u32 idx, const math::VEC2* vec) {
                for (int i = 0; i < VERTEXCOLOR_MAX; i++) {
                    mpData[idx][i] = vec[i];
                }
            }

            void TexCoordAry::Copy(const void* pResTexCoord, u8 texCoordNum) {
                mNum = ut::Max(mNum, texCoordNum);
                const TexCoords* src = static_cast<const TexCoords*>(pResTexCoord);

                for (int j = 0; j < texCoordNum; j++) {
                    for (int i = 0; i < (int)ARRSIZE(mpData[j]); i++) {
                        mpData[j][i] = src[j][i];
                    }
                }
            }

            bool IsModulateVertexColor(ut::Color* vtxColors, u8 glbAlpha) {
                if (glbAlpha != 255) {
                    return true;
                }

                if (vtxColors != NULL) {
                    if (vtxColors[VERTEXCOLOR_LT] != ut::Color::WHITE
                    || vtxColors[VERTEXCOLOR_RT] != ut::Color::WHITE
                    || vtxColors[VERTEXCOLOR_LB] != ut::Color::WHITE
                    || vtxColors[VERTEXCOLOR_RB] != ut::Color::WHITE) {
                        return true;
                    }
                }

                return false;
            }

            ut::Color MultipleAlpha(const ut::Color col, u8 alpha) {
                ut::Color ret = col;

                if (alpha != 255) {
                    ret.a = col.a * alpha / 255;
                }

                return ret;
            }

            void MultipleAlpha(ut::Color* dst, const ut::Color* src, u8 alpha) {
                for (int i = 0; i < VERTEXCOLOR_MAX; i++) {
                    dst[i] = MultipleAlpha(src[i], alpha);
                }
            }

            void SetVertexFormat(bool bModulate, u8 texCoordNum) {
                GXClearVtxDesc();
                GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
                if (bModulate) {
                    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
                }
                for (int i = 0; i < texCoordNum; i++) {
                    GXSetVtxDesc(static_cast<GXAttr>(GX_VA_TEX0 + i), GX_DIRECT);
                }
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
                if (bModulate) {
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
                }
                for (int i = 0; i < texCoordNum; i++) {
                    GXSetVtxAttrFmt(GX_VTXFMT0, static_cast<GXAttr>(GX_VA_TEX0 + i), GX_CLR_RGBA, GX_F32, 0);
                }
            }

            void DrawQuad(const math::VEC2& basePt, const Size& size, u8 texCoordNum, const TexCoords* texCoords, const ut::Color* vtxColors) {
                GXBegin(GX_QUADS, GX_VTXFMT0, 4); {
                    // Left top (LT)
                    GXPosition2f32(basePt.x, basePt.y);
                    if (vtxColors != NULL) {
                        GXColor1u32(vtxColors[VERTEXCOLOR_LT]);
                    }
                    for (int i = 0; i < texCoordNum; i++) {
                        GXTexCoord2f32(texCoords[i][VERTEXCOLOR_LT].x, texCoords[i][VERTEXCOLOR_LT].y);
                    }

                    // Right top (RT)
                    GXPosition2f32(basePt.x + size.width, basePt.y);
                    if (vtxColors != NULL) {
                        GXColor1u32(vtxColors[VERTEXCOLOR_RT]);
                    }
                    for (int i = 0; i < texCoordNum; i++) {
                        GXTexCoord2f32(texCoords[i][VERTEXCOLOR_RT].x, texCoords[i][VERTEXCOLOR_RT].y);
                    }

                    // Right bottom (RB)
                    GXPosition2f32(basePt.x + size.width, basePt.y + size.height);
                    if (vtxColors != NULL) {
                        GXColor1u32(vtxColors[VERTEXCOLOR_RB]);
                    }
                    for (int i = 0; i < texCoordNum; i++) {
                        GXTexCoord2f32(texCoords[i][VERTEXCOLOR_RB].x, texCoords[i][VERTEXCOLOR_RB].y);
                    }

                    // Left bottom (LB)
                    GXPosition2f32(basePt.x, basePt.y + size.height);
                    if (vtxColors != NULL) {
                        GXColor1u32(vtxColors[VERTEXCOLOR_LB]);
                    }
                    for (int i = 0; i < texCoordNum; i++) {
                        GXTexCoord2f32(texCoords[i][VERTEXCOLOR_LB].x, texCoords[i][VERTEXCOLOR_LB].y);
                    }
                } GXEnd();
            }

            void DrawQuad(const math::VEC2& basePt, const Size& size, u8 texCoordNum, const TexCoords* texCoords, const ut::Color* vtxColors, u8 alpha) {
                ut::Color wkVtxColors[VERTEXCOLOR_MAX];
                if (vtxColors != NULL) {
                    MultipleAlpha(wkVtxColors, vtxColors, alpha);
                }
                DrawQuad(basePt, size, texCoordNum, texCoords, vtxColors ? wkVtxColors : NULL);
            }

            void DrawLine(const math::VEC2& pos, const Size& size, ut::Color color) {
                GXClearVtxDesc();

                GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_F32, 0);

                GXSetNumChans(1);
                GXSetChanCtrl(GX_COLOR0A0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);

                GXSetChanMatColor(GX_COLOR0A0, color);
                GXSetNumTexGens(0);
                GXSetNumTevStages(1);
                GXSetNumIndStages(0);

                GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
                GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
                GXSetTevDirect(GX_TEVSTAGE0);

                GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
                GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);

                GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
                GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);

                GXSetLineWidth(6, GX_TO_ZERO);

                GXBegin(GX_LINESTRIP, GX_VTXFMT0, 5); {
                    GXPosition2f32(pos.x,               pos.y            );
                    GXPosition2f32(pos.x + size.width,  pos.y            );
                    GXPosition2f32(pos.x + size.width,  pos.y + size.height);
                    GXPosition2f32(pos.x,               pos.y + size.height);
                    GXPosition2f32(pos.x,               pos.y            );
                } GXEnd();
            }

            void InitGXTexObjFromTPL(GXTexObj* to, TPLPalette* pal, u32 id) {
                // What does this mean?
                if (pal->descriptorArray < (TPLDescriptor*)0x80000000) {
                    TPLBind(pal);
                }

                TPLDescriptor* tdp = TPLGet(pal, id);

                GXBool mipMap = tdp->textureHeader->minLOD != tdp->textureHeader->maxLOD ? 1 : 0;

                if (tdp->CLUTHeader != NULL) {
                    GXInitTexObjCI(to, tdp->textureHeader->data,
                                    tdp->textureHeader->width, tdp->textureHeader->height,
                                    static_cast<GXCITexFmt>(tdp->textureHeader->format),
                                    tdp->textureHeader->wrapS, tdp->textureHeader->wrapT,
                                    mipMap, 0);

                    GXInitTexObjUserData(to, tdp->CLUTHeader);
                }
                else {
                    GXInitTexObj(to, tdp->textureHeader->data,
                                tdp->textureHeader->width, tdp->textureHeader->height,
                                static_cast<GXTexFmt>(tdp->textureHeader->format),
                                tdp->textureHeader->wrapS, tdp->textureHeader->wrapT,
                                mipMap);
                }

                GXInitTexObjLOD(to,
                                tdp->textureHeader->minFilter, tdp->textureHeader->magFilter,
                                tdp->textureHeader->minLOD, tdp->textureHeader->maxLOD, tdp->textureHeader->LODBias,
                                false, tdp->textureHeader->edgeLODEnable, GX_ANISO_1);
            }
        }
    }
}
