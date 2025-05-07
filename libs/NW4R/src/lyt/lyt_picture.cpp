#include <nw4r/lyt/picture.h>
#include <nw4r/lyt/layout.h>
#include <nw4r/lyt/common.h>

#include <new>

namespace nw4r {
    namespace lyt {
        NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(Picture, Pane);

        Picture::Picture(u8 num) : Pane() {
            Init(num);

            Material* pMemMaterial = static_cast<Material*>(Layout::AllocMemory(sizeof(*pMemMaterial)));
            if (pMemMaterial != NULL) {
                mpMaterial = new(pMemMaterial) Material();
                mpMaterial->ReserveGXMem(num, num, num, 0, false, 0, 0, false, false, false, false);
            }
        }

        Picture::Picture(const res::Picture* pResPic, const ResBlockSet& resBlockSet) :
        Pane(pResPic) {
            u8 texCoordNum = ut::Min<u8>(pResPic->texCoordNum, GX_MAX_TEXCOORD);

            Init(texCoordNum);

            for (int i = 0; i < (int)ARRSIZE(mVtxColors); i++) {
                mVtxColors[i] = pResPic->vtxCols[i];
            }

            if (texCoordNum && !mTexCoordAry.IsEmpty()) {
                mTexCoordAry.Copy(&pResPic[1], texCoordNum);
            }

            Material* pMemMaterial = static_cast<Material*>(Layout::AllocMemory(sizeof(*pMemMaterial)));
            if (pMemMaterial != NULL) {
                const u32* matOffsTbl = detail::ConvertOffsToPtr<u32>(resBlockSet.pMaterialList,
                                                                    sizeof(*resBlockSet.pMaterialList));
                const res::Material* pResMaterial = detail::ConvertOffsToPtr<res::Material>(resBlockSet.pMaterialList,
                                                                                            matOffsTbl[pResPic->materialIdx]);

                mpMaterial = new(pMemMaterial) Material(pResMaterial, resBlockSet);
            }
        }

        void Picture::Init(u8 texNum) {
            if (texNum) {
                ReserveTexCoord(texNum);
            }
        }

        Picture::~Picture() {
            if (mpMaterial != NULL && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
                mpMaterial = NULL;
            }
            mTexCoordAry.Free();
        }

        void Picture::Append(TPLPalette* pTplRes) {
            GXTexObj texObj;
            detail::InitGXTexObjFromTPL(&texObj, pTplRes, 0);
            Append(texObj);
        }

        void Picture::Append(const GXTexObj& texObj) {
            if (mpMaterial->GetTextureNum() >= mpMaterial->GetTextureCap()
            || mpMaterial->GetTextureNum() >= mpMaterial->GetTexCoordGenCap()) {
                return;
            }

            u8 texIdx = mpMaterial->GetTextureNum();

            mpMaterial->SetTextureNum(texIdx + 1);
            mpMaterial->SetTexture(texIdx, texObj);
            mpMaterial->SetTexCoordGenNum(mpMaterial->GetTextureNum());
            mpMaterial->SetTexCoordGen(texIdx, TexCoordGen());

            SetTexCoordNum(mpMaterial->GetTextureNum());

            if (mSize == Size(0.0f, 0.0f) && mpMaterial->GetTextureNum() == GX_TEXMAP1) {
                mSize = detail::GetTextureSize(mpMaterial, GX_TEXMAP0);
            }
        }

        void Picture::ReserveTexCoord(u8 num) {
            mTexCoordAry.Reserve(num);
        }

        void Picture::SetTexCoordNum(u8 num) {
            mTexCoordAry.SetSize(num);
        }

        u8 Picture::GetTexCoordNum() const {
            return mTexCoordAry.GetSize();
        }

        void Picture::GetTexCoord(u32 idx, math::VEC2* coords) const {
            mTexCoordAry.GetCoord(idx, coords);
        }

        void Picture::SetTexCoord(u32 idx, const math::VEC2* coords) {
            mTexCoordAry.SetCoord(idx, coords);
        }

        ut::Color Picture::GetVtxColor(u32 idx) const {
            NW4R_ASSERT(idx < VERTEXCOLOR_MAX);
            return mVtxColors[idx];
        }

        void Picture::SetVtxColor(u32 idx, ut::Color value) {
            NW4R_ASSERT(idx < VERTEXCOLOR_MAX);
            mVtxColors[idx] = value;
        }

        u8 Picture::GetVtxColorElement(u32 idx) const {
            return detail::GetVtxColorElement(mVtxColors, idx);
        }

        void Picture::SetVtxColorElement(u32 idx, u8 value) {
            detail::SetVtxColorElement(mVtxColors, idx, value);
        }

        void Picture::DrawSelf(const DrawInfo& drawInfo) {
            if (mpMaterial == NULL) {
                return;
            }

            LoadMtx(drawInfo);

            bool bUseVtxCol = mpMaterial->SetupGX(detail::IsModulateVertexColor(mVtxColors, mGlbAlpha), mGlbAlpha);
            detail::SetVertexFormat(bUseVtxCol, mTexCoordAry.GetSize());

            detail::DrawQuad(GetVtxPos(), mSize,
                            mTexCoordAry.GetSize(), mTexCoordAry.GetArray(),
                            bUseVtxCol ? mVtxColors : NULL, mGlbAlpha);
        }
    }
}
