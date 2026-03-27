#include "scene/channelSelect/iplChannelObj.h"

#include <private/es.h>
#include <revolution/os.h>
#include <revolution/sc.h>

#include "iplSound.h"
#include "iplSystem.h"

namespace ipl {
    namespace scene {
        // clang-format off
        static const char* scCursur = "Cursur_a";

        static const char* scCursorAnims[] = {
            "my_IplTop_d_FocusOff.brlan",
            "my_IplTop_d_FocusOn.brlan",
            "my_IplTop_d_Select.brlan",
        };

        static const char* scBalloonText = "T_Balloon";

        static const char* scBasePane = "W_Base";
        static const char* scShadePane = "W_Shade";

        static const char* scLangGroups[] = {
            "JPN",
            "ENG",
            "GER",
            "FRA",
            "SPA",
            "ITA",
            "NED",
            "CHN",
            "ENG",
            "KOR",
        };

        static const char* scLangGroupLookup[SC_PRODUCT_AREA_MAX][16] = {
            // Japan
            {
                "JPN",
                NULL,
            },
            // USA
            {
                "ENG",
                "FRA",
                "SPA",
                NULL,
            },
            // Europe
            {
                "ENG",
                "FRA",
                "GER",
                "SPA",
                "ITA",
                "NED",
                NULL,
            },
            {
                NULL,
            },
            {
                NULL,
            },
            {
                NULL,
            },
            // Korean
            {
                "KOR",
                NULL,
            },
            {
                NULL,
            },
            {
                NULL,
            },
            {
                NULL,
            },
            {
                NULL,
            },
            // China
            {
                "CHN",
                NULL,
            },
        };

        static const u32 scLangLookup[SC_PRODUCT_AREA_MAX][16] = {
            // Japan
            {
                SC_LANG_JAPANESE,
                -1
            },
            // USA
            {
                SC_LANG_ENGLISH,
                SC_LANG_FRENCH,
                SC_LANG_SPANISH,
                -1
            },
            // Europe
            {
                SC_LANG_ENGLISH,
                SC_LANG_FRENCH,
                SC_LANG_GERMAN,
                SC_LANG_SPANISH,
                SC_LANG_ITALIAN,
                SC_LANG_DUTCH,
                -1
            },
            {
                -1
            },
            {
                -1
            },
            {
                -1
            },
            // Korean
            {
                SC_LANG_KOREAN,
                -1
            },
            {
                -1
            },
            {
                -1
            },
            {
                -1
            },
            {
                -1
            },
            // China
            {
                SC_PRODUCT_AREA_HKG,
                -1
            },
        };
        
        const float cfChanThumbOfss[][2] = {
            {
                64.0f, 48.0f
            },
            {
                85.0f, 48.0f
            }
        };
        // clang-format on

        ChannelObj::ChannelObj(EGG::Heap* heap, int page, int index)
            : mpMainHeap(heap), mpCursorHeap(NULL), mpBalloonHeap(NULL), mpDiskHeap(NULL), mState(STATE_LOAD_THUMBNAIL), mChanPage(page),
              mChanIndex(index), mpBasePane(NULL), mpNoDiskLayout(NULL), mpNoDiskAnim(NULL), mpDiskLayout(NULL), mpDiskAnim(NULL),
              mpCursorLayout(NULL), unk_0x58(0), unk_0x5C(0), mpBalloonLayout(NULL), unk_0x68(0), unk_0x6C(0), unk_0x70(0), unk_0x74(0),
              mpNwc24NewGroup(NULL), mpNwc24NewAnim(NULL), mpNwc24NewPlayAnim(false), unk_0x84(0), unk_0x88(0),
              mThumbWidth(cfChanThumbOfss[SCGetAspectRatio()][0]), mThumbHeight(cfChanThumbOfss[SCGetAspectRatio()][1]), mpExtModuleWorkHeap(NULL),
              mpModuleHeap(NULL), mpPrevModuleHeap(NULL), mbModuleTerminated(false), mpModuleThread(NULL),
              mExtModuleState(EXT_MODULE_STATE_UNAVAILABLE), unk_0xF4(false), mModuleFillCount(MAX_MODULE_FILL_COUNT),
              unk_0xFC(MAX_MODULE_FILL_COUNT), mpRSOHeader(NULL), mpRSOBss(NULL), mpCSHeap(NULL) {
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::ut::Rect projRect4x3;
                System::getProjectionRect4x3(&projRect4x3);
                nw4r::ut::Rect projRect16x9;
                System::getProjectionRect16x9(&projRect16x9);

                mLocationAdjust = projRect16x9.GetWidth() / projRect4x3.GetWidth();
            } else {
                mLocationAdjust = 1.0f;
            }

            memset(mpModuleAnims, 0, sizeof(mpModuleAnims));
        }

        ChannelObj::~ChannelObj() {
            if (mpThumbFile != NULL) {
                delete mpThumbFile;
            }

            if (isDiskChannel()) {
                destroyDiskLayout();
            } else {
                mpThumbLayout->destroyHeap();
            }

            if (mpCursorLayout != NULL) {
                delete mpCursorLayout;
            }

            if (mpBalloonLayout != NULL) {
                delete mpBalloonLayout;
            }
        }

        void ChannelObj::prepare() {
            if (mState == STATE_LOAD_THUMBNAIL) {
                mState = loadThumbnailAsync();
            }
        }

        void ChannelObj::setHeaps(EGG::Heap* cursorHeap, EGG::Heap* balloonHeap) {
            mpCursorHeap = cursorHeap;
            mpBalloonHeap = balloonHeap;
        }

        void ChannelObj::setDiskLayouts(layout::Object* diskLyt, layout::Animator* diskAnim, EGG::Heap* diskHeap) {
            mpNoDiskLayout = diskLyt;
            mpNoDiskAnim = diskAnim;
            mpDiskHeap = diskHeap;
        }

        void ChannelObj::setBasePane(const nw4r::lyt::Pane* basePane) {
            mpBasePane = (nw4r::lyt::Pane*)basePane;
        }

        void ChannelObj::initExtModule(EGG::Heap* workHeap, channel::RsoThread* thread) {
            mpExtModuleWorkHeap = workHeap;
            mpModuleThread = thread;
        }

        void ChannelObj::create(nand::LayoutFile* sysLayoutFile) {
            if (!isLayoutCreated()) {
                mpSysLayoutFile = sysLayoutFile;

                if (mpCursorLayout == NULL) {
                    initCursor();
                }

                if (mpBalloonLayout == NULL && System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                    initBalloon();
                }

                if (mState == STATE_CREATE_THUMBNAIL || mState == STATE_WAIT_LOAD_THUMBNAIL && mpThumbFile->isFinished()) {
                    createThumbnail();
                    mState = STATE_NORMAL;
                }
            }
        }

        void ChannelObj::calc() {
            switch (mState) {
                case STATE_LOAD_THUMBNAIL: {
                    mState = loadThumbnailAsync();
                    break;
                }
                case STATE_WAIT_LOAD_THUMBNAIL: {
                    if (!mpThumbFile->isFinished()) {
                        break;
                    }
                    mState = STATE_CREATE_THUMBNAIL;
                }
                case STATE_CREATE_THUMBNAIL: {
                    createThumbnail();
                    mState = STATE_NORMAL;
                    break;
                }
                case STATE_NORMAL: {
                    calcNormal();
                    break;
                }
            }
        }

        int ChannelObj::calcExtModule(EGG::ExpHeap* expHeap, bool unk0, bool unk1) {
            int result = EXT_MODULE_RESULT_WAIT;

            if (mExtModuleState == EXT_MODULE_STATE_UNAVAILABLE) {
                return EXT_MODULE_RESULT_UNAVAILABLE;
            }

            switch (mExtModuleState) {
                case EXT_MODULE_STATE_LOAD: {
                    if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                        mModuleFillCount += 1;
                        if (unk0 && mModuleFillCount > unk_0xFC) {
                            mpPrevModuleHeap = mpModuleHeap;
                            mpModuleHeap = expHeap;

                            mpModuleFile = System::getChannelManager()->loadThumbnailRsoAsync(mpExtModuleWorkHeap, mChanPage, mChanIndex);
                            if (mpModuleFile == NULL) {
                                mpModuleFile = System::getChannelManager()->loadThumbnailCSAsync(mpExtModuleWorkHeap, mChanPage, mChanIndex);
                                mExtModuleState = EXT_MODULE_STATE_PREPARE_CS;
                            } else {
                                mExtModuleState = EXT_MODULE_STATE_PREPARE_RSO;
                            }

                            result = EXT_MODULE_RESULT_CALC;
                        } else {
                            result = EXT_MODULE_RESULT_WAIT;
                        }
                    }
                    break;
                }
                case EXT_MODULE_STATE_PREPARE_RSO: {
                    if (mpModuleFile->isFinished()) {
                        if (mpModuleFile->checkData() != nand::RESULT_SUCCESS && mpModuleFile->checkData() != nand::RESULT_NONE) {
                            clearModuleParam();
                            result = EXT_MODULE_RESULT_DESTROY;
                            break;
                        }

                        mpRSOHeader = (RSOObjectHeader*)mpModuleFile->getBuffer();
                        mpRSOBss = NULL;

                        if (mpRSOHeader->bssSize != 0) {
                            mpRSOBss = new (mpExtModuleWorkHeap, DEFAULT_ALIGN) u8[mpRSOHeader->bssSize];
                            memset(mpRSOBss, 0, mpRSOHeader->bssSize);
                        }

                        RSOLinkList(mpRSOHeader, mpRSOBss);

                        if (RSOIsImportSymbolResolvedAll(mpRSOHeader)) {
                            OSReport("Module's ImportSymbol is resolved all.\n");
                        } else {
                            OSReport("%d module's ImportSymbols are not resolved.\n", RSOGetNumImportSymbolsUnresolved(mpRSOHeader));
                        }

                        // Calc(int)
                        // This is during ChannelObj's loop.
                        mpRSOCalc = (channel::CalcFunc)RSOFindExportSymbolAddr(mpRSOHeader, "Calc");

                        // ThreadCalc()
                        // This is executed on a seperate thread.
                        mpModuleThread->setCalcFunc((channel::ThreadCalcFunc)RSOFindExportSymbolAddr(mpRSOHeader, "ThreadCalc"));

                        ((void (*)())mpRSOHeader->prolog)();

                        // Create(nw4r::lyt::Layout*)
                        // This is the initialization of the module.
                        channel::CreateFunc createFunc = (channel::CreateFunc)RSOFindExportSymbolAddr(mpRSOHeader, "Create");
                        if (createFunc != NULL) {
                            createFunc(mpThumbLayout->getNW4RLyt());
                        }

                        mpModuleThread->start();

                        mpRSOAfterCalc = false;
                        mbRSOThreadExit = false;

                        mExtModuleState = EXT_MODULE_STATE_RSO_CALC;
                    }

                    result = EXT_MODULE_RESULT_CALC;
                    break;
                }
                case EXT_MODULE_STATE_RSO_CALC: {
                    if (!mbRSOThreadExit && mpModuleThread->IsThreadTerminated()) {
                        mpModuleThread->WaitForThreadExit();
                        mbRSOThreadExit = true;
                    }

                    if (!mpRSOAfterCalc && mpRSOCalc(!(unk1 - 1))) {
                        mpRSOAfterCalc = true;
                    }

                    if (mbRSOThreadExit && mpRSOAfterCalc) {
                        mbModuleTerminated = true;

                        ((void (*)())mpRSOHeader->epilog)();

                        RSOUnLinkList(mpRSOHeader);

                        mpRSOCalc = NULL;

                        mpModuleThread->setCalcFunc(NULL);

                        clearModuleParam();

                        result = EXT_MODULE_RESULT_DESTROY;
                    } else {
                        result = EXT_MODULE_RESULT_CALC;
                    }

                    break;
                }
                case 4: {
                    if (mpModuleFile->isFinished()) {
                        if (mpModuleFile->checkData() != nand::RESULT_SUCCESS && mpModuleFile->checkData() != nand::RESULT_NONE) {
                            clearModuleParam();
                            result = EXT_MODULE_RESULT_DESTROY;
                            break;
                        }

                        if (mpCSHeap == NULL) {
                            mpCSHeap = EGG::ExpHeap::create(-1, mpExtModuleWorkHeap, 0);
                        }

                        System::getCSManager()->create(mpCSHeap);

                        channel::ChannelScriptManager::CSData data;

                        data.heap = mpModuleHeap;
                        data.layout = mpThumbLayout;
                        data.anims = mpModuleAnims;
                        data.titleId = System::getChannelManager()->getTitleID(mChanPage, mChanIndex);
                        data.threadTerminated = mbModuleTerminated;
                        data.unk_0x19 = true;
                        data.unk_0x1A = true;

                        if (!(System::getNwc24Manager() != NULL && System::getNwc24Manager()->isNewMessageThere(ES_TITLE_CODE(data.titleId)))) {
                            data.unk_0x1A = false;
                        }

                        System::getCSManager()->setData(data);
                        if (!System::getCSManager()->init(mpModuleFile, mpModuleThread)) {
                            mExtModuleState = EXT_MODULE_STATE_DESTROY_CS;
                        } else {
                            mExtModuleState = EXT_MODULE_STATE_CS_CALC;
                        }

                        delete mpModuleFile;
                        mpModuleFile = NULL;
                    }

                    result = EXT_MODULE_RESULT_CALC;
                    break;
                }
                case EXT_MODULE_STATE_CS_CALC: {
                    System::getCSManager()->calc();

                    if (mpModuleThread->IsThreadTerminated()) {
                        System::getCSManager()->finish();
                        mbModuleTerminated = true;
                        mExtModuleState = EXT_MODULE_STATE_DESTROY_CS;
                    }

                    result = EXT_MODULE_RESULT_CALC;
                    break;
                }
                case EXT_MODULE_STATE_DESTROY_CS: {
                    System::getCSManager()->destroy();
                    clearModuleParam();
                    result = EXT_MODULE_RESULT_DESTROY;
                    break;
                }
                default: {
                    break;
                }
            }

            return result;
        }

        void ChannelObj::drawThumbnail() {
            if (isLayoutCreated()) {
                mpThumbLayout->draw();
            }
        }

        void ChannelObj::drawCursor() {
            mpCursorLayout->draw();
        }

        void ChannelObj::drawBalloon() {
            if (mpBalloonLayout != NULL) {
                mpBalloonLayout->draw();
            }
        }

        void ChannelObj::createDiskLayout(void* data) {
            mpDiskLayout = layout::Object::create(mpDiskHeap, 0x19000, data, "arc", "icon.brlyt");
            setLangPane(mpDiskLayout);

            if (mpDiskLayout->searchFile("icon.brlan")) {
                mpDiskAnim = mpDiskLayout->bind("icon.brlan");
            } else if (mpDiskLayout->searchFile("icon_Whole.brlan")) {
                mpDiskAnim = mpDiskLayout->bind("icon_Whole.brlan");
            } else {
                mpDiskAnim = NULL;
            }

            changeDisk();

            bindNewAnm(mpDiskLayout);

            unk_0x84 = 1;

            mpDiskLayout->finishBinding();
        }

        void ChannelObj::destroyDiskLayout() {
            if (mpDiskLayout != NULL) {
                mpDiskLayout->destroyHeap();
                mpDiskLayout = NULL;

                mpDiskAnim = NULL;

                mpNwc24NewPlayAnim = false;
                unk_0x84 = 0;
            }
        }

        void ChannelObj::changeDisk() {
            if (isDiskChannel() && (unk_0x68 == 1 || unk_0x68 == 2 || unk_0x68 == 3)) {
                setBalloonAnim(4);
                setBalloonAnim(1);
            }
        }

        void ChannelObj::resetDiskTitleName() {
            if (isDiskChannel()) {
                if (mpDiskLayout != NULL) {
                    setBalloonText((wchar_t*)System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0));
                } else {
                    setBalloonText(System::getMessage(0));
                }
            }
        }

        nw4r::math::VEC3& ChannelObj::getTranslate() const {
            return (nw4r::math::VEC3&)mpThumbLayout->GetRootPane()->GetTranslate();
        }

        BOOL ChannelObj::isDiskChannel() const {
            if (isValid() && System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == channel::SCENE_ID_DISK_CHANNEL) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        BOOL ChannelObj::isValid() const {
            return System::getChannelManager()->hasLoadedBnr(mChanPage, mChanIndex);
        }

        void ChannelObj::onPoint(int unk) {
            if (unk & 0x10000U) {
                unk_0x74 = 0;
            } else if (unk & 0x20000U) {
                unk_0x74 = 1;
            } else if ((unk_0x74 += 1) > 1) {
                return;
            }

            if (!(unk & 1)) {
                setCursorAnim(1);
            }
            if (!(unk & 2)) {
                setBalloonAnim(1);
            }
        }

        void ChannelObj::onLeft(int unk) {
            if (unk & 0x10000U) {
                unk_0x74 = 0;
            } else if (unk & 0x20000U) {
                unk_0x74 = 1;
            } else if ((unk_0x74 -= 1) > 0) {
                return;
            }

            if (!(unk & 1)) {
                setCursorAnim(3);
            }
            if (!(unk & 2)) {
                setBalloonAnim(4);
            }
        }

        void ChannelObj::onPinch(bool unk) {
            if (unk) {
                setCursorAnim(1);
                unk_0x74 = 1;
            } else {
                setCursorAnim(0);
                unk_0x74 = 0;
            }

            setBalloonAnim(0);
        }

        void ChannelObj::setCursorDecideAnim() {
            setCursorAnim(4);
        }

        void ChannelObj::initCursorAnim(bool unk) {
            setCursorAnim(0);
            if (unk) {
                unk_0x74 = 0;
            }
        }

        void ChannelObj::initBalloonAnim(bool unk) {
            setBalloonAnim(0);
            if (unk) {
                unk_0x74 = 0;
            }
        }

        void ChannelObj::FillModuleCount() {
            mModuleFillCount = MAX_MODULE_FILL_COUNT;
        }

        void ChannelObj::setLangPane(const layout::Object* layout) {
            int lang = System::getLanguage();
            const char* langGroup = scLangGroups[lang];
            char local_50[40] = "";

            bool bVar4 = false;

            for (nw4r::lyt::GroupList::Iterator it = layout->GetGroupList().GetBeginIter(); it != layout->GetGroupList().GetEndIter(); it++) {
                if (strcmp(it->GetName(), langGroup) == 0) {
                    bVar4 = true;
                } else {
                    bool bVar3 = true;
                    for (int i = 0; i < channel::MAX_ANIMS; i++) {
                        char name[6];
                        sprintf(name, "Rso%d", i);
                        if (strncmp(it->GetName(), name, 5) == 0) {
                            bVar3 = false;
                            break;
                        }
                    }

                    if (bVar3) {
                        for (nw4r::lyt::PaneLinkList::Iterator it2 = it->GetPaneList().GetBeginIter(); it2 != it->GetPaneList().GetEndIter(); it2++) {
                            it2->mTarget->SetVisible(false);
                        }

                        for (int i = 0; i < 10; i++) {
                            if (strncmp(it->GetName(), scLangGroups[i], 3) == 0) {
                                memcpy(&local_50[i], it->GetName(), 3);
                                local_50[i + 3] = 0;
                                break;
                            }
                        }
                    }
                }
            }

            if (bVar4) {
                nw4r::lyt::Group* group = layout->FindGroupByName(langGroup);
                for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter(); it++) {
                    it->mTarget->SetVisible(true);
                }
            } else {
                s32 region = System::getRegion();
                for (int i = 0; i < channel::MAX_ANIMS; i++) {
                    char* groupName = (char*)scLangGroupLookup[region][i];

                    if (groupName != NULL) {
                        if (strcmp(groupName, &local_50[scLangLookup[region][i]]) == 0) {
                            nw4r::lyt::Group* group = layout->FindGroupByName(groupName);
                            for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter();
                                 it++) {
                                it->mTarget->SetVisible(true);
                            }
                        }
                    }
                }
            }
        }

        void ChannelObj::bindRsoAnm(layout::Object* layout, layout::Animator** anims, const char* layoutFile) {
            for (int i = 0; i < channel::MAX_ANIMS; i++) {
                char fileName[20];
                sprintf(fileName, "%s_Rso%d.brlan", layoutFile, i);

                if (layout->searchFile(fileName)) {
                    char groupName[8];
                    sprintf(groupName, "Rso%d", i);

                    bool found = false;
                    for (nw4r::lyt::GroupList::Iterator it = layout->GetGroupList().GetBeginIter(); it != layout->GetGroupList().GetEndIter(); it++) {
                        if (strcmp(it->GetName(), groupName) == 0) {
                            anims[i] = layout->bindToGroup(fileName, groupName, false, false);
                            found = true;
                            break;
                        }
                    }

                    if (!found) {
                        anims[i] = layout->bind(fileName, false);
                    }
                }
            }
        }

        BOOL ChannelObj::loadThumbnailAsync() {
            if (!System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                return FALSE;
            }

            mpThumbFile = System::getChannelManager()->loadThumbnailAsync(mpMainHeap, mChanPage, mChanIndex);
            return (mpThumbFile == NULL) + 1;
        }

        void ChannelObj::createThumbnail() {
            bool bVar1 = false;

            if (mpBalloonLayout == NULL && System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                initBalloon();
            }

            f32 frame;

            if (isValid()) {
                if (System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == channel::SCENE_ID_DISK_CHANNEL) {
                    frame = 0.0f;
                } else {
                    if (mpThumbFile->checkData() == nand::RESULT_SUCCESS) {
                        frame = createWadThumbnail();
                    } else {
                        frame = createWrongThumbnail();
                        bVar1 = true;
                    }
                }
            } else {
                frame = createEmptyThumbnail();
                bVar1 = true;
            }

            calcNormal();

            if (mpThumbAnim != NULL) {
                mpThumbAnim->play();
            }
            mpThumbLayout->finishBinding();
            if (mpThumbAnim != NULL) {
                mpThumbAnim->setCurrentFrame(frame);
            }

            if (bVar1) {
                mpThumbLayout->adjustHeap();
            }
        }

        f32 ChannelObj::createWadThumbnail() {
            f32 frame = 0.0f;

            mpThumbLayout = layout::Object::create(mpMainHeap, 0x8000, mpThumbFile->getBuffer(), "arc", "icon.brlyt");
            setLangPane(mpThumbLayout);

            u32 rsoIdx = System::getChannelManager()->getMetaHdr_IconRSOIdx(mChanPage, mChanIndex);
            u32 csIdx = System::getChannelManager()->getMetaHdr_IconCSIdx(mChanPage, mChanIndex);

            if (rsoIdx != 0) {
                if (mpThumbLayout->searchFile("icon_Start.brlan")) {
                    mpThumbAnim = mpThumbLayout->bind("icon_Start.brlan");
                } else {
                    mpThumbAnim = NULL;
                }
            } else {
                if (csIdx != 0) {
                    if (mpThumbLayout->searchFile("icon_Start.brlan")) {
                        mpThumbAnim = mpThumbLayout->bind("icon_Start.brlan");
                    } else {
                        mpThumbAnim = NULL;
                    }
                } else {
                    if (mpThumbLayout->searchFile("icon.brlan")) {
                        mpThumbAnim = mpThumbLayout->bind("icon.brlan");
                    } else {
                        if (mpThumbLayout->searchFile("icon_Whole.brlan")) {
                            mpThumbAnim = mpThumbLayout->bind("icon_Whole.brlan");
                        } else {
                            mpThumbAnim = NULL;
                        }
                    }
                }
            }

            if (mpThumbAnim != NULL) {
                if (rsoIdx != 0 || csIdx != 0) {
                    frame = mpThumbAnim->getMinFrame();
                } else {
                    frame =
                        mpThumbAnim->getMinFrame() + (System::getRndm()->get_u16() % (u16)(mpThumbAnim->getMaxFrame() - mpThumbAnim->getMinFrame()));
                }
            }

            if (rsoIdx != 0 || csIdx != 0) {
                mExtModuleState = EXT_MODULE_STATE_LOAD;
                bindRsoAnm(mpThumbLayout, mpModuleAnims, "icon");
            }

            bindNewAnm(mpThumbLayout);

            unk_0x84 = 1;

            return frame;
        }

        f32 ChannelObj::createWrongThumbnail() {
            mpThumbLayout = layout::Object::create(mpMainHeap, 0x8000, mpSysLayoutFile, "arc", "my_IplTop_b.brlyt");

            mpThumbLayout->FindPaneByName("Ch0")->SetVisible(false);
            mpThumbLayout->FindPaneByName("Ch1")->GetMaterial()->SetTevColor(0, (GXColorS10){0, 0, 0, 255});

            mpThumbAnim = NULL;

            return 0.0f;
        }

        f32 ChannelObj::createEmptyThumbnail() {
            mpThumbLayout = layout::Object::create(mpMainHeap, 0x8000, mpSysLayoutFile, "arc", "my_IplTop_b.brlyt");
            mpThumbAnim = mpThumbLayout->bind("my_IplTop_b.brlan");

            return System::getRndm()->get_u16() % 2000;
        }

        void ChannelObj::calcNormal() {
            if (isDiskChannel()) {
                if (mpDiskLayout != NULL) {
                    mpThumbLayout = mpDiskLayout;
                    mpThumbAnim = mpDiskAnim;
                } else {
                    mpThumbLayout = mpNoDiskLayout;
                    mpThumbAnim = mpNoDiskAnim;
                }
            }

            updateNew();

            nw4r::math::VEC3 pos(0, 0, 0);

            MTXMultVec(mpBasePane->GetGlobalMtx(), pos, pos);
            mpThumbLayout->GetRootPane()->SetTranslate(pos);

            mpThumbLayout->calc();

            calcCursor(pos);
            calcBalloon(pos);
        }

        void ChannelObj::initCursor() {
            mpCursorLayout = new (mpCursorHeap, 4) layout::Object(mpCursorHeap, mpSysLayoutFile, "arc", "my_IplTop_d.brlyt");

            for (int i = 0; i < ANIM_CURSOR_MAX; i++) {
                mpCursorAnims[i] = mpCursorLayout->bind(scCursorAnims[i], scCursur, false);
            }

            setCursorAnim(0);
            mpCursorLayout->finishBinding();
        }

        void ChannelObj::calcCursor(const nw4r::math::VEC3& vec) {
            mpCursorLayout->GetRootPane()->SetTranslate(vec);
            calcCursorAnim();
            mpCursorLayout->calc();
        }

        void ChannelObj::setCursorAnim(int unk) {
            if (unk == 0) {
                unk_0x58 = 0;
                unk_0x5C = 0;

                for (int i = 0; i < ANIM_CURSOR_MAX; i++) {
                    mpCursorAnims[i]->initFrame();
                }

                mpCursorLayout->getAnim(1)->initAnmFrame();
                mpCursorLayout->GetRootPane()->SetVisible(false);
            } else if (unk == 4) {
                unk_0x58 = 4;
                unk_0x5C = 0;
                mpCursorLayout->GetRootPane()->SetVisible(true);
                startCursorAnim(2);
            } else {
                switch (unk_0x58) {
                    case 0: {
                        if (unk == 1) {
                            unk_0x58 = 1;
                            mpCursorLayout->GetRootPane()->SetVisible(true);
                            startCursorAnim(1);
                        }
                        break;
                    }
                    case 1: {
                        if (unk == 2) {
                            unk_0x58 = 2;
                        } else if (unk == 3) {
                            unk_0x5C = 3;
                        } else if (unk == 1) {
                            unk_0x5C = 0;
                        }
                        break;
                    }
                    case 2: {
                        if (unk == 3) {
                            unk_0x58 = 3;
                            startCursorAnim(0);
                        }
                        break;
                    }
                    case 3: {
                        if (unk == 1) {
                            unk_0x5C = 1;
                        } else if (unk == 3) {
                            unk_0x5C = 0;
                        }
                        break;
                    }
                }
            }
        }

        void ChannelObj::calcCursorAnim() {
            switch (unk_0x58) {
                case 1: {
                    if (!mpCursorAnims[ANIM_CURSOR_FOCUS_ON]->isPlaying()) {
                        int prev = unk_0x5C;
                        unk_0x58 = 2;
                        if (prev == 3) {
                            setCursorAnim(3);
                            unk_0x5C = 0;
                        }
                    }
                    break;
                }
                case 3: {
                    if (!mpCursorAnims[ANIM_CURSOR_FOCUS_OFF]->isPlaying()) {
                        int prev = unk_0x5C;
                        setCursorAnim(0);
                        if (prev == 1) {
                            setCursorAnim(1);
                        }
                    }
                    break;
                }
                case 4: {
                    if (!mpCursorAnims[ANIM_CURSOR_SELECT]->isPlaying()) {
                        setCursorAnim(0);
                    }
                    break;
                }
            }
        }

        void ChannelObj::startCursorAnim(int unk) {
            mpCursorAnims[unk]->setAnmType(ANIM_TYPE_FORWARD);
            mpCursorAnims[unk]->play();
        }

        void ChannelObj::initBalloon() {
            if (!isValid()) {
                mpBalloonLayout = NULL;
                return;
            }
            mpBalloonLayout = new (mpBalloonHeap, 4) layout::Object(mpBalloonHeap, mpSysLayoutFile, "arc", "my_IplTopBalloon_a.brlyt");

            setBalloonText((wchar_t*)System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0));

            mpBalloonAnim = mpBalloonLayout->bind("my_IplTopBalloon_a_BalloonInOut.brlan");
            setBalloonAnim(0);
            mpBalloonLayout->finishBinding();
        }

        void ChannelObj::setBalloonText(const wchar_t* text) {
            nw4r::lyt::TextBox* textPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpBalloonLayout->FindPaneByName(scBalloonText));

            wchar_t fullStr[channel::META_CHANNEL_NAME_LENGTH + 3] = L"";
            u32 strLen;

            wcsncpy(fullStr, text, channel::META_CHANNEL_NAME_LENGTH);
            strLen = wcslen(fullStr);

            f32 temp1 = 0.0f;
            int extraLen = 0;

            if (strLen == 0) {
                textPane->SetString(fullStr, 0, 1);
            } else {
                for (u32 i = strLen; i != 0; i--) {
                    textPane->SetString(fullStr, 0, i + extraLen);
                    textPane->CalculateMtx(*mpBalloonLayout->getDrawInfo());

                    nw4r::ut::Rect textRect = textPane->GetTextDrawRect(*mpBalloonLayout->getDrawInfo());
                    if (textRect.GetWidth() <= temp1 + 391.5f) {
                        break;
                    }

                    if (System::getRegion() == SC_PRODUCT_AREA_JPN) {
                        fullStr[i - 1] = NULL;
                        fullStr[i - 2] = 0x2026;
                    } else {
                        temp1 = -1.179962f;
                        extraLen = 2;
                        fullStr[i + 1] = NULL;
                        fullStr[i] = '.';
                        fullStr[i - 1] = '.';
                        fullStr[i - 2] = '.';
                    }
                }
            }

            nw4r::ut::Rect textRect = textPane->GetTextDrawRect(*mpBalloonLayout->getDrawInfo());

            nw4r::lyt::Size newSize(textRect.GetWidth() + 40.0f, mpBalloonLayout->FindPaneByName(scBasePane)->GetSize().height);

            if (newSize.width < mLocationAdjust * 160.0f) {
                newSize.width = mLocationAdjust * 160.0f;
            }

            mpBalloonLayout->FindPaneByName(scShadePane)->SetSize(newSize);
            mpBalloonLayout->FindPaneByName(scBasePane)->SetSize(newSize);
        }

        void ChannelObj::calcBalloon(const nw4r::math::VEC3& vec) {
            if (mpBalloonLayout != NULL) {
                nw4r::lyt::Size size;

                size = mpBalloonLayout->FindPaneByName(scBasePane)->GetSize();

                f32 val = -2.0f + (mThumbHeight + (size.height / 2));
                val *= -1.0f;

                nw4r::ut::Rect projRect;
                System::getProjectionRect(&projRect);

                f32 temp_f2 = vec.x;
                f32 temp_f5 = size.width / 2;
                f32 val2 = 0.0f;
                f32 val3 = (temp_f2 - temp_f5) - projRect.left;
                f32 val1 = projRect.right - (temp_f2 + temp_f5);
                if (val3 < 60.0f) {
                    val2 = 60.0f - val3;
                } else if (val1 < 60.0f) {
                    val2 = val1 - 60.0f;
                }

                const nw4r::math::VEC3 pos(vec.x + val2, vec.y + val, 0.0f);
                mpBalloonLayout->GetRootPane()->SetTranslate(pos);

                calcBalloonAnim();
                mpBalloonLayout->calc();
            }
        }

        void ChannelObj::setBalloonAnim(int unk) {
            if (mpBalloonLayout != NULL) {
                if (unk == 0) {
                    unk_0x68 = 0;
                    unk_0x6C = 0;

                    mpBalloonLayout->setMinFrame(0.0f);
                    mpBalloonLayout->GetRootPane()->SetVisible(false);
                } else {
                    switch (unk_0x68) {
                        case 0: {
                            if (unk == 1) {
                                unk_0x70 = 0;
                                unk_0x68 = 1;
                            }
                            break;
                        }
                        case 1: {
                            if (unk == 2) {
                                unk_0x68 = 2;
                                mpBalloonLayout->GetRootPane()->SetVisible(true);
                                mpBalloonLayout->setAnmType(ANIM_TYPE_FORWARD);
                                mpBalloonLayout->start();
                                snd::getSystem()->startSE("WIPL_SE_BALLOON");
                            } else if (unk == 4) {
                                unk_0x68 = 0;
                            }
                            break;
                        }
                        case 2: {
                            if (unk == 3) {
                                unk_0x68 = 3;
                            } else if (unk == 4) {
                                unk_0x6C = 4;
                            } else if (unk == 1) {
                                unk_0x6C = 0;
                            }
                            break;
                        }
                        case 3: {
                            if (unk == 4) {
                                unk_0x68 = 4;
                                mpBalloonLayout->setAnmType(ANIM_TYPE_BACKWARD);
                                mpBalloonLayout->start();
                            }
                            break;
                        }
                        case 4: {
                            if (unk == 1) {
                                unk_0x6C = 1;
                            } else if (unk == 4) {
                                unk_0x6C = 0;
                            }
                            break;
                        }
                    }
                }
            }
        }

        void ChannelObj::calcBalloonAnim() {
            switch (unk_0x68) {
                case 1: {
                    if ((++unk_0x70) >= 20.0f) {
                        setBalloonAnim(2);
                        break;
                    }
                }
                case 3: {
                    break;
                }
                case 2: {
                    if (!mpBalloonLayout->isPlaying(0)) {
                        int prev = unk_0x6C;
                        setBalloonAnim(3);
                        if (prev == 4) {
                            setBalloonAnim(4);
                            unk_0x6C = 0;
                        }
                    }
                    break;
                }
                case 4: {
                    if (!mpBalloonLayout->isPlaying(0)) {
                        int prev = unk_0x6C;
                        setBalloonAnim(0);
                        if (prev == 1) {
                            setBalloonAnim(1);
                        }
                    }
                    break;
                }
            }
        }

        void ChannelObj::clearModuleParam() {
            if (mpRSOBss != NULL) {
                delete[] mpRSOBss;
                mpRSOBss = NULL;
            }

            mpRSOHeader = NULL;
            if (mpCSHeap != NULL) {
                mpCSHeap->destroy();
                mpCSHeap = NULL;
            }

            mModuleFillCount = 0;
            if (mpModuleFile != NULL) {
                delete mpModuleFile;
                mpModuleFile = NULL;
            }

            mExtModuleState = EXT_MODULE_STATE_LOAD;
        }

        void ChannelObj::bindNewAnm(layout::Object* layout) {
            nw4r::lyt::Group* group;
            char grpName[20];

            // Look for "New" group first.
            // If that doesn't exist, look for "New_%d" group based on the System language.
            // If That doesn't exist, look for "New_%d" group based on the System region.
            // If THAT doesn't exist, uhhh oh well.
            group = layout->FindGroupByName("New");
            if (group != NULL) {
                mpNwc24NewGroup = group;
            } else {
                sprintf(grpName, "New_%s", scLangGroups[System::getLanguage()]);

                group = layout->FindGroupByName(grpName);
                if (group != NULL) {
                    mpNwc24NewGroup = group;
                } else {
                    char** lookup = (char**)scLangGroupLookup[System::getRegion()];

                    for (int i = 0; lookup[i] != NULL; i++) {
                        sprintf(grpName, "New_%s", lookup[i]);

                        group = layout->FindGroupByName(grpName);
                        if (group != NULL) {
                            mpNwc24NewGroup = group;
                            break;
                        }
                    }
                }
            }

            if (group != NULL) {
                for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter(); it++) {
                    it->mTarget->UnbindAllAnimation();
                }

                if (layout->searchFile("icon_New.brlan")) {
                    mpNwc24NewAnim = layout->bindToGroup("icon_New.brlan", group);
                }
            }
        }

        void ChannelObj::updateNew() {
            if (System::getNwc24Manager() != NULL) {
                switch (unk_0x84) {
                    case 1: {
                        if (setupNew()) {
                            unk_0x84 = 2;
                            unk_0x88 = 0;
                        }
                        break;
                    }
                    case 2: {
                        if (++unk_0x88 >= 4200) {
                            unk_0x84 = 1;
                        }
                        break;
                    }
                }
            }
        }

        BOOL ChannelObj::setupNew() {
            if (System::getNwc24Manager() == NULL || !System::getNwc24Manager()->getNewTitleTbl(NULL)) {
                return FALSE;
            }

            if (isDiskChannel()) {
                u32* pDiskID;
                char* diskMaker;
                System::getBS2Manager()->getDiskInfo((char**)&pDiskID, &diskMaker);

                u32 diskID = *pDiskID;
                if (!System::getNwc24Manager()->isNewMessageThere(diskID)) {
                    return TRUE;
                }
            } else {
                if (!System::getNwc24Manager()->isNewMessageThere(ES_TITLE_CODE(System::getChannelManager()->getTitleID(mChanPage, mChanIndex)))) {
                    return TRUE;
                }
            }

            if (!mpNwc24NewPlayAnim) {
                if (mpNwc24NewGroup != NULL) {
                    for (nw4r::lyt::PaneLinkList::Iterator it = mpNwc24NewGroup->GetPaneList().GetBeginIter();
                         it != mpNwc24NewGroup->GetPaneList().GetEndIter(); it++) {
                        it->mTarget->SetVisible(true);
                    }

                    if (mpNwc24NewAnim != NULL) {
                        mpNwc24NewAnim->play();
                    }
                }

                mpNwc24NewPlayAnim = true;
            }

            return TRUE;
        }
    }  // namespace scene
}  // namespace ipl
