#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

#include <nw4r/ut.h>

#include <egg/core.h>

#include "system/iplNand.h"
#include "system/iplController.h"
#include "system/iplErrorHandler.h"
#include "system/iplResetHandler.h"
#include "system/iplWarningHandler.h"
#include "system/iplDialogWindow.h"
#include "system/iplHomeButton.h"
#include "system/iplSaveData.h"
#include "system/iplNwc24Manager.h"
#include "system/iplPostmanManager.h"

#include "sceneSystem/iplSceneManager.h"

namespace ipl {
    class System {
        public:
            typedef struct {
                private:
                    u8  unk_0x00[0xA0];

                    u8* mpMsgData;              // 0xA0

                public:
                    /** @return The Message Data of the language. */
                    u8* getMessageData()                        { return mpMsgData; }

                friend class System;
            } ArgRegionData;

            class Arg {
                public:
                    Arg();

                    /** @return The Scene Manager object. */
                    scene::Manager*     getSceneManager()       { return mpSceneManager; }
                    /** @return The Content Manager object. */
                    nand::Manager*      getNandManager()        { return mpNandManager; }
                    /** @return The WiiConnect24 Manager object. */
                    nwc24::Manager*     getNwc24Manager()       { return mpNwc24Manager; }
                    /** @return The Save Data Manager object. */
                    savedata::Manager*  getSaveDataManager()    { return mpSaveDataManager; }
                    /** @return The Error Handler object. */
                    ErrorHandler*       getErrorHandler()       { return mpErrorHandler; }
                    /** @return The Reset Handler object. */
                    ResetHandler*       getResetHandler()       { return mpResetHandler; }
                    /** @return The Warning Handler object. */
                    WarningHandler*     getWarningHandler()     { return mpWarningHandler; }
                    /** @return The Warning Handler object. */
                    postman::Manager*   getPostmanManager()     { return mpPostmanManager; }
                    /** @return The HOME Menu object. */
                    HomeButton*         getHomeButton()         { return mpHomeButton; }
                    /** @return something */
                    EGG::Thread*        getUnkThread()          { return mpUnkThread; }
                    /** @return The Fader object for fading out a captured screen. */
                    EGG::ColorFader*    getErrorFader()         { return mpErrorFader; }
                    /** @return The fader object. */
                    EGG::ColorFader*    getFader()              { return mpFader; }
                
                private:
                    u8                  unk_0x00[0x64];

                    scene::Manager*     mpSceneManager;         // 0x64
                    undefined4*         unk_0x68;
                    nand::Manager*      mpNandManager;          // 0x6C

                    u8                  unk_0x70[0x1C];

                    nwc24::Manager*     mpNwc24Manager;         // 0x8C
                    undefined4*         unk_0x90;
                    savedata::Manager*  mpSaveDataManager;      // 0x94
                    ErrorHandler*       mpErrorHandler;         // 0x98
                    ResetHandler*       mpResetHandler;         // 0x9C
                    WarningHandler*     mpWarningHandler;       // 0xA0
                    postman::Manager*   mpPostmanManager;       // 0xA4

                    u8                  unk_0xA8[0xC];

                    HomeButton*         mpHomeButton;           // 0xB4

                    u8                  unk_0xB8[0x8];

                    EGG::Thread*        mpUnkThread;            // 0xC0
                    EGG::ColorFader*    mpErrorFader;           // 0xC4
                    EGG::ColorFader*    mpFader;                // 0xC8

                    u8                  unk_0xCC[0x64];

                    ArgRegionData*      mpEngArg;               // 0x130
                    ArgRegionData*      mpFraArg;               // 0x134
                    ArgRegionData*      mpGerArg;               // 0x138
                    ArgRegionData*      mpItaArg;               // 0x13C
                    ArgRegionData*      mpJpnArg;               // 0x140
                    ArgRegionData*      mpDutArg;               // 0x144
                    ArgRegionData*      mpSpaArg;               // 0x148
                    ArgRegionData*      mpChnSimpleArg;         // 0x14C
                    ArgRegionData*      mpChnTraditionalArg;    // 0x150
                    ArgRegionData*      mpKorArg;               // 0x154

                    u8                  unk_0x158[0x88];
                    OSAlarm             mUnkAlarm;              // 0x1E0
                    u8                  unk_0x20C[0xA9];

                    bool                mbResetDisabled;        // 0x2B9
                    bool                unk_0x2BA;
                    bool                mbUnkBool2;             // 0x2BB
                    bool                mbUnkBool3;             // 0x2BC

                    u8                  unk_0x2BD[0x1B];

                friend class System;
            };
        
            /**
             * @brief Initializes the system.
             * 
             * @param argc The amount of arguments passed,
             * @param argv Array of arguments.
             */
            static void init(int argc, char** argv);
            /**
             * @brief Boots up the system.
             * 
             * @note Run this function after `ipl::System::init`
             */
            static void run();
            /** @return The language of the System. */
            static s32 getLanguage();
            /** @return A boolean indicating if the user can restart their Wii console. */
            static bool                     isResetAcceptable();
            /** @return The Renderer of the IPL. */
            static GXRenderModeObj*         getRenderModeObj();
            /**
             * @return The Wii Remotes of the IPL.
             * 
             * @param chan The Wii Remote Player
             */
            static controller::Interface*   getController(int chan);
            /** @brief Prepare the system for error handler */
            static void                     err_run();
            /** @brief Prepare the system for reset handler */
            static void                     reset_run();
            /** @brief Prepare the system for warning handler */
            static void                     warning_run();
            
            
            /*****   INLINES   *****/
            

            /** @return The System work data. */
            static Arg*         getArg()                    { return &smArg; }
            /** @return The English work data. */
            static ArgRegionData*   getEngArg()             { return smArg.mpEngArg; }
            /** @return The French work data. */
            static ArgRegionData*   getFraArg()             { return smArg.mpFraArg; }
            /** @return The German work data. */
            static ArgRegionData*   getGerArg()             { return smArg.mpGerArg; }
            /** @return The Italian work data. */
            static ArgRegionData*   getItaArg()             { return smArg.mpItaArg; }
            /** @return The Japanese work data. */
            static ArgRegionData*   getJpnArg()             { return smArg.mpJpnArg; }
            /** @return The Dutch work data. */
            static ArgRegionData*   getDutArg()             { return smArg.mpDutArg; }
            /** @return The Spanish work data. */
            static ArgRegionData*   getSpaArg()             { return smArg.mpSpaArg; }
            /** @return The Chinese (simple) work data. */
            static ArgRegionData*   getChnSimpleArg()       { return smArg.mpChnSimpleArg; }
            /** @return The Chinese (traditional) data. */
            static ArgRegionData*   getChnTraditionalArg()  { return smArg.mpChnTraditionalArg; }
            /** @return The Korean work data. */
            static ArgRegionData*   getKorArg()             { return smArg.mpKorArg; }

        private:
            static Arg  smArg;
    };
}

#endif // IPL_SYSTEM_H


