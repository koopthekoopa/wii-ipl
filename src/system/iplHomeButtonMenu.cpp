#include "system/iplHomeButton.h"

#include "iplSystem.h"
#include "iplSound.h"

#include "config.h"

namespace ipl {
    static bool exitAnm = false;

    static const f32 BAN_ICON_FADEIN_TIMER = 250.0f;
    static const f32 BAN_ICON_WAIT_TIMER = 1000.0f;
    static const f32 BAN_ICON_FADEOUT_TIMER = 250.0f;

    static BOOL SECallback(int event, int id) {
        switch (event) {
            case HBMSEV_BEFORE_INIT_SOUND: {
                return snd::getSystem()->pauseOnBGM();
            }
            case HBMSEV_BEGIN_BLACKOUT: {
                if (exitAnm) {
                    return snd::getSystem()->resetAllSound();
                }
                else {
                    return snd::getSystem()->pauseOffBGM();
                }
            }
            case HBMSEV_BEGIN_EXIT_ANIM: {
                exitAnm = true;
                break;
            }
            case HBMSEV_PLAY_SOUND: {
                snd::getSystem()->startSEIndex(id);
                return TRUE;
            }
        }
        return event;
    }

    HomeButtonMenu::HomeButtonMenu(EGG::Heap* heap) :
    mbHbmEnabled(false),
    mEnableFlag(true),
    mEnableByTVRCFlag(true),
    mDisableByTVRCFlag(false),
    mDisableFlag(false),
    mbHBMLibEnabled(false),
    mbBanIconEnabled(false) {
        mpMessageFile = System::getHBMMessageFile();
        mpConfigFile = System::getHBMConfigFile();
        mpSpeakerSoundFile = System::getHBMSpeakSoundFile();
        mpBanIconFile = System::getHBMBanIconFile();

        mpHbmInfo = new(heap, 4) HBMDataInfo();

        mpHbmInfo->backFlag = 0;
        mpHbmInfo->region = SCGetLanguage();
        mpHbmInfo->sound_callback = SECallback;
        mpHbmInfo->cursor = 0;

        mpHbmInfo->adjust.x = 1.3684211f;
        mpHbmInfo->adjust.y = 1.0f;
    #ifdef IMPROVE_PAL50_HBM_DELTA
        mpHbmInfo->frameDelta = System::getAnimDelta();
    #else
        mpHbmInfo->frameDelta = 1.0f;
    #endif // IMPROVE_PAL50_HBM_DELTA

        mpHbmInfo->layoutBuf = System::getHBMLayoutFile()->getBuffer();
        mpHbmInfo->lytLangBuf = System::getHBMLangFile()->getBuffer();
        mpHbmInfo->fontBuf = System::getWBFont2Data();
        mpHbmInfo->msgBuf = mpMessageFile->getBuffer();
        mpHbmInfo->configBuf = mpConfigFile->getBuffer();
        mpHbmInfo->spkSeBuf = mpSpeakerSoundFile->getBuffer();

        mpHbmInfo->mem = heap->alloc(HBM_WORK_SIZE, DEFAULT_ALIGN);
        mpHbmInfo->memSize = HBM_WORK_SIZE;

        mpHbmInfo->pAllocator = NULL;

        HBMCreate(mpHbmInfo);
        HBMSetAdjustFlag(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9);

        TPLBind((TPLPalette*)mpBanIconFile->getBuffer());
    }

    void HomeButtonMenu::DrawBanIcon(u8 alpha) {
        GXTexObj texObj;

        utility::Graphics::setDefaultOrtho();

        TPLGetGXTexObjFromPalette((TPLPalette*)mpBanIconFile->getBuffer(), &texObj, 0);
        GXColor color = (GXColor){ 255, 255, 255, alpha };
        nw4r::ut::Rect rect(-256.0f, 188.0f, -200.0f, 132.0f);

        utility::Graphics::drawTexture(rect, texObj, color, GX_TEXCOORD1);
    }

    void HomeButtonMenu::callHBM() {
        if (mEnableFlag && mEnableByTVRCFlag) {
            HBMDelete();

            mpHbmInfo->lytLangBuf = System::getHBMLangFile(SCGetLanguage() /* >:( */)->getBuffer();
            mpHbmInfo->region = SCGetLanguage();

            HBMCreate(mpHbmInfo);
            HBMSetAdjustFlag(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9);

            HBMInit();

            mbHbmEnabled = true;
        }
        else {
            if (!mbBanIconEnabled) {
                mbBanIconEnabled = true;
                mBanIconTime = OSGetTick();
                mBanIconState = BAN_ICON_STATE_FADEIN;
                mBanIconAlpha = 0;
            }
        }
    }

    void HomeButtonMenu::checkStart() {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mConData.wiiCon[i].use_devtype = WPAD_DEV_CORE;
        }

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            controller::Interface* con = System::getController(i);
            if (con != NULL) {
                if (con->downTrg(controller::REVO_BTN_HOME)) {
                    mConData.wiiCon[i].use_devtype = WPAD_DEV_CORE;
                    callHBM();
                    return;
                }
                if (con->downTrg(controller::CL_BTN_HOME)) {
                    mConData.wiiCon[i].use_devtype = WPAD_DEV_CLASSIC;
                    callHBM();
                    return;
                }
            }
        }
    }

    void HomeButtonMenu::calc() {
        if (!mbHBMLibEnabled) {
            return;
        }

        if (!System::getResetHandler()->isResetting()) {
            if (!mbHbmEnabled && !mbBanIconEnabled
            && System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                checkStart();
            }

            if (mbHbmEnabled) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    controller::Interface* con = System::getController(i);
                    if (con != NULL) {
                        mConData.wiiCon[i].use_devtype = WPAD_DEV_CORE;
                        mConData.wiiCon[i].kpad = con->getKPADStatus();
                        mConData.wiiCon[i].pos.x = con->getDpdPos().x;
                        mConData.wiiCon[i].pos.y = con->getDpdPos().y;
                        if (con->getType() == WPAD_DEV_CLASSIC && reinterpret_cast<controller::Classic*>(con)->isValidDpdClassic())  {
                            mConData.wiiCon[i].use_devtype = WPAD_DEV_CLASSIC;
                        }
                    }
                    else {
                        mConData.wiiCon[i].kpad = NULL;
                    }
                }

                HBMCalc(&mConData);

                if (getSelectBtnNum() > HBM_SELECT_HOMEBTN) {
                    OSReport("HBM: Start Reset\n");
                    System::getResetHandler()->reset();
                }
            }
        }
        else {
            mEnableFlag = false;
            if (!mbHbmEnabled && !mbBanIconEnabled
            && System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                checkStart();
            }
        }

        if (mbBanIconEnabled) {
            f32 timer = OSTicksToMilliseconds(OSDiffTick(OSGetTick(), mBanIconTime));
            switch (mBanIconState) {
                case BAN_ICON_STATE_FADEIN: {
                    mBanIconAlpha = (255.9f * (timer / BAN_ICON_FADEIN_TIMER));
                    if (timer >= BAN_ICON_FADEIN_TIMER) {
                        mBanIconTime = OSGetTick();
                        mBanIconState = BAN_ICON_STATE_WAIT;
                        mBanIconAlpha = 255;
                    }
                    break;
                }
                case BAN_ICON_STATE_WAIT: {
                    if (timer >= BAN_ICON_WAIT_TIMER) {
                        mBanIconTime = OSGetTick();
                        mBanIconState = BAN_ICON_STATE_FADEOUT;
                    }
                    break;
                }
                case BAN_ICON_STATE_FADEOUT: {
                    mBanIconAlpha = (255.9f * ((BAN_ICON_FADEOUT_TIMER - timer) / BAN_ICON_FADEOUT_TIMER));
                    if (timer >= BAN_ICON_FADEOUT_TIMER) {
                        mBanIconAlpha = 0;
                        mbBanIconEnabled = false;
                    }
                    break;
                }
            }
        }
    }

    void HomeButtonMenu::draw() {
        if (mbHbmEnabled) {
            utility::Graphics::setDefaultOrtho();
            HBMDraw();
        }

        if (mbBanIconEnabled) {
            utility::Graphics::setDefaultOrtho();
            DrawBanIcon(mBanIconAlpha);
        }
    }

    BOOL HomeButtonMenu::disable() {
        if (mbHbmEnabled) {
            mDisableFlag = true;
            return FALSE;
        }
        else {
            mEnableFlag = false;
            return TRUE;
        }
    }

    void HomeButtonMenu::enable() {
        mDisableFlag = false;
        mEnableFlag = true;
    }

    BOOL HomeButtonMenu::disable_byTVRC() {
        if (mbHbmEnabled) {
            mDisableByTVRCFlag = true;
            return FALSE;
        }
        else {
            mEnableByTVRCFlag = false;
            return TRUE;
        }
    }

    void HomeButtonMenu::enable_byTVRC() {
        mDisableByTVRCFlag = false;
        mEnableByTVRCFlag = true;
    }

    HBMSelectBtnNum HomeButtonMenu::getSelectBtnNum() {
        HBMSelectBtnNum num = HBMGetSelectBtnNum();

        if (num >= HBM_SELECT_NULL+1) {
            if (mDisableFlag) {
                mDisableFlag = false;
                mEnableFlag = false;
            }
            mbHbmEnabled = false;
        }

        return num;
    }
}
