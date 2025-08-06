#ifndef IPL_HOME_BUTTON_H
#define IPL_HOME_BUTTON_H

#include <revolution/types.h>

#include <egg/core.h>

#include "homebutton/HBMBase.h"

#include "system/iplNand.h"

namespace ipl {
    class HomeButtonMenu {
        public:
            HomeButtonMenu(EGG::Heap* heap);

            void            calc();
            void            draw();

            void            enable();
            BOOL            disable();

            void            enable_byTVRC();
            BOOL            disable_byTVRC();

            void            enableLib()     { mbHBMLibEnabled = true; }
            void            disableLib()    { mbHBMLibEnabled = false; }

        private:
            void            DrawBanIcon(u8 alpha);
            void            callHBM();
            void            checkStart();

            HBMSelectBtnNum getSelectBtnNum();

            bool                mbHbmEnabled;       // 0x00
            bool                mEnableFlag;        // 0x01
            bool                mEnableByTVRCFlag;  // 0x02
            bool                mDisableByTVRCFlag; // 0x03
            bool                mDisableFlag;       // 0x04
            bool                mbHBMLibEnabled;    // 0x05

            u8                  unused_0x06[14];

            nand::File*         mpMessageFile;      // 0x14
            nand::File*         mpConfigFile;       // 0x18
            nand::File*         mpSpeakerSoundFile; // 0x1C
            nand::File*         mpBanIconFile;      // 0x20

            HBMControllerData   mConData;           // 0x24
            HBMDataInfo*        mpHbmInfo;          // 0x64

            bool                mbBanIconEnabled;   // 0x68

            enum {
                BAN_ICON_STATE_FADEIN = 0,
                BAN_ICON_STATE_WAIT,
                BAN_ICON_STATE_FADEOUT,
            };

            OSTick              mBanIconTime;       // 0x6C
            s8                  mBanIconState;      // 0x70
            u8                  mBanIconAlpha;      // 0x71
    };
}

#endif // IPL_HOME_BUTTON_H
