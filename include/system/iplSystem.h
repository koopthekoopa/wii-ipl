#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include "config.h"

#include <decomp.h>

#include <revolution.h>

#include <nw4r/ut.h>

#include <egg/core.h>

#include "system/iplFramework.h"
#include "system/iplNandManager.h"
#include "system/iplController.h"
#include "system/iplErrorHandler.h"
#include "system/iplResetHandler.h"
#include "system/iplWarningHandler.h"
#include "system/iplDialogWindow.h"
#include "system/iplPointer.h"
#include "system/iplHomeButton.h"
#include "system/iplChannelManager.h"
#include "system/iplChannelScriptManager.h"
#include "system/iplMessageManager.h"
#include "system/iplSaveDataManager.h"
#include "system/iplNwc24Manager.h"
#include "system/iplPostmanManager.h"
#include "system/iplNigaoeManager.h"
#include "system/iplBS2Manager.h"
#include "system/iplCdbManager.h"
#include "scene/iplSceneManager.h"
#include "utility/iplJpegDecoder.h"

/**
 * @brief Log the result to the NAND log. (`shared2/test2/nanderr.log`)
 * @param type The error type as a string
 * @param result The result
 * @param line The line number
 */
#define IPLErrorLog(type, result, line) ipl::System::getErrorHandler()->log(type, result, __FILE__, line)
/**
 * @brief Display the error screen.
 * @param msg The Message ID (`iplErrorHandler.h` has the list of available IDs)
 */
#define IPLErrorDisplay(msgId)          ipl::System::getErrorHandler()->set(ipl::ErrorHandler::DEFAULT, msgId)
/**
 * @brief Log the result to the NAND log. (`shared2/test2/nanderr.log`) and then displays error screen.
 * @param msg The Message ID (`iplErrorHandler.h` has the list of available IDs)
 * @param type The error type as a string
 * @param result The result
 * @param line The line number
 */
#define IPLErrorLogAndDisplay(msgId, type, result, line) {  \
    IPLErrorLog(type, result, line);                        \
    IPLErrorDisplay(msgId);                                 \
}

namespace ipl {
    class System {
        public:
            class Arg {
                public:
                    Arg();

                private:
                    EGG::Heap*              mpMem1Root;                 // 0x00
                    EGG::Heap*              mpMem2Root;                 // 0x04
                    EGG::Heap*              mpMem1Sys;                  // 0x08
                    EGG::Heap*              mpMem2Sys;                  // 0x0C
                    EGG::Heap*              mpSceneManagerHeap;         // 0x10
                    EGG::Heap*              mpSoundHeap;                // 0x14
                    EGG::Heap*              mpChannelManagerHeap;       // 0x18
                    EGG::Heap*              mpUnusedHeap;               // 0x1C
                    EGG::Heap*              mpSharedHeap;               // 0x20
                    EGG::Heap*              mpMem1App;                  // 0x24
                    EGG::Heap*              mpMem2App;                  // 0x28
                    EGG::Heap*              mpTreasureHeap;             // 0x2C
                    EGG::Heap*              mpChannelSelectHeap;        // 0x30
                    EGG::Heap*              mpFontHeap;                 // 0x34
                    EGG::Heap*              mpMailHeap;                 // 0x38

                    OSCalendarTime          mCurrentTime;               // 0x3C

                    scene::Manager*         mpSceneManager;             // 0x64
                    controller::Manager*    mpControllerManager;        // 0x68
                    nand::Manager*          mpNandManager;              // 0x6C
                    nigaoe::Manager*        mpMiiManager;               // 0x70
                    Framework*              mpFramework;                // 0x74
                    undefined               unk_0x78[0x7C - 0x78];
                    cdb::Manager*           mpCdbManager;               // 0x7C
                    message::Manager*       mpMessageMgr;               // 0x80
                    undefined4*             mpChannelManager;           // 0x84
                    undefined4              unk_0x88;
                    nwc24::Manager*         mpNwc24Manager;             // 0x8C
                    undefined4*             unk_0x90;
                    savedata::Manager*      mpSaveDataManager;          // 0x94
                    ErrorHandler*           mpErrorHandler;             // 0x98
                    ResetHandler*           mpResetHandler;             // 0x9C
                    WarningHandler*         mpWarningHandler;           // 0xA0
                    postman::Manager*       mpPostmanManager;           // 0xA4
                    bs2::Manager*           mpBS2Manager;               // 0xA8
                    DialogWindow*           mpDialog;                   // 0xAC
                    Pointer*                mpPointer;                  // 0xB0
                    HomeButtonMenu*         mpHomeButton;               // 0xB4
                    undefined4*             unk_0xB8;
                    utility::JpegDecoder*   mpJpegDecoder;              // 0xBC
                    EGG::Thread*            mpUnkThread;                // 0xC0
                    EGG::ColorFader*        mpFader;                    // 0xC4
                    EGG::ColorFader*        mpResetFader;               // 0xC8
                    math::Random*           mpRandom;                   // 0xCC

                    EGG::TaskThread*        mpTask;                     // 0xD0
                    EGG::TaskThread*        unk_0xD4;                   // 0xD4
                    EGG::TaskThread*        mpNandTask;                 // 0xD8
    
                    nw4r::ut::Font*         mpWBFont1Data;              // 0xDC
                    nand::File*             mpWBF1File;                 // 0xE0
                    nw4r::ut::Font*         mpWBFont2Data;              // 0xE4
                    nand::File*             mpWBF2File;                 // 0xE8

                    enum {
                        FONT,
                        RSO_SYM_LIST,
                        SOUND,
                        SOFT_KEYBOARD,
                        RES_4, // unused
                        FACE,
                        HBM_LAYOUT,
                        HBM_LANG,
                        HBM_LANG_JPN = HBM_LANG,
                        HBM_LANG_ENG,
                        HBM_LANG_GER,
                        HBM_LANG_FRA,
                        HBM_LANG_SPA,
                        HBM_LANG_ITA,
                        HBM_LANG_DUT,
                        HBM_LANG_CHN,
                        HBM_LANG_CHN_TRAD, // unused
                        HBM_LANG_CHN_KOR,
                        MESSAGES,
                        MESG_ENG = MESSAGES,
                        MESG_FRA,
                        MESG_GER,
                        MESG_ITA,
                        MESG_JPN,
                        MESG_DUT,
                        MESG_SPA,
                        MESG_CHN,
                        MESG_CHN_TRAD, // unused
                        MESG_KOR,
                        RES_27, // unused
                        HBM_MESSAGE,
                        HBM_CONFIG,
                        HBM_SPEAKER_SOUND,
                        HBM_BAN_ICON,
                        RES_32, // unused
                        RES_33, // unused
                        RES_34, // unused
                        ZI_DICT,
                        NITNENDO_DICT,
                        INVALID_JPEG,
                        RES_38, // unused
                        RES_39, // unused
                        MAX_RES
                    };

                    nand::File*             mpSysResources[MAX_RES];    // 0xEC

                    nand::LayoutFile*       mpDlgArc;                   // 0x18C
                    u8                      unk_0x190[0x1E0 - 0x190];
                    OSAlarm                 mUnkAlarm;                  // 0x1E0
                    u8                      unk_0x210[0x2B0 - 0x210];

                    volatile bool           mbResLoaded;                // 0x2B0
                    bool                    unk_0x2B1;
                    volatile bool           mbCreatedAfter;             // 0x2B2
                    bool                    mbLibraryInit;              // 0x2B3
                    bool                    unk_0x2B4;
                    bool                    unused_0x2B5;
                    volatile bool           mbFontResLoaded;            // 0x2B6
                    volatile bool           mbSndResLoaded;             // 0x2B7
                    volatile bool           mbZi8ResLoaded;             // 0x2B8
                    volatile bool           mbResetDisabled;            // 0x2B9
                    volatile bool           mbFoldersCreated;           // 0x2BA
                    volatile bool           mbIsNandFull;               // 0x2BB
                    volatile bool           mbSafeMode;                 // 0x2BC
                    bool                    unk_0x2BD;
                    volatile bool           unk_0x2BE;
                    bool                    unk_0x2BF;

                    u8                      unk_0x2C0[0x2C8 - 0x2C0];
                    volatile bool           unk_0x2C8;
                    u8                      unk_0x2CC[0x2D8 - 0x2CC];

                friend class System;
            };
            
            /*==============================*/
            /*            UNKNOWN           */
            /*==============================*/
            
            static EGG::Thread*             getUnkThread()              { return smArg.mpUnkThread; }
            static EGG::TaskThread*         getTask()                   { return smArg.mpTask; }
            static EGG::TaskThread*         getNandTask()               { return smArg.mpNandTask; }
            static nand::File*              getInvalidJpegImage()       { return smArg.mpSysResources[Arg::INVALID_JPEG]; }
            static bool                     isUnk_0x2B1()               { return smArg.unk_0x2B1; }
            static bool                     isUnk_0x2B4()               { return smArg.unk_0x2B4; }
            static bool                     isUnk_0x2BD()               { return smArg.unk_0x2BD; }
            static bool                     isUnk_0x2BE()               { return smArg.unk_0x2BE; }
            static void                     setUnk_0x2BE(bool val)      { smArg.unk_0x2BE = val; }
            static bool                     isUnk_0x2BF()               { return smArg.unk_0x2BF; }
            static void                     setUnk_0x2BF(bool val)      { smArg.unk_0x2BF = val; }
            static bool                     isUnk_0x2C8()               { return smArg.unk_0x2C8; }

            /*==============================*/
            /*         MEMORY HEAP          */
            /*==============================*/

            static void                     setCurrentHeap(EGG::Heap* heap);

            static EGG::Heap*               getMem1Root()               { return smArg.mpMem1Root; }
            static EGG::Heap*               getMem2Root()               { return smArg.mpMem2Root; }
            static EGG::Heap*               getMem1Sys()                { return smArg.mpMem1Sys; }
            static EGG::Heap*               getMem2Sys()                { return smArg.mpMem2Sys; }
            static EGG::Heap*               getMem1App()                { return smArg.mpMem1App; }
            static EGG::Heap*               getMem2App()                { return smArg.mpMem2App; }
            static EGG::Heap*               getSharedHeap()             { return smArg.mpSharedHeap; }
            static EGG::Heap*               getTreasureHeap()           { return smArg.mpTreasureHeap; }
            static EGG::Heap*               getMailWorkHeap()           { return smArg.mpMailHeap; }

            /*==============================*/
            /*       SYSTEM RESOURCES       */
            /*==============================*/
            
            static bool                     hasLibraryCreated()         { return smArg.mbLibraryInit; }
            static bool                     hasCreatedAfter()           { return smArg.mbCreatedAfter; }

            static bool                     isCmnResLoaded()            { return smArg.mbResLoaded; }
            static bool                     isFontResLoaded()           { return smArg.mbFontResLoaded; }
            static bool                     isSndResLoaded()            { return smArg.mbSndResLoaded; }
            static bool                     isZi8ResLoaded()            { return smArg.mbZi8ResLoaded; }

            static bool isRsrcLoaded() { return smArg.mbResLoaded 
                                    && smArg.mbFontResLoaded 
                                    && smArg.mbSndResLoaded
#ifdef USE_ZI8
                                    && smArg.mbZi8ResLoaded
#endif // USE_ZI8
                                    ; }

            static volatile bool            unkBool()                   { return smArg.mbCreatedAfter && smArg.unk_0x2B4; }

            /** @return The Message ID as a Wide-string. */
            static const wchar_t*           getMessage(u32 id)          { return smArg.mpMessageMgr->getMessage(id); }

            static message::Manager*        getMessageManager()         { return smArg.mpMessageMgr; }
            
            static void*                    getFont();

            /** @return The Wii Bitmap Font 1 Data. (wbf1.brfna) */
            static nw4r::ut::Font*          getWBFont1Data()            { return smArg.mpWBFont1Data; }
            /** @return The Wii Bitmap Font 2 Data. (wbf2.brfna) */
            static nw4r::ut::Font*          getWBFont2Data()            { return smArg.mpWBFont2Data; }

            /*==============================*/
            /*        SET UP & LOOP         */
            /*==============================*/
        
            /**
             * @brief Initializes the system.
             * @param argc The amount of arguments passed,
             * @param argv Array of arguments.
             */
            static void                     init(int argc, char** argv);
            static void                     reinit();
            /**
             * @brief Boots up the system.
             * @note Run this function after `ipl::System::init`
             */
            static void                     run();

            /*==============================*/
            /*          SYSTEM BS2          */
            /*==============================*/

            /** @return The BS2 Manager object. */
            static bs2::Manager*            getBS2Manager()             { return smArg.mpBS2Manager; }

            /*==============================*/
            /*        WII CONTROLLERS       */
            /*==============================*/

            /**
             * @return The Wii Remote being used.
             * @param chan The Wii Remote Player
             */
            static controller::Interface*   getController(int chan);
            /** @return The Master Wii Remote. */
            static controller::Interface*   getMasterController();

            /*==============================*/
            /*         SYSTEM NAND          */
            /*==============================*/

            /** @return The Content Manager object. */
            static nand::Manager*           getNandManager()            { return smArg.mpNandManager; }
            /** @return The Save Data Manager object. */
            static savedata::Manager*       getSaveData()               { return smArg.mpSaveDataManager; }

            static bool                     isNandFull()                { return smArg.mbIsNandFull; }
            static void                     setNandFull(bool value)     { smArg.mbIsNandFull = value; }

            static void                     checkNandOverFlowFlagAsync();

            /*==============================*/
            /*         SYSTEM REGION        */
            /*==============================*/

            /** @return The language of the System. */
            static s32                      getLanguage();
            /** @return The region of the System. */
            static s32                      getRegion();
            
            /** @return The English message data. */
            static nand::File*              getEngMsg()                 { return smArg.mpSysResources[Arg::MESG_ENG]; }
            /** @return The French message data. */
            static nand::File*              getFraMsg()                 { return smArg.mpSysResources[Arg::MESG_FRA]; }
            /** @return The German message data. */
            static nand::File*              getGerMsg()                 { return smArg.mpSysResources[Arg::MESG_GER]; }
            /** @return The Italian message data. */
            static nand::File*              getItaMsg()                 { return smArg.mpSysResources[Arg::MESG_ITA]; }
            /** @return The Japanese message data. */
            static nand::File*              getJpnMsg()                 { return smArg.mpSysResources[Arg::MESG_JPN]; }
            /** @return The Dutch message data. */
            static nand::File*              getDutMsg()                 { return smArg.mpSysResources[Arg::MESG_DUT]; }
            /** @return The Spanish message data. */
            static nand::File*              getSpaMsg()                 { return smArg.mpSysResources[Arg::MESG_SPA]; }
            /** @return The Chinese (simple) message data. */
            static nand::File*              getChnMsg()                 { return smArg.mpSysResources[Arg::MESG_CHN]; }
            /**
             * @return The Chinese (traditional) message data.
             * @remark This is unused, and will always return NULL.
             */
            static nand::File*              getChnTradMsg()             { return smArg.mpSysResources[Arg::MESG_CHN_TRAD]; }
            /** @return The Korean message data. */
            static nand::File*              getKorMsg()                 { return smArg.mpSysResources[Arg::MESG_KOR]; }

            /*==============================*/
            /*     WIICONNECT24 & MAIL      */
            /*==============================*/

            /**
             * @param errorCode Error code from NWC24RegisterUserId
             */
            static void                     setNWC24RegistEnd(s32 errorCode);
            /** @return The WiiConnect24 Manager object. */
            static nwc24::Manager*          getNwc24Manager()           { return smArg.mbSafeMode ? NULL : smArg.mpNwc24Manager; }
            /** @return The WiiConnect24 Manager object. */
            static nwc24::Manager*          getNwc24ManagerForce()      { return smArg.mpNwc24Manager; }
            /** @return The Postman Handler object. */
            static postman::Manager*        getPostmanManager()         { return smArg.mpPostmanManager; }
            /** @return The CDB Manager object. */
            static cdb::Manager*            getCdbManager()             { return isSafeMode() ? NULL : smArg.mpCdbManager; }
            /** @return The CDB Manager object. */
            static cdb::Manager*            getCdbManagerForce()        { return smArg.mpCdbManager; }
            /** @return The JPEG Decoder object. */
            static utility::JpegDecoder*    getJpegDecoder()            { return smArg.mpJpegDecoder; }
            /** Start postman manager */
            static void                     startReceiveSchedule();
            /** Pause postman manager */
            static void                     stopReceiveSchedule();

            /*==============================*/
            /*              MII             */
            /*==============================*/

            /** @return The Mii Manager object. */
            static nigaoe::Manager*         getMiiManager()             { return smArg.mpMiiManager; }
            /** @return The Mii Archive Data */
            static nand::File*              getRFLArc()                 { return smArg.mpSysResources[Arg::FACE]; }

            /*==============================*/
            /*       SYSTEM RENDERING       */
            /*==============================*/

            /** @return The Renderer of the IPL. */
            static GXRenderModeObj*         getRenderModeObj();

            static void                     getProjectionRect(nw4r::ut::Rect* rect);
            static void                     getProjectionRect4x3(nw4r::ut::Rect* rect);
            static void                     getProjectionRect16x9(nw4r::ut::Rect* rect);

            /** @return The animation delta. */
            static f32                      getAnimDelta()              { return smArg.mpFramework->getDelta(); }

            /*==============================*/
            /*         SYSTEM FADING        */
            /*==============================*/

            /** @return The Fader object */
            static EGG::ColorFader*         getFader()                  { return smArg.mpFader; }

            /*==============================*/
            /*    SYSTEM USER INTERFACE     */
            /*==============================*/

            /** @return The Dialog object. */
            static DialogWindow*            getDialog()                 { return smArg.mpDialog; }
            /** @return The Dialog Archive Data */
            static nand::LayoutFile*        getDlgArc()                 { return smArg.mpDlgArc; }

            /** @return The Pointer object. */
            static Pointer*                 getPointer()                { return smArg.mpPointer; }
            
            /*==============================*/
            /*        SYSTEM SCENERY        */
            /*==============================*/

            /** @return The Scene Manager object. */
            static scene::Manager*          getSceneManager()           { return smArg.mpSceneManager; }

            /*==============================*/
            /*           HOME MENU          */
            /*==============================*/

            /** @return The HOME Menu object. */
            static HomeButtonMenu*          getHomeButtonMenu()         { return smArg.mpHomeButton; }
            static nand::File*              getHBMMessageFile()         { return smArg.mpSysResources[Arg::HBM_MESSAGE]; }
            static nand::File*              getHBMConfigFile()          { return smArg.mpSysResources[Arg::HBM_CONFIG]; }
            static nand::File*              getHBMSpeakSoundFile()      { return smArg.mpSysResources[Arg::HBM_SPEAKER_SOUND]; }
            static nand::File*              getHBMBanIconFile()         { return smArg.mpSysResources[Arg::HBM_BAN_ICON]; }
            static nand::File*              getHBMLayoutFile()          { return smArg.mpSysResources[Arg::HBM_LAYOUT]; }
            static nand::File*              getHBMLangFile(u8 lang)     { return smArg.mpSysResources[Arg::HBM_LANG + lang]; }
            static nand::File*              getHBMLangFile()            { return getHBMLangFile(SCGetLanguage()); }
            
            /*==============================*/
            /*        ERROR HANDLING        */
            /*==============================*/
            
            /** @return The Error Handler object. */
            static ErrorHandler*            getErrorHandler()           { return smArg.mpErrorHandler; }

            /** @brief Prepare the system for error handler */
            static void                     err_run();

            /*==============================*/
            /*         RESET HANDLER        */
            /*==============================*/

            /** @return The Reset Handler object. */
            static ResetHandler*            getResetHandler()           { return smArg.mpResetHandler; }
            /** @brief Prepare the system for reset handler */
            static void                     reset_run();
            /** @return The fader object for the reset handler. */
            static EGG::ColorFader*         getResetFader()             { return smArg.mpResetFader; }

             /** @return A boolean indicating if the user can restart their Wii console. */
            static BOOL                     isResetAcceptable();

            /*==============================*/
            /*       WARNING HANDLING       */
            /*==============================*/

            /** @return The Warning Handler object. */
            static WarningHandler*          getWarningHandler()         { return smArg.mpWarningHandler; }

            /** @brief Prepare the system for warning handler */
            static void                     warning_run();
            /**
             * @brief Display the warning dialog.
             * @param msgId The Message ID.
             */
            static inline void warning_display(int msg) {
                smArg.mpWarningHandler->set(WarningHandler::DEFAULT, msg);
            }
            
            /*==============================*/
            /*           UTILITIES          */
            /*==============================*/

            /**
             * @return The Random Number Generator object.
             */
            static math::Random*            getRndm();
            static OSCalendarTime&          getCurrentTime()            { return smArg.mCurrentTime; }
            /*==============================*/
            /*              MISC            */
            /*==============================*/

            static bool                     isSafeMode()                { return smArg.mbSafeMode; }
            static void                     setSafeMode(bool value)     { smArg.mbSafeMode = value; }

        private:
            static Arg  smArg;
    };
}

#endif // IPL_SYSTEM_H
