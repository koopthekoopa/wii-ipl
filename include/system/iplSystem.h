#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include "config.h"

#include <decomp.h>

#include <revolution.h>
#include <private/sc.h>

#include <nw4r/ut.h>

#include <egg/core.h>

#include "system/iplFramework.h"
#include "system/iplException.h"
#include "system/iplNandManager.h"
#include "system/iplController.h"
#include "system/iplErrorHandler.h"
#include "system/iplResetHandler.h"
#include "system/iplWarningHandler.h"
#include "system/iplDialogWindow.h"
#include "system/iplPointer.h"
#include "system/iplHomeButton.h"
#include "system/iplTVRCManager.h"
#include "system/iplChannelManager.h"
#include "system/iplChannelScriptManager.h"
#include "system/iplMessageManager.h"
#include "system/iplSaveDataManager.h"
#include "system/iplKeyboard.h"
#include "system/iplNwc24Manager.h"
#include "system/iplPostmanManager.h"
#include "system/iplNigaoeManager.h"
#include "system/iplBS2Manager.h"
#include "system/iplCdbManager.h"
#include "scene/iplSceneManager.h"
#include "utility/iplJpegDecoder.h"
#include "utility/iplCalendar.h"

#include <eztx.h>

/**
 * @brief Log the result to the NAND log. (`shared2/test2/nanderr.log`)
 * @param type The error type as a string
 * @param result The result
 * @param line The line number
 */
#define IPLErrorLog(type, result, line) ipl::System::getErrorHandler()->log(type, result, __FILE__, line)
/**
 * @brief Display the error screen.
 * @param msgId The Message ID (`iplErrorHandler.h` has the list of available IDs)
 */
#define IPLErrorDisplay(msgId)          ipl::System::getErrorHandler()->set(ipl::ErrorHandler::DEFAULT, msgId)
/**
 * @brief Display the warning dialog.
 * @param msgId The Message ID.
 */
#define IPLWarnDisplay(msgId)           ipl::System::getWarningHandler()->set(ipl::WarningHandler::DEFAULT, msgId)
/**
 * @brief Display the warning dialog and then reset.
 * @param msgId The Message ID.
 */
#define IPLWarnDisplayAndReset(msgId)   ipl::System::getWarningHandler()->set(ipl::WarningHandler::RESET, msgId)
/**
 * @brief Log the result to the NAND log. (`shared2/test2/nanderr.log`) and then displays error screen.
 * @param msgId The Message ID (`iplErrorHandler.h` has the list of available IDs)
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
            enum {
                LAUNCH_CODE_SETTING = 1,
                LAUNCH_CODE_DATA_MANAGER = 2,
            };
            class Arg {
                public:
                    Arg();

                private:
                    EGG::Heap*                      mpMem1Root;                 // 0x00
                    EGG::Heap*                      mpMem2Root;                 // 0x04
                    EGG::Heap*                      mpMem1Sys;                  // 0x08
                    EGG::Heap*                      mpMem2Sys;                  // 0x0C
                    EGG::Heap*                      mpSceneHeap;                // 0x10
                    EGG::Heap*                      mpSoundHeap;                // 0x14
                    EGG::Heap*                      mpChannelHeap;              // 0x18
                    void*                           unk_0x1C;
                    EGG::Heap*                      mpSharedHeap;               // 0x20
                    EGG::Heap*                      mpMem1App;                  // 0x24
                    EGG::Heap*                      mpMem2App;                  // 0x28
                    EGG::Heap*                      mpTreasureHeap;             // 0x2C
                    void*                           mpChannelArena;             // 0x30
                    EGG::Heap*                      mpFontHeap;                 // 0x34
                    EGG::Heap*                      mpMailHeap;                 // 0x38

                    OSCalendarTime                  mCurrentTime;               // 0x3C

                    scene::Manager*                 mpSceneManager;             // 0x64
                    controller::Manager*            mpControllerManager;        // 0x68
                    nand::Manager*                  mpNandManager;              // 0x6C
                    nigaoe::Manager*                mpMiiManager;               // 0x70
                    Framework*                      mpFramework;                // 0x74
                    Exception*                      mpException;                // 0x78
                    cdb::Manager*                   mpCdbManager;               // 0x7C
                    message::Manager*               mpMessageMgr;               // 0x80
                    channel::Manager*               mpChannelManager;           // 0x84
                    channel::ChannelScriptManager*  mpChannelScriptManager;     // 0x88
                    nwc24::Manager*                 mpNwc24Manager;             // 0x8C
                    keyboard::Manager*              mpKeyboardMgr;              // 0x90
                    savedata::Manager*              mpSaveDataManager;          // 0x94
                    ErrorHandler*                   mpErrorHandler;             // 0x98
                    ResetHandler*                   mpResetHandler;             // 0x9C
                    WarningHandler*                 mpWarningHandler;           // 0xA0
                    postman::Manager*               mpPostmanManager;           // 0xA4
                    bs2::Manager*                   mpBS2Manager;               // 0xA8
                    DialogWindow*                   mpDialog;                   // 0xAC
                    Pointer*                        mpPointer;                  // 0xB0
                    HomeButtonMenu*                 mpHomeButton;               // 0xB4
                    TVRCManager*                    mpTVRCManager;              // 0xB8
                    utility::JpegDecoder*           mpJpegDecoder;              // 0xBC
                    EGG::Thread*                    mpMainThread;               // 0xC0
                    EGG::ColorFader*                mpFader;                    // 0xC4
                    EGG::ColorFader*                mpResetFader;               // 0xC8
                    math::Random*                   mpRandom;                   // 0xCC

                    EGG::TaskThread*                mpTask1;                    // 0xD0
                    EGG::TaskThread*                mpTask2;                    // 0xD4
                    EGG::TaskThread*                mpTask3;                    // 0xD8
    
                    nw4r::ut::Font*                 mpWBFont1Data;              // 0xDC
                    nand::SharedFile*               mpWBF1File;                 // 0xE0
                    nw4r::ut::Font*                 mpWBFont2Data;              // 0xE4
                    nand::SharedFile*               mpWBF2File;                 // 0xE8

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
                        HBM_LANG_NED,
                        HBM_LANG_CHN,
                        HBM_LANG_CHN_TRAD, // unused
                        HBM_LANG_KOR,
                        MESSAGES,
                        MESG_ENG = MESSAGES,
                        MESG_FRA,
                        MESG_GER,
                        MESG_ITA,
                        MESG_JPN,
                        MESG_NED,
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
                        NINTENDO_DICT,
                        INVALID_JPEG,
                        RES_38, // unused
                        RES_39, // unused
                        DIALOG_WINDOW,
                        MAX_RES
                    };

                    union {
                        nand::File*             file[MAX_RES];
                        nand::SharedFile*       sharedFile[MAX_RES];
                        nand::LayoutFile*       layoutFile[MAX_RES];
                    } mResources;                                       // 0xEC

                    union {
                        struct {
                            u8* sys[EZTX_LANG_MAX];
                            u8* oem[EZTX_LANG_MAX];
                        };
                        u8* all[EZTX_LANG_MAX * 2];
                    } mZiDicData;                                       // 0x190

                    OSAlarm                 mUnusedAlarm;               // 0x1E0

                    void*                   mpFontArena;                // 0x210
                    void*                   mpMem1Arena;                // 0x214
                    u32                     mMem1ArenaSize;             // 0x218

                    u32                     mBS2BootType;               // 0x21C
                    u32                     mBS2LaunchCode;             // 0x220
                    u32                     unk_0x224;
                    char*                   mpNetSettingArg;            // 0x228
                    char*                   mpDataManageArg;            // 0x22C
                    char                    mBS2FirstArgv[128];         // 0x230

                    volatile bool           mbResLoaded;                // 0x2B0
                    bool                    mbInitCreateAfter;          // 0x2B1
                    volatile bool           mbCreatedAfter;             // 0x2B2
                    bool                    mbLibraryInit;              // 0x2B3
                    bool                    mbCreatedLibMgr;            // 0x2B4
                    bool                    unused_0x2B5;
                    volatile bool           mbFontResLoaded;            // 0x2B6
                    volatile bool           mbSndResLoaded;             // 0x2B7
                    volatile bool           mbZi8ResLoaded;             // 0x2B8
                    volatile bool           mbNeedToCreateFolders;      // 0x2B9
                    volatile bool           mbFoldersCreated;           // 0x2BA
                    volatile bool           mbIsNandFull;               // 0x2BB
                    volatile bool           mbSafeMode;                 // 0x2BC
                    bool                    unk_0x2BD;
                    volatile bool           mbRequestCreateAfter;       // 0x2BE
                    bool                    mbRequestCreateLibMgr;      // 0x2BF

                    enum {
                        REGIST_STATE_START = 0,
                        REGIST_STATE_DOING,
                        REGIST_STATE_END,
                    };

                    vs32                    mRegistState;               // 0x2C0
                    vs32                    mRegistErrCode;             // 0x2C4
                    volatile bool           mbGoingToDataManager;       // 0x2C8
                    u8                      unk_0x2CC[0x2D0 - 0x2CC];
                    ESTitleId               mBS2LaunchTitle;            // 0x2B0

                friend class System;
            };
            
            /*==============================*/
            /*           THREADING          */
            /*==============================*/
            
            static EGG::Thread*                     getMainThread()             { return smArg.mpMainThread; }
            static EGG::TaskThread*                 getTask1()                  { return smArg.mpTask1; }
            static EGG::TaskThread*                 getTask2()                  { return smArg.mpTask2; }
            static EGG::TaskThread*                 getTask3()                  { return smArg.mpTask3; }

            /*==============================*/
            /*         MEMORY HEAP          */
            /*==============================*/

            static EGG::Heap*                       createMem1AppHeap();
            static void                             destroyMem1AppHeap();

            static void                             setCurrentHeap(EGG::Heap* heap);

            static EGG::Heap*                       getMem1Root()               { return smArg.mpMem1Root; }
            static EGG::Heap*                       getMem2Root()               { return smArg.mpMem2Root; }
            static EGG::Heap*                       getMem1Sys()                { return smArg.mpMem1Sys; }
            static EGG::Heap*                       getMem2Sys()                { return smArg.mpMem2Sys; }
            static EGG::Heap*                       getMem1App()                { return smArg.mpMem1App; }
            static EGG::Heap*                       getMem2App()                { return smArg.mpMem2App; }
            static EGG::Heap*                       getSceneHeap()              { return smArg.mpSceneHeap; }
            static EGG::Heap*                       getSoundHeap()              { return smArg.mpSoundHeap; }
            static EGG::Heap*                       getChannelHeap()            { return smArg.mpChannelHeap; }
            static EGG::Heap*                       getSharedHeap()             { return smArg.mpSharedHeap; }
            static EGG::Heap*                       getTreasureHeap()           { return smArg.mpTreasureHeap; }
            static void*                            getChannelArena()           { return smArg.mpChannelArena; }
            static EGG::Heap*                       getFontHeap()               { return smArg.mpFontHeap; }
            static EGG::Heap*                       getMailWorkHeap()           { return smArg.mpMailHeap; }

            /*==============================*/
            /*       SYSTEM RESOURCES       */
            /*==============================*/

            static bool                             isCmnResLoaded()            { return smArg.mbResLoaded; }
            static bool                             isFontResLoaded()           { return smArg.mbFontResLoaded; }
            static bool                             isSndResLoaded()            { return smArg.mbSndResLoaded; }
            static bool                             isZi8ResLoaded()            { return smArg.mbZi8ResLoaded; }

            static bool isRsrcLoaded() { return smArg.mbResLoaded 
                                    && smArg.mbFontResLoaded 
                                    && smArg.mbSndResLoaded
#ifdef USE_ZI8
                                    && smArg.mbZi8ResLoaded
#endif // USE_ZI8
                                    ; }

            /** @return The Message ID as a Wide-string. */
            static const wchar_t*                   getMessage(u32 id)          { return smArg.mpMessageMgr->getMessage(id); }
            static message::Manager*                getMessageManager()         { return smArg.mpMessageMgr; }
            
            static void*                            getFont();
            /** @return The Wii Bitmap Font 1 Data. (wbf1.brfna) */
            static nw4r::ut::Font*                  getWBFont1Data()            { return smArg.mpWBFont1Data; }
            /** @return The Wii Bitmap Font 2 Data. (wbf2.brfna) */
            static nw4r::ut::Font*                  getWBFont2Data()            { return smArg.mpWBFont2Data; }

            /*==============================*/
            /*            SYSTEM            */
            /*==============================*/
        
            /**
             * Initializes the IPL.
             * @param argc The amount of arguments passed,
             * @param argv Array of arguments.
             */
            static void                             init(int argc, char** argv);
            static void                             reinit();

            /**
             * Run the IPL.
             * @note This function must be called after `ipl::System::init`
             */
            static void                             run();

            /** Cancels all running tasks */
            static void                             cancelThread();

            /** Gets the boot argument from BS2's argv */
            static void                             getBootArg(int argc, char** argv);

            static bool                             hasCreatedAfter()           { return smArg.mbCreatedAfter; }
            static bool                             hasCreatedLibMgr()          { return smArg.mbCreatedLibMgr; }

            static volatile bool                    createdAfterAndLibMgr()     { return smArg.mbCreatedAfter && smArg.mbCreatedLibMgr; }

            static void                             requestCreateAfter()        { smArg.mbRequestCreateAfter = true; }
            static void                             requestCreateLibManager()   { smArg.mbRequestCreateLibMgr = true; }

            static void                             stopCreateAfterReq()        { smArg.mbRequestCreateAfter = false; }
            static void                             stopCreateLibManagerReq()   { smArg.mbRequestCreateLibMgr = false; }

            static bool                             goingToDataManager()        { return smArg.mbGoingToDataManager; }

            /*==============================*/
            /*          SYSTEM BS2          */
            /*==============================*/

            /** @return The BS2 Manager object. */
            static bs2::Manager*                    getBS2Manager()             { return smArg.mpBS2Manager; }

            static u32                              getBS2BootType()            { return smArg.mBS2BootType; }
            static u32                              getBS2LaunchCode()          { return smArg.mBS2LaunchCode; }
            static ESTitleId                        getBS2LaunchTitle()         { return smArg.mBS2LaunchTitle; }

            static char*                            getNetSettingArg()          { return smArg.mpNetSettingArg; }
            static char*                            getDataManagerArg()         { return smArg.mpDataManageArg; }

            /*==============================*/
            /*        WII CONTROLLERS       */
            /*==============================*/

            /**
             * @return The Wii Remote being used.
             * @param chan The Wii Remote Player
             */
            static controller::Interface*           getController(int chan);
            /** @return The Master Wii Remote. */
            static controller::Interface*           getMasterController();
            /** @return The Young Wii Remote. */
            static controller::Interface*           getYoungController();
            /** @return The Controller Manager object. */
            static controller::Manager*             getControllerManager()      { return smArg.mpControllerManager; }


            /*==============================*/
            /*         SYSTEM NAND          */
            /*==============================*/

            /** @return The Content Manager object. */
            static nand::Manager*                   getNandManager()            { return smArg.mpNandManager; }
            /** @return The Save Data Manager object. */
            static savedata::Manager*               getSaveData()               { return smArg.mpSaveDataManager; }

            static bool                             isNandFull()                { return smArg.mbIsNandFull; }
            static void                             setNandFull(bool value)     { smArg.mbIsNandFull = value; }

            static void                             checkNandOverFlowFlagAsync();

            /*==============================*/
            /*         SYSTEM REGION        */
            /*==============================*/

            /** @return The language of the System. */
            static s32                              getLanguage();
            /** @return The region of the System. */
            static s32                              getRegion();

            static void                             setCountry(u8 country) NO_INLINE;
            
            /** @return The English message data. */
            static nand::File*                      getEngMsg()                 { return smArg.mResources.file[Arg::MESG_ENG]; }
            /** @return The French message data. */
            static nand::File*                      getFraMsg()                 { return smArg.mResources.file[Arg::MESG_FRA]; }
            /** @return The German message data. */
            static nand::File*                      getGerMsg()                 { return smArg.mResources.file[Arg::MESG_GER]; }
            /** @return The Italian message data. */
            static nand::File*                      getItaMsg()                 { return smArg.mResources.file[Arg::MESG_ITA]; }
            /** @return The Japanese message data. */
            static nand::File*                      getJpnMsg()                 { return smArg.mResources.file[Arg::MESG_JPN]; }
            /** @return The Dutch message data. */
            static nand::File*                      getDutMsg()                 { return smArg.mResources.file[Arg::MESG_NED]; }
            /** @return The Spanish message data. */
            static nand::File*                      getSpaMsg()                 { return smArg.mResources.file[Arg::MESG_SPA]; }
            /** @return The Chinese (simple) message data. */
            static nand::File*                      getChnMsg()                 { return smArg.mResources.file[Arg::MESG_CHN]; }
            /**
             * @return The Chinese (traditional) message data.
             * @remark This is unused, and will always return NULL.
             */
            static nand::File*                      getChnTradMsg()             { return smArg.mResources.file[Arg::MESG_CHN_TRAD]; }
            /** @return The Korean message data. */
            static nand::File*                      getKorMsg()                 { return smArg.mResources.file[Arg::MESG_KOR]; }

            /*==============================*/
            /*        SYSTEM CHANNELS       */
            /*==============================*/

            /** @return The Channel Manager object. */
            static channel::Manager*                getChannelManager()         { return smArg.mpChannelManager; }
            /** @return The ChannelScript Manager object. */
            static channel::ChannelScriptManager*   getCSManager()              { return smArg.mpChannelScriptManager; }

            /*==============================*/
            /*     WIICONNECT24 & MAIL      */
            /*==============================*/

            /**
             * Tell the system we stopped NWC24 register process.
             * @param errorCode Error code from NWC24RegisterUserId
             */
            static void                             setNWC24RegistEnd(s32 errorCode);
            /** Reset NWC24 register process. */
            static void                             resetNWC24Regist();
            /** Run NWC24 register process. */
            static BOOL                             processNWC24Regist();
            /** @return The WiiConnect24 Manager object. */
            static nwc24::Manager*                  getNwc24Manager()           { return smArg.mbSafeMode ? NULL : smArg.mpNwc24Manager; }
            /** @return The WiiConnect24 Manager object. */
            static nwc24::Manager*                  getNwc24ManagerForce()      { return smArg.mpNwc24Manager; }
            /** @return The Postman Handler object. */
            static postman::Manager*                getPostmanManager()         { return smArg.mpPostmanManager; }
            /** @return The CDB Manager object. */
            static cdb::Manager*                    getCdbManager()             { return isSafeMode() ? NULL : smArg.mpCdbManager; }
            /** @return The CDB Manager object. */
            static cdb::Manager*                    getCdbManagerForce()        { return smArg.mpCdbManager; }
            /** @return The JPEG Decoder object. */
            static utility::JpegDecoder*            getJpegDecoder()            { return smArg.mpJpegDecoder; }

            static nand::File*                      getInvalidJpegImage()       { return smArg.mResources.file[Arg::INVALID_JPEG]; }

            /** Get ethernet MAC Address from postman */
            static void                             getUsbEtherMacAddr();
            static BOOL                             isPostmanResumed();
            /** Start postman */
            static void                             startReceiveSchedule();
            /** Pause postman */
            static void                             stopReceiveSchedule();
            /** Reload download task from postman */
            static void                             reloadDownloadTask();
            /** Receive new message immediately task from postman */
            static void                             receiveImmediately();
            static BOOL                             isReceiveScheduleStopped();

            /*==============================*/
            /*           KEYBOARD           */
            /*==============================*/

            /** @return The Keyboard Manager object. */
            static keyboard::Manager*               getKeyboardManager()        { return smArg.mpKeyboardMgr; }
            /**
             * @return Array of dictionary data for ZI.
             * @note For builds that do not use ZI8, do not use this.
             */
            static u8**                             getZiDicData()              { return smArg.mZiDicData.all; }
            /**
             * @return Dictionary data for ZI.
             * @note For builds that do not use ZI8, do not use this.
             */
            static u8*                              getZiDicData(int i)         { return smArg.mZiDicData.sys[i]; }
            /**
             * @return System dictionary data for ZI.
             * @note For builds that do not use ZI8, do not use this.
             */
            static u8*                              getZiSystemDicData(int i)   { return smArg.mZiDicData.sys[i]; }
            /**
             * @return OEM (Nintendo) dictionary data for ZI.
             * @note For builds that do not use ZI8, do not use this.
             */
            static u8*                              getZiOemDicData(int i)      { return smArg.mZiDicData.oem[i]; }

            /*==============================*/
            /*              MII             */
            /*==============================*/

            /** @return The Mii Manager object. */
            static nigaoe::Manager*                 getMiiManager()             { return smArg.mpMiiManager; }
            /** @return The Mii Archive Data */
            static nand::SharedFile*                getRFLArc()                 { return smArg.mResources.sharedFile[Arg::FACE]; }

            /*==============================*/
            /*       SYSTEM RENDERING       */
            /*==============================*/

            /** @return The Renderer of the IPL. */
            static GXRenderModeObj*                 getRenderModeObj();

            /** @return Get projection rectangle depending on aspect ratio. */
            static void                             getProjectionRect(nw4r::ut::Rect* rect);
            /** @return Get standard (4:3) projection rectangle. */
            static void                             getProjectionRect4x3(nw4r::ut::Rect* rect);
            /** @return Get widescreen (16:9) projection rectangle. */
            static void                             getProjectionRect16x9(nw4r::ut::Rect* rect);

            /** @return The animation delta. */
            static f32                              getAnimDelta()              { return smArg.mpFramework->getDelta(); }
            /** @return The aspect ratio. */
            static BOOL                             getAspectRatio()            { return smArg.mpFramework->getAspectRatio(); }

            /*==============================*/
            /*         SYSTEM FADING        */
            /*==============================*/

            /** @return The Fader object */
            static EGG::ColorFader*                 getFader()                  { return smArg.mpFader; }

            /*==============================*/
            /*    SYSTEM USER INTERFACE     */
            /*==============================*/

            /** @return The Dialog object. */
            static DialogWindow*                    getDialog()                 { return smArg.mpDialog; }
            /** @return The Dialog Archive Data */
            static nand::LayoutFile*                getDlgArc()                 { return smArg.mResources.layoutFile[Arg::DIALOG_WINDOW]; }

            /** @return The Pointer object. */
            static Pointer*                         getPointer()                { return smArg.mpPointer; }
            
            /*==============================*/
            /*        SYSTEM SCENERY        */
            /*==============================*/

            /** @return The Scene Manager object. */
            static scene::Manager*                  getSceneManager()           { return smArg.mpSceneManager; }
            static scene::SceneObj*                 getScene(int sceneID)       { return getSceneManager()->getScene(sceneID); }
            static bool                             canDrawScene()              { return getSceneManager()->canDrawScene(); }

            /*==============================*/
            /*           HOME MENU          */
            /*==============================*/

            /** @return The HOME Menu object. */
            static HomeButtonMenu*                  getHomeButtonMenu()         { return smArg.mpHomeButton; }
            static nand::File*                      getHBMMessageFile()         { return smArg.mResources.file[Arg::HBM_MESSAGE]; }
            static nand::File*                      getHBMConfigFile()          { return smArg.mResources.file[Arg::HBM_CONFIG]; }
            static nand::File*                      getHBMSpeakSoundFile()      { return smArg.mResources.file[Arg::HBM_SPEAKER_SOUND]; }
            static nand::File*                      getHBMBanIconFile()         { return smArg.mResources.file[Arg::HBM_BAN_ICON]; }
            static nand::File*                      getHBMLayoutFile()          { return smArg.mResources.file[Arg::HBM_LAYOUT]; }
            static nand::File*                      getHBMLangFile(u8 lang)     { return smArg.mResources.file[Arg::HBM_LANG + lang]; }
            static nand::File*                      getHBMLangFile()            { return getHBMLangFile(SCGetLanguage()); }
            
            /*==============================*/
            /*        ERROR HANDLING        */
            /*==============================*/
            
            /** @return The Error Handler object. */
            static ErrorHandler*                    getErrorHandler()           { return smArg.mpErrorHandler; }

            /** @brief Prepare the system for error handler */
            static void                             err_run();

            /*==============================*/
            /*         RESET HANDLER        */
            /*==============================*/

            /** @return The Reset Handler object. */
            static ResetHandler*                    getResetHandler()           { return smArg.mpResetHandler; }
            /** @brief Prepare the system for reset handler */
            static void                             reset_run();
            /** @return The fader object for the reset handler. */
            static EGG::ColorFader*                 getResetFader()             { return smArg.mpResetFader; }

             /** @return A boolean indicating if the user can restart their Wii console. */
            static BOOL                             isResetAcceptable();

            /*==============================*/
            /*       WARNING HANDLING       */
            /*==============================*/

            /** @return The Warning Handler object. */
            static WarningHandler*                  getWarningHandler()         { return smArg.mpWarningHandler; }

            /** @brief Prepare the system for warning handler */
            static void                             warning_run();

            /*==============================*/
            /*           CDB BACKUP         */
            /*==============================*/

            /** @brief Prepare the system for CDB backup */
            static void                             backup_run();
            
            /*==============================*/
            /*           UTILITIES          */
            /*==============================*/

            /** @return The Random Number Generator object. */
            static math::Random*                    getRndm();
            /** @return The Current time. */
            static OSCalendarTime&                  getCurrentTime()            { return smArg.mCurrentTime; }
            /*==============================*/
            /*              MISC            */
            /*==============================*/

            static bool                             isSafeMode()                { return smArg.mbSafeMode; }
            static void                             setSafeMode(bool value)     { smArg.mbSafeMode = value; }

        private:
            static void     createRootHeap_();
            static void     createAppHeap_();

            static void*    constructFontSub_(void* fontData);
            static void     loadFont_();
            static void     constructFont_(void* work);

            static void     constructSND_(void* work);

            static void*    loadZiDIC_(void* arcData, const char* fileName);
            static void     constructZiDIC_(void* work);

            static void loadRFLRes_() {
                nand::Manager* nandManager = getNandManager();
                const char* rflArc = RFLGetArcFilePath();
                smArg.mResources.sharedFile[Arg::FACE] = nandManager->readSharedAsync(getMem2Sys(), rflArc, 4);
            }

            static void     resourceLoaded_(void* work);
            static void     libraryInitialized_(void* work);

            static void     createFolders_(void* work);

            static void     loadResource_(void* work);

            static void     createAfter_(void* work);
            static void     createLibManager_();

            static void     requestCreateInstance(void* work);

            static void     cbThreadSwitch(OSThread* thread1, OSThread* thread2);

            static void     setToday_();

            static void resetSysConf_() {
                BOOL enabled = OSDisableInterrupts();

                SCBtDeviceInfoArray devInfoArray;
                memset(&devInfoArray, 0, sizeof(devInfoArray));

                BOOL result = SCGetBtDeviceInfoArray(&devInfoArray);
                __SCClearConfBuf();
                if (result) {
                    SCSetBtDeviceInfoArray(&devInfoArray);
                }

                OSRestoreInterrupts(enabled);
            }

            static Arg      smArg;
    };
}

#endif // IPL_SYSTEM_H
