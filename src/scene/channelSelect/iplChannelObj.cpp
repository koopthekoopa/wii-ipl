#include "scene/channelSelect/iplChannelObj.h"

#include <revolution/sc.h>

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        static const char* scPaneAnims[] = {
            "Cursur_a",
            "T_Balloon",
        };

        static const char* scCursorAnims[] = {
            "my_IplTop_d_FocusOff.brlan",
            "my_IplTop_d_FocusOn.brlan",
            "my_IplTop_d_Select.brlan",
        };

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

        static const char* lbl_8164E328[SC_PRODUCT_AREA_MAX][16] = {
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

        ChannelObj::ChannelObj(EGG::Heap* heap, int page, int index) :
        unk_0x10(heap),
        unk_0x08(NULL),
        unk_0x0C(NULL),
        mpDiskHeap(NULL),
        unk_0x18(0),
        mChanPage(page),
        mChanIndex(index),
        mpBasePane(NULL),
        mpDiskLyt(NULL),
        mpDiskAnim(NULL),
        unk_0x40(NULL),
        unk_0x44(NULL),
        unk_0x48(NULL),
        unk_0x58(0),
        unk_0x5C(0),
        unk_0x60(NULL),
        unk_0x68(0),
        unk_0x6C(0),
        unk_0x70(0),
        unk_0x74(0),
        unk_0x78(NULL),
        unk_0x7C(0),
        unk_0x80(0),
        unk_0x84(0),
        unk_0x88(0),
        unk_0x8C(cfChanThumbOfss[SCGetAspectRatio()][0]),
        unk_0x90(cfChanThumbOfss[SCGetAspectRatio()][1]),
        mpModuleHeap(NULL),
        unk_0x9C(NULL),
        unk_0xA0(NULL),
        unk_0xE4(0),
        unk_0xE8(NULL),
        unk_0xEC(0),
        unk_0xF4(0),
        unk_0xF8(36000),
        unk_0xFC(36000),
        unk_0x100(NULL),
        unk_0x104(NULL),
        unk_0x110(NULL) {
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::ut::Rect projRect4x3;
                System::getProjectionRect4x3(&projRect4x3);
                nw4r::ut::Rect projRect16x9;
                System::getProjectionRect16x9(&projRect16x9);

                mLocationAdjust = projRect16x9.GetWidth() / projRect4x3.GetWidth();
            }
            else {
                mLocationAdjust = 1.0f;
            }

            memset(unk_0xA4, 0, sizeof(unk_0xA4));
        }

        ChannelObj::~ChannelObj() {
            if (unk_0x2C != NULL) {
                delete unk_0x2C;
            }

            if (isDiskChannel()) {
                destroyDiskLayout();
            }
            else {
                unk_0x30->destroyHeap();
            }

            if (unk_0x48 != NULL) {
                delete unk_0x48;
            }

            if (unk_0x60 != NULL) {
                delete unk_0x60;
            }
        }

        void ChannelObj::prepare() {
            if (!unk_0x18) {
                unk_0x18 = loadThumbnailAsync();
            }
        }

        void ChannelObj::setHeaps(EGG::Heap* heap0, EGG::Heap* heap1) {
            unk_0x08 = heap0;
            unk_0x0C = heap1;
        }

        void ChannelObj::setDiskLayouts(layout::Object* diskLyt, layout::Animator* diskAnim, EGG::Heap* diskHeap) {
            mpDiskLyt = diskLyt;
            mpDiskAnim = diskAnim;
            mpDiskHeap = diskHeap;
        }

        void ChannelObj::setBasePane(const nw4r::lyt::Pane* basePane) {
            mpBasePane = (nw4r::lyt::Pane*)basePane;
        }

        void ChannelObj::initExtModule(EGG::Heap* moduleHeap, channel::RsoThread* moduleThread) {
            mpModuleHeap = moduleHeap;
            unk_0xE8 = moduleThread;
        }

        void ChannelObj::create(nand::LayoutFile* layoutFile) {
            if (!isLayoutCreated()) {
                unk_0x24 = layoutFile;

                if (unk_0x48 == NULL) {
                    initCursor();
                }

                if (unk_0x60 == NULL && System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                    initBalloon();
                }

                if (unk_0x18 == 2 || unk_0x18 == 1 && unk_0x2C->isFinished()) {
                    createThumbnail();
                    unk_0x18 = 3;
                }
            }
        }

        void ChannelObj::calc() {
            switch (unk_0x18) {
                case 0: {
                    unk_0x18 = loadThumbnailAsync();
                    break;
                }
                case 1: {
                    if (!unk_0x2C->isFinished()) {
                        break;
                    }
                    unk_0x18 = 2;
                }
                case 2: {
                    createThumbnail();
                    unk_0x18 = 3;
                    break;
                }
                case 3: {
                    calcNormal();
                    break;
                }
            }
        }

        int ChannelObj::calcExtModule(EGG::ExpHeap* expHeap, bool unk0, bool unk1) {
            int result = 1;

            switch (unk_0xEC) {
                case 0: {
                    result = 0;
                    break;
                }
                case 1: {
                    if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                        unk_0xF8 += 1;
                        if (unk0 && unk_0xF8 > unk_0xFC) {
                            unk_0xA0 = unk_0x9C;
                            unk_0x9C = expHeap;

                            unk_0xF0 = System::getChannelManager()->loadThumbnailRsoAsync(mpModuleHeap, mChanPage, mChanIndex);
                            if (unk_0xF0 == NULL) {
                                unk_0xF0 = System::getChannelManager()->loadThumbnailCSAsync(mpModuleHeap, mChanPage, mChanIndex);
                                unk_0xEC = 4;
                            }
                            else {
                                unk_0xEC = 2;
                            }

                            result = 2;
                        }
                        else {
                            result = 1;
                        }
                    }
                    break;
                }
                case 2: {
                    if (unk_0xF0->isFinished()) {
                        if (unk_0xF0->checkData() != nand::RESULT_SUCCESS && unk_0xF0->checkData() != nand::RESULT_NONE) {
                            clearModuleParam();
                            return 3;
                        }

                        unk_0x100 = (RSOObjectHeader*)unk_0xF0->getBuffer();
                        unk_0x104 = NULL;

                        if (unk_0x100->bssSize != 0) {
                            unk_0x104 = new(mpModuleHeap, DEFAULT_ALIGN) u8[unk_0x100->bssSize];
                            memset(unk_0x104, 0, unk_0x100->bssSize);
                        }

                        RSOLinkList(unk_0x100, unk_0x104);

                        if (RSOIsImportSymbolResolvedAll(unk_0x100)) {
                            OSReport("Module's ImportSymbol is resolved all.\n");
                        }
                        else {
                            OSReport("%d module's ImportSymbols are not resolved.\n", RSOGetNumImportSymbolsUnresolved(unk_0x100));
                        }

                        // Calc(int)
                        unk_0x108 = (channel::CalcFunc)RSOFindExportSymbolAddr(unk_0x100, "Calc");

                        // ThreadCalc()
                        unk_0xE8->setCalcFunc((channel::ThreadCalcFunc)RSOFindExportSymbolAddr(unk_0x100, "ThreadCalc"));

                        ((void(*)())unk_0x100->prolog)();

                        // Create(nw4r::lyt::Layout*)
                        channel::CreateFunc createFunc = (channel::CreateFunc)RSOFindExportSymbolAddr(unk_0x100, "Create");
                        if (createFunc != NULL) {
                            createFunc(unk_0x30->getNW4RLyt());
                        }

                        unk_0xE8->start();

                        unk_0x10C = 0;
                        unk_0x10D = 0;

                        unk_0xEC = 3;
                    }

                    result = 2;
                    break;
                }
                case 3: {
                    if (unk_0x10D == 0 && unk_0xE8->IsThreadTerminated()) {
                        unk_0xE8->WaitForThreadExit();
                        unk_0x10D = 1;
                    }

                    if (unk_0x10C == 0 && unk_0x108(!unk1)) {
                        unk_0x10C = 1;
                    }

                    if (unk_0x10D && unk_0x10C) {
                        unk_0xE4 = 1;

                        ((void(*)())unk_0x100->epilog)();

                        RSOUnLinkList(unk_0x100);

                        unk_0x108 = 0;

                        unk_0xE8->setCalcFunc(NULL);

                        clearModuleParam();

                        result = 3;
                    }
                    else {
                        result = 2;
                    }
    
                    break;
                }
                case 4: {
                    if (unk_0xF0->isFinished()) {
                        if (unk_0xF0->checkData() != nand::RESULT_SUCCESS && unk_0xF0->checkData() != nand::RESULT_NONE) {
                            clearModuleParam();
                            result = 3;
                            break;
                        }

                        if (unk_0x110 == NULL) {
                            unk_0x110 = EGG::ExpHeap::create(-1, mpModuleHeap, 0);
                        }

                        System::getCSManager()->create(unk_0x110);

                        channel::ChannelScriptManager::CSData data;

                        data.unk_0x00 = unk_0x9C;
                        data.unk_0x08 = unk_0xA4;
                        data.unk_0x04 = unk_0x30;
                        data.unk_0x10 = System::getChannelManager()->getTitleID(mChanPage, mChanIndex);
                        data.unk_0x18 = unk_0xE4;
                        data.unk_0x19 = 1;
                        data.unk_0x1A = 1;

                        if (!(System::getNwc24Manager() != NULL && System::getNwc24Manager()->isNewMessageThere(ES_TITLE_CODE(data.unk_0x10)))) {
                            data.unk_0x1A = 0;
                        }

                        System::getCSManager()->setData(data);
                        if (!System::getCSManager()->init(unk_0xF0, unk_0xE8)) {
                            unk_0xEC = 6;
                        }
                        else {
                            unk_0xEC = 5;
                        }
                        
                        delete unk_0xF0;
                        unk_0xF0 = NULL;
                    }

                    result = 2;
                    break;
                }
                case 5: {
                    System::getCSManager()->calc();

                    if (unk_0xE8->IsThreadTerminated()) {
                        System::getCSManager()->finish();
                        unk_0xE4 = 1;
                        unk_0xEC = 6;
                    }

                    result = 2;
                    break;
                }
                case 6: {
                    System::getCSManager()->destroy();
                    clearModuleParam();
                    result = 3;
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
                unk_0x30->draw();
            }
        }

        void ChannelObj::drawCursor() {
            unk_0x48->draw();
        }

        void ChannelObj::drawBalloon() {
            if (unk_0x60 != NULL) {
                unk_0x60->draw();
            }
        }

        void ChannelObj::createDiskLayout(void* data) {
            unk_0x40 = layout::Object::create(mpDiskHeap, 0x19000, data, "arc", "icon.brlyt");
            setLangPane(unk_0x40);

            if (unk_0x40->searchFile("icon.brlan")) {
                unk_0x44 = unk_0x40->bind("icon.brlan");
            }
            else if (unk_0x40->searchFile("icon_Whole.brlan")) {
                unk_0x44 = unk_0x40->bind("icon_Whole.brlan");
            }
            else {
                unk_0x44 = NULL;
            }

            changeDisk();

            bindNewAnm(unk_0x40);

            unk_0x84 = 1;

            unk_0x40->finishBinding();
        }

        void ChannelObj::destroyDiskLayout() {
            if (unk_0x40 != NULL) {
                unk_0x40->destroyHeap();
                unk_0x40 = NULL;

                unk_0x44 = NULL;

                unk_0x80 = 0;
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
                if (unk_0x40 != NULL) {
                    setBalloonText((wchar_t*)System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0));
                }
                else {
                    setBalloonText(System::getMessage(0));
                }
            }
        }

        nw4r::math::VEC3& ChannelObj::getTranslate() const {
            return (nw4r::math::VEC3&)unk_0x30->GetRootPane()->GetTranslate();
        }

        BOOL ChannelObj::isDiskChannel() const {
            if (isValid() && System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == channel::SCENE_ID_DISK_CHANNEL) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL ChannelObj::isValid() const {
            return System::getChannelManager()->hasLoadedBnr(mChanPage, mChanIndex);
        }

        void ChannelObj::onPoint(int unk) {
            if (unk & 0x10000U) {
                unk_0x74 = 0;
            }
            else if (unk & 0x20000U) {
                unk_0x74 = 1;
            }
            else if ((unk_0x74 += 1) > 1) {
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
            }
            else if (unk & 0x20000U) {
                unk_0x74 = 1;
            }
            else if ((unk_0x74 -= 1) > 0) {
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
            }
            else {
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
            unk_0xF8 = 36000;
        }

        void ChannelObj::setLangPane(const layout::Object* layout) {
            int lang = System::getLanguage();
            const char* langGroup = scLangGroups[lang];
            char local_50[20] = "";

            bool bVar4 = false;

            for (nw4r::lyt::GroupList::Iterator it = layout->GetGroupList().GetBeginIter(); it != layout->GetGroupList().GetEndIter(); it++) {
                if (strcmp(it->GetName(), langGroup) == 0) {
                    bVar4 = true;
                }
                else {
                    bool bVar3 = true;
                    for (int i = 0; i < 16; i++) {
                        char name[6];
                        sprintf(name, "Rso%d", i);
                        if (strncmp(it->GetName(), name, 5) == 0) {
                            bVar3 = false;
                            break;
                        }
                    }

                    if (bVar3) {
                        nw4r::lyt::Group* group = layout->FindGroupByName(langGroup);
                        for (nw4r::lyt::PaneLinkList::Iterator it2 = group->GetPaneList().GetBeginIter(); it2 != group->GetPaneList().GetEndIter(); it2++) {
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
            }
            else {
                s32 region = System::getRegion();
                for (int i = 0; i < 16; i++) {
                    char* groupName = (char*)lbl_8164E328[region][i];

                    if (groupName != NULL) {
                        if (strcmp(groupName, &local_50[scLangLookup[region][i]]) == 0) {
                            nw4r::lyt::Group* group = layout->FindGroupByName(groupName);
                            for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter(); it++) {
                                it->mTarget->SetVisible(true);
                            }
                        }
                    }
                }
            }
        }

        void ChannelObj::bindRsoAnm(layout::Object* layout, layout::Animator** anims, const char* unk) {
            for (int i = 0; i < 16; i++) {
                char fileName[20];
                sprintf(fileName, "%s_Rso%d.brlan", unk, i);
                if (layout->searchFile(fileName)) {
                    char groupName[5];
                    sprintf(groupName, "Rso%d", i);
                    bool bVar4 = false;
                    for (nw4r::lyt::GroupList::Iterator it = layout->GetGroupList().GetBeginIter(); it != layout->GetGroupList().GetEndIter(); it++) {
                        if (strcmp(it->GetName(), groupName) == 0) {
                            anims[i] = layout->bindToGroup(fileName, groupName, false, false);
                            bVar4 = true;
                            break;
                        }
                    }

                    if (!bVar4) {
                        anims[i] = layout->bind(fileName, false);
                    }
                }
            }
        }

        BOOL ChannelObj::loadThumbnailAsync() {
            if (!System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                return FALSE;
            }

            unk_0x2C = System::getChannelManager()->loadThumbnailAsync(unk_0x10, mChanPage, mChanIndex);
            return (unk_0x2C == NULL) + 1;
        }

        void ChannelObj::createThumbnail() {
            bool bVar1 = false;

            if (unk_0x60 == NULL && System::getChannelManager()->isLoaded(mChanPage, mChanIndex)) {
                initBalloon();
            }

            f32 frame;

            if (isValid()) {
                if (System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == channel::SCENE_ID_DISK_CHANNEL) {
                    frame = 0.0f;
                }
                else {
                    if (unk_0x2C->checkData() == nand::RESULT_SUCCESS) {
                        frame = createWadThumbnail();
                    }
                    else {
                        frame = createWrongThumbnail();
                        bVar1 = true;
                    }
                }
            }
            else {
                frame = createEmptyThumbnail();
                bVar1 = true;
            }

            calcNormal();

            if (unk_0x34 != NULL) {
                unk_0x34->play();
            }
            unk_0x30->finishBinding();
            if (unk_0x34 != NULL) {
                unk_0x34->setCurrentFrame(frame);
            }

            if (bVar1) {
                unk_0x30->adjustHeap();
            }
        }

        f32 ChannelObj::createWadThumbnail() {
            f32 frame = 0.0f;

            unk_0x30 = layout::Object::create(unk_0x10, 0x8000, unk_0x2C->getBuffer(), "arc", "icon.brlyt");
            setLangPane(unk_0x30);

            u32 rsoIdx = System::getChannelManager()->getMetaHdr_IconRSOIdx(mChanPage, mChanIndex);
            u32 csIdx = System::getChannelManager()->getMetaHdr_IconCSIdx(mChanPage, mChanIndex);

            if (rsoIdx != 0) {
                if (unk_0x30->searchFile("icon_Start.brlan")) {
                    unk_0x34 = unk_0x30->bind("icon_Start.brlan");
                }
                else {
                    unk_0x34 = NULL;
                }
            }
            else {
                if (csIdx != 0) {
                    if (unk_0x30->searchFile("icon_Start.brlan")) {
                        unk_0x34 = unk_0x30->bind("icon_Start.brlan");
                    }
                    else {
                        unk_0x34 = NULL;
                    }
                }
                else {
                    if (unk_0x30->searchFile("icon.brlan")) {
                        unk_0x34 = unk_0x30->bind("icon_.brlan");
                    }
                    else {
                        if (unk_0x30->searchFile("icon_Whole.brlan")) {
                            unk_0x34 = unk_0x30->bind("icon_Whole.brlan");
                        }
                        else {
                            unk_0x34 = NULL;
                        }
                    }
                }
            }

            if (unk_0x34 != NULL) {
                if (rsoIdx != 0 || csIdx != 0) {
                    frame = unk_0x34->getMinFrame();
                }
                else {
                    frame = unk_0x34->getMinFrame() + (System::getRndm()->get_u16() % (u16)(unk_0x34->getMaxFrame() - unk_0x34->getMinFrame()));
                }
            }

            if (rsoIdx != 0 || csIdx != 0) {
                unk_0xEC = 1;
                bindRsoAnm(unk_0x30, unk_0xA4, "icon");
            }

            bindNewAnm(unk_0x30);

            unk_0x84 = 1;

            return frame;
        }

        f32 ChannelObj::createWrongThumbnail() {
            unk_0x30 = layout::Object::create(unk_0x10, 0x8000, unk_0x24, "arc", "my_IplTop_b.brlyt");

            unk_0x30->FindPaneByName("Ch0")->SetVisible(false);
            unk_0x30->FindPaneByName("Ch1")->GetMaterial()->SetTevColor(0, (GXColorS10){0, 0, 0, 255});

            unk_0x34 = NULL;

            return 0.0f;
        }

        f32 ChannelObj::createEmptyThumbnail() {
            unk_0x30 = layout::Object::create(unk_0x10, 0x8000, unk_0x24, "arc", "my_IplTop_b.brlyt");
            unk_0x34 = unk_0x30->bind("my_IplTop_b.brlan");

            return System::getRndm()->get_u16() % 2000;
        }

        void ChannelObj::calcNormal() {
            if (isDiskChannel()) {
                if (unk_0x40 != NULL) {
                    unk_0x30 = unk_0x40;
                    unk_0x34 = unk_0x44;
                }
                else {
                    unk_0x30 = mpDiskLyt;
                    unk_0x34 = mpDiskAnim;
                }
            }

            updateNew();

            nw4r::math::VEC3 pos(0, 0, 0);

            MTXMultVec(mpBasePane->GetGlobalMtx(), pos, pos);
            unk_0x30->GetRootPane()->SetTranslate(pos);

            unk_0x30->calc();

            calcCursor(pos);
            calcBalloon(pos);
        }

        nw4r::math::VEC3 ForceCTORWeak() {
            return nw4r::math::VEC3(NULL, NULL, NULL);
        }

        void ChannelObj::initCursor() {
            unk_0x48 = new(unk_0x08, 4) layout::Object(unk_0x08, unk_0x24, "arc", "my_IplTop_d.brlyt");

            for (int i = 0; i < 3; i++) {
                unk_0x4C[i] = unk_0x48->bind(scCursorAnims[i], scPaneAnims[0], false);
            }

            setCursorAnim(0);
            unk_0x48->finishBinding();
        }

        void ChannelObj::calcCursor(const nw4r::math::VEC3& vec) {
            unk_0x48->GetRootPane()->SetTranslate(vec);
            calcCursorAnim();
            unk_0x48->calc();
        }

        void ChannelObj::setCursorAnim(int unk) {
            if (unk == 0) {
                unk_0x58 = 0;
                unk_0x5C = 0;

                for (int i = 0; i < 3; i++) {
                    unk_0x4C[i]->initFrame();
                }

                unk_0x48->getAnim(1)->initAnmFrame();
                unk_0x48->GetRootPane()->SetVisible(false);
            }
            else if (unk == 4) {
                unk_0x58 = 4;
                unk_0x5C = 0;
                unk_0x48->GetRootPane()->SetVisible(true);
                startCursorAnim(2);
            }
            else {
                switch (unk_0x58) {
                    case 0: {
                        if (unk == 1) {
                            unk_0x58 = 1;
                            unk_0x48->GetRootPane()->SetVisible(true);
                            startCursorAnim(1);
                        }
                        break;
                    }
                    case 1: {
                        if (unk == 2) {
                            unk_0x58 = 2;
                        }
                        else if (unk == 3) {
                            unk_0x5C = 3;
                        }
                        else if (unk == 1) {
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
                        }
                        else if (unk == 3) {
                            unk_0x5C = 0;
                        }
                        break;
                    }
                }
            }
        }

        void ChannelObj::calcCursorAnim() {
            
        }

        /*void ChannelObj::startCursorAnim(int unk) {
            
        }

        void ChannelObj::initBalloon() {
            
        }

        void ChannelObj::setBalloonText(const wchar_t* text) {
            
        }

        void ChannelObj::calcBalloon(const nw4r::math::VEC3& vec) {
            
        }

        void ChannelObj::setBalloonAnim(int unk) {
            
        }

        void ChannelObj::calcBalloonAnim(int unk) {
            
        }

        void ChannelObj::clearModuleParam() {
            
        }

        void ChannelObj::bindNewAnm(layout::Object* layout) {
            
        }

        void ChannelObj::updateNew() {
            
        }

        void ChannelObj::setupNew() {
            
        }*/
    }
}
