#include "scene/health/iplHealth.h"

#include "iplScene.h"

#include "iplUtility.h"

#include "iplSystem.h"

#include <revolution/os.h>
#include <revolution/sc.h>

namespace ipl {
    namespace scene {
        static bool has_prepared() {
            bool bResourceDone = false;
            bool bCommonResDone = false;

            // Check is system resources are loaded.
            // (This does not use `System::isRsrcLoaded()` for some reason)
#ifdef USE_ZI8
            if (System::isCmnResLoaded() && System::isFontResLoaded() && System::isSndResLoaded()) {
                bCommonResDone = true;
            }
            if (bCommonResDone && System::isZi8ResLoaded()) {
                bResourceDone = true;
            }
#else
            if (System::isCmnResLoaded() && System::isFontResLoaded()) {
                bCommonResDone = true;
            }
            if (bCommonResDone && System::isSndResLoaded()) {
                bResourceDone = true;
            }
#endif
            if (bResourceDone) {
                return true;
            }

            return false;
        }
        
        #define HAS_SEC2MS(x)           (x * 1000)
        
        #define HAS_TIMER_FADE_IN       HAS_SEC2MS(1)                                       /* Seconds after fading in */
        #define HAS_TIMER_PRESS_A       HAS_SEC2MS(2)                                       /* Seconds until the user can pass through the screen */
        #define HAS_TIMER_NOT_PRESS_A   HAS_SEC2MS(60)                                      /* Seconds for the user to do something to pass through the screen */
        
        #define HAS_TIMER_SAFE_MODE     HAS_SEC2MS(3)                                       /* Seconds the user has to hold the safe mode combo on for */

        #define HAS_PRESS_A_BUTTON      (controller::BTN_INTERACT | controller::BTN_BACK)   /* Buttons the user can press to goto the main menu */

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

        skHealth::skHealth(EGG::Heap *heap) :
        FaderSceneBase(heap),
        mpHasPane(NULL),
        mpPushPane(NULL),
        mWaitTick(0),
        mPushTick(0),
        mbFadedIn(false),
        mWpadMask(0),
        mSafeModeTick(0),
        mbHeldCombo(false),
        mbDoneSafeMode(false) {
            mParentFlags = SCN_PARENT_FLAG_CANDRAW; // (ignored as child scenes aren't created over this scene)
        }

        skHealth::~skHealth() {}

        void skHealth::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(System::getMem2App(), "health.ash", true);
        }

        void skHealth::destroy() {
            delete mpLayoutFile;
        }

        BOOL skHealth::isReady() const {
            return mpLayoutFile->isFinished();
        }

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

        void skHealth::create() {
            nw4r::lyt::Pane* pHasPane;
            nw4r::lyt::Pane* pPushPane;

            mpLayout = new layout::Object(getHeap(), mpLayoutFile, "arc", "it_Has_a.brlyt");

            // Make all of the panes invisible
            for (int i = 0; i < ARRSIZE(has_pane_name); i++) {
                pHasPane   = mpLayout->FindPaneByName(has_pane_name[i]);
                pPushPane  = mpLayout->FindPaneByName(push_pane_name[i]);

                pHasPane->SetVisible(false);
                pPushPane->SetVisible(false);
            }

            // Make the necessary panes visible
            u32 country = getCountryIndex_();
            mpHasPane   = mpLayout->FindPaneByName(has_pane_name[country]);
            mpPushPane  = mpLayout->FindPaneByName(push_pane_name[country]);

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

            System::getFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
            System::getFader()->calc();

            System::getPointer()->setVisible(false);
        }

        SceneCommand skHealth::calcFadein() {
            SceneCommand result = SCENE_CONTINUE;

            check_safe_mode();

            // We faded in? Now we wait...
            if (!mbFadedIn && !mpLayout->isPlaying(ANIM_FADE_IN)) {
                mbFadedIn = true;
                mWaitTick = OSGetTick();
            }

            // Done waiting? We wait again!... For the resources to finish loading.
            if (mbFadedIn && OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mWaitTick)) > HAS_TIMER_FADE_IN) {
                if (has_prepared()) {
                    mpPushPane->SetVisible(true);

                    mpLayout->start(ANIM_WAIT_PUSH);

                    mPushTick = OSGetTick();
                    mWpadMask = utility::wpad::getWpadConnectedMask();

                    result = SCENE_NEXT;
                }
            }

            mpLayout->calc();

            return result;
        }

        SceneCommand skHealth::calcNormal() {
            SceneCommand result  = SCENE_CONTINUE;
            u32 newWpadMask     = utility::wpad::getWpadConnectedMask();

            check_safe_mode();

            // Finished waiting?? The user can finally pass through the screen
            if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) < HAS_TIMER_PRESS_A) {
                mWpadMask = newWpadMask;
            }

            if (finish_safe_mode_check()) {
                // Either user pressed A (or B), connected controller, went to safe more OR was on the screen for 60 seconds? We fade out.
                if (System::getMasterController()->downTrg(HAS_PRESS_A_BUTTON) || mWpadMask != newWpadMask
                || OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) > HAS_TIMER_NOT_PRESS_A || mbDoneSafeMode) {
                    if (mWpadMask != newWpadMask && !utility::wpad::isIncreaseConnectedWpad(mWpadMask, newWpadMask)) {
                        mWpadMask = newWpadMask;
                    }
                    else {
                        snd::getSystem()->startSE("WIPL_SE_BT_PUSH");
                        mpLayout->start(ANIM_FADE_OUT);

                        result = SCENE_NEXT;
                    }
                }
            }

            mpLayout->calc();

            return result;
        }

        SceneCommand skHealth::calcFadeout() {
            mpLayout->calc();

            if (!mpLayout->isPlaying(ANIM_FADE_OUT)) {
                System::requestCreateAfter();

                if (!System::isSafeMode()) {
                    System::requestCreateLibManager();
                }

                System::getFader()->fadeOut();
            }

            if (System::createdAfterAndLibMgr() || (System::hasCreatedAfter() && System::isNandFull()) || System::isSafeMode()) {
                if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    System::getPointer()->setVisible(true);
                    System::getResetHandler()->enableResetToMenu();

                    for (int i = 0; i < 1; i++) { // :question:
                        reserveAllSceneDestruction(SCENE_BOARD, NULL);
                    }

                    return SCENE_NEXT;
                }
            }
            
            return SCENE_CONTINUE;
        }

        void skHealth::draw() {
            if (System::canDrawScene()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }

        void skHealth::check_safe_mode() {
            // If the user is holding the combo?
            if (!mbHeldCombo) {
                if (System::getMasterController()->down(controller::REVO_BTN_PLUS)
                    && System::getMasterController()->down(controller::REVO_BTN_MINUS)) {
                    mSafeModeTick = OSGetTick();
                    mbHeldCombo = true;
                }
            }
            else {
                // Have they let go of the combo? Restart the timer
                if (!System::getMasterController()->down(controller::REVO_BTN_PLUS)
                    || !System::getMasterController()->down(controller::REVO_BTN_MINUS)) {
                    mSafeModeTick = 0;
                    mbHeldCombo = false;
                }
                else {
                    // Have they been holding the combo after the timer? Welcome to safe mode!
                    if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mSafeModeTick)) > HAS_TIMER_SAFE_MODE) {
                        mbDoneSafeMode = true;
                        System::setSafeMode(true);
                    }
                }
            }
        }

        BOOL skHealth::finish_safe_mode_check() const {
            BOOL result = FALSE;

            if (!(System::getMasterController()->down(controller::REVO_BTN_PLUS)
                || System::getMasterController()->down(controller::REVO_BTN_MINUS)) || mbDoneSafeMode) {
                result = TRUE;
            }

            return result;
        }
    }
}
