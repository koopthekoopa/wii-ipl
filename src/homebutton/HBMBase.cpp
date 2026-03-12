#include "homebutton/internal/HBMBase.h"

#include "homebutton/HBMBase.h"

#include "homebutton/HBMFrameController.h"
#include "homebutton/HBMAnmController.h"
#include "homebutton/HBMGUIManager.h"

#include "homebutton/HBMController.h"
#include "homebutton/HBMRemoteSpk.h"

#include <nw4r/lyt.h>
#include <nw4r/ut.h>
#include <nw4r/snd.h>

#include <revolution/ax.h>
#include <revolution/axfx.h>
#include <revolution/gx.h>
#include <revolution/os.h>
#include <revolution/pad.h>
#include <revolution/vi.h>
#include <revolution/wpad.h>
#include <revolution/sc.h>

/* PUBLIC API */

enum HBMAllocatorType {
    HBM_ALLOCATOR_APPLI,
    HBM_ALLOCATOR_LOCAL,
    HBM_ALLOCATOR_NW4R,
};
    
static MEMAllocator sAllocator;
static MEMAllocator* spAllocator = &sAllocator;

void* HBMAllocMem(u32 size) {
    return MEMAllocFromAllocator(spAllocator, size);
}

void HBMFreeMem(void* pBlock) {
    MEMFreeToAllocator(spAllocator, pBlock);
}

static HBMAllocatorType getAllocatorType(const HBMDataInfo* pDataInfo) {
    if (pDataInfo->pAllocator != NULL) {
        return HBM_ALLOCATOR_APPLI;
    }

    if (pDataInfo->mem != NULL) {
        return HBM_ALLOCATOR_LOCAL;
    }

    return HBM_ALLOCATOR_NW4R;
}

void HBMCreate(const HBMDataInfo* pDataInfo) {
    MEMiHeapHead* hExpHeap;

    if (getAllocatorType(pDataInfo) == HBM_ALLOCATOR_LOCAL) {
        hExpHeap = MEMCreateExpHeap(pDataInfo->mem, pDataInfo->memSize);
        MEMInitAllocatorForExpHeap(&sAllocator, hExpHeap, 32);
        spAllocator = &sAllocator;
    }

    switch (getAllocatorType(pDataInfo)) {
    case HBM_ALLOCATOR_APPLI: {
        nw4r::lyt::Layout::SetAllocator(pDataInfo->pAllocator);
        spAllocator = pDataInfo->pAllocator;
        break;
    }

    case HBM_ALLOCATOR_LOCAL: {
        nw4r::lyt::Layout::SetAllocator(spAllocator);
        break;
    }

    case HBM_ALLOCATOR_NW4R: {
        spAllocator = nw4r::lyt::Layout::GetAllocator();
        break;
    }
    }

    homebutton::HomeButton::createInstance(pDataInfo);
    homebutton::HomeButton::getInstance()->create();
}

void HBMDelete() {
    const HBMDataInfo* pHBInfo = homebutton::HomeButton::getInstance()->getHBMDataInfo();

    nw4r::lyt::Layout::SetAllocator(spAllocator); // ??
    homebutton::HomeButton::deleteInstance();

    if (getAllocatorType(pHBInfo) == HBM_ALLOCATOR_LOCAL) {
        MEMDestroyExpHeap((MEMHeapHandle)spAllocator->heap);
    }
}

void HBMInit() {
    homebutton::HomeButton::getInstance()->init();
}

HBMSelectBtnNum HBMCalc(const HBMControllerData* pController) {
    homebutton::HomeButton::getInstance()->calc(pController);
    return homebutton::HomeButton::getInstance()->getSelectBtnNum();
}

void HBMDraw() {
    homebutton::HomeButton::getInstance()->draw();
}

HBMSelectBtnNum HBMGetSelectBtnNum() {
    return homebutton::HomeButton::getInstance()->getSelectBtnNum();
}

void HBMSetAdjustFlag(BOOL flag) {
    homebutton::HomeButton::getInstance()->setAdjustFlag(flag);
}

BOOL HBMIsReassignedControllers() {
    return homebutton::HomeButton::getInstance()->getReassignedFlag();
}

/* THE LOGIC */

namespace homebutton {
    static void SimpleSyncCallback(s32 result, s32 num);

    typedef struct AnmControllerTable {
        int pane;
        int anm;
    } AnmControllerTable;

    static const AnmControllerTable scAnmTable[res::eAnimator_Max] = {
        {0, 0 },
        { 0, 2 },
        { 4, 1 },
        { 1, 0 },
        { 1, 2 },
        { 5, 1 },
        { 2, 0 },
        { 2, 2 },
        { 6, 1 },
        { 3, 0 },
        { 3, 2 },
        { 7, 1 }
    };

    static const AnmControllerTable scGroupAnmTable[res::eGrAnimator_Max] = {
        { 0,  0  },
        { 1,  1  },
        { 2,  0  },
        { 3,  1  },
        { 4,  2  },
        { 4,  19 },
        { 5,  3  },
        { 5,  20 },
        { 6,  4  },
        { 6,  7  },
        { 7,  4  },
        { 7,  7  },
        { 8,  4  },
        { 8,  7  },
        { 9,  4  },
        { 9,  7  },
        { 10, 4  },
        { 10, 7  },
        { 11, 5  },
        { 12, 5  },
        { 13, 6  },
        { 13, 8  },
        { 14, 14 },
        { 14, 6  },
        { 14, 8  },
        { 15, 5  },
        { 16, 6  },
        { 16, 14 },
        { 17, 11 },
        { 17, 12 },
        { 18, 11 },
        { 18, 12 },
        { 19, 13 },
        { 20, 13 },
        { 21, 9  },
        { 21, 10 },
        { 22, 9  },
        { 22, 10 },
        { 23, 9  },
        { 23, 10 },
        { 24, 9  },
        { 24, 10 },
        { 25, 9  },
        { 25, 10 },
        { 26, 9  },
        { 26, 10 },
        { 27, 9  },
        { 27, 10 },
        { 28, 9  },
        { 28, 10 },
        { 29, 9  },
        { 29, 10 },
        { 30, 9  },
        { 30, 10 },
        { 31, 15 },
        { 31, 16 },
        { 31, 17 },
        { 31, 18 },
        { 31, 21 },
        { 32, 15 },
        { 32, 16 },
        { 32, 17 },
        { 32, 18 },
        { 32, 21 },
        { 33, 15 },
        { 33, 16 },
        { 33, 17 },
        { 33, 18 },
        { 33, 21 },
        { 34, 15 },
        { 34, 16 },
        { 34, 17 },
        { 34, 18 },
        { 34, 21 }
    };

    HomeButton* HomeButton::spHomeButtonObj = NULL;

    const int HomeButton::scReConnectTime = 3600;
    const int HomeButton::scReConnectTime2 = 3570;
    const int HomeButton::scPadDrawWaitTime = 5;
    const int HomeButton::scGetPadInfoTime = 100;
    const int HomeButton::scForcusSEWaitTime = 2;
    const f32 HomeButton::scOnPaneVibTime = 3.0f;
    const f32 HomeButton::scOnPaneVibWaitTime = 9.0f;
    const int HomeButton::scWaitStopMotorTime = 30;
    const int HomeButton::scWaitDisConnectTime = 180;

    const char* HomeButton::scCursorLytName[res::eCursorLyt_Max] = {
        "P1_Def.brlyt",
        "P2_Def.brlyt",
        "P3_Def.brlyt",
        "P4_Def.brlyt", 
    };

    const char* HomeButton::scCursorPaneName = "N_Trans";
    const char* HomeButton::scCursorRotPaneName = "N_Rot";
    const char* HomeButton::scCursorSRotPaneName = "N_SRot";

    const char* HomeButton::scBtnName[res::eBtn_Max] = {
        "B_btnL_00",
        "B_btnL_01",
        "B_btnL_10",
        "B_btnL_11"
    };

    const char* HomeButton::scTxtName[res::eTxt_Max] = {
        "T_btnL_00",
        "T_btnL_01",
        "T_btnL_10",
        "T_btnL_11"
    };

    const char* HomeButton::scGrName[res::eGroup_Max] = {
        "btnL_00_inOut",
        "btnL_01_inOut",
        "btnL_10_inOut",
        "btnL_11_inOut",
        "btnL_00_psh",
        "btnL_01_psh",
        "btnL_10_psh",
        "btnL_11_psh"
    };
    const char* HomeButton::scAnimName[res::eAnim_Max] = {
        "_cntBtn_in.brlan",
        "_cntBtn_psh.brlan",
        "_cntBtn_out.brlan"
    };

    const char* HomeButton::scPairGroupAnimName[res::ePairAnm_Max] = {
        "_ltrIcn_on.brlan",
        "_optn_bar_psh.brlan",
        "_close_bar_psh.brlan",
        "_hmMenu_bar_in.brlan",
        "_hmMenu_bar_psh.brlan",
        "_link_msg_in.brlan",
        "_link_msg_out.brlan",
        "_cmn_msg_in.brlan",
        "_cmn_msg_out.brlan",
        "_cntrl_up.brlan",
        "_cntrl_wndw_opn.brlan",
        "_cntrl_dwn.brlan",
        "_hmMenu_bar_out.brlan",
        "_cmn_msg_rtrn.brlan", "_12btn_on.brlan"
    };

    const char* HomeButton::scPairGroupName[res::ePairAnm_Max] = {
        "ltrIcn_on",
        "optn_bar_psh",
        "close_bar_psh",
        "hmMenu_bar_in",
        "hmMenu_bar_psh",
        "link_msg_in",
        "link_msg_out",
        "cmn_msg_in",
        "cmn_msg_out",
        "cntrl_up",
        "cntrl_wndw_opn",
        "cntrl_dwn",
        "hmMenu_bar_out",
        "cmn_msg_rtrn",
        "12btn_on"
    };

    const char* HomeButton::scGroupAnimName[res::eGrAnim_Max] = {
        "_hmMenu_strt.brlan",
        "_hmMenu_fnsh.brlan",
        "_optn_bar_in.brlan",
        "_optn_bar_out.brlan",
        "_optn_btn_in.brlan",
        "_optn_btn_psh.brlan",
        "_vb_btn_wht_psh.brlan",
        "_optn_btn_out.brlan",
        "_vb_btn_ylw_psh.brlan",
        "_sound_gry.brlan",
        "_sound_ylw.brlan",
        "_cmn_msg_btn_in.brlan",
        "_cmn_msg_btn_out.brlan",
        "_cmn_msg_btn_psh.brlan",
        "_vb_btn_ylw_ylw.brlan",
        "_btry_wink.brlan",
        "_btry_gry.brlan",
        "_btry_wht.brlan",
        "_btry_wink_gry.brlan",
        "_close_bar_in.brlan",
        "_close_bar_out.brlan",
        "_btry_red.brlan"
    };

    const char* HomeButton::scGroupName[res::eGrPane_Max] = {
        "hmMenu_strt",
        "hmMenu_fnsh",
        "hmMenuBck_strt",
        "hmMenuBck_fnsh",
        "optn_bar_in",
        "optn_bar_out",
        "optnBtn_00_inOut",
        "optnBtn_01_inOut",
        "optnBtn_10_inOut",
        "optnBtn_11_inOut",
        "optnBtn_20_inOut",
        "optnBtn_00_psh",
        "optnBtn_01_psh",
        "optnBtn_10_psh",
        "optnBtn_11_psh",
        "optnBtn_20_psh",
        "optnBtn_10_cntrl",
        "msgBtn_00_inOut",
        "msgBtn_01_inOut",
        "msgBtn_00_psh",
        "msgBtn_01_psh",
        "vol_00",
        "vol_01",
        "vol_02",
        "vol_03",
        "vol_04",
        "vol_05",
        "vol_06",
        "vol_07",
        "vol_08",
        "vol_09",
        "plyr_00",
        "plyr_01",
        "plyr_02",
        "plyr_03"
    };

    const char* HomeButton::scFuncPaneName[res::eFuncPane_Max] = {
        "let_icn_00",
        "N_plyr_00",
        "N_plyr_01",
        "N_plyr_02",
        "N_plyr_03"
    };

    const char* HomeButton::scFuncTouchPaneName[res::eFuncTouchPane_Max] = {
        "B_btn_00",
        "B_bar_10",
        "B_optnBtn_00",
        "B_optnBtn_01",
        "B_optnBtn_10",
        "B_optnBtn_11",
        "B_optnBtn_20",
        "B_BtnA",
        "B_BtnB",
        "cntrl_00"
    };

    const char* HomeButton::scFuncTextPaneName[res::eFuncTextPane_Max] = {
        "T_msg_00",
        "T_msg_01",
        "T_Dialog"
    };

    const char* HomeButton::scBatteryPaneName[WPAD_MAX_CONTROLLERS][res::eBatteryPane_Max] = {
        {
            "btryPwr_00_0",
            "btryPwr_00_1",
            "btryPwr_00_2",
            "btryPwr_00_3"
        },
        {
            "btryPwr_01_0",
            "btryPwr_01_1",
            "btryPwr_01_2",
            "btryPwr_01_3"
        },
        {
            "btryPwr_02_0",
            "btryPwr_02_1",
            "btryPwr_02_2",
            "btryPwr_02_3"
        },
        {
            "btryPwr_03_0",
            "btryPwr_03_1",
            "btryPwr_03_2",
            "btryPwr_03_3"
        }
    };

    HomeButton::HomeButton(const HBMDataInfo* pDataInfo) :
    mpHBInfo(pDataInfo),
    mpLayout(NULL),
    mpPaneManager(NULL),
    mFader(30) {
        mState = 2;

        mSelectBtnNum = HBM_SELECT_NULL;
        mSelectAnmNum = -1;
        mMsgCount = 0;
        mSequence = SEQ_NORMAL;
        mForcusSEWaitTime = 0;
        mLetterFlag = false;

        mBar0AnmRev = 0;
        mBar1AnmRev = 0;
        mBar0AnmRevHold = 0;
        mBar1AnmRevHold = 0;

        mAdjustFlag = false;
        mReassignedFlag = false;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            OSCreateAlarm(&mAlarm[i]);
            OSCreateAlarm(&mSpeakerAlarm[i]);
        }

        OSCreateAlarm(&mSimpleSyncAlarm);

        mpSoundArchivePlayer = NULL;
        mpDvdSoundArchive = NULL;
        mpMemorySoundArchive = NULL;
        mpNandSoundArchive = NULL;
        mpSoundHeap = NULL;
        mpSoundHandle = NULL;
    }

    HomeButton::~HomeButton() {
        int i;

        mpResAccessor->~MultiArcResourceAccessor();
        HBMFreeMem(mpResAccessor);

        mpLayout->~Layout();
        HBMFreeMem(mpLayout);

        if (!mpHBInfo->cursor) {
            for (i = 0; i < (int)ARRAY_LENGTH(mpCursorLayout); i++) {
                mpCursorLayout[i]->~Layout();
                HBMFreeMem(mpCursorLayout[i]);
            }
        }

        for (i = 0; i < mAnmNum; i++) {
            mpAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpAnmController[i]);
        }

        for (i = 0; i < (int)ARRAY_LENGTH(mpPairGroupAnmController); i++) {
            mpPairGroupAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpPairGroupAnmController[i]);
        }

        for (i = 0; i < (int)ARRAY_LENGTH(mpGroupAnmController); i++) {
            mpGroupAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpGroupAnmController[i]);
        }

        mpHomeButtonEventHandler->HomeButtonEventHandler::~HomeButtonEventHandler();
        HBMFreeMem(mpHomeButtonEventHandler);

        mpPaneManager->~PaneManager();
        HBMFreeMem(mpPaneManager);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mpController[i]->~Controller();
            HBMFreeMem(mpController[i]);
        }

        mpRemoteSpk->~RemoteSpk();
        HBMFreeMem(mpRemoteSpk);
        mpRemoteSpk = NULL;

        HBMFreeMem(mpLayoutName);
        HBMFreeMem(mpAnmName);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            OSCancelAlarm(&mAlarm[i]);
            OSCancelAlarm(&mSpeakerAlarm[i]);
        }

        OSCancelAlarm(&mSimpleSyncAlarm);
    }

    void HomeButton::createInstance(const HBMDataInfo* pDataInfo) {
        if (void* pMem = HBMAllocMem(sizeof(HomeButton))) {
            spHomeButtonObj = new(pMem) HomeButton(pDataInfo);
        }
    }

    void HomeButton::deleteInstance() {
        spHomeButtonObj->~HomeButton();
        HBMFreeMem(spHomeButtonObj);
        spHomeButtonObj = NULL;
    }

    HomeButton* HomeButton::getInstance() {
        return spHomeButtonObj;
    }

    void setResource(nw4r::lyt::MultiArcResourceAccessor* multiArc, void* archiveData, const char* resDirectory) {
        if (archiveData != NULL) {
            void* pMem = HBMAllocMem(sizeof(nw4r::lyt::ArcResourceLink));
            nw4r::lyt::ArcResourceLink* resLink = new(pMem) nw4r::lyt::ArcResourceLink();
            resLink->Set(archiveData, resDirectory);
            multiArc->Attach(resLink);
        }
    }

    void HomeButton::create() {
        int i;
        char anmNameBuf[64];

        mInitFlag = false;
        mForceSttInitProcFlag = false;
        mForceSttFadeInProcFlag = false;

        set_config();
        set_text();

        {
            void* pMem = HBMAllocMem(sizeof(nw4r::lyt::MultiArcResourceAccessor));
            mpResAccessor = new(pMem) nw4r::lyt::MultiArcResourceAccessor();
        }
 
        setResource(mpResAccessor, mpHBInfo->layoutBuf, "arc");
        setResource(mpResAccessor, mpHBInfo->lytLangBuf, "arc");
    
        nw4r::lyt::FontRefLink* fontLink;
        {
            void* pMem = HBMAllocMem(sizeof(nw4r::lyt::FontRefLink));
            fontLink = new(pMem) nw4r::lyt::FontRefLink();
        }
        fontLink->Set("RevoIpl_UtrilloProGrecoStd_M_32_I4.brfnt", (nw4r::ut::Font*)mpHBInfo->fontBuf);
        mpResAccessor->RegistFont(fontLink);

        if (!mpHBInfo->cursor) {
            for (i = 0; i < res::eCursorLyt_Max; i++) {
                if (void* pMem = HBMAllocMem(sizeof(nw4r::lyt::Layout))) {
                    mpCursorLayout[i] = new(pMem) nw4r::lyt::Layout();
                }

                void* pBinary = mpResAccessor->GetResource(0, scCursorLytName[i], NULL);

                mpCursorLayout[i]->Build(pBinary, mpResAccessor);
            }
        }

        if (void* pMem = HBMAllocMem(sizeof(nw4r::lyt::Layout))) {
            mpLayout = new(pMem) nw4r::lyt::Layout();
        }

        {
            void* pBinary = mpResAccessor->GetResource(0, mpLayoutName, NULL);

            mpLayout->Build(pBinary, mpResAccessor);
        }

        for (i = 0; i < mAnmNum; i++) {
            strcpy(anmNameBuf, mpAnmName);
            strcat(anmNameBuf, scAnimName[scAnmTable[i].anm]);

            void* pBinary = mpResAccessor->GetResource(0, anmNameBuf, NULL);

            if (void* pMem = HBMAllocMem(sizeof(GroupAnmController))) {
                mpAnmController[i] = new(pMem) GroupAnmController();
            }

            mpAnmController[i]->mpAnimGroup = mpLayout->CreateAnimTransform(pBinary, mpResAccessor);

            mpAnmController[i]->mpGroup = mpLayout->GetGroupContainer()->FindGroupByName(scGrName[scAnmTable[i].pane]);

            nw4r::lyt::PaneLinkList& rList =
                mpAnmController[i]->mpGroup->GetPaneList();

            for (nw4r::lyt::PaneLinkList::Iterator it = rList.GetBeginIter(); it != rList.GetEndIter(); ++it) {
                it->mTarget->BindAnimation(mpAnmController[i]->mpAnimGroup, false);
            }

            mpAnmController[i]->init(ANIM_TYPE_FORWARD, mpAnmController[i]->mpAnimGroup->GetFrameMax(), 0.0f, mpHBInfo->frameDelta);
        }

        for (i = 0; i < res::eGrAnimator_Max; i++) {
            strcpy(anmNameBuf, mpAnmName);
            strcat(anmNameBuf, scGroupAnimName[scGroupAnmTable[i].anm]);

            void* pBinary = mpResAccessor->GetResource(0, anmNameBuf, NULL);

            if (void* pMem = HBMAllocMem(sizeof(GroupAnmController))) {
                mpGroupAnmController[i] = new(pMem) GroupAnmController();
            }

            mpGroupAnmController[i]->mpAnimGroup = mpLayout->CreateAnimTransform(pBinary, mpResAccessor);

            mpGroupAnmController[i]->mpGroup = mpLayout->GetGroupContainer()->FindGroupByName(scGroupName[scGroupAnmTable[i].pane]);

            nw4r::lyt::PaneLinkList& rList = mpGroupAnmController[i]->mpGroup->GetPaneList();

            for (nw4r::lyt::PaneLinkList::Iterator it = rList.GetBeginIter(); it != rList.GetEndIter(); ++it) {
                it->mTarget->BindAnimation(mpGroupAnmController[i]->mpAnimGroup, false);
            }

            mpGroupAnmController[i]->init(ANIM_TYPE_FORWARD, mpGroupAnmController[i]->mpAnimGroup->GetFrameMax(), 0.0f, mpHBInfo->frameDelta);
        }

        for (i = 0; i < res::ePairAnm_Max; i++) {
            strcpy(anmNameBuf, mpAnmName);
            strcat(anmNameBuf, scPairGroupAnimName[i]);

            void* pBinary = mpResAccessor->GetResource(0, anmNameBuf, NULL);

            if (void* pMem = HBMAllocMem(sizeof(GroupAnmController))) {
                mpPairGroupAnmController[i] = new(pMem) GroupAnmController();
            }

            mpPairGroupAnmController[i]->mpAnimGroup = mpLayout->CreateAnimTransform(pBinary, mpResAccessor);

            mpPairGroupAnmController[i]->mpGroup = mpLayout->GetGroupContainer()->FindGroupByName(scPairGroupName[i]);

            nw4r::lyt::PaneLinkList& rList = mpPairGroupAnmController[i]->mpGroup->GetPaneList();

            for (nw4r::lyt::PaneLinkList::Iterator it = rList.GetBeginIter(); it != rList.GetEndIter(); ++it) {
                it->mTarget->BindAnimation(mpPairGroupAnmController[i]->mpAnimGroup, false);
            }

            mpPairGroupAnmController[i]->init(ANIM_TYPE_FORWARD, mpPairGroupAnmController[i]->mpAnimGroup->GetFrameMax(), 0.0f, mpHBInfo->frameDelta);
        }

        if (void* pMem = HBMAllocMem(sizeof(HomeButtonEventHandler))) {
            mpHomeButtonEventHandler = new(pMem) HomeButtonEventHandler(this);
        }

        if (void* pMem = HBMAllocMem(sizeof(gui::PaneManager))) {
            mpPaneManager = new(pMem) gui::PaneManager(mpHomeButtonEventHandler, spAllocator, NULL);
        }

        mpPaneManager->createLayoutScene(*mpLayout);
        mpPaneManager->setAllComponentTriggerTarget(false);

        for (i = 0; i < mButtonNum; i++) {
            nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scBtnName[i], true);

            mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(true);
        }

        if (void* pMem = HBMAllocMem(sizeof(RemoteSpk))) {
            mpRemoteSpk = new(pMem) RemoteSpk(mpHBInfo->spkSeBuf);
        }

        for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            if (void* pMem = HBMAllocMem(sizeof(Controller))) {
                mpController[i] = new(pMem) Controller(i, mpRemoteSpk);
            }
        }

        mpPaneManager->setDrawInfo(&mDrawInfo);

        nw4r::math::VEC2 adjScale(1.0f / mpHBInfo->adjust.x, 1.0f);
        mDrawInfo.SetLocationAdjustScale(adjScale);
        mDrawInfo.SetLocationAdjust(mAdjustFlag);

        nw4r::math::MTX34 viewMtx;
        nw4r::math::MTX34Identity(&viewMtx);
        mDrawInfo.SetViewMtx(viewMtx);

        init_msg();
    }

    static u32 get_comma_length(char* pBuf) {
        u32 len;

        for (len = 0; pBuf[len] != '\0'; len++) {
            if (pBuf[len] == ',') {
                break;
            }
        }

        return len;
    }

    void HomeButton::set_config() {
        int i = 0, j = 0;

        char* pConfig = static_cast<char*>(mpHBInfo->configBuf);

        u32 len = get_comma_length(pConfig);
        mpLayoutName = static_cast<char*>(HBMAllocMem(len + 1));

        std::strncpy(mpLayoutName, pConfig, len);
        mpLayoutName[len] = '\0';

        pConfig += len + 1;

        len = get_comma_length(pConfig);
        mpAnmName = static_cast<char*>(HBMAllocMem(len + 1));

        std::strncpy(mpAnmName, pConfig, len);
        mpAnmName[len] = '\0';

        pConfig += len;

        i = 0;
        j = 0;
        for (; pConfig[i] != '\0'; i++) {
            if (pConfig[i] == ',') {
                if (pConfig[i + 1] == '1') {
                    mDialogFlag[j] = true;
                }
                else {
                    mDialogFlag[j] = false;
                }

                j++;
            }
        }

        mButtonNum = j;
        mAnmNum = mButtonNum * res::eAnim_Max;
    }

    void HomeButton::set_text() {
        int i = 0;
        int j = 0;
        int k = 0;
        bool insideStringFlag = false;
        wchar_t* message = static_cast<wchar_t*>(mpHBInfo->msgBuf);
        
        for (; message[i] != 0; i++) {
            if (message[i] == L'\"') {
                message[i] = 0;
                if (!insideStringFlag) {
                    insideStringFlag = true;

                    mpText[j][k] = &message[i + 1];
                    j++;

                    if (j == 10) {
                        j = 0;
                        k++;
                    }
                }
                else {
                    insideStringFlag = false;
                }
            }
        }
    }

    void HomeButton::init() {
        int i;

        if (mInitFlag) {
            return;
        }

        mInitFlag = true;

        mForceSttInitProcFlag = false;
        mForceSttFadeInProcFlag = false;
        mForceStopSyncFlag = false;

        if (mSelectBtnNum != HBM_SELECT_BTN3) {
            mEndInitSoundFlag = false;
        }

        GXSetCullMode(GX_CULL_NONE);

        for (i = 0; i < res::eBtn_Max + res::eFuncTouchPane_Max; i++) {
            mPaneCounter[i] = 0;
        }

        mState = 0;
        mSequence = SEQ_NORMAL;
        mReassignedFlag = false;

        updateTrigPane();

        mpPaneManager->init();

        reset_guiManager(-1);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            if (i < WPAD_MAX_CONTROLLERS) {
                mPadDrawTime[i] = 0;

                mpController[i]->setInValidPos();
                mpController[i]->clrKpadButton();
                mpController[i]->disconnect();
                mpController[i]->clrBatteryFlag();
                mpController[i]->initCallback();
                mpController[i]->initSound();

                mOnPaneVibFrame[i] = 0.0f;
                mOnPaneVibWaitFrame[i] = 0.0f;
            }
        }

        nw4r::ut::Rect layoutRect = mpLayout->GetLayoutRect();
        mDrawInfo.SetViewRect(layoutRect);

        mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[res::eFuncPane_let_icn_00], true)->SetVisible(false);

        for (i = res::eFuncTouchPane_B_optnBtn_00; i < res::eFuncTouchPane_B_optnBtn_20 + 1; i++) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true)->SetVisible(false);
        }

        for (i = 0; i < res::eFuncTextPane_Max; i++) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[i], true)->SetVisible(false);
        }

        mpRemoteSpk->Start();

        if (mpSoundArchivePlayer != NULL) {
            for (i = 0; i < mpSoundArchivePlayer->GetSoundPlayerCount(); i++) {
                mpSoundArchivePlayer->GetSoundPlayer(i).SetVolume(1.0f);
            }
        }

        calc(NULL);

        mFader.init(30.0f);
    }

    void HomeButton::init_msg() {
        int i;

        for (i = 0; i < res::eFuncTextPane_Max; i++) {
            nw4r::lyt::Pane* pPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[i], true);

            nw4r::lyt::TextBox* pTextBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(pPane);

            pTextBox->SetString(mpText[mpHBInfo->region][i], 0);
        }
    }

    void HomeButton::init_volume() {
        int i, idx;

        mVolumeNum = getVolume();
        setVolume(HBM_MAX_VOLUME);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

            getController(i)->connect();
        }

        for (i = 0; i < res::eGrPane_vol_09 - res::eGrPane_vol_00 + 1; i++) {
            if (i < mVolumeNum) {
                idx = findGroupAnimator(i + res::eGrPane_vol_00, res::eGrAnim_sound_ylw);
                mpGroupAnmController[idx]->play();
            }
            else {
                idx = findGroupAnimator(i + res::eGrPane_vol_00, res::eGrAnim_sound_gry);
                mpGroupAnmController[idx]->play();
            }
        }
    }

    void HomeButton::init_vib() {
        int idx;

        mVibFlag = getVibFlag();

        if (mVibFlag) {
            idx = findGroupAnimator(res::eGrPane_optnBtn_10_psh, res::eGrAnim_vb_btn_wht_psh);
            mpGroupAnmController[idx]->play();

            idx = findGroupAnimator(res::eGrPane_optnBtn_11_psh, res::eGrAnim_vb_btn_ylw_psh);
            mpGroupAnmController[idx]->play();
        }
        else {
            idx = findGroupAnimator(res::eGrPane_optnBtn_10_psh, res::eGrAnim_vb_btn_ylw_psh);
            mpGroupAnmController[idx]->play();

            idx = findGroupAnimator(res::eGrPane_optnBtn_11_psh, res::eGrAnim_vb_btn_wht_psh);
            mpGroupAnmController[idx]->play();
        }
    }

    void HomeButton::init_sound() {
        if (mpHBInfo->sound_callback != NULL) {
            mpHBInfo->sound_callback(HBMSEV_BEFORE_INIT_SOUND, 0);
        }

        mAppVolume[nw4r::snd::AUX_A] = AXGetAuxAReturnVolume();
        mAppVolume[nw4r::snd::AUX_B] = AXGetAuxBReturnVolume();
        mAppVolume[nw4r::snd::AUX_C] = AXGetAuxCReturnVolume();

        AXFXGetHooks(&mAxFxAlloc, &mAxFxFree);
        AXGetAuxACallback(&mAuxCallback, &mpAuxContext);
        AXFXSetHooks(&HBMAllocMem, &HBMFreeMem);

        mAxFxReverb.preDelay = 0.0f;
        mAxFxReverb.time = 2.5f;
        mAxFxReverb.coloration = 0.5f;
        mAxFxReverb.damping = 0.0f;
        mAxFxReverb.crosstalk = 0.0f;
        mAxFxReverb.mix = 1.0f;

        AXFXReverbHiInit(&mAxFxReverb);
        AXRegisterAuxACallback(&AXFXReverbHiCallback, &mAxFxReverb);

        AXSetAuxAReturnVolume(AX_MAX_VOLUME);
        AXSetAuxBReturnVolume(0);
        AXSetAuxCReturnVolume(0);

        if (mpHBInfo->sound_callback != NULL) {
            mpHBInfo->sound_callback(HBMSEV_INIT_SOUND, 0);
        }

        mEndInitSoundFlag = true;
    }

    void HomeButton::init_battery(const HBMControllerData* pController) {
        int idx;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            if (pController->wiiCon[i].kpad) {
                if (!mpHBInfo->cursor) {
                    mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetVisible(true);
                }

                idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wht);
                mpGroupAnmController[idx]->play();

                mControllerFlag[i] = true;
                getController(i)->getInfoAsync(&mWpadInfo[i]);
            }
            else {
                if (!mpHBInfo->cursor) {
                    mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetVisible(false);
                }

                idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_gry);
                mpGroupAnmController[idx]->play();

                mControllerFlag[i] = false;
            }
        }

        reset_battery();
        mGetPadInfoTime = 0;
    }

    void HomeButton::calc(const HBMControllerData* pController) {
        int i;

        mpPaneManager->calc();

        for (i = 0; i < mAnmNum; i++) {
            mpAnmController[i]->do_calc();
        }

        for (i = 0; i < res::ePairAnm_Max; i++) {
            mpPairGroupAnmController[i]->do_calc();
        }

        for (i = 0; i < res::eGrAnimator_Max; i++) {
            mpGroupAnmController[i]->do_calc();
        }

        for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            if (mOnPaneVibFrame[i] > 0.0f) {
                if (!mControllerFlag[i] || !getController(i)->isRumbling()) {
                    mOnPaneVibFrame[i] = 0.0f;
                    mOnPaneVibWaitFrame[i] = 0.0f;

                    if (getController(i)->isRumbling()) {
                        getController(i)->stopMotor();
                    }
                }
                else {
                    mOnPaneVibFrame[i] -= mpHBInfo->frameDelta;

                    if (mOnPaneVibFrame[i] <= 0.0f || mState == 17) {
                        getController(i)->stopMotor();
                        mOnPaneVibFrame[i] = 0.0f;
                        mOnPaneVibWaitFrame[i] = scOnPaneVibWaitTime;
                    }
                }
            }
            else if (mOnPaneVibWaitFrame[i] > 0.0f) {
                mOnPaneVibWaitFrame[i] -= mpHBInfo->frameDelta;

                if (mOnPaneVibWaitFrame[i] <= 0.0f) {
                    mOnPaneVibWaitFrame[i] = 0.0f;
                }
            }
        }

        switch (mState) {
            case 0: {
                if (mpHBInfo->backFlag) {
                    mSelectAnmNum = findGroupAnimator(res::eGrPane_hmMenuBck_strt, res::eGrAnim_hmMenu_strt);

                    mpLayout->GetRootPane()->FindPaneByName("back_00", true)->SetVisible(false);

                    mpLayout->GetRootPane()->FindPaneByName("back_02", true)->SetVisible(true);
                }
                else {
                    mSelectAnmNum = findGroupAnimator(res::eGrPane_hmMenu_strt, res::eGrAnim_hmMenu_strt);

                    mpLayout->GetRootPane()->FindPaneByName("back_00", true)->SetVisible(true);

                    mpLayout->GetRootPane()->FindPaneByName("back_02", true)->SetVisible(false);
                }

                mpGroupAnmController[mSelectAnmNum]->play();

                if (pController != NULL) {
                    mState = 1;
                    init_battery(pController);
                }

                break;
            }
            case 1: {
                if (!mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    init_volume();
                    init_vib();
                    init_sound();
                    play_sound(HBMSE_HOME_BUTTON);

                    mState = 2;
                }

                break;
            }
            case 2: {
                calc_letter();
                break;
            }
            case 3: {
                if (!mpGroupAnmController[mSelectAnmNum]->isPlaying() &&
                    mSelectAnmNum != res::eGrAnimator_optn_bar_in__close_bar_in) {

                    reset_battery();
                    mSelectAnmNum = res::ePairAnm_link_msg_in;
                    mpPairGroupAnmController[mSelectAnmNum]->play();
                }

                if (--mWaitStopMotorCount <= 0) {
                    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        WPADDisconnect(i);
                    }

                    mState = 4;
                }

                break;
            }
            case 4: {
                if (mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    u32 type;
                    if (WPADProbe(i, &type) != WPAD_ERR_NO_CONTROLLER) {
                        break;
                    }
                }

                if (i < WPAD_MAX_CONTROLLERS) {
                    break;
                }

                mState = 5;
                mMsgCount = 0;
                mSoundRetryCnt = 0;
                mSimpleSyncCallback = WPADSetSimpleSyncCallback(&SimpleSyncCallback);
                mEndSimpleSyncFlag = false;

                mSimpleSyncFlag = WPADStartFastSimpleSync();

                if (!mSimpleSyncFlag) {
                    setSimpleSyncAlarm(SYNC_START);
                }

                break;
            }
            case 5:
            case 6: {
                if (!mSimpleSyncFlag || mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                if (mMsgCount == 0) {
                    reset_control();
                    reset_btn();

                    mpPairGroupAnmController[res::ePairAnm_12btn_on]->setAnmType(ANIM_TYPE_LOOP);
                    mpPairGroupAnmController[res::ePairAnm_12btn_on]->play();
                }

                if (mControllerFlag[WPAD_CHAN3]) {
                    if (mState != 6) {
                        if (getController(WPAD_CHAN3)->isPlayingSoundId(HBMSE_SELECT)) {
                            mState = 6;
                            mMsgCount = scReConnectTime2;
                        }

                        if (++mSoundRetryCnt <= scReConnectTime2) {
                            break;
                        }

                        mState = 6;
                        mMsgCount = scReConnectTime2;
                        break;
                    }

                    if (++mMsgCount <= scReConnectTime) {
                        break;
                    }

                    mState = 7;
                }
                else {
                    if (++mMsgCount <= scReConnectTime) {
                        break;
                    }

                    mState = 7;

                    if (!WPADStopSimpleSync()) {
                        setSimpleSyncAlarm(SYNC_STOP);
                    }
                }

                break;
            }
            case 7: {
                if (!mEndSimpleSyncFlag) {
                    break;
                }

                WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                mSimpleSyncCallback = NULL;
                mpRemoteSpk->ClearPcm();
                reset_guiManager(-1);

                mSelectAnmNum = res::ePairAnm_link_msg_out;
                mpPairGroupAnmController[mSelectAnmNum]->play();

                mState = 8;
                mpPairGroupAnmController[res::ePairAnm_12btn_on]->setAnmType(ANIM_TYPE_FORWARD);

                play_sound(HBMSE_END_CONNECT_WINDOW);

                break;
            }
            case 8: {
                if (mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                if (mSelectAnmNum == res::ePairAnm_cmn_msg_rtrn) {
                    reset_window();

                    mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_Dialog], true)->SetVisible(false);

                }
                else if (mSelectAnmNum == res::ePairAnm_link_msg_out) {
                    mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_00], true)->SetVisible(false);

                    mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_01], true)->SetVisible(false);
                }

                mState = 2;

                break;
            }
            case 9: {
                if (mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                if (mVibFlag) {
                    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        getController(i)->stopMotor();
                    }
                }

                mState = 2;

                break;
            }
            case 10: {
                if (mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                mBar0AnmRev = 0;
                mBar1AnmRev = 0;
                mBar0AnmRevHold = 0;
                mBar1AnmRevHold = 0;

                if (mSequence != SEQ_CONTROL) {
                    for (i = res::eFuncTouchPane_B_optnBtn_00; i < res::eFuncTouchPane_B_optnBtn_20 + 1; i++) {
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true)->SetVisible(false);
                    }

                    mState = 2;
                }
                else if (mSequence == SEQ_CONTROL) {
                    mSelectAnmNum = res::ePairAnm_cntrl_wndw_opn;
                    mpPairGroupAnmController[mSelectAnmNum]->play();

                    mSelectAnmNum = res::ePairAnm_optn_bar_psh;
                    play_sound(HBMSE_OPEN_CONTROLLER);

                    mState = 8;
                }

                updateTrigPane();

                break;
            }
            case 11: {
                if (mpAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                mSelectAnmNum = res::ePairAnm_cmn_msg_in;
                mpPairGroupAnmController[mSelectAnmNum]->play();

                mState = 12;

                break;
            }
            case 12: {
                if (mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                updateTrigPane();
                reset_btn();
                mState = 2;

                break;
            }
            case 13: {
                if (mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                if (mSelectBtnNum >= 0) {
                    mFader.start();
                    mState = 19;
                    mFadeOutSeTime = mFader.getMaxFrame();

                    if (mSelectBtnNum != HBM_SELECT_BTN3 &&
                        mpHBInfo->sound_callback != NULL) {
                        mpHBInfo->sound_callback(HBMSEV_BEGIN_EXIT_ANIM, mFadeOutSeTime);
                    }
                }
                else {
                    updateTrigPane();
                    mSelectAnmNum = res::ePairAnm_cmn_msg_rtrn;
                    mpPairGroupAnmController[mSelectAnmNum]->play();
                    mState = 8;
                }

                reset_guiManager(-1);

                break;
            }
            case 14: {
                if (mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                calc_fadeoutAnm();
                break;
            }
            case 15: {
                if (mpAnmController[mSelectAnmNum]->isPlaying()) {
                    break;
                }

                mFader.start();
                mState = 19;
                mFadeOutSeTime = mFader.getMaxFrame();

                if (mSelectBtnNum != HBM_SELECT_BTN3 &&
                    mpHBInfo->sound_callback != NULL) {
                    mpHBInfo->sound_callback(HBMSEV_BEGIN_EXIT_ANIM, mFadeOutSeTime);
                }

                break;
            }
            case 16: {
                GroupAnmController* pAnim = mpGroupAnmController[mSelectAnmNum];

                if (!pAnim->isPlaying()) {
                    mState = 17;
                    fadeout_sound(0.0f);
                }
                else {
                    f32 restFrame = pAnim->getMaxFrame() - pAnim->getCurrentFrame();
                    fadeout_sound(restFrame / mFadeOutSeTime);
                }

                break;
            }
            case 17: {
                mState = 18;

                if (mSelectBtnNum != HBM_SELECT_BTN3) {
                    if (mpSoundArchivePlayer != NULL) {
                        for (i = 0; i < mpSoundArchivePlayer->GetSoundPlayerCount(); i++) {
                            mpSoundArchivePlayer->GetSoundPlayer(i).StopAllSound(0);
                        }
                    }

                    if (mEndInitSoundFlag) {
                        AXFXReverbHiShutdown(&mAxFxReverb);
                        AXRegisterAuxACallback(mAuxCallback, mpAuxContext);
                        AXFXSetHooks(mAxFxAlloc, mAxFxFree);

                        AXSetAuxAReturnVolume(mAppVolume[nw4r::snd::AUX_A]);
                        AXSetAuxBReturnVolume(mAppVolume[nw4r::snd::AUX_B]);
                        AXSetAuxCReturnVolume(mAppVolume[nw4r::snd::AUX_C]);
                    }
                }

                setVolume(mVolumeNum);
                WPADSaveConfig(NULL);

                mpRemoteSpk->Stop();
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    if (i < WPAD_MAX_CONTROLLERS) {
                        mpController[i]->clearCallback();
                    }
                }

                if (mSelectBtnNum != HBM_SELECT_BTN3 &&
                    mpHBInfo->sound_callback != NULL) {
                    mpHBInfo->sound_callback(HBMSEV_BEGIN_BLACKOUT, 0);
                }

                mInitFlag = false;

                break;
            }
            case 18: {
                mState = 2;
                break;
            }
            case 19: {
                if (mForceSttInitProcFlag) {
                    init_battery(pController);
                    mForceSttInitProcFlag = false;
                }

                if (mForceSttFadeInProcFlag) {
                    init_volume();
                    init_vib();
                    mForceSttFadeInProcFlag = false;
                }

                if (mFader.isDone()) {
                    if (mForceStopSyncFlag) {
                        if (!mEndSimpleSyncFlag) {
                            break;
                        }

                        WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                        mSimpleSyncCallback = NULL;
                        mForceStopSyncFlag = false;
                    }

                    if (mForceEndMsgAnmFlag) {
                        int idx;

                        idx = res::ePairAnm_link_msg_in;
                        mpPairGroupAnmController[idx]->initFrame();
                        mpPairGroupAnmController[idx]->stop();

                        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_00], true)->SetVisible(false);

                        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_01], true)->SetVisible(false);

                        idx = res::ePairAnm_12btn_on;
                        if (mpPairGroupAnmController[idx]->isPlaying()) {
                            mpPairGroupAnmController[idx]->initFrame();
                            mpPairGroupAnmController[idx]->stop();
                        }
                    }

                    mState = 17;

                    VISetBlack(TRUE);
                    VIFlush();

                    fadeout_sound(0.0f);
                }
                else {
                    f32 restFrame = mFader.getMaxFrame() - mFader.getFrame();
                    fadeout_sound(restFrame / mFadeOutSeTime);
                }

                break;
            }
            default: {
                break;
            }
        }

        if (mBar0AnmRev && isUpBarActive()) {
            if (mBar0AnmRev != 0 && mBar0AnmRev != mBar0AnmRevHold) {
                mpPairGroupAnmController[mBar0AnmRev]->play();
                mBar0AnmRevHold = mBar0AnmRev;
            }

            mBar0AnmRev = 0;
        }

        if (mBar1AnmRev && isDownBarActive()) {
            if (mBar1AnmRev != 0 && mBar1AnmRev != mBar1AnmRevHold) {
                mpGroupAnmController[mBar1AnmRev]->play();
                mBar1AnmRevHold = mBar1AnmRev;
            }

            mBar1AnmRev = 0;
        }

        if (pController != NULL) {
            update(pController);
        }

        mpLayout->Animate();
        mpLayout->CalculateMtx(mDrawInfo);

        if (!mpHBInfo->cursor) {
            for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                mpCursorLayout[i]->CalculateMtx(mDrawInfo);
            }
        }

        if (mForcusSEWaitTime <= 2) {
            mForcusSEWaitTime++;
        }
    }

    void HomeButton::calc_fadeoutAnm() {
        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_Dialog], true)->SetVisible(false);

        if (mpHBInfo->backFlag) {
            mSelectAnmNum = findGroupAnimator(res::eGrPane_hmMenuBck_fnsh,res::eGrAnim_hmMenu_fnsh);
        }
        else {
            mSelectAnmNum = findGroupAnimator(res::eGrPane_hmMenu_fnsh,res::eGrAnim_hmMenu_fnsh);
        }

        mpGroupAnmController[mSelectAnmNum]->play();
        mState = 16;
        mFadeOutSeTime = mpGroupAnmController[mSelectAnmNum]->getMaxFrame();

        if (mpHBInfo->sound_callback != NULL) {
            mpHBInfo->sound_callback(HBMSEV_END_MENU, mFadeOutSeTime);
        }
    }

    void HomeButton::calc_letter() {
        if (mLetterFlag &&
            !mpPairGroupAnmController[res::ePairAnm_ltrIcn_on]->isPlaying()) {

            mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[res::eFuncPane_let_icn_00], true)->SetVisible(true);

            mpPairGroupAnmController[res::ePairAnm_ltrIcn_on]->setAnmType(ANIM_TYPE_LOOP);

            mpPairGroupAnmController[res::ePairAnm_ltrIcn_on]->play();
        }
        else if (!mLetterFlag) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[res::eFuncPane_let_icn_00], true)->SetVisible(false);

            mpPairGroupAnmController[res::ePairAnm_ltrIcn_on]->stop();
        }
    }

    void HomeButton::calc_battery(int chan) {
        for (int i = 0; i < res::eBatteryPane_Max; i++) {
            if (i < mWpadInfo[chan].battery) {
                mpLayout->GetRootPane()->FindPaneByName(scBatteryPaneName[chan][i], true)->SetVisible(true);
            }
            else {
                mpLayout->GetRootPane()->FindPaneByName(scBatteryPaneName[chan][i], true)->SetVisible(false);
            }
        }

        if (mWpadInfo[chan].battery < 2) {
            int idx = findGroupAnimator(chan + res::eGrPane_plyr_00, res::eGrAnim_btry_red);

            mpGroupAnmController[idx]->play();
        }
        else {
            int idx = findGroupAnimator(chan + res::eGrPane_plyr_00, res::eGrAnim_btry_wht);

            mpGroupAnmController[idx]->play();
        }

        if (mGetPadInfoTime < scGetPadInfoTime) {
            mGetPadInfoTime = 0;
        }

        getController(chan)->clrBatteryFlag();
    }

    void HomeButton::draw() {
        mpLayout->Draw(mDrawInfo);

        if (!mpHBInfo->cursor) {
            for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
                mpCursorLayout[i]->Draw(mDrawInfo);
            }
        }

        mFader.draw();
    }

    static void SpeakerCallback(OSAlarm* pAlarm, OSContext* /* pContext */) {
        u32 data = reinterpret_cast<u32>(OSGetAlarmUserData(pAlarm));
        int chan = (data >> 16) & 0xFFFF;
        int id = data & 0xFFFF;

        HomeButton* pHBObj = HomeButton::getInstance();

        if (!WPADIsSpeakerEnabled(chan) ||
            !pHBObj->getController(chan)->isPlayReady()) {

            pHBObj->setSpeakerAlarm(chan, 50);
        }
        else {
            pHBObj->getController(chan)->playSound(pHBObj->getSoundArchivePlayer(), id);
        }
    }

    static void MotorCallback(OSAlarm* pAlarm, OSContext* pContext) {
        Controller* pController = reinterpret_cast<Controller*>(OSGetAlarmUserData(pAlarm));

        pController->stopMotor();
    }

    void HomeButton::setSpeakerAlarm(int chan, int msec) {
        OSSetAlarmUserData(&mSpeakerAlarm[chan], reinterpret_cast<void*>((chan << 16) | (chan + 2)));

        OSCancelAlarm(&mSpeakerAlarm[chan]);
        OSSetAlarm(&mSpeakerAlarm[chan], OSMillisecondsToTicks(msec), &SpeakerCallback);
    }

    static void RetrySimpleSyncCallback(OSAlarm* pAlarm, OSContext* pContext) {
        HomeButton* pHBObj = HomeButton::getInstance();
        int type = reinterpret_cast<int>(OSGetAlarmUserData(pAlarm));
        bool retrySuccessFlag = false;

        if (type == HomeButton::SYNC_START) {
            if (WPADStartFastSimpleSync()) {
                pHBObj->setSimpleSyncFlag(true);
                retrySuccessFlag = true;
            }
        }
        else /* HomeButton::SYNC_STOP */ {
            if (WPADStopSimpleSync()) {
                retrySuccessFlag = true;
            }
        }

        if (!retrySuccessFlag) {
            pHBObj->setSimpleSyncAlarm(type);
        }
    }

    static void SimpleSyncCallback(s32 result, s32 num) {
        if (result == WPAD_SYNC_DONE) {
            HomeButton::getInstance()->setEndSimpleSyncFlag(true);
        }

        HomeButton::getInstance()->callSimpleSyncCallback(result, num);
    }

    void HomeButton::setSimpleSyncAlarm(int type) {
        OSCancelAlarm(&mSimpleSyncAlarm);
        OSSetAlarmUserData(&mSimpleSyncAlarm, reinterpret_cast<void*>(type));
        OSSetAlarm(&mSimpleSyncAlarm, OSMillisecondsToTicks(100), &RetrySimpleSyncCallback);
    }

    void HomeButton::callSimpleSyncCallback(s32 result, s32 num) {
        if (mSimpleSyncCallback != NULL) {
            mSimpleSyncCallback(result, num);
        }
    }

    void HomeButton::update(const HBMControllerData* pController) {
        #define IsValidDevType_(x)  ((x)->use_devtype == WPAD_DEV_CLASSIC || (x)->kpad->dev_type == WPAD_DEV_CLASSIC)

        int i, idx;

        mFader.calc();

        for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            if (pController->wiiCon[i].kpad != NULL) {

                if (pController->wiiCon[i].kpad->wpad_err !=
                    WPAD_ERR_NO_CONTROLLER) {

                    if (mPadDrawTime[i] > static_cast<int>(scPadDrawWaitTime)) {

                        if (pController->wiiCon[i].kpad->wpad_err == WPAD_ERR_OK) {
                            bool pointerEnableFlag;

                            if (pController->wiiCon[i].use_devtype != WPAD_DEV_CLASSIC &&
                                pController->wiiCon[i].kpad->dev_type != WPAD_DEV_CLASSIC) {

                                if (pController->wiiCon[i].kpad->dpd_valid_fg > 0) {
                                    pointerEnableFlag = true;
                                }
                                else {
                                    pointerEnableFlag = false;
                                }
                            }
                            else {
                                pointerEnableFlag = true;
                            }

                            mpController[i]->setKpad(&pController->wiiCon[i], pointerEnableFlag);

                            if (!mpHBInfo->cursor) {
                                mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetVisible(true);
                            }
                        }
                    }
                    else {
                        mpController[i]->setKpad(&pController->wiiCon[i], false);
                        mPadDrawTime[i]++;
                    }

                    if (pController->wiiCon[i].use_devtype != WPAD_DEV_CLASSIC &&
                        pController->wiiCon[i].kpad->dev_type != WPAD_DEV_CLASSIC) {

                        if (pController->wiiCon[i].kpad->dpd_valid_fg <= 0) {
                            s32 result;
                            u32 type;
                            result = WPADProbe(i, &type);

                            if (pController->wiiCon[i].kpad->wpad_err != WPAD_ERR_COMMUNICATION_ERROR &&
                                result != WPAD_ERR_COMMUNICATION_ERROR) {

                                mpController[i]->setInValidPos();
                            }
                        }
                    }
                }
                else {
                    mpController[i]->setInValidPos();

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetVisible(false);
                    }
                }

                if (!mControllerFlag[i]) {
                    mControllerFlag[i] = true;

                    getController(i)->getInfoAsync(&mWpadInfo[i]);

                    idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wht);
                    mpGroupAnmController[idx]->play();

                    idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wink_gry);
                    mpGroupAnmController[idx]->stop();

                    idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wink);
                    mpGroupAnmController[idx]->play();

                    play_sound(i + HBMSE_CONNECTED);
                    getController(i)->connect();
                    getController(i)->startMotor();

                    OSSetAlarmUserData(&mAlarm[i], reinterpret_cast<void*>(getController(i)));

                    OSCancelAlarm(&mAlarm[i]);
                    OSSetAlarm(&mAlarm[i], OSMillisecondsToTicks(300), &MotorCallback);

                    setSpeakerAlarm(i, 400);
                }

                if (pController->wiiCon[i].kpad->wpad_err == WPAD_ERR_OK) {
                    nw4r::math::VEC3 vec;

                    if (pController->wiiCon[i].use_devtype == WPAD_DEV_CLASSIC && pController->wiiCon[i].kpad->dev_type == WPAD_DEV_CLASSIC) {
                        vec = nw4r::math::VEC3(0.0f, 0.0f, 15.0f);
                    }
                    else {
                        Vec2 v = pController->wiiCon[i].kpad->horizon;
                        f32 rad = nw4r::math::Atan2Deg(-v.y, v.x);

                        vec = nw4r::math::VEC3(0.0f, 0.0f, rad);
                    }

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorRotPaneName, true)->SetRotate(vec);

                        mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorSRotPaneName, true)->SetRotate(vec);
                    }

                    if (mGetPadInfoTime > scGetPadInfoTime) {
                        getController(i)->getInfoAsync(&mWpadInfo[i]);
                    }

                    update_controller(i);

                    if (!mpHBInfo->cursor) {
                        update_posController(i);
                    }
                }

                if (getController(i)->getBatteryFlag()) {
                    calc_battery(i);
                }
            }
            else {
                if (mControllerFlag[i]) {
                    idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wht);
                    mpGroupAnmController[idx]->play();

                    idx = findGroupAnimator(i + res::eGrPane_plyr_00, res::eGrAnim_btry_wink_gry);
                    mpGroupAnmController[idx]->play();

                    for (int j = 0; j < res::eBatteryPane_Max; j++) {
                        mpLayout->GetRootPane()->FindPaneByName(scBatteryPaneName[i][j], true)->SetVisible(false);
                    }

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetVisible(false);
                    }

                    mPadDrawTime[i] = 0;
                    mControllerFlag[i] = false;

                    mpController[i]->setInValidPos();
                    mpController[i]->clrKpadButton();
                    mpController[i]->disconnect();
                }

                reset_guiManager(i);
            }
        }

        if (mGetPadInfoTime > scGetPadInfoTime) {
            mGetPadInfoTime = 0;
        }
        else {
            mGetPadInfoTime++;
        }
    }

    void HomeButton::update_controller(int id) {
        int idx;

        if (isActive()) {
            HBController* pController = mpController[id]->getController();

            Vec2 pos;
            Vec2 src = { pController->x, pController->y };

            Rect bound;
            bound.left = -416.0;
            bound.top = -228.0;
            bound.right = 416.0;
            bound.bottom = 228.0;

            KPADGetProjectionPos(&pos, &src, &bound, 1.10132f);

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                pos.x *= 1.15f;
                pos.y *= 1.15f;
            }

            if (-516.0f > pos.x) {
                pos.x = -516.0f;
            }
            else if (516.0f < pos.x) {
                pos.x = 516.0f;
            }
            else if (-328.0f > pos.y) {
                pos.y = -328.0f;
            }
            else if (328.0f < pos.y) {
                pos.y = 328.0f;
            }

            mpPaneManager->update(id, pos.x, -pos.y, pController->trig, pController->hold, pController->release, pController);

            if (((pController->trig & (PAD_BUTTON_START << 16)) |
                (pController->trig & WPAD_BUTTON_HOME)) &&
                isActive()) {

                if (mSequence == SEQ_CONTROL) {
                    mpPaneManager->update(id, 0.0f, -180.0f, 0, 0, 0, NULL);

                    mSelectAnmNum = res::ePairAnm_hmMenu_bar_psh;
                    mpPairGroupAnmController[mSelectAnmNum]->play();

                    mSelectAnmNum = res::ePairAnm_close_bar_psh;
                    mpPairGroupAnmController[mSelectAnmNum]->play();

                    int idx = res::ePairAnm_cntrl_dwn;
                    mpPairGroupAnmController[idx]->play();

                    mState = 10;
                    mSequence = SEQ_NORMAL;

                    play_sound(HBMSE_CLOSE_CONTROLLER);
                }
                else if (mSequence == SEQ_NORMAL) {
                    if (mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->isPlaying()) {
                        mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->stop();
                    }

                    if (mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->isPlaying()) {
                        mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->stop();
                    }

                    mSelectBtnNum = HBM_SELECT_HOMEBTN;

                    mSelectAnmNum = res::ePairAnm_hmMenu_bar_psh;
                    mpPairGroupAnmController[mSelectAnmNum]->play();

                    mState = 14;
                    play_sound(HBMSE_RETURN_APP);
                }
            }
            else if (mSequence == SEQ_CONTROL && isActive()) {
                if ((pController->trig & WPAD_BUTTON_MINUS) ||
                    (pController->trig & (PAD_BUTTON_LEFT << 16))) {

                    if (mVolumeNum > 0) {
                        mVolumeNum--;

                        idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_ylw);
                        mpGroupAnmController[idx]->stop();

                        idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_gry);
                        mpGroupAnmController[idx]->play();

                        idx = findGroupAnimator(res::eGrPane_optnBtn_00_psh, res::eGrAnim_optn_btn_psh);
                        mpGroupAnmController[idx]->play();

                        if (mVolumeNum == 0) {
                            play_sound(HBMSE_VOLUME_MINUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                            }
                        }
                        else {
                            play_sound(HBMSE_VOLUME_MINUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                            }
                        }

                    }
                    else {
                        play_sound(HBMSE_NOTHING_DONE);
                    }

                }
                else if ((pController->trig & WPAD_BUTTON_PLUS) || (pController->trig & (PAD_BUTTON_RIGHT << 16))) {
                    if (mVolumeNum < HBM_MAX_VOLUME) {
                        idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_gry);
                        mpGroupAnmController[idx]->stop();

                        idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_ylw);
                        mpGroupAnmController[idx]->play();

                        mVolumeNum++;

                        idx = findGroupAnimator(res::eGrPane_optnBtn_01_psh, res::eGrAnim_optn_btn_psh);
                        mpGroupAnmController[idx]->play();

                        if (mVolumeNum == HBM_MAX_VOLUME) {
                            play_sound(HBMSE_VOLUME_PLUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                            }
                        }
                        else {
                            play_sound(HBMSE_VOLUME_PLUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                            }
                        }

                    }
                    else {
                        play_sound(HBMSE_NOTHING_DONE);
                    }
                }
            }

        }
        else if (mSequence == SEQ_CONTROL && mState == 5 && !mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
            HBController* pController = mpController[id]->getController();
            if (pController->trig != 0) {
                mMsgCount = scReConnectTime;
            }
        }
    }

    void HomeButton::update_posController(int id) {
        HBController* pController = mpController[id]->getController();
        Vec2 pos;
        Vec2 src = { pController->x, pController->y };

        Rect bound;
        bound.left = -416.0;
        bound.top = -228.0;
        bound.right = 416.0;
        bound.bottom = 228.0;

        KPADGetProjectionPos(&pos, &src, &bound, 1.10132f);

        if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
            pos.x *= 1.15f;
            pos.y *= 1.15f;
        }

        if (-516.0f > pos.x) {
            pos.x = -516.0f;
        }
        else if (516.0f < pos.x) {
            pos.x = 516.0f;
        }
        else if (-328.0f > pos.y) {
            pos.y = -328.0f;
        }
        else if (328.0f < pos.y) {
            pos.y = 328.0f;
        }
        nw4r::math::VEC2 pos2(pos.x, -pos.y);

        if (mAdjustFlag) {
            pos2.x = pos2.x / mpHBInfo->adjust.x;
        }

        mpCursorLayout[id]->GetRootPane()->FindPaneByName(scCursorPaneName, true)->SetTranslate(pos2);
    }

    void HomeButton::updateTrigPane() {
        int i;

        switch (mSequence) {
            case SEQ_NORMAL: {
                for (i = 0; i < res::eFuncTouchPane_Max; i++) {
                    if (i < res::eFuncTouchPane_B_optnBtn_00 || i == res::eFuncTouchPane_cntrl_00) {

                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(true);
                    }
                    else {
                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(false);
                    }
                }

                break;
            }
            case SEQ_CONTROL: {
                for (i = 0; i < res::eFuncTouchPane_Max; i++) {
                    if ((i > res::eFuncTouchPane_B_btn_00 && i < res::eFuncTouchPane_B_BtnA) || i == res::eFuncTouchPane_cntrl_00) {
                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(true);
                    }
                    else {
                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(false);
                    }
                }

                break;
            }
            case SEQ_COMMON: {
                for (i = 0; i < res::eFuncTouchPane_Max; i++) {

                    if (i < res::eFuncTouchPane_B_BtnA || i == res::eFuncTouchPane_cntrl_00) {
                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(false);
                    }
                    else {
                        nw4r::lyt::Pane* pTouchPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true);

                        mpPaneManager->getPaneComponentByPane(pTouchPane) ->setTriggerTarget(true);
                    }
                }

                break;
            }
        }
    }

    void HomeButton::startPointEvent(const char* pName, void* pData) {
        int idx;
        int btnNo = getPaneNo(pName);
        HBController* pController = static_cast<HBController*>(pData);
        bool onFlag = false;

        if (isActive() && btnNo != -1 && mPaneCounter[btnNo] == 0) {
            if (mSequence != SEQ_COMMON && btnNo < mButtonNum) {
                idx = findAnimator(btnNo, res::eAnim_cntBtn_in);
                mpAnmController[idx]->play();

                if (mSequence == SEQ_NORMAL) {
                    setForcusSE();
                    onFlag = true;
                }

            }
            else {
                switch (btnNo - mButtonNum) {
                    case res::eFuncTouchPane_B_btn_00: {
                        if (mSequence == SEQ_NORMAL) {
                            if (isUpBarActive()) {
                                mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->play();

                                mBar0AnmRevHold = res::ePairAnm_hmMenu_bar_in;
                                mBar0AnmRev = 0;

                                setForcusSE();
                                onFlag = true;
                            }
                            else {
                                mBar0AnmRev = res::ePairAnm_hmMenu_bar_in;
                            }
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_bar_10:
                    case res::eFuncTouchPane_cntrl_00: {
                        if (mSequence == SEQ_NORMAL) {
                            idx = findGroupAnimator(res::eGrPane_optn_bar_in, res::eGrAnim_optn_bar_in);

                            if (isDownBarActive()) {
                                mpGroupAnmController[idx]->play();
                                mBar1AnmRevHold = idx;
                                mBar1AnmRev = 0;

                                setForcusSE();
                                onFlag = true;
                            }
                            else {
                                mBar1AnmRev = idx;
                            }
                        }
                        else if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optn_bar_in, res::eGrAnim_close_bar_in);

                            if (isDownBarActive()) {
                                mpGroupAnmController[idx]->play();
                                mBar1AnmRevHold = idx;
                                mBar1AnmRev = 0;

                                setForcusSE();
                                onFlag = true;
                            }
                            else {
                                mBar1AnmRev = idx;
                            }
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_00: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_00_inOut, res::eGrAnim_optn_btn_in);

                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_01: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_01_inOut, res::eGrAnim_optn_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_10: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_10_inOut, res::eGrAnim_optn_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_11: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_11_inOut, res::eGrAnim_optn_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_20: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_20_inOut, res::eGrAnim_optn_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnA: {
                        if (mSequence == SEQ_COMMON) {
                            idx = findGroupAnimator(res::eGrPane_msgBtn_00_inOut, res::eGrAnim_cmn_msg_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnB: {
                        if (mSequence == SEQ_COMMON) {
                            idx = findGroupAnimator(res::eGrPane_msgBtn_01_inOut, res::eGrAnim_cmn_msg_btn_in);
                            mpGroupAnmController[idx]->play();

                            setForcusSE();
                            onFlag = true;
                        }

                        break;
                    }
                }
            }
        }

        if (btnNo == mButtonNum + res::eFuncTouchPane_B_bar_10 || btnNo == mButtonNum + res::eFuncTouchPane_cntrl_00) {
            mPaneCounter[mButtonNum + res::eFuncTouchPane_B_bar_10]++;
            mPaneCounter[mButtonNum + res::eFuncTouchPane_cntrl_00]++;
        }
        else {
            mPaneCounter[btnNo]++;
        }

        if (onFlag && pController != NULL) {
            if (!getController(pController->chan)->isRumbling() && mOnPaneVibWaitFrame[pController->chan] <= 0.0f) {
                mOnPaneVibFrame[pController->chan] = scOnPaneVibTime;
                getController(pController->chan)->startMotor();
            }
        }
    }

    void HomeButton::startLeftEvent(const char* pName) {
        int idx;
        int btnNo = getPaneNo(pName);

        if (0 < mPaneCounter[btnNo]) {
            if (btnNo == mButtonNum + res::eFuncTouchPane_B_bar_10 || btnNo == mButtonNum + res::eFuncTouchPane_cntrl_00) {
                mPaneCounter[mButtonNum + res::eFuncTouchPane_B_bar_10]--;
                mPaneCounter[mButtonNum + res::eFuncTouchPane_cntrl_00]--;
            }
            else {
                mPaneCounter[btnNo]--;
            }
        }

        if (isActive() && btnNo != -1 && !mPaneCounter[btnNo]) {
            if (mSequence != SEQ_COMMON && btnNo < mButtonNum) {
                idx = findAnimator(btnNo, res::eAnim_cntBtn_out);
                mpAnmController[idx]->play();
            }
            else {
                switch (btnNo - mButtonNum) {
                    case res::eFuncTouchPane_B_btn_00: {
                        if (mSequence == SEQ_NORMAL) {
                            if (isUpBarActive()) {
                                mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->play();

                                mBar0AnmRevHold = res::ePairAnm_hmMenu_bar_out;
                                mBar0AnmRev = 0;
                            }
                            else {
                                mBar0AnmRev = res::ePairAnm_hmMenu_bar_out;
                            }
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_bar_10:
                    case res::eFuncTouchPane_cntrl_00: {
                        if (mSequence == SEQ_NORMAL) {
                            idx = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_optn_bar_out);

                            if (isDownBarActive()) {
                                mpGroupAnmController[idx]->play();
                                mBar1AnmRevHold = idx;
                                mBar1AnmRev = 0;
                            }
                            else {
                                mBar1AnmRev = idx;
                            }
                        }
                        else if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_close_bar_out);

                            if (isDownBarActive()) {
                                mpGroupAnmController[idx]->play();
                                mBar1AnmRevHold = idx;
                                mBar1AnmRev = 0;
                            }
                            else {
                                mBar1AnmRev = idx;
                            }
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_00: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_00_inOut, res::eGrAnim_optn_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_01: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_01_inOut, res::eGrAnim_optn_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_10: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_10_inOut, res::eGrAnim_optn_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_11: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_11_inOut, res::eGrAnim_optn_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_20: {
                        if (mSequence == SEQ_CONTROL) {
                            idx = findGroupAnimator(res::eGrPane_optnBtn_20_inOut, res::eGrAnim_optn_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnA: {
                        if (mSequence == SEQ_COMMON) {
                            idx = findGroupAnimator(res::eGrPane_msgBtn_00_inOut, res::eGrAnim_cmn_msg_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnB: {
                        if (mSequence == SEQ_COMMON) {
                            idx = findGroupAnimator(res::eGrPane_msgBtn_01_inOut, res::eGrAnim_cmn_msg_btn_out);
                            mpGroupAnmController[idx]->play();
                        }

                        break;
                    }
                }
            }
        }
    }

    void HomeButton::startTrigEvent(const char* pName) {
        int idx;
        int btnNo;

        btnNo = getPaneNo(pName);

        if (isActive() && btnNo != -1) {
            if (mSequence == SEQ_NORMAL && btnNo < mButtonNum) {
                mSelectBtnNum = static_cast<HBMSelectBtnNum>(btnNo + HBM_SELECT_BTN1);

                mSelectAnmNum = findAnimator(btnNo + res::eGroup_btnL_00_psh, res::eAnim_cntBtn_psh);
                mpAnmController[mSelectAnmNum]->play();

                play_sound(HBMSE_SELECT);

                if (mDialogFlag[btnNo]) {
                    mState = 11;
                    mSequence = SEQ_COMMON;

                    nw4r::lyt::Pane* pPane = mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_Dialog], true);

                    nw4r::lyt::TextBox* pTextBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(pPane);

                    pTextBox->SetString(mpText[mpHBInfo->region][btnNo + 2], 0);

                    mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_Dialog], true)->SetVisible(true);
                }
                else {
                    mState = 15;
                }

            }
            else {
                switch (btnNo - mButtonNum) {
                    case res::eFuncTouchPane_B_btn_00: {
                        if (mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->isPlaying()) {
                            mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->stop();
                        }

                        if (mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->isPlaying()) {
                            mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->stop();
                        }

                        mSelectBtnNum = HBM_SELECT_HOMEBTN;

                        mSelectAnmNum = res::ePairAnm_hmMenu_bar_psh;
                        mpPairGroupAnmController[mSelectAnmNum]->play();

                        mState = 14;
                        play_sound(HBMSE_RETURN_APP);

                        break;
                    }
                    case res::eFuncTouchPane_B_bar_10:
                    case res::eFuncTouchPane_cntrl_00: {
                        if (mSequence == SEQ_CONTROL) {
                            mSelectAnmNum = res::ePairAnm_hmMenu_bar_psh;
                            mpPairGroupAnmController[mSelectAnmNum]->play();

                            mSelectAnmNum = res::ePairAnm_close_bar_psh;
                            mpPairGroupAnmController[mSelectAnmNum]->play();

                            mpPairGroupAnmController[res::ePairAnm_cntrl_dwn]->play();

                            mState = 10;
                            mSequence = SEQ_NORMAL;
                            play_sound(HBMSE_CLOSE_CONTROLLER);

                        }
                        else if (mSequence == SEQ_NORMAL) {
                            mpPairGroupAnmController[res::ePairAnm_optn_bar_psh]->play();

                            mSelectAnmNum = res::ePairAnm_cntrl_up;
                            mpPairGroupAnmController[mSelectAnmNum]->play();

                            mState = 10;

                            for (int i = res::eFuncTouchPane_B_optnBtn_00; i < res::eFuncTouchPane_B_optnBtn_20 + 1; i++) {
                                mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], true)->SetVisible(true);
                            }

                            mSequence = SEQ_CONTROL;
                            play_sound(HBMSE_SELECT);
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_00: {
                        if (mVolumeNum > 0) {
                            mVolumeNum--;

                            idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_ylw);
                            mpGroupAnmController[idx]->stop();

                            idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_gry);
                            mpGroupAnmController[idx]->play();

                            if (mVolumeNum == 0) {
                                play_sound(HBMSE_VOLUME_MINUS_LIMIT);

                                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                    getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                    getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                                }
                            }
                            else {
                                play_sound(HBMSE_VOLUME_MINUS);

                                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                    getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                    getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                                }
                            }

                            idx = findGroupAnimator(res::eGrPane_optnBtn_00_psh, res::eGrAnim_optn_btn_psh);
                            mpGroupAnmController[idx]->play();
                        }
                        else {
                            play_sound(HBMSE_NOTHING_DONE);
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_01: {
                        if (mVolumeNum < HBM_MAX_VOLUME) {
                            idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_gry);
                            mpGroupAnmController[idx]->stop();

                            idx = findGroupAnimator(mVolumeNum + res::eGrPane_vol_00, res::eGrAnim_sound_ylw);
                            mpGroupAnmController[idx]->play();

                            mVolumeNum++;

                            if (mVolumeNum == HBM_MAX_VOLUME) {
                                play_sound(HBMSE_VOLUME_PLUS_LIMIT);

                                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                    getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                    getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                                }
                            }
                            else {
                                play_sound(HBMSE_VOLUME_PLUS);

                                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                                    getController(i)->setSpeakerVol(mVolumeNum / static_cast<f32>(HBM_MAX_VOLUME));

                                    getController(i)->playSound(mpSoundArchivePlayer, HBM_SPK_SE_CONNECT1);
                                }
                            }

                            idx = findGroupAnimator(res::eGrPane_optnBtn_01_psh, res::eGrAnim_optn_btn_psh);
                            mpGroupAnmController[idx]->play();
                        }
                        else {
                            play_sound(HBMSE_NOTHING_DONE);
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_10: {
                        if (!mVibFlag) {
                            mVibFlag = true;

                            setVibFlag(mVibFlag);

                            idx = findGroupAnimator(res::eGrPane_optnBtn_11_psh, res::eGrAnim_vb_btn_ylw_psh);
                            mpGroupAnmController[idx]->play();

                            mSelectAnmNum = findGroupAnimator(res::eGrPane_optnBtn_10_cntrl, res::eGrAnim_vb_btn_wht_psh);
                            mpGroupAnmController[mSelectAnmNum]->play();

                            play_sound(HBMSE_VIBE_ON);
                        }
                        else {
                            mSelectAnmNum = findGroupAnimator(res::eGrPane_optnBtn_10_cntrl, res::eGrAnim_vb_btn_ylw_ylw);
                            mpGroupAnmController[mSelectAnmNum]->play();

                            play_sound(HBMSE_NOTHING_DONE);
                        }

                        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                            getController(i)->startMotor();
                            mOnPaneVibFrame[i] = 0.0f;
                            mOnPaneVibWaitFrame[i] = 0.0f;
                        }

                        mState = 9;

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_11: {
                        if (mVibFlag) {
                            mVibFlag = false;
                            setVibFlag(mVibFlag);

                            idx = findGroupAnimator(res::eGrPane_optnBtn_11_psh, res::eGrAnim_vb_btn_wht_psh);
                            mpGroupAnmController[idx]->play();

                            mSelectAnmNum = findGroupAnimator(res::eGrPane_optnBtn_10_psh, res::eGrAnim_vb_btn_ylw_psh);
                            mpGroupAnmController[mSelectAnmNum]->play();

                            play_sound(HBMSE_VIBE_OFF);
                        }
                        else {
                            play_sound(HBMSE_NOTHING_DONE);
                        }

                        mState = 9;

                        break;
                    }
                    case res::eFuncTouchPane_B_optnBtn_20: {
                        mSelectAnmNum = findGroupAnimator(res::eGrPane_optnBtn_20_psh, res::eGrAnim_optn_btn_psh);
                        mpGroupAnmController[mSelectAnmNum]->play();

                        mState = 3;
                        setReassignedFlag(true);

                        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                            mOnPaneVibFrame[i] = 0.0f;
                            mOnPaneVibWaitFrame[i] = 0.0f;
                            getController(i)->stopMotor();
                        }

                        mWaitStopMotorCount = scWaitStopMotorTime;

                        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_00], true)->SetVisible(true);

                        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[res::eFuncTextPane_T_msg_01], true)->SetVisible(true);

                        play_sound(HBMSE_SELECT);
                        play_sound(HBMSE_START_CONNECT_WINDOW);

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnA: {
                        mSelectAnmNum = findGroupAnimator(res::eGrPane_msgBtn_00_psh, res::eGrAnim_cmn_msg_btn_psh);
                        mpGroupAnmController[mSelectAnmNum]->play();

                        mState = 13;
                        mSequence = SEQ_NORMAL;

                        if (mSelectBtnNum == HBM_SELECT_BTN1) {
                            play_sound(HBMSE_GOTO_MENU);
                        }
                        else if (mSelectBtnNum == HBM_SELECT_BTN2) {
                            play_sound(HBMSE_RESET_APP);
                        }

                        break;
                    }
                    case res::eFuncTouchPane_B_BtnB: {
                        mSelectAnmNum = findGroupAnimator(res::eGrPane_msgBtn_01_psh, res::eGrAnim_cmn_msg_btn_psh);
                        mpGroupAnmController[mSelectAnmNum]->play();

                        mState = 13;
                        mSelectBtnNum = HBM_SELECT_NULL;

                        mSequence = SEQ_NORMAL;
                        play_sound(HBMSE_CANCEL);

                        break;
                    }
                }
            }
        }
    }

    void HomeButton::reset_btn() {
        int idx;

        for (int i = 0; i < mButtonNum; i++) {
            if (mPaneCounter[i] == 0) {
                continue;
            }

            idx = findAnimator(i, res::eAnim_cntBtn_out);
            mpAnmController[idx]->play();

            mPaneCounter[i] = 0;
        }

        if (mPaneCounter[mButtonNum + res::eFuncTouchPane_B_btn_00] != 0) {
            mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->play();
            mPaneCounter[mButtonNum + res::eFuncTouchPane_B_bar_10] = 0;
        }

        if (mPaneCounter[mButtonNum + res::eFuncTouchPane_B_bar_10] != 0) {
            if (mSequence == SEQ_CONTROL) {
                if (mMsgCount == 0) {
                    idx = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_close_bar_out);
                    mpGroupAnmController[idx]->play();

                    mPaneCounter[mButtonNum + res::eFuncTouchPane_B_btn_00] = 0;
                }
            }
            else {
                idx = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_optn_bar_out);
                mpGroupAnmController[idx]->play();

                mPaneCounter[mButtonNum + res::eFuncTouchPane_B_btn_00] = 0;
            }
        }
    }

    void HomeButton::reset_control() {
        int idx;

        for (int i = 0; i < res::eGrPane_optnBtn_20_inOut - res::eGrPane_optnBtn_00_inOut + 1; i++) {
            idx = findGroupAnimator(i + res::eGrPane_optnBtn_00_inOut, res::eGrAnim_optn_btn_out);
            mpGroupAnmController[idx]->play();
        }
    }

    void HomeButton::reset_window() {
        int idx;

        idx = findGroupAnimator(res::eGrPane_msgBtn_00_inOut, res::eGrAnim_cmn_msg_btn_out);
        mpGroupAnmController[idx]->play();

        idx = findGroupAnimator(res::eGrPane_msgBtn_01_inOut, res::eGrAnim_cmn_msg_btn_out);
        mpGroupAnmController[idx]->play();
    }

    void HomeButton::reset_battery() {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            for (int j = 0; j < res::eBatteryPane_Max; j++) {
                mpLayout->GetRootPane()->FindPaneByName(scBatteryPaneName[i][j], true)->SetVisible(false);
            }
        }
    }

    void HomeButton::reset_guiManager(int num) {
        if (num < 0) {
            for (int i = 0; i < 8; i++) {
                mpPaneManager->update(i, -10000.0f, -10000.0f, 0, 0, 0, NULL);
            }
        }
        else {
            mpPaneManager->update(num, -10000.0f, -10000.0f, 0, 0, 0, NULL);
        }
    }

    bool HomeButton::isActive() const {
        return mState == 2;
    }

    bool HomeButton::isUpBarActive() const {
        bool flag = true;

        if (!isActive() ||
            mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_out]->isPlaying() ||
            mpPairGroupAnmController[res::ePairAnm_hmMenu_bar_in]->isPlaying()) {

            flag = false;
        }

        return flag;
    }

    bool HomeButton::isDownBarActive() {
        bool flag = true;

        int idx[4];
        idx[0] = findGroupAnimator(res::eGrPane_optn_bar_in,  res::eGrAnim_optn_bar_in);
        idx[1] = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_optn_bar_out);
        idx[2] = findGroupAnimator(res::eGrPane_optn_bar_in,  res::eGrAnim_close_bar_in);
        idx[3] = findGroupAnimator(res::eGrPane_optn_bar_out, res::eGrAnim_close_bar_out);

        if (!isActive() ||
            mpGroupAnmController[idx[0]]->isPlaying() ||
            mpGroupAnmController[idx[1]]->isPlaying() ||
            mpGroupAnmController[idx[2]]->isPlaying() ||
            mpGroupAnmController[idx[3]]->isPlaying()) {

            flag = false;
        }

        return flag;
    }

    int HomeButton::getPaneNo(const char* pName) {
        int ret = -1;

        for (int i = 0; i < mButtonNum; i++) {
            if (std::strcmp(pName, getPaneName(i)) == 0) {
                ret = i;
                break;
            }
        }

        for (int i = 0; i < res::eFuncTouchPane_Max; i++) {
            if (std::strcmp(pName, getFuncPaneName(i)) == 0) {
                ret = i + mButtonNum;
                break;
            }
        }

        return ret;
    }

    int HomeButton::findAnimator(int pane, int anm) {
        for (int i = 0; i < mAnmNum; i++) {
            if (scAnmTable[i].pane == pane && scAnmTable[i].anm == anm) {
                return i;
            }
        }

        return -1;
    }

    int HomeButton::findGroupAnimator(int grPane, int grAnm) {
        for (int i = 0; i < res::eGrAnimator_Max; i++) {
            if (scGroupAnmTable[i].pane == grPane &&
                scGroupAnmTable[i].anm == grAnm) {

                return i;
            }
        }

        return -1;
    }

    HBMSelectBtnNum HomeButton::getSelectBtnNum() {
        if (mState != 18) {
            return HBM_SELECT_NULL;
        }

        return mSelectBtnNum;
    }

    void HomeButton::setForcusSE() {
        if (mForcusSEWaitTime <= scForcusSEWaitTime) {
            return;
        }

        play_sound(HBMSE_FOCUS);
        mForcusSEWaitTime = 0;
    }

    void HomeButton::setAdjustFlag(int flag) {
        nw4r::math::VEC2 scale;

        mAdjustFlag = static_cast<bool>(flag);
        mDrawInfo.SetLocationAdjust(mAdjustFlag);

        if (mAdjustFlag) {
            scale = nw4r::math::VEC2(mpHBInfo->adjust.x, mpHBInfo->adjust.y);
            mpLayout->GetRootPane()->SetScale(scale);

            if (!mpHBInfo->cursor) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mpCursorLayout[i]->GetRootPane()->SetScale(scale);
                }
            }
        }
        else {
            scale = nw4r::math::VEC2(1.0f, 1.0f);
            mpLayout->GetRootPane()->SetScale(scale);

            if (!mpHBInfo->cursor) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mpCursorLayout[i]->GetRootPane()->SetScale(scale);
                }
            }
        }

        GXSetCullMode(GX_CULL_NONE);
    }

    void HomeButton::setVolume(int vol) {
        WPADSetSpeakerVolume(vol * (WPAD_MAX_SPEAKER_VOLUME / static_cast<f32>(HBM_MAX_VOLUME)));
    }

    int HomeButton::getVolume() {
        return WPADGetSpeakerVolume() * (1.0f / (WPAD_MAX_SPEAKER_VOLUME / static_cast<f32>(HBM_MAX_VOLUME))) + 0.9f;
    }

    void HomeButton::setVibFlag(bool flag) {
        WPADEnableMotor(flag);
    }

    bool HomeButton::getVibFlag() {
        return WPADIsMotorEnabled();
    }

    void HomeButtonEventHandler::onEvent(u32 id, u32 event, void* pData) {
        gui::PaneComponent* pComponent = static_cast<gui::PaneComponent*>(mpManager->getComponent(id));

        const nw4r::lyt::Pane* pPane = pComponent->getPane();
        const char* pPaneName = pPane->GetName();

        HomeButton* pHBObj = getHomeButton();
        HBController* pController = static_cast<HBController*>(pData);

        switch (event) {
            case gui::EventHandler::ON_POINT: {
                pHBObj->startPointEvent(pPaneName, pData);
                break;
            }
            case gui::EventHandler::ON_LEFT: {
                pHBObj->startLeftEvent(pPaneName);
                break;
            }
            case EventHandler::ON_TRIG: {
                if ((pController->trig & WPAD_BUTTON_A) ||
                    (pController->trig & (PAD_BUTTON_A << 16))) {
                    pHBObj->startTrigEvent(pPaneName);
                }

                break;
            }
        }
    }

    void HomeButton::BlackFader::init(int maxFrame) {
        frame_ = 0;
        maxFrame_ = maxFrame;
        state_ = 0;
    }

    void HomeButton::BlackFader::calc() {
        if (state_ == 1) {
            frame_++;
        }
        else if (state_ == 2) {
            frame_--;
        }

        if (frame_ < 0) {
            frame_ = 0;
        }
        else if (frame_ > maxFrame_) {
            frame_ = maxFrame_;
        }
    }

    bool HomeButton::BlackFader::isDone() {
        if (state_ == 1) {
            if (frame_ == maxFrame_) {
                return true;
            }
        }

        if (state_ == 2) {
            if (frame_ == 0) {
                return true;
            }
        }

        return false;
    }

    static void initgx() {
        Mtx view_mtx;

        PSMTXIdentity(view_mtx);
        GXLoadPosMtxImm(view_mtx, GX_PNMTX0);
        GXSetCurrentMtx(GX_PNMTX0);

        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);

        GXSetNumChans(1);
        GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);

        GXSetNumTexGens(0);

        GXSetNumTevStages(1);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_NOOP);
        GXSetAlphaUpdate(GX_FALSE);
        GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
     
        GXSetNumIndStages(0);
        GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    static void drawBlackPlate(f32 left, f32 top, f32 right, f32 bottom, GXColor clr) {
        GXSetTevColor(GX_TEVREG0, clr);

        GXBegin(GX_QUADS, GX_VTXFMT0, 4); {
            GXPosition2f32(left, top);
            GXPosition2f32(left, bottom);
            GXPosition2f32(right, bottom);
            GXPosition2f32(right, top);
        }
        GXEnd();
    }

    void HomeButton::BlackFader::draw() {
        u8 alpha = frame_ * 255 / maxFrame_;

        initgx();
        GXColor clr = {red_, green_, blue_, alpha};
        drawBlackPlate(-1000.0f, -1000.0f, 1000.0f, 1000.0f, clr);
    }

    const int HomeButton::scSoundHeapSize_but2 = 0x60000;
    const int HomeButton::scSoundHeapSize_but3 = 0x6f800;
    const int HomeButton::scSoundThreadPrio = 4;
    const int HomeButton::scDvdThreadPrio = 3;

    void HomeButton::update_sound() {
        if (mpSoundArchivePlayer != NULL) {
            mpSoundArchivePlayer->Update();
        }

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mpController[i]->updateSound();
        }
    }

    void HomeButton::play_sound(int id) {
        int ret = 0;

        if (mpHBInfo->sound_callback != NULL) {
            ret = mpHBInfo->sound_callback(HBMSEV_PLAY_SOUND, id);
        }

        if (ret == 0) {
            if (mpSoundArchivePlayer != NULL && mpSoundHandle != NULL) {
                mpSoundHandle->DetachSound();
                mpSoundArchivePlayer->StartSound(mpSoundHandle, id);
            }
        }
    }

    void HomeButton::fadeout_sound(f32 gain) {
        if (mSelectBtnNum == HBM_SELECT_BTN3) {
            return;
        }

        if (mEndInitSoundFlag) {
            AXSetAuxAReturnVolume(gain * AX_MAX_VOLUME);
        }

        if (mpSoundArchivePlayer != NULL) {
            for (int i = 0; i < mpSoundArchivePlayer->GetSoundPlayerCount(); i++) {
                mpSoundArchivePlayer->GetSoundPlayer(i).SetVolume(gain);
            }
        }
    }
}
