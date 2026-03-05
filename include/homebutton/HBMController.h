#ifndef HOME_BUTTON_MINI_LIB_CONTROLLER_H
#define HOME_BUTTON_MINI_LIB_CONTROLLER_H

#include "homebutton/HBMBase.h"

#include <nw4r/snd.h>

#include <revolution/mtx.h>
#include <revolution/os.h>
#include <revolution/wpad.h>

struct HBController {
    int     chan;       // 0x00
    f32     spVol;      // 0x04
    f32     x;          // 0x08
    f32     y;          // 0x0C
    u32     trig;       // 0x10
    u32     hold;       // 0x14
    u32     release;    // 0x18
    bool    rumble;     // 0x1C
};

namespace homebutton {
    class RemoteSpk;
    class Controller {
        public:
            Controller(int chan, RemoteSpk* pSpk);
            ~Controller();

            HBController*   getController();

            int             getChan() const;
            f32             getSpeakerVol() const;
            void            setSpeakerVol(f32 vol);

            bool            isRumbling()            { return mHBController.rumble; }
            void            setRumble()             { mHBController.rumble = true; }
            void            clrRumble()             { mHBController.rumble = false; }

            RemoteSpk*      getRemoteSpk() const    { return remotespk; }

            bool            getBatteryFlag() const;

            s32             getInfoAsync(WPADInfo* pInfo);
            bool            isPlayReady() const;
            bool            isPlayingSound() const;
            bool            isPlayingSoundId(int id) const;

            void            setKpad(const HBMKPadData* pPadData, bool updatePos);
            void            setInValidPos();
            void            clrBatteryFlag();
            void            clrKpadButton();

            void            connect();
            void            disconnect();

            void            initSound();
            void            updateSound();
            void            playSound(nw4r::snd::SoundArchivePlayer* pPlayer, int id);

            void            soundOn();
            void            soundOff(int msec);

            void            startMotor();
            void            stopMotor();

            void            initCallback();
            void            clearCallback();

        private:
            static void     wpadConnectCallback(s32 chan, s32 result);
            static void     wpadExtensionCallback(s32 chan, s32 result);
            static void     soundOnCallback(OSAlarm* alarm, OSContext* context);
            static void     ControllerCallback(s32 chan, s32 result);

        private:
            static bool sBatteryFlag[WPAD_MAX_CONTROLLERS];
            static bool lbl_816989BC[WPAD_MAX_CONTROLLERS];

            static OSAlarm      sAlarm[WPAD_MAX_CONTROLLERS];
            static OSAlarm      sAlarmSoundOff[WPAD_MAX_CONTROLLERS];
            static Controller*  sThis[WPAD_MAX_CONTROLLERS];

            HBController            mHBController;              // 0x0
            nw4r::snd::SoundHandle  mSoundHandle;               // 0x4
            RemoteSpk*              remotespk;                  // 0x24

            WPADConnectCallback     mOldConnectCallback;        // 0x28
            WPADExtensionCallback   mOldExtensionCallback;      // 0x2C

            OSTime                  mPlaySoundTime;             // 0x30
            OSTime                  mStopSoundTime;             // 0x38

            bool                    mCallbackFlag;              // 0x40
            bool                    mSoundOffFlag;              // 0x41
            bool                    mCheckSoundTimeFlag;        // 0x42
            bool                    mCheckSoundIntervalFlag;    // 0x43
    };
}

#endif
