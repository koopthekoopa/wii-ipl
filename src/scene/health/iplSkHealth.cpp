#define UNIT_DOESNT_MATCH

#include "scene/health/iplSkHealth.h"

#include <revolution/os.h>
#include <revolution/sc.h>

#include "utility/iplWpad.h"

namespace ipl {
    namespace scene {
        enum {
            LANG_JPN = 0,
            LANG_US_ENG,
            LANG_US_FRA,
            LANG_US_SPA,
            LANG_EU_ENG,
            LANG_EU_FRA,
            LANG_EU_GER,
            LANG_EU_ITA,
            LANG_EU_SPA,
            LANG_EU_NED,
            LANG_KOR,
            LANG_CHN
        };

        enum {
            ANIM_FADE_IN = 0,
            ANIM_WAIT_PUSH,
            ANIM_FADE_OUT,
        };

        /**
         * @note Address: 0x8164F91C
         * @note Size: 0x30
         */
        // Health And Safety screen
        const char* has_pane_name[] = {
            "Has_JPN",
            "Has_US_ENG",
            "Has_US_FRA",
            "Has_US_SPA",
            "Has_EU_ENG",
            "Has_EU_FRA",
            "Has_EU_GER",
            "Has_EU_ITA",
            "Has_EU_SPA",
            "Has_EU_NED",
            "Has_KOR",
            "Has_CHN"
        };

        /**
         * @note Address: 0x8164F9D4
         * @note Size: 0x30
         */
        // "Press A to continue" text
        const char* push_pane_name[] = {
            "Push_JPN",
            "Push_US_ENG",
            "Push_US_FRA",
            "Push_US_SPA",
            "Push_EU_ENG",
            "Push_EU_FRA",
            "Push_EU_GER",
            "Push_EU_ITA",
            "Push_EU_SPA",
            "Push_EU_NED",
            "Push_KOR",
            "Push_CHN"
        };

        /**
         * @note Address: 0x813BD5D8
         * @note Size: 0x74
         */
        skHealth::skHealth(EGG::Heap *pHeap) :
        FaderSceneBase(pHeap),
        mpHasPane(NULL),
        mpPushPane(NULL),
        mWaitTick(0),
        mPushTick(0),
        mbFadedIn(false),
        mWpadMask(0),
        mSafeModeTick(0),
        mbHeldCombo(false),
        mbDoneSafeMode(false) {

            unk_0x28 = 2;
        }

        /**
         * @note Address: 0x813BD64C
         * @note Size: 0x5C
         */
        skHealth::~skHealth() {}

        /**
         * @note Address: 0x813BD6A8
         * @note Size: 0x4C
         */
        void skHealth::prepare() {
            mpLayoutFile = System::getNand()->readLayoutAsync(System::getUnk28Heap(), "health.ash", true);
        }

        /**
         * @note Address: 0x813BD6F4
         * @note Size: 0x24
         */
        void skHealth::destroy() {
            delete mpLayoutFile;
        }

        /**
         * @note Address: 0x813BD718
         * @note Size: 0x14
         */
        BOOL skHealth::isReady() const {
            return mpLayoutFile->isFinished();
        }

        /**
         * @note Address: 0x813BD72C
         * @note Size: 0x114
         */
        u32 skHealth::getCountryIndex_() {
            u32 result = LANG_US_ENG;
            s32 language = SCGetLanguage();
            s32 region = System::getRegion();

            switch (region) {
                case SC_PRODUCT_AREA_JPN: {
                    result = LANG_JPN;
                    break;
                }
                case SC_PRODUCT_AREA_USA: {
                    switch (language) {
                        case SC_LANG_ENGLISH: {
                            result = LANG_US_ENG;
                            break;
                        }
                        case SC_LANG_FRENCH: {
                            result = LANG_US_FRA;
                            break;
                        }
                        case SC_LANG_SPANISH: {
                            result = LANG_US_SPA;
                            break;
                        }
                    }
                    break;
                }
                case SC_PRODUCT_AREA_EUR: {
                    switch (language) {
                        case SC_LANG_ENGLISH: {
                            result = LANG_EU_ENG;
                            break;
                        }
                        case SC_LANG_FRENCH: {
                            result = LANG_EU_FRA;
                            break;
                        }
                        case SC_LANG_GERMAN: {
                            result = LANG_EU_GER;
                            break;
                        }
                        case SC_LANG_ITALIAN: {
                            result = LANG_EU_ITA;
                            break;
                        }
                        case SC_LANG_SPANISH: {
                            result = LANG_EU_SPA;
                            break;
                        }
                        case SC_LANG_DUTCH: {
                            result = LANG_EU_NED;
                            break;
                        }
                    }
                    break;
                }
                case SC_PRODUCT_AREA_KOR: {
                    result = LANG_KOR;
                    break;
                }
                case SC_PRODUCT_AREA_CHN: {
                    result = LANG_CHN;
                    break;
                }
            }

            return result;
        }

        /**
         * @note Address: 0x813BD840
         * @note Size: 0x21C
         */
        // loading `getCountryIndex_()` to `country` for some reason is stored in `r29` and not `r26`
        // https://decomp.me/scratch/55mS2
        void skHealth::create() {
            nw4r::lyt::Pane* pHasPane;
            nw4r::lyt::Pane* pPushPane;

            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "it_Has_a.brlyt");

            // Make all of the panes invisible
            for (int i = 0; i < ARRSIZE(has_pane_name); i++) {
                pHasPane   = mpLayout->GetRootPane()->FindPaneByName(has_pane_name[i]);
                pPushPane  = mpLayout->GetRootPane()->FindPaneByName(push_pane_name[i]);

                pHasPane->SetVisible(false);
                pPushPane->SetVisible(false);
            }

            // Make the necessary panes visible
            u32 country = getCountryIndex_();
            mpHasPane   = mpLayout->GetRootPane()->FindPaneByName(has_pane_name[country]);
            mpPushPane  = mpLayout->GetRootPane()->FindPaneByName(push_pane_name[country]);

            mpHasPane->SetVisible(true);

            // Bind the animations
            mpLayout->bindToGroup("it_Has_a_SeenIn.brlan",  "G_All");
            mpLayout->bindToGroup("it_Has_a_Push.brlan",    "G_Push");
            mpLayout->bindToGroup("it_Has_a_SeenOut.brlan", "G_All");

            mpLayout->setAnmType(ANIM_TYPE_FORWARD,         ANIM_FADE_IN);
            mpLayout->setAnmType(ANIM_TYPE_LOOP,            ANIM_WAIT_PUSH);
            mpLayout->setAnmType(ANIM_TYPE_FORWARD,         ANIM_FADE_OUT);

            mpLayout->finishBinding();

            // Start animating!
            mpLayout->start(ANIM_FADE_IN);
            mpLayout->calc();

            System::getGlobalFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
            System::getGlobalFader()->calc();

            System::getPointer()->setVisible(false);
        }

        /**
         * @note Address: 0x813BDA5C
         * @note Size: 0x138
         */
        SceneReturn skHealth::calcFadein() {
            SceneReturn result = SCENE_CONTINUE;

            check_safe_mode();
            if (!mbFadedIn && !mpLayout->isPlaying(ANIM_FADE_IN)) {
                mbFadedIn = true;
                mWaitTick = OSGetTick();
            }

            if (mbFadedIn && OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mWaitTick)) > 1000) {
                if (System::isRsrcLoaded2()) {
                    mpPushPane->SetVisible(true);

                    mpLayout->start(ANIM_WAIT_PUSH);

                    mPushTick = OSGetTick();
                    mWpadMask = utility::wpad::getWpadConnectedMask();

                    result = SCENE_DONE;
                }
            }

            mpLayout->calc();

            return result;
        }

        /**
         * @note Address: 0x813BDB94
         * @note Size: 0x140
         */
        SceneReturn skHealth::calcNormal() {
            SceneReturn result  = SCENE_CONTINUE;
            u32 newWpadMask     = utility::wpad::getWpadConnectedMask();

            check_safe_mode();
            
            if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) < 2000) {
                mWpadMask = newWpadMask;
            }

            if (finish_safe_mode_check()) {
                if (System::getMasterController()->downTrg(0x500C00)
                || mWpadMask != newWpadMask
                || OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) > 60000
                || mbDoneSafeMode) {
                    if (mWpadMask != newWpadMask
                    && !utility::wpad::isIncreaseConnectedWpad(mWpadMask, newWpadMask)) {
                        mWpadMask = newWpadMask;
                    }
                    else {
                        snd::getSystem()->startSE("WIPL_SE_BT_PUSH");
                        mpLayout->start(ANIM_FADE_OUT);

                        result = SCENE_DONE;
                    }
                }
            }

            mpLayout->calc();

            return result;
        }

        /**
         * @note Address: 0x813BDCD4
         * @note Size: 0x140
         */
        SceneReturn skHealth::calcFadeout() {
            mpLayout->calc();

            if (!mpLayout->isPlaying(ANIM_FADE_OUT)) {
                System::setUnk_0x2BE(true);

                if (!System::isSafeMode()) {
                    System::setUnk_0x2BF(true);
                }

                System::getGlobalFader()->fadeOut();
            }

            if (System::unkBool()
            || (System::hasCreatedAfter() && System::isNandFull())
            || System::isSafeMode()) {
                if (System::getGlobalFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    System::getPointer()->setVisible(true);
                    System::getReset()->enableResetToMenu(TRUE);

                    for (int i = 0; i < 1; i++) {
                        reserveAllSceneDestruction(4, NULL);
                    }

                    return SCENE_DONE;
                }
            }
            
            return SCENE_CONTINUE;
        }

        /**
         * @note Address: 0x813BDE14
         * @note Size: 0x50
         */
        void skHealth::draw() {
            if (System::getSceneMgr()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        /**
         * @note Address: 0x813BDE64
         * @note Size: 0x118
         */
        void skHealth::check_safe_mode() {
            if (!mbHeldCombo) {
                if (System::getMasterController()->down(KPAD_BUTTON_PLUS) && System::getMasterController()->down(KPAD_BUTTON_MINUS)) {
                    mSafeModeTick = OSGetTick();
                    mbHeldCombo = true;
                }
            }
            else {
                if (!System::getMasterController()->down(KPAD_BUTTON_PLUS) || !System::getMasterController()->down(KPAD_BUTTON_MINUS)) {
                    mSafeModeTick = 0;
                    mbHeldCombo = false;
                }
                else {
                    if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mSafeModeTick)) > 3000) {
                        mbDoneSafeMode = true;
                        System::setSafeMode(true);
                    }
                }
            }
        }

        /**
         * @note Address: 0x813BDF7C
         * @note Size: 0x88
         */
        BOOL skHealth::finish_safe_mode_check() const {
            BOOL result = FALSE;

            if ((!System::getMasterController()->down(KPAD_BUTTON_PLUS) && !System::getMasterController()->down(KPAD_BUTTON_MINUS))
            || mbDoneSafeMode) {
                result = TRUE;
            }

            return result;
        }
    }
}


