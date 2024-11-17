#define UNIT_DOESNT_MATCH

#include "scene/health/iplHealth.h"

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

        skHealth::~skHealth() {}

        void skHealth::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(System::getUnk28Heap(), "health.ash", true);
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

            System::getFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
            System::getFader()->calc();

            System::getPointer()->setVisible(false);
        }

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

        SceneReturn skHealth::calcNormal() {
            SceneReturn result  = SCENE_CONTINUE;
            u32 newWpadMask     = utility::wpad::getWpadConnectedMask();

            check_safe_mode();
            
            if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) < 2000) {
                mWpadMask = newWpadMask;
            }

            if (finish_safe_mode_check()) {
                if (System::getMasterController()->downTrg(((WPAD_BUTTON_CL_A | WPAD_BUTTON_CL_B) * 0x10000 /* ? */) | WPAD_BUTTON_B | WPAD_BUTTON_A)
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

        SceneReturn skHealth::calcFadeout() {
            mpLayout->calc();

            if (!mpLayout->isPlaying(ANIM_FADE_OUT)) {
                System::setUnk_0x2BE(true);

                if (!System::isSafeMode()) {
                    System::setUnk_0x2BF(true);
                }

                System::getFader()->fadeOut();
            }

            if (System::unkBool()
            || (System::hasCreatedAfter() && System::isNandFull())
            || System::isSafeMode()) {
                if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    System::getPointer()->setVisible(true);
                    System::getResetHandler()->enableResetToMenu(TRUE);

                    for (int i = 0; i < 1; i++) {
                        reserveAllSceneDestruction(4, NULL);
                    }

                    return SCENE_DONE;
                }
            }
            
            return SCENE_CONTINUE;
        }

        void skHealth::draw() {
            if (System::getSceneManager()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

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


