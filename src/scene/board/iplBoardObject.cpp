#include "iplSceneUI.h"

#include "scene/board/iplBoardObject.h"
#include "scene/board/iplBoard.h"

#include "scene/button/iplButton.h"

#include "iplSystem.h"

#include "sound/iplSound.h"

#include <revolution/cx.h>
#include <revolution/vf.h>

#include "utility/iplRBRUtility.h"
#include "utility/iplTPLValidity.h"

// I don't want to keep typing this out lol
#define DELETE_PTR_FORCE(x)                { delete x; x = NULL; }
#define DELETE_PTR_ARRAY_FORCE(x)          { delete[] x; x = NULL; }
#define DELETE_PTR(x)               if (x) { delete x; x = NULL; }
#define DELETE_PTR_ARRAY(x)         if (x) { delete[] x; x = NULL; }

#define PICTURE_THUMB_WIDTH     64
#define PICTURE_THUMB_HEIGHT    48

namespace ipl {
    namespace scene {
        const char* BoardObject::mAnimNames[BoardObject::TYPE_MAX][1+BoardObject::ANIM_MAX] = {
            {
                "LetterS_a.brlyt",
                "LetterS_a_PasteLetter.brlan",
                "LetterS_a_FocusIn.brlan",
                "LetterS_a_FocusOut.brlan",
                "LetterS_a_SelectLetter.brlan",
                "LetterS_a_ExitLetter.brlan",
                "LetterS_a_NextPage.brlan",
                "LetterS_a_NewAnim.brlan",
                "LetterS_a_DefAnim.brlan",
                "LetterS_a_SDAnim.brlan"
            },
            {
                "LetterS_b.brlyt",
                "LetterS_b_PasteLetter.brlan",
                "LetterS_b_FocusIn.brlan",
                "LetterS_b_FocusOut.brlan",
                "LetterS_b_SelectLetter.brlan",
                "LetterS_b_ExitLetter.brlan",
                "LetterS_b_NextPage.brlan",
                "LetterS_b_NewAnim.brlan",
                "LetterS_b_DefAnim.brlan",
               "LetterS_b_SDAnim.brlan"
            },
            {
                "LetterS_c.brlyt",
                "LetterS_c_PasteLetter.brlan",
                "LetterS_c_FocusIn.brlan",
                "LetterS_c_FocusOut.brlan",
                "LetterS_c_SelectLetter.brlan",
                "LetterS_c_ExitLetter.brlan",
                "LetterS_c_NextPage.brlan",
                "LetterS_c_NewAnim.brlan",
                "LetterS_c_DefAnim.brlan",
                "LetterS_c_SDAnim.brlan"
            }
        };

        static const struct {
            const char* file;
            const char* s_pane;
            const char* pane;
        } scThumbChangeTexFile = {
            "img/my_LetterS_b.tpl",
            "Letter0_s",
            "Letter0",
        };

        BoardObject::BoardObject() :
        ::gui::EventHandler(),
        mpLayout(NULL),
        mpGui(NULL),
        mpNigaoe(NULL),
        mpRecordData(NULL),
        mpUncompThumb(NULL),
        mBoardPos(0.0f, 0.0f),
        mMoveSpeed(0.0f, 0.0f),
        mMoveAnim(),
        mBoardDate(),
        mbModifiedPos(false),
        mbCleaned(false),
        mbCreatedPic(false),
        mbLeftWay(false),
        mbRightWay(false),
        mOptOutFlag(0),
        mPicture(),
        mpCapture(NULL),
        mbCaptured(false),
        mState(STATE_NORMAL),
        mConPos(0.0f, 0.0f),
        mConChan(0) {
            // Setup memory allocators
            mpHeapArena = (u8*)System::getMem2App()->alloc(0x46000, 4);
            mpHeap = EGG::ExpHeap::create(mpHeapArena, 0x46000, 0);
            mpAllocator = new(mpHeap, 4) EGG::Allocator(mpHeap, 4);

            mStandData.init();
        }

        void make_icon_cb_(nigaoe::Object* obj, void* work) {
            BoardObject* boardObject = static_cast<BoardObject*>(work);

            // Make the icon appear when the Mii has been created
            nw4r::lyt::Pane* pane = boardObject->getLayout()->FindPaneByName("Nigaoe");
            nw4r::lyt::Material* material = pane->GetMaterial();
            pane->SetVisible(true);
            material->SetTexture(GX_TEXMAP0, obj->getIconTexture());
        }

        void BoardObject::create(nand::LayoutFile* file, u8* recordData, u32 gameCode, const CDBId& cdbId, const CDBRecordKey& recordKey, const ipl::utility::Date& date) {
            mpRecordData = recordData;
            mpLayoutFile = file;

            mCDBGameCode = gameCode;
            mCDBId = cdbId;

            memcpy(&mCDBRecordKey, &recordKey, sizeof(CDBRecordKey));

            mBoardDate = date;

            init();
        }

        void BoardObject::init() {
            mbCreatedPic = false;
            mbModifiedPos = false;
            mbHovered = 0;
            mState = STATE_CREATE;
            mpThumbPtr = NULL;
            mpUncompThumb = NULL;
            mpThumbLength = 0;

            mMoveAnim.init(0, 8.0f, 0.0f,
                            math::VEC2(0.0f, 0.0f), 
                            math::VEC2(0.0f, 0.0f));

            mPicture.mpWork = 0;
            mPicture.mpRGB565 = NULL;

            mpCapture = NULL;

            mbCaptured = false;
        }

        void BoardObject::calc(const math::VEC2& offsetPos) {
            switch (mState) {
                case STATE_CREATE: {
                    stt_create();
                    break;
                }
                case STATE_MAKE_THUMB: {
                    stt_make_thm();
                    break;
                }
                case STATE_FADE_IN: {
                    stt_fadein();
                    break;
                }
                case STATE_PINCH: {
                    stt_pinch();
                    break;
                }
                case STATE_STAND: {
                    stt_stand();
                    break;
                }
            }

            if (mpLayout != NULL) {
                // Next batch of 10 messages to the left
                if (mbLeftWay) {
                    mbLeftWay = false;

                    nw4r::ut::Rect rect;
                    System::getProjectionRect4x3(&rect);

                    mMoveAnim.init(ANIM_TYPE_FORWARD,
                                mpLayout->getAnim(ANIM_NEXT_PAGE)->getMaxFrame(),
                                0.0f,
                                math::VEC2(0.0f, 0.0f),
                                math::VEC2((rect.left - mBoardPos.x) - mMoveSpeed.x, (-mBoardPos.y - mMoveSpeed.y) + 53.0f));

                    mMoveAnim.setAnimType(ANIM_TYPE_FORWARD);
                    mMoveAnim.play();

                    mpLayout->getAnim(ANIM_NEXT_PAGE)->play();
                }

                // Next batch of 10 messages to the right
                if (mbRightWay) {
                    mbRightWay = false;

                    nw4r::ut::Rect rect;
                    System::getProjectionRect4x3(&rect);

                    mMoveAnim.init(0,
                                mpLayout->getAnim(ANIM_NEXT_PAGE)->getMaxFrame(),
                                0.0f,
                                math::VEC2(0.0f, 0.0f),
                                math::VEC2((rect.right - mBoardPos.x) - mMoveSpeed.x, (-mBoardPos.y - mMoveSpeed.y) + 53.0f));

                    mMoveAnim.setAnimType(ANIM_TYPE_FORWARD);
                    mMoveAnim.play();

                    mpLayout->getAnim(ANIM_NEXT_PAGE)->play();
                }

                nw4r::ut::Rect projRect;
                System::getProjectionRect(&projRect);

                nw4r::ut::Rect projRect4x3;
                System::getProjectionRect4x3(&projRect4x3);

                f32 locationAdjust = projRect.GetWidth() / projRect4x3.GetWidth();

                mMoveAnim.calc();

                nw4r::math::VEC2 finalPos = mMoveAnim.get2();
                finalPos = ((offsetPos + mBoardPos) + mMoveSpeed) + finalPos;
                mpLayout->GetRootPane()->SetTranslate(nw4r::math::VEC2(finalPos.x * locationAdjust, finalPos.y));
                mpLayout->calc();
            }
        }

        void BoardObject::stt_create() {
            RBRHeader* recordHdr = (RBRHeader*)mpRecordData;

            mBoardPos.x = recordHdr->xPos;
            mBoardPos.y = recordHdr->yPos;

            mRecordType = (RBRRecordType)recordHdr->flags.type;

            if (mRecordType == RBRRecordType_Memo) {
                mLetterType = TYPE_MEMO;
            }
            else if (mRecordType == RBRRecordType_PlayTimeLog) {
                mLetterType = TYPE_PLAYTIME;
            }
            else {
                mLetterType = TYPE_LETTER;
            }

            const char** btnAnims = mAnimNames[mLetterType];
            mOptOutFlag = recordHdr->flags.optOut & 1;

            mpLayout = new(mpHeap, 4) layout::Object(mpHeap, mpLayoutFile, "arc", btnAnims[0]);
            mpLayout->bind(btnAnims[ANIM_PASTE+1]);
            mpLayout->bind(btnAnims[ANIM_FOCUS_IN+1], false);
            mpLayout->bind(btnAnims[ANIM_FOCUS_OUT+1], false);
            mpLayout->bind(btnAnims[ANIM_FOCUS+1], false);
            mpLayout->bind(btnAnims[ANIM_EXIT+1], false);
            mpLayout->bind(btnAnims[ANIM_NEXT_PAGE+1], false);
            mpLayout->bindToGroup(btnAnims[ANIM_NEW+1], "G_New", false, false);
            mpLayout->bindToGroup(btnAnims[ANIM_DEFAULT+1], "G_New", false, false);
            mpLayout->bindToGroup(btnAnims[ANIM_SD+1], "G_New", false, false);
            mpLayout->finishBinding();

            mpGui = new(mpHeap, 4) gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, mpAllocator);
        
            mpGui->setupScene(mpLayout);
            mpGui->setAllComponentTriggerTarget(false);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Letter"), true);

            layout::Wrapper::SetVisibleSafe(mpLayout->FindPaneByName("N_Pic"), false);

            wchar_t* thumbText = NULL;
            if (mLetterType == TYPE_MEMO) {
                if (recordHdr->bodyOffset != 0) {
                    thumbText = (wchar_t*)((u8*)mpRecordData + recordHdr->bodyOffset);
                }
            }
            else {
                if (recordHdr->titleOffset != 0) {
                    thumbText = (wchar_t*)((u8*)mpRecordData + recordHdr->titleOffset);
                }
            }

            set_thumb_text("T_Letter", thumbText);

            mpLayout->hide("Nigaoe");

            if (recordHdr->faceOffset != 0) {
                RFLiCharData* charData = (RFLiCharData*)((u8*)mpRecordData + recordHdr->faceOffset);
                if (System::getMiiManager()->isValid(charData)) {
                    mpNigaoe = System::getMiiManager()->create(mpHeap, 76, 76, charData, make_icon_cb_, this);
                }
            }

            for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                if (recordHdr->attach[i].type == RBRAttachmentType_MsgBoard) {
                    ARCHandle arc;
                    u8* off = ((u8*)mpRecordData + recordHdr->attach[i].offset);

                    if (arc_init_handle(off, &arc)) {
                        ARCFileInfo file;
                        if (ARCOpen(&arc, "./thumbnail_LZ.bin", &file)) {
                            mpThumbPtr = (off + ARCGetStartOffset(&file));
                            mpThumbLength = ARCGetLength(&file);
                            ARCClose(&file);
                        }
                    }

                    if (mpThumbPtr != NULL) {
                        if (CXGetCompressionType(mpThumbPtr) == CX_COMPRESSION_TYPE_LZ) {
                            u32 uncompSize = CXGetUncompressedSize(mpThumbPtr);
                            if (uncompSize != 0 && uncompSize < 0x7800) {
                                mpUncompThumb = new(mpHeap, DEFAULT_ALIGN) u8[uncompSize];
                                if (mpUncompThumb != NULL) {
                                    if (CXSecureUncompressLZ(mpThumbPtr, mpThumbLength, mpUncompThumb) == CX_SECURE_ERR_OK) {
                                        DCStoreRange(mpUncompThumb, uncompSize);
                                        change_ltrtex(mpLayout, mpUncompThumb);
                                    }
                                    else {
                                        DELETE_PTR_ARRAY_FORCE(mpUncompThumb);
                                    }
                                }
                            }
                        }
                    }
                }
                if (recordHdr->attach[i].type == RBRAttachmentType_Picture) {
                    if (create_picture(&mPicture,
                                        System::getMem2App(), System::getMem2App(),
                                        ((u8*)mpRecordData + recordHdr->attach[i].offset), 4 + recordHdr->attach[i].size)) {
                        mpCapture = new(mpHeap, 4) utility::Capture(mpHeap, 0, 0, PICTURE_THUMB_WIDTH, PICTURE_THUMB_HEIGHT, GX_TF_RGB565);
                        mbCaptured = false;
                        mbCreatedPic = true;

                        layout::Wrapper::SetVisibleSafe(mpLayout->FindPaneByName("N_Pic"), true);
                        layout::Wrapper::SetVisibleSafe(mpLayout->FindPaneByName("B_Pic"), true);
                    }
                }
            }

            if (mCDBRecordKey.location == CDB_FS_LOCATION_NAND) {
                OSTime recordTime, currTime;

                currTime = OSGetTime();
                recordTime = recordHdr->time;
                if (recordTime < currTime) {
                    if (OSSecondsToTicks(NEW_MESSAGE_DURATION_SECONDS) > (OSTime)(currTime - recordTime)) {
                        mpLayout->getAnim(ANIM_NEW)->play();
                    }
                    else {
                        mpLayout->getAnim(ANIM_DEFAULT)->play();
                    }
                }
            }
            else {
                mpLayout->getAnim(ANIM_SD)->play();
            }

            Board* board = static_cast<Board*>(System::getScene(SCENE_BOARD));
            if (board->canPlayDispSound()) {
                snd::getSystem()->startSEwithPos("WIPL_SE_MSG_DISP", mBoardPos.x);
            }

            if (mbCreatedPic) {
                mState = STATE_MAKE_THUMB;
            }
            else {
                mpLayout->getAnim(ANIM_PASTE)->play();
                mState = STATE_FADE_IN;
            }
        }

        void BoardObject::stt_make_thm() {
            if (mbCaptured) {
                DELETE_PTR_ARRAY(mPicture.mpRGB565);

                if (mpCapture != NULL) {
                    nw4r::lyt::Pane* pane = mpLayout->FindPaneByName("LetterPic");
                    pane->GetMaterial()->SetTexture(GX_TEXMAP0, mpCapture->getGXTex());
                }

                mpLayout->getAnim(ANIM_PASTE)->play();

                mState = STATE_FADE_IN;
            }
        }

        void BoardObject::stt_fadein() {
            if (!mpLayout->getAnim(ANIM_PASTE)->isPlaying()) {
                mState = STATE_NORMAL;
            }
        }

        void clean_task_(void* work);

        void BoardObject::stt_pinch() {
            controller::Interface* con = System::getController(mConChan);
            if (con != NULL) {
                nw4r::ut::Rect projRect;
                System::getProjectionRect(&projRect);
                nw4r::ut::Rect projRect4x3;
                System::getProjectionRect4x3(&projRect4x3);

                f32 locationAdjust = projRect4x3.GetWidth() / projRect.GetWidth();

                if (con->pinch() && con->isValidDpd()) {
                    nw4r::math::VEC2 oldMoveSpeed(mMoveSpeed);
                    nw4r::math::VEC2 conPos(con->getDpdProjectionPos());
                    conPos.x *= locationAdjust;

                    mMoveSpeed.x = conPos.x - mConPos.x;
                    mMoveSpeed.y = mConPos.y - conPos.y;

                    f32 speed = 0.0f;

                    f32 newX = oldMoveSpeed.x - mMoveSpeed.x;
                    f32 newY = oldMoveSpeed.y - mMoveSpeed.y;

                    f32 val = (newX * newX) + (newY * newY);

                    if (val > 0.0f) {
                        speed = (val * nw4r::math::FrSqrt(val));
                    }

                    snd::getSystem()->holdSEwithPosDis("WIPL_SE_BOARD_DRAG", mBoardPos.x + mMoveSpeed.x, speed);
                }
                else {
                    if (con->isValidDpd()) {
                        nw4r::ut::Rect rbrPos;
                        RBRUtility::getPosRect(&rbrPos);

                        math::VEC2 newPos(mBoardPos);
                        math::VEC2 conPos(con->getDpdProjectionPos());
                        conPos.x *= locationAdjust;

                        newPos.x += (conPos.x - mConPos.x);
                        newPos.y += mConPos.y - conPos.y;

                        if (newPos.x < rbrPos.left) {
                            newPos.x = rbrPos.left;
                        }
                        else if (newPos.x > rbrPos.right) {
                            newPos.x = rbrPos.right;
                        }

                        if (newPos.y < rbrPos.bottom) {
                            newPos.y = rbrPos.bottom;
                        }
                        else if (newPos.y > rbrPos.top) {
                            newPos.y = rbrPos.top;
                        }

                        if (newPos.x != mBoardPos.x || newPos.y != mBoardPos.y) {
                            mBoardPos = newPos;
                            if (mCDBRecordKey.location == CDB_FS_LOCATION_NAND) {
                                mbModifiedPos = true;
                            }
                        }
                    }

                    System::getPointer()->changeType(mConChan, PointerType::LayoutPoint);
                    mMoveSpeed.clear();
                    mConPos.clear();

                    static_cast<Board*>(System::getScene(SCENE_BOARD))->pinchOff(this);

                    if (mbModifiedPos && !mbCleaned) {
                        mbCleaned = true;
                        System::getTask1()->request(clean_task_, this, NULL);
                    }

                    mState = STATE_NORMAL;
                }
            }
            else {
                System::getPointer()->changeType(mConChan, PointerType::LayoutPoint);
                mMoveSpeed.clear();
                mConPos.clear();

                static_cast<Board*>(System::getScene(SCENE_BOARD))->pinchOff(this);

                mState = STATE_NORMAL;
            }
        }

        void BoardObject::stt_stand() {
            f32 dVar2 = nw4r::math::CosFIdx(((mStandData.unk_0x0C * 30.0f + 30.0f) * 0.7111111f));
            f32 dVar3 = nw4r::math::SinFIdx(((mStandData.unk_0x0C * 30.0f + 30.0f) * 0.7111111f));

            mBoardPos = (((mStandData.pos * (f32)(10 - mStandData.unk_0x08)) + (math::VEC2(dVar3 * 160.0f, dVar2 * 160.0f) * mStandData.unk_0x08)) / 10.0f);

            if ((mStandData.unk_0x08 += 1) > 10) {
                mStandData.init();
                mState = STATE_NORMAL;
            }
        }

        void BoardObject::draw() {
            if (mpLayout == NULL) {
                return;
            }
            
            if (mState == STATE_MAKE_THUMB) {
                return;
            }

            mpLayout->draw();
        }

        void BoardObject::capture() {
            if (mState == STATE_MAKE_THUMB && !mbCaptured) {
                nw4r::ut::Rect projRect4x3;
                System::getProjectionRect4x3(&projRect4x3);

                nw4r::math::MTX44 mtx;
                MTXOrtho(mtx, 0.0f, projRect4x3.GetHeight(), 0.0f, projRect4x3.GetWidth(), -100.0f, 100.0f);

                GXSetProjection(mtx, GX_ORTHOGRAPHIC);

                utility::Graphics::calcOrthoCamera();
                utility::Graphics::setCamera();

                utility::Graphics::drawTexture(nw4r::ut::Rect(0.0f, 0.0f, PICTURE_THUMB_WIDTH, PICTURE_THUMB_HEIGHT), mPicture.texObj, (GXColor){255, 255, 255, 255}, 1);
                if (mpCapture != NULL) {
                    mpCapture->capture(TRUE);
                }

                mbCaptured = true;
            }
        }

        void BoardObject::destroy() {
            mbModifiedPos = false;
            mbCleaned = false;

            DELETE_PTR(mpLayout);
            DELETE_PTR(mpGui);
            DELETE_PTR_ARRAY(mpRecordData)
            DELETE_PTR_ARRAY(mpUncompThumb);
            DELETE_PTR_ARRAY(mPicture.mpRGB565);
            DELETE_PTR_ARRAY(mPicture.mpWork);
            DELETE_PTR(mpCapture);

            if (mpNigaoe != NULL) {
                if (!mpNigaoe->created()) {
                    System::getMiiManager()->detach(mpNigaoe);
                }
                DELETE_PTR_FORCE(mpNigaoe);
            }
        }

        void BoardObject::destroy_heap() {
            DELETE_PTR(mpAllocator);
            if (mpHeap != NULL) {
                mpHeap->destroy();
                mpHeap = NULL;
            }

            if (mpHeapArena != NULL) {
                System::getMem2App()->free(mpHeapArena);
            }
        }

        BOOL BoardObject::create_picture(picture* picture, EGG::Heap* picHeap, EGG::Heap* workHeap, u8* src, u32 srcSize) {
            BOOL result = FALSE;
            
            picture->width = ODHGetWidth(src);
            picture->height = ODHGetHeight(src);

            u32 pictureSize = picture->width * picture->height;

            if (picture->width > 0 && picture->width <= 512 && picture->height > 0 && picture->height <= 456) {
                u32 rgb565Size = pictureSize * 2;
                picture->mpRGB565 = new(picHeap, DEFAULT_ALIGN) u8[rgb565Size];

                u32 workSize = ODHGetWorkSize(pictureSize);
                picture->mpWork = new(workHeap, -DEFAULT_ALIGN) u8[workSize];

                if (picture->mpRGB565 != NULL && picture->mpWork != NULL) {
                    if (ODHDecodeRGB565(src, srcSize, picture->mpRGB565, rgb565Size, picture->mpWork, workSize)) {
                        DCStoreRange(picture->mpRGB565, rgb565Size);
                        GXInitTexObj(&picture->texObj, picture->mpRGB565, picture->width, picture->height, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, 0);
                        
                        result = TRUE;

                        DELETE_PTR_ARRAY_FORCE(picture->mpWork);
                    }
                    else {
                        DELETE_PTR_ARRAY_FORCE(picture->mpRGB565);
                        DELETE_PTR_ARRAY_FORCE(picture->mpWork);
                    }
                }
                else {
                    DELETE_PTR_ARRAY(picture->mpRGB565);
                    DELETE_PTR_ARRAY(picture->mpWork);
                }
            }

            return result;
        }

        void BoardObject::reset_gui() {
            if (mpGui != NULL) {
                mpGui->init();
            }

            if (mbHovered) {
                if (mpLayout != NULL) {
                    mpLayout->getAnim(ANIM_FOCUS_OUT)->play();
                }
                mbHovered = 0;
            }
        }

        void BoardObject::set_thumb_text(const char* paneName, const wchar_t* thumbText) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));

            wchar_t local_28[THUMB_TEXT_LENGTH + 3 /* "..." */ + 1 /* NULL */] = L"";
            memset(local_28, 0, sizeof(local_28));

            if (thumbText != NULL) {
                for (int i = 0; i < THUMB_TEXT_LENGTH+1 && thumbText[i] != (u16)'\n'; i++) {
                    local_28[i] = thumbText[i];
                }
            }

            if (System::getRegion() == SC_LANG_JAPANESE) {
                if (local_28[THUMB_TEXT_LENGTH] != 0) {
                    local_28[THUMB_TEXT_LENGTH+0] = L'…';
                }
            }
            else {
                if (local_28[THUMB_TEXT_LENGTH] != 0) {
                    local_28[THUMB_TEXT_LENGTH+2] = '.';
                    local_28[THUMB_TEXT_LENGTH+1] = '.';
                    local_28[THUMB_TEXT_LENGTH+0] = '.';
                }
            }

            textBox->SetString(local_28);
        }
        
        void BoardObject::update(int chan) {
            if (mpGui != NULL) {
                mpGui->update(chan);
            }
        }

        void BoardObject::start_point_event(int index, controller::Interface* con) {
            if (mbHovered == FALSE) {
                mpLayout->getAnim(ANIM_FOCUS_IN)->play();
                snd::getSystem()->startSE("WIPL_SE_BOARD_FOCUS");
                if (con != NULL) {
                    con->rumble();
                }
            }

            mbHovered++;

            static_cast<Board*>(System::getScene(SCENE_BOARD))->setHoveredObj(index, this);
            static_cast<Board*>(System::getScene(SCENE_BOARD))->reappend(this);
        }

        void BoardObject::start_left_event(int index) {
            if (mbHovered == TRUE) {
                if (mpLayout->getAnim(ANIM_FOCUS_IN)->isPlaying()) {
                    mpLayout->getAnim(ANIM_FOCUS_IN)->stop();
                }
                mpLayout->getAnim(ANIM_FOCUS_OUT)->play();
            }

            mbHovered--;

            static_cast<Board*>(System::getScene(SCENE_BOARD))->setHoveredObj(index, NULL);
        }

        void BoardObject::change_ltrtex(layout::Object* layout, void* arcData) {
            ARCHandle arc;
            ARCFileInfo file;

            if (arc_init_handle(arcData, &arc)) {
                if (ARCOpen(&arc, scThumbChangeTexFile.file, &file)) {
                    TPLPalette* ptr = (TPLPalette*)((u8*)arcData + ARCGetStartOffset(&file));
                    u32 length = ARCGetLength(&file);

                    change_tex(layout, scThumbChangeTexFile.s_pane, ptr, length);
                    change_tex(layout, scThumbChangeTexFile.pane, ptr, length);

                    ARCClose(&file);
                }
            }
        }

        void BoardObject::change_tex(layout::Object* layout, const char* paneName, TPLPalette* tplData, u32 tplSize) {
            if (utility::tpl_validity::isValidForLTX(tplData, tplSize)) {
                nw4r::lyt::Pane* pane = layout->FindPaneByName(paneName);
                pane->GetMaterial()->SetTexture(GX_TEXMAP0, tplData);
            }
        }

        void BoardObject::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = static_cast<controller::Interface*>(data);

            int num = getLatestEventCtrlNo();

            switch (event) {
                case ON_POINT: {
                    if (strcmp(paneName, "B_Letter") == 0) {
                        start_point_event(num, con);
                    }
                    break;
                }
                case ON_LEFT: {
                    if (strcmp(paneName, "B_Letter") == 0) {
                        start_left_event(num);
                    }
                    break;
                }
                case ON_HOLD: {
                    if (con != NULL && con->decide()) {
                        if (static_cast<Board*>(System::getScene(SCENE_BOARD))->getHoveredObj(num) == this) {
                            if (static_cast<Button*>(System::getScene(SCENE_BUTTON))->isActive()
                            && !static_cast<Button*>(System::getScene(SCENE_BUTTON))->hasReservedAnim()) {
                                static_cast<Board*>(System::getScene(SCENE_BOARD))->focus(this);
                            }
                        }
                    }
                    break;
                }
                case ON_TRIG: {
                    if (con != NULL && con->pinchTrg()) {
                        if (mState != STATE_PINCH && static_cast<Board*>(System::getScene(SCENE_BOARD))->pinch(this)) {
                            System::getPointer()->changeType(num, PointerType::LayoutGrab);

                            nw4r::ut::Rect projRect;
                            System::getProjectionRect(&projRect);
                            nw4r::ut::Rect projRect4x3;
                            System::getProjectionRect4x3(&projRect4x3);

                            f32 locationAdjust = projRect4x3.GetWidth() / projRect.GetWidth();

                            mConPos = con->getDpdProjectionPos();

                            mConChan = num;
                            mState = STATE_PINCH;

                            mConPos.x *= locationAdjust;
                        }
                    }
                    break;
                }
            }
        }

        void clean_task_(void* work) {
            if (System::getScene(SCENE_BOARD) != NULL) {
                BoardObject* boardObject = static_cast<BoardObject*>(work);
                boardObject->startClean();
            }
        }

        void BoardObject::left_away() {
            mbLeftWay = true;
        }

        void BoardObject::right_away() {
            mbRightWay = true;
        }

        BOOL BoardObject::get_nigaoe_name(wchar_t* name, int nameLen) {
            BOOL result = FALSE;

            memset(name, 0, nameLen * sizeof(wchar_t));

            RBRHeader* recordHdr = (RBRHeader*)mpRecordData;
            u32 offset = recordHdr->faceOffset;

            if (offset != 0) {
                if (mpNigaoe != NULL && mpNigaoe->created()) {
                    RFLiCharData* charData = (RFLiCharData*)((u8*)mpRecordData + offset);
                    if (System::getMiiManager()->isValid(charData)) {
                        wcsncpy(name, (wchar_t*)charData->name, RFL_NAME_LENGTH);
                        result = TRUE;
                    }
                }
            }

            return result;
        }

        BOOL BoardObject::permit_reply() const {
            RBRHeader* recordHdr = (RBRHeader*)mpRecordData;
            BOOL result = FALSE;
            if (recordHdr->addrType != NWC24_FRIENDTYPE_NONE && !recordHdr->noReplyFlag) {
                result = TRUE;
            }
            return result;
        }

        u16 BoardObject::get_addr_type() const {
            RBRHeader* recordHdr = (RBRHeader*)mpRecordData;
            return recordHdr->addrType;
        }

        NWC24FriendAddr BoardObject::get_addr() const {
            RBRHeader* recordHdr = (RBRHeader*)mpRecordData;
            return recordHdr->addr;
        }

        void BoardObject::delete_record() {
            System::getCdbManager()->deleteRecord(&mCDBRecordKey);
        }

        void BoardObject::clean() {
            if (mbModifiedPos && mpRecordData != NULL) {
                cdb::Manager* cdbManager = System::getCdbManager();

                CDBRecord cdbRecord;
                RBRHeader header = *(RBRHeader*)mpRecordData;

                header.xPos = mBoardPos.x;
                header.yPos = mBoardPos.y;
                header.crc32 = cdbManager->calcCRC(&header);
                if (cdbManager->findByKey(&cdbRecord, &mCDBRecordKey)) {
                    cdbManager->unused(); // does nothing but got that auto mutex lock

                    if (cdbManager->open(&cdbRecord)) {
                        if (cdbManager->seek(&cdbRecord, 0, CDB_SEEK_BEGIN)) {
                            cdbManager->write(&cdbRecord, &header, sizeof(RBRHeader));
                        }
                        cdbManager->close(&cdbRecord);
                    }
                }

                mbModifiedPos = false;
            }
        }

        BOOL BoardObject::is_protected() const {
            BOOL result = FALSE;
            u32 status[VF_SD_SLOT_MAX];

            status[VF_SD_SLOT_0] = 0;

            VFError vfErr = VFGetSDDirectStatus("SD", status);
            if (mCDBRecordKey.location == CDB_FS_LOCATION_SD) {
                if (vfErr == VF_ERR_SUCCESS && (status[VF_SD_SLOT_0] & VF_STATUS_PROTECTED)) {
                    result = TRUE;
                }
            }

            return result;
        }

        BOOL BoardObject::arc_init_handle(void* buffer, ARCHandle* handle) {
            BOOL result = FALSE;
            ARCHeader* header = ((ARCHeader*)buffer);

            if (buffer == NULL) {
                goto out;
            }

            if (handle == NULL) {
                goto out;
            }

            if (header->magic != ARC_MAGIC) {
                goto out;
            }

            if (((u8*)buffer + header->fstStart) == 0) {
                goto out;
            }

            result = ARCInitHandle(buffer, handle);

out:
            return result;
        }

        void GenerateWEAK() {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(((nw4r::lyt::Pane*)NULL)->FindPaneByName(NULL));
        }
    }
}
