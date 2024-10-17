#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <decomp.h>

#include <revolution.h>

#include <nw4r/ut.h>

#include <egg/core.h>

#include "system/iplNand.h"
#include "system/iplController.h"
#include "system/iplErrorHandler.h"
#include "system/iplResetHandler.h"
#include "system/iplWarningHandler.h"
#include "system/iplDialogWindow.h"
#include "system/iplPointer.h"
#include "system/iplHomeButton.h"
#include "system/iplMessage.h"
#include "system/iplMessageManager.h"
#include "system/iplSaveData.h"
#include "system/iplNwc24Manager.h"
#include "system/iplPostmanManager.h"
#include "system/iplBS2Manager.h"

#include "scene/iplSceneManager.h"

namespace ipl {
    class System {
        public:
            class Arg {
                public:
                    Arg();

                private:
                    u8                  unk_0x00[0x04];
                    EGG::Heap*          mpAppHeap;              // 0x04
                    EGG::Heap*          mpMem1SysHeap;          // 0x08
                    EGG::Heap*          unk_0x0C;               // 0x0C
                    u8                  unk_0x10[0x10];
                    EGG::Heap*          mpNandSharedHeap;       // 0x20
                    undefined4*         unk_0x24;
                    EGG::Heap*          unk_0x28;
                    EGG::Heap*          mpTreasureHeap;         // 0x2C
                    u8                  unk_0x30[0x34];

                    scene::Manager*     mpSceneManager;         // 0x64
                    undefined4*         unk_0x68;
                    nand::Manager*      mpNandManager;          // 0x6C
                    undefined           unk_0x70[0x10];
                    message::Message*   mUnkMsg;                // 0x80
                    undefined4          unk_0x84;
                    undefined4          unk_0x88;
                    nwc24::Manager*     mpNwc24Manager;         // 0x8C
                    undefined4*         unk_0x90;
                    savedata::Manager*  mpSaveDataManager;      // 0x94
                    ErrorHandler*       mpErrorHandler;         // 0x98
                    ResetHandler*       mpResetHandler;         // 0x9C
                    WarningHandler*     mpWarningHandler;       // 0xA0
                    postman::Manager*   mpPostmanManager;       // 0xA4
                    bs2::Manager*       mpBS2Manager;           // 0xA8
                    DialogWindow*       mpDialog;               // 0xAC
                    Pointer*            mpPointer;              // 0xB0
                    HomeButtonMenu*     mpHomeButton;           // 0xB4
                    undefined4*         unk_0xB8;
                    message::Manager*   mpMessage;              // 0xBC
                    EGG::Thread*        mpUnkThread;            // 0xC0
                    EGG::ColorFader*    mpGblFader;             // 0xC4
                    EGG::ColorFader*    mpScnFader;             // 0xC8

                    u8                  unk_0xCC[0x34];

                    nand::File*         mpFaceArcBuffer;        // 0x100

                    u8                  unk_0x104[0x2C];

                    nand::File*         mpEngMsg;               // 0x130
                    nand::File*         mpFraMsg;               // 0x134
                    nand::File*         mpGerMsg;               // 0x138
                    nand::File*         mpItaMsg;               // 0x13C
                    nand::File*         mpJpnMsg;               // 0x140
                    nand::File*         mpDutMsg;               // 0x144
                    nand::File*         mpSpaMsg;               // 0x148
                    nand::File*         mpChnMsg;               // 0x14C
                    nand::File*         mpChnTradMsg;           // 0x150
                    nand::File*         mpKorMsg;               // 0x154

                    u8                  unk_0x158[0x88];
                    OSAlarm             mUnkAlarm;              // 0x1E0
                    u8                  unk_0x20C[0xA0];

                    volatile bool       mbResLoaded;            // 0x2B0
                    bool                unk_0x2B1;
                    volatile bool       mbCreatedAfter;         // 0x2B2
                    bool                mbLibraryInit;          // 0x2B3
                    bool                unk_0x2B4;
                    bool                unused_0x2B5;
                    volatile bool       mbFontResLoaded;        // 0x2B6
                    volatile bool       mbSndResLoaded;         // 0x2B7
                    volatile bool       mbDictResLoaded;        // 0x2B8
                    volatile bool       mbResetDisabled;        // 0x2B9
                    volatile bool       mbFoldersCreated;       // 0x2BA
                    volatile bool       mbIsNandFull;           // 0x2BB
                    volatile bool       mbSafeMode;             // 0x2BC
                    bool                unk_0x2BD;
                    volatile bool       unk_0x2BE;
                    bool                unk_0x2BF;

                    u8                  unk_0x2C0[0x17];

                friend class System;
            };
            /** @return Heap used for the IPL.*/
            static EGG::Heap*           getAppHeap()            { return smArg.mpAppHeap; }
            /** @return MEM1 Heap */
            static EGG::Heap*           getSysMEM1()            { return smArg.mpMem1SysHeap; }
            /** @return MEM2 Heap */
            static EGG::Heap*           getUnk0CHeap()          { return smArg.unk_0x0C; }
            /** @return The heap used for scenery. */
            static EGG::Heap*           getUnk28Heap()          { return smArg.unk_0x28; }
            /** @return Heap used for NAND Shared File. */
            static EGG::Heap*           getNandSharedHeap()     { return smArg.mpNandSharedHeap; }
            /** @return The "treasure" heap. */
            static EGG::Heap*           getTreasureHeap()       { return smArg.mpTreasureHeap; }
            /** @return The Scene Manager object. */
            static scene::Manager*      getSceneMgr()           { return smArg.mpSceneManager; }
            /** @return The Content Manager object. */
            static nand::Manager*       getNand()               { return smArg.mpNandManager; }
            /** @return The WiiConnect24 Manager object. */
            static nwc24::Manager*      getNwc24()              { return smArg.mpNwc24Manager; }
            /** @return The Save Data Manager object. */
            static savedata::Manager*   getSaveData()           { return smArg.mpSaveDataManager; }
            /** @return The Error Handler object. */
            static ErrorHandler*        getError()              { return smArg.mpErrorHandler; }
            /** @return The Reset Handler object. */
            static ResetHandler*        getReset()              { return smArg.mpResetHandler; }
            /** @return The Warning Handler object. */
            static WarningHandler*      getWarning()            { return smArg.mpWarningHandler; }
            /** @return The Postman Handler object. */
            static postman::Manager*    getPostman()            { return smArg.mpPostmanManager; }
            /** @return The HOME Menu object. */
            static HomeButtonMenu*      getHomeMenu()           { return smArg.mpHomeButton; }
            /** @return The BS2 Manager object. */
            static bs2::Manager*        getBS2()                { return smArg.mpBS2Manager; }
            /** @return The Dialog object. */
            static DialogWindow*        getDialog()             { return smArg.mpDialog; }
            /** @return The Pointer object. */
            static Pointer*             getPointer()            { return smArg.mpPointer; }
            /** @return The Message object. */
            static message::Message*    getMessage()            { return smArg.mpMessage->getMessage(); }
            /** @return something */
            static EGG::Thread*         getUnkThread()          { return smArg.mpUnkThread; }
            /** @return The Fader object for fading out to the error handler. */
            static EGG::ColorFader*     getGlobalFader()        { return smArg.mpGblFader; }
            /** @return The fader object. */
            static EGG::ColorFader*     getSceneFader()         { return smArg.mpScnFader; }
            /** @return The Mii Archive Data */
            static nand::File*          getRFLArc()             { return smArg.mpFaceArcBuffer; }
            /** @return The English message data. */
            static nand::File*          getEngMsg()             { return smArg.mpEngMsg; }
            /** @return The French message data. */
            static nand::File*          getFraMsg()             { return smArg.mpFraMsg; }
            /** @return The German message data. */
            static nand::File*          getGerMsg()             { return smArg.mpGerMsg; }
            /** @return The Italian message data. */
            static nand::File*          getItaMsg()             { return smArg.mpItaMsg; }
            /** @return The Japanese message data. */
            static nand::File*          getJpnMsg()             { return smArg.mpJpnMsg; }
            /** @return The Dutch message data. */
            static nand::File*          getDutMsg()             { return smArg.mpDutMsg; }
            /** @return The Spanish message data. */
            static nand::File*          getSpaMsg()             { return smArg.mpSpaMsg; }
            /** @return The Chinese (simple) message data. */
            static nand::File*          getChnMsg()             { return smArg.mpChnMsg; }
            /** @return The Chinese (traditional) message data. */
            static nand::File*          getChnTradMsg()         { return smArg.mpChnTradMsg; }
            /** @return The Korean message data. */
            static nand::File*          getKorMsg()             { return smArg.mpKorMsg; }
            static bool                 isUnk_0x2B1()           { return smArg.unk_0x2B1; }
            static bool                 hasCreatedAfter()       { return smArg.mbCreatedAfter; }
            /** @return Whether the libraries needed have been created. */
            static bool                 hasLibraryCreated()     { return smArg.mbLibraryInit; }
            static bool                 isUnk_0x2B4()           { return smArg.unk_0x2B4; }
            /** @return Whether the NAND has enough capacity. */
            static bool                 isNandFull()            { return smArg.mbIsNandFull; }
            static void                 setNandFull(bool value) { smArg.mbIsNandFull = value; }
            /** @return Whether the system is in Maintenance Mode. */
            static bool                 isSafeMode()            { return smArg.mbSafeMode; }
            static void                 setSafeMode(bool value) { smArg.mbSafeMode = value; }
            static bool                 isUnk_0x2BD()           { return smArg.unk_0x2BD; }
            static bool                 isUnk_0x2BE()           { return smArg.unk_0x2BE; }
            static void                 setUnk_0x2BE(bool val)  { smArg.unk_0x2BE = val; }
            static bool                 isUnk_0x2BF()           { return smArg.unk_0x2BF; }
            static void                 setUnk_0x2BF(bool val)  { smArg.unk_0x2BF = val; }

            /** @return Whether the system resources have loaded */
            static bool isRsrcLoaded() { return smArg.mbResLoaded && smArg.mbFontResLoaded && smArg.mbSndResLoaded && smArg.mbDictResLoaded; }
            /** @remark This is just another `isRsrcLoaded` */
            static bool isRsrcLoaded2() {
                bool allResLoaded = false;
                bool cmnResLoaded = false;
                if (smArg.mbResLoaded && smArg.mbFontResLoaded && smArg.mbSndResLoaded) {
                    cmnResLoaded = true;
                }
                if (cmnResLoaded && smArg.mbDictResLoaded) {
                    allResLoaded = true;
                }
                if (allResLoaded) {
                    return true;
                }
                return false;
            }
            static bool unkBool() { return smArg.mbCreatedAfter && smArg.unk_0x2B4; }
        
            /**
             * @brief Initializes the system.
             * @param argc The amount of arguments passed,
             * @param argv Array of arguments.
             */
            static void init(int argc, char** argv);
            /**
             * @brief Boots up the system.
             * @note Run this function after `ipl::System::init`
             */
            static void                     run();

            /** @return The language of the System. */
            static s32                      getLanguage();
            /** @return The region of the System. */
            static s32                      getRegion();

            /** @return A boolean indicating if the user can restart their Wii console. */
            static bool                     isResetAcceptable();

            /** @return The Renderer of the IPL. */
            static GXRenderModeObj*         getRenderModeObj();

            /**
             * @return The Wii Remote being used.
             * @param chan The Wii Remote Player
             */
            static controller::Interface*   getController(int chan);
            /** @return The Master Wii Remote. */
            static controller::Interface*   getMasterController();

            /** @brief Prepare the system for error handler */
            static void                     err_run();
            #define                         err_log(type, result, line) err_log_(#type, result, __FILE__, line)
            static inline void              err_log_(const char* type, int result, const char* file, int line) {
                smArg.mpErrorHandler->log(type, result, file, line);
            }
            #define                         err_display err_display_
            static inline void              err_display_(int msg) {
                smArg.mpErrorHandler->set(ErrorHandler::DEFAULT, msg);
            }

            /** @brief Prepare the system for reset handler */
            static void                     reset_run();
            /** @brief Prepare the system for warning handler */
            static void                     warning_run();
            static void                     checkNandOverFlowFlagAsync();

        private:
            static Arg  smArg;
    };
}

#endif // IPL_SYSTEM_H


