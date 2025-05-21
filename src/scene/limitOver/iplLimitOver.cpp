#include "scene/limitOver/iplLimitOver.h"

#include "iplScene.h"

#include "iplUtility.h"

#include "iplSystem.h"

#include "config.h"

#include <private/es.h>
#include <revolution/sc.h>

namespace ipl {
    namespace scene {
        #define LIMIT_SEC2MS(x)         (x * 1000)
        
        #define LIMIT_TIMER_FADE_IN     LIMIT_SEC2MS(1)                 /* Seconds after fading in */
        #define LIMIT_TIMER_PRESS_A     LIMIT_SEC2MS(2)                 /* Seconds until the user can pass through the screen */
        #define LIMIT_TIMER_NOT_PRESS_A LIMIT_SEC2MS(60)                /* Seconds for the user to do something to pass through the screen */

        #define LIMIT_PRESS_A_BUTTON    (controller::BTN_A | controller::BTN_B)   /* Buttons the user can press to goto the main menu */

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

        static const char* wide_pane_names[3][4] = {
            {
                "Fre_a",
                "Fre_d",
                "Fre_i",
                "Fre_l",
            }, {
                "Fre_e",
                "Fre_f",
                "Fre_g",
                "Fre_h",
            }, {
                "Fre_b",
                "Fre_c",
                "Fre_j",
                "Fre_k",
            }
        };

        const char* lo_pane_name[] = {
            "Mes_JP_JPN",
            "Mes_US_ENG",
            "Mes_US_FRA",
            "Mes_US_SPA",
            "Mes_EU_ENG",
            "Mes_EU_FRA",
            "Mes_EU_GER",
            "Mes_EU_ITA",
            "Mes_EU_SPA",
            "Mes_EU_NER",
            "Mes_KR_KOR",
            "Mes_CN_CHN",
        };

        const char* lopush_pane_name[] = {
            "Push_JP_JPN",
            "Push_US_ENG",
            "Push_US_FRA",
            "Push_US_SPA",
            "Push_EU_ENG",
            "Push_EU_FRA",
            "Push_EU_GER",
            "Push_EU_ITA",
            "Push_EU_SPA",
            "Push_EU_NER",
            "Push_KR_KOR",
            "Push_CN_CHN",
        };

        LimitOver::LimitOver(EGG::Heap* heap) :
        FaderSceneBase(heap),
        mpTextPane(NULL),
        mpPushPane(NULL),
        mWaitTick(0),
        mPushTick(0),
        mbFadedIn(false),
        mbDoneInit(false),
        mWpadMask(0) {}

        LimitOver::~LimitOver() {}

        void LimitOver::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(mpHeap,"limitOver.ash", true);

            ES_SetUid(SYSMENU_TITLE_ID);
            utility::ESMisc::DeleteExpiredFlagFile();
        }

        BOOL LimitOver::isReady() const {
            return mpLayoutFile->isFinished();
        }

        u32 LimitOver::getCountryIndex_() {
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

        void LimitOver::create() {
            GXTexObj texObj[3];

            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "my_Timer_c.brlyt");

            // Change pane textures for widescreen
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                mpLayout->FindPaneByName("Picture_04")->GetMaterial()->GetTexture(&texObj[0], 0);
                mpLayout->FindPaneByName("Picture_05")->GetMaterial()->GetTexture(&texObj[1], 0);
                mpLayout->FindPaneByName("Picture_06")->GetMaterial()->GetTexture(&texObj[2], 0);

                for (int i = 0; i < (int)ARRSIZE(wide_pane_names); i++) {
                    for (int j = 0; j < (int)ARRSIZE(wide_pane_names[0]); j++) {
                        mpLayout->FindPaneByName(wide_pane_names[i][j])->GetMaterial()->SetTexture(0, texObj[i]);
                    }
                }
            }

            // Make all of the panes invisible
            for (int i = 0; i < ARRSIZE(lo_pane_name); i++) {
                nw4r::lyt::Pane* pTextPane = mpLayout->FindPaneByName(lo_pane_name[i]);
                nw4r::lyt::Pane* pPushPane = mpLayout->FindPaneByName(lopush_pane_name[i]);

                pTextPane->SetVisible(false);
                pPushPane->SetVisible(false);
            }

            // Make the necessary panes visible
            u32 country = getCountryIndex_();
            mpTextPane = mpLayout->FindPaneByName(lo_pane_name[country]);
            mpPushPane = mpLayout->FindPaneByName(lopush_pane_name[country]);

            mpTextPane->SetVisible(true);

            // Bind the animations
            mpLayout->bindToGroup("my_Timer_c_Fade_In.brlan",    "G_All");
            mpLayout->bindToGroup("my_Timer_c_Push_blink.brlan", "G_Push");
            mpLayout->bindToGroup("my_Timer_c_Fade_Out.brlan",   "G_All");

            mpLayout->setAnmType(ANIM_TYPE_FORWARD,         ANIM_FADE_IN);
            mpLayout->setAnmType(ANIM_TYPE_LOOP,            ANIM_WAIT_PUSH);
            mpLayout->setAnmType(ANIM_TYPE_FORWARD,         ANIM_FADE_OUT);

            mpLayout->finishBinding();

            System::getPointer()->setVisible(false);
        }

        SceneCommand LimitOver::calcFadein() {
            mpLayout->calc();

            // Wait for system initialization.
            if (!mbDoneInit) {
                if (System::isSndResLoaded()) {
                    // Start playing!
                    mpLayout->start(ANIM_FADE_IN);
                    mpLayout->calc();

                    System::getFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
                    System::getFader()->calc();

                    snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

                    mbDoneInit = true;
                }

                return SCENE_CONTINUE;
            }

            // We faded in? Now we wait...
            if (!mbFadedIn && !mpLayout->isPlaying(ANIM_FADE_IN)) {
                mbFadedIn = true;
                mWaitTick = OSGetTick();
            }

            // Done waiting? We wait again!... For the system to finish preparing.
            if (mbFadedIn && OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mWaitTick)) > LIMIT_TIMER_FADE_IN) {
                if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                    mpPushPane->SetVisible(true);

                    mpLayout->start(ANIM_WAIT_PUSH);
                    mpLayout->calc();

                    mPushTick = OSGetTick();
                    mWpadMask = utility::wpad::getWpadConnectedMask();

                    return SCENE_NEXT;
                }
            }

            return SCENE_CONTINUE;
        }

        SceneCommand LimitOver::calcNormal() {
            SceneCommand result  = SCENE_CONTINUE;
            u32 newWpadMask     = utility::wpad::getWpadConnectedMask();

            // Finished waiting?? The user can finally pass through the screen
            if (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) < LIMIT_TIMER_PRESS_A) {
                mWpadMask = newWpadMask;
            }

            // Either user pressed A (or B), connected controller  OR was on the screen for 60 seconds? We fade out.
            if (System::getMasterController()->downTrg(LIMIT_PRESS_A_BUTTON) || mWpadMask != newWpadMask
            || OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mPushTick)) > LIMIT_TIMER_NOT_PRESS_A) {
                if (mWpadMask != newWpadMask && !utility::wpad::isIncreaseConnectedWpad(mWpadMask, newWpadMask)) {
                    mWpadMask = newWpadMask;
                }
                else {
                    snd::getSystem()->startSE("WIPL_SE_BT_PUSH");
                    mpLayout->start(ANIM_FADE_OUT);

                    result = SCENE_NEXT;
                }
            }

            mpLayout->calc();

            return result;
        }

        SceneCommand LimitOver::calcFadeout() {
            mpLayout->calc();

            if (!mpLayout->isPlaying(ANIM_FADE_OUT)) {
                System::getFader()->fadeOut();
                System::getFader()->calc();
            }

            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                System::getPointer()->setVisible(true);

                reserveSceneChange(SCENE_BOARD, NULL);

                return SCENE_NEXT;
            }

            return SCENE_CONTINUE;
        }

        void LimitOver::draw() {
            if (System::getSceneManager()->canDrawScene()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }
    }
}
