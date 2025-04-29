#include "scene/textBalloon/iplBalloon.h"

#include "system/iplSystem.h"

#include <revolution/sc.h>

#include <cwchar>

namespace ipl {
    namespace scene {
        TextBalloon::TextBalloon(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* directory, const char* fileName, const math::VEC3& unk2, f32 unk3, f32 unk4) :
        unk_0x08(FALSE),
        mpText(NULL),
        mTextLen(0),
        mBalloonPos(unk2),
        unk_0x28(0),
        unk_0x2C(1),
        unk_0x30(unk3),
        unk_0x34(unk4),
        mWaitUntilFadeIn(0) {
            mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, layoutFile, directory, fileName);
            mpLayout->bind("my_IplTopBalloon_a_BalloonInOut.brlan");
            mpLayout->finishBinding();

            mpLayout->FindPaneByName("N_Balloon")->SetVisible(false);

            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Balloon"));
            textBox->SetString(L"");
        }

        TextBalloon::~TextBalloon() {
            delete mpLayout;
        }

        void TextBalloon::calc() {
            mpLayout->calc();

            switch (unk_0x08) {
                case TRUE: {
                    break;
                }
                case FALSE:
                default: {
                    return;
                }
            }
            on_pre_fadein();
        }

        void TextBalloon::draw() {
            mpLayout->draw();
        }

        void TextBalloon::init(const wchar_t* text, u32 unk0) {
            mpText = (wchar_t*)text;
            mTextLen = unk0;
            mWaitUntilFadeIn = 0;

            mpLayout->setAnmType(ANIM_TYPE_FORWARD);
            mpLayout->getAnim()->initAnmFrame(0.0f);

            mpLayout->calc();
        }

        void TextBalloon::terminate() {
            set_textbox(L" ");
            mpText = NULL;

            nw4r::lyt::Pane* balloonPane = mpLayout->FindPaneByName("N_Balloon");

            mWaitUntilFadeIn = 0;

            mpLayout->setAnmType(ANIM_TYPE_FORWARD);
            mpLayout->getAnim()->initAnmFrame(0.0f);

            mpLayout->calc();

            balloonPane->SetVisible(false);

            unk_0x08 = FALSE;
        }

        void TextBalloon::fadein() {
            if (mpText != NULL) {
                mpLayout->FindPaneByName("N_Balloon")->SetVisible(false);

                mWaitUntilFadeIn = 0;
                unk_0x08 = TRUE;

                set_textbox(mpText);
                set_translate(mBalloonPos);
            }
        }

        void TextBalloon::fadeinNoSetTextbox() {
            if (mpText != NULL) {
                mWaitUntilFadeIn = 0;
                unk_0x08 = TRUE;

                set_translate(mBalloonPos);
            }
        }

        void TextBalloon::setPos(const math::VEC3& pos, bool unk0, int unk1) {
            mBalloonPos = pos;

            unk_0x28 = unk1;
            unk_0x2C = unk0;

            nw4r::ut::Rect proj16x9;
            nw4r::ut::Rect proj4x3;

            System::getProjectionRect(&proj16x9);
            System::getProjectionRect4x3(&proj4x3);

            if (unk_0x2C == 0) {
                mBalloonPos.x *= proj4x3.GetWidth() / proj16x9.GetWidth();
            }
        }

        void TextBalloon::updatePos(const math::VEC3& pos) {
            mBalloonPos = pos;

            nw4r::ut::Rect proj16x9;
            nw4r::ut::Rect proj4x3;
            System::getProjectionRect(&proj16x9);
            System::getProjectionRect4x3(&proj4x3);

            if (unk_0x2C == 0) {
                mBalloonPos.x *= proj4x3.GetWidth() / proj16x9.GetWidth();
            }

            set_translate(mBalloonPos);
        }

        void TextBalloon::on_pre_fadein() {
            if (mWaitUntilFadeIn++ > WAIT_UNTIL_FADE_IN) {
                anm_fadein();
                snd::getSystem()->startSE("WIPL_SE_BALLOON");
                unk_0x08 = FALSE;
            }
        }

        void TextBalloon::fadeout() {
            if (!unk_0x08) {
                mpLayout->setAnmType(ANIM_TYPE_BACKWARD);
                mpLayout->start();
            }
            unk_0x08 = FALSE;
        }

        void TextBalloon::fadeoutForce() {
            if (!unk_0x08) {
                if (mpLayout->getAnim()->getAnimType() == ANIM_TYPE_FORWARD) {
                    mpLayout->getAnim()->setAnimType(ANIM_TYPE_BACKWARD);
                    mpLayout->getAnim()->setState(ANIM_STATE_PLAY);
                }
            }
            else if (unk_0x08 == TRUE) {
                mWaitUntilFadeIn = 0;
                unk_0x08 = FALSE;
            }
        }

        void TextBalloon::anm_fadein() {
            mpLayout->FindPaneByName("N_Balloon")->SetVisible(true);
            mpLayout->setAnmType(ANIM_TYPE_FORWARD);
            mpLayout->start();
        }
#pragma sym on
        void TextBalloon::set_translate(const math::VEC3& trans) {
            f32 temp0;

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                temp0 = unk_0x30;
            }
            else {
                temp0 = unk_0x34;
            }

            nw4r::lyt::Pane* balloonPane = mpLayout->FindPaneByName("N_Balloon");

            f32 temp1 = 0.0f;

            nw4r::ut::Rect proj16x9;
            nw4r::ut::Rect proj4x3;
            System::getProjectionRect(&proj16x9);
            System::getProjectionRect4x3(&proj4x3);

            const nw4r::lyt::Size* baseSize;

            switch(unk_0x28) {
                case 1: {
                    baseSize = get_size("W_Base");
                    temp1 = baseSize->width / 2;
                    break;
                }
                case 2: {
                    baseSize = get_size("W_Base");
                    temp1 = -baseSize->width / 2;
                    break;
                }
            }

            if (unk_0x2C == 0) {
                temp1 *= proj4x3.GetWidth() / proj16x9.GetWidth();
            }

            baseSize = get_size("W_Base");
            //f32 temp2 = (baseSize->width / 2) - (trans.x + temp1) - proj16x9.left;
            f32 temp2 = ((baseSize->width / 2) - (trans.x + temp1)) - proj16x9.left;

            baseSize = get_size("W_Base");
            f32 temp3 = 0.0f;
            f32 temp4 = proj16x9.right - ((baseSize->width / 2) + (trans.x + temp1));

            if (temp2 < temp0) {
                temp3 = temp0 - temp2;
            }
            else if (temp4 < temp0) {
                temp3 = temp4 - temp0;
            }

            math::VEC3 finalTrans(temp3 + trans.x + temp1, trans.y, trans.z);
            balloonPane->SetTranslate(finalTrans);
        }

        void TextBalloon::set_textbox(const wchar_t* text, BOOL bNoLimit) {
            u32 strLen;
            wchar_t fullStr[(32+3)];

            strLen = mTextLen;
            if (strLen == 0) {
                strLen = wcslen(text);
            }
            if (strLen > 32) {
                strLen = 32;
            }

            int i = 17;
            wchar_t* fullStrPtr = fullStr;
            for (; i != 0; i--) {
                fullStrPtr[1] = NULL;
                fullStrPtr += 2;
                fullStrPtr[0] = NULL;
            }
            wcsncpy(fullStr, text, 32);

            nw4r::lyt::TextBox* textPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Balloon"));

            if (!bNoLimit) {
                f32 temp1 = 0.0f;
                int extraLen = 0;

                for (u32 i = strLen; i != 0; i--) {
                    textPane->SetString(fullStr, 0, i + extraLen);
                    textPane->CalculateMtx(*mpLayout->getDrawInfo());

                    nw4r::ut::Rect textRect = mpLayout->getTextDrawRect(textPane);
                    if (textRect.GetWidth() <= temp1 + 391.5f && i <= 20) {
                        break;
                    }

                    if (System::getRegion() == SC_PRODUCT_AREA_JPN) {
                        fullStr[i-1] = NULL;
                        fullStr[i-2] = L'…';
                    }
                    else {
                        temp1 = -1.179962f;
                        extraLen = 2;
                        fullStr[i+1] = NULL;
                        fullStr[i]   = '.';
                        fullStr[i-1] = '.';
                        fullStr[i-2] = '.';
                    }
                }
            }
            else {
                textPane->FreeStringBuffer();
                textPane->AllocStringBuffer((32+3));
                textPane->SetString(fullStr);
            }

            nw4r::ut::Rect proj4x3;
            System::getProjectionRect4x3(&proj4x3);
            nw4r::ut::Rect proj16x9;
            System::getProjectionRect16x9(&proj16x9);

            f32 temp1 = proj16x9.GetWidth() / proj4x3.GetWidth();

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                temp1 = 1.0f;
            }

            nw4r::ut::Rect textRect  = mpLayout->getTextDrawRect(textPane);
            const nw4r::lyt::Size* baseSize = get_size("W_Base");

            nw4r::lyt::Size newSize(textRect.GetWidth() + 40.0f, baseSize->height);

            if (newSize.width < 160.0f * temp1) {
                newSize.width = 160.0f * temp1;
            }

            set_size("W_Base", newSize);
            set_size("W_Shade", newSize);
        }

        void TextBalloon::set_size(const char* paneName, const nw4r::lyt::Size& size) {
            mpLayout->FindPaneByName(paneName)->SetSize(size);
        }

        const nw4r::lyt::Size* TextBalloon::get_size(const char* paneName) {
            const nw4r::lyt::Size& size = mpLayout->FindPaneByName(paneName)->GetSize();
            return &size;
        }
    }
}
