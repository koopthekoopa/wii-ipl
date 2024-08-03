#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

#include <nw4r/ut.h>

#include "system/iplNand.h"

#include "system/iplController.h"

namespace ipl {
    class System {
        public:
            class Arg {
                public:
                    Arg();
                
                private:
                    u8      unk_0x00[0x1E0];
                    OSAlarm mUnkAlarm;      // 0x1E0
            };
        
            /**
             * @brief Initializes the IPL.
             * 
             * @param argc The amount of arguments passed,
             * @param argv Array of arguments.
             */
            static void init(int argc, char** argv);
            /**
             * @brief Boots up the IPL.
             * 
             * @note Run this function after `ipl::System::init`
             */
            static void run();

            /**
             * @return The Renderer of the IPL.
             */
            static GXRenderModeObj*         getRenderModeObj();
            /**
             * @return The System Memory Manager of the IPL.
             */
            static nand::Manager*           getNandManager()    { return smArg.mpNandManager; }
            /**
             * @return The Wii Remotes of the IPL.
             * 
             * @param chan The Wii Remote Player
             */
            static controller::Interface*   getController(int chan);
            /**
             * @return A boolean telling if the user can restart their Wii console.
             */
            static bool                     isResetAcceptable();
        
        private:
            typedef struct {
                u8                  unk_0x00[0x6C];
                ipl::nand::Manager* mpNandManager;      // 0x6C
                u8                  unk_0x70[0x249];
                bool                mbResetDisabled;    // 0x2B9
                u8                  unk_0x2BA[0x1C];
            } ArgData;

            static ArgData  smArg;
    };
}

#endif // IPL_SYSTEM_H


