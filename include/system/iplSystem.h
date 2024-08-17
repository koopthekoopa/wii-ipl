#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

#include <nw4r/ut.h>

#include "system/iplNand.h"
#include "system/iplController.h"

namespace ipl {
    class System{
        public:
            class Arg {
                public:
                    Arg();
                
                private:
                    u8      unk_0x00[0x1E0];
                    
                    OSAlarm mUnkAlarm;          // 0x1E0
            };

            typedef struct {
                private:
                    u8  unk_0x00[0xA0];

                    u8* mpMsgData;              // 0xA0

                public:
                    /**
                     * @return The Message Data of the language.
                     */
                    u8* getMessageData()            { return mpMsgData; }

                friend class System;
            } ArgRegionData;

            typedef struct {
                private:
                    u8                  unk_0x00[0x6C];

                    ipl::nand::Manager* mpNandManager;          // 0x6C

                    u8                  unk_0x70[0xC0];

                    ArgRegionData*      mpEngArg;               // 0x130
                    ArgRegionData*      mpFraArg;               // 0x134
                    ArgRegionData*      mpGerArg;               // 0x138
                    ArgRegionData*      mpItaArg;               // 0x13C
                    ArgRegionData*      mpJpnArg;               // 0x140
                    ArgRegionData*      mpDutArg;               // 0x144
                    ArgRegionData*      mpSpaArg;               // 0x148
                    ArgRegionData*      mpChnSimpleArg;         // 0x14C
                    ArgRegionData*      mpChnTraditionalArg;    // 0x150 (?)
                    ArgRegionData*      mpKorArg;               // 0x154

                    u8                  unk_0x158[0x161];

                    bool                mbResetDisabled;        // 0x2B9

                    u8                  unk_0x2BA[0x1C];

                public:
                    /**
                     * @return The System Memory Manager of the IPL.
                     */
                    nand::Manager*  getNandManager()        { return mpNandManager; }

                friend class System;
            } ArgData;
        
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
             * @return The language of the System.
             */
            static s32 getLanguage();
            /**
             * @return A boolean telling if the user can restart their Wii console.
             */
            static bool                     isResetAcceptable();
            /**
             * @return The Renderer of the IPL.
             */
            static GXRenderModeObj*         getRenderModeObj();
            /**
             * @return The Wii Remotes of the IPL.
             * 
             * @param chan The Wii Remote Player
             */
            static controller::Interface*   getController(int chan);
            
            
            /*****   INLINES   *****/
            

            /**
             * @return The System work data.
             */
            static ArgData*         getArg()                { return &smArg; }
            /**
             * @return The English work data.
             */
            static ArgRegionData*   getEngArg()             { return smArg.mpEngArg; }
            /**
             * @return The French work data.
             */
            static ArgRegionData*   getFraArg()             { return smArg.mpFraArg; }
            /**
             * @return The German work data.
             */
            static ArgRegionData*   getGerArg()             { return smArg.mpGerArg; }
            /**
             * @return The Italian work data.
             */
            static ArgRegionData*   getItaArg()             { return smArg.mpItaArg; }
            /**
             * @return The Japanese work data.
             */
            static ArgRegionData*   getJpnArg()             { return smArg.mpJpnArg; }
            /**
             * @return The Dutch work data.
             */
            static ArgRegionData*   getDutArg()             { return smArg.mpDutArg; }
            /**
             * @return The Spanish work data.
             */
            static ArgRegionData*   getSpaArg()             { return smArg.mpSpaArg; }
            /**
             * @return The Chinese (simple) work data.
             */
            static ArgRegionData*   getChnSimpleArg()       { return smArg.mpChnSimpleArg; }
            /**
             * @return The Chinese (traditional) data.
             */
            static ArgRegionData*   getChnTraditionalArg()  { return smArg.mpChnTraditionalArg; }
            /**
             * @return The Korean work data.
             */
            static ArgRegionData*   getKorArg()             { return smArg.mpKorArg; }

        private:
            static ArgData  smArg;
    };
}

#endif // IPL_SYSTEM_H


