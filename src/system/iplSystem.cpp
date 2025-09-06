#include "iplSystem.h"
#include "iplSound.h"

#include "system/iplCdbWrapper.h"
#include "system/iplNandWall.h"

#include "system/iplCdbBackup.h"

#include "utility/iplCalendar.h"
#include "utility/iplESMisc.h"

#include "scene/setting/iplNCDSetting.h"

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/sc.h>
#include <private/sc.h>

#include <revolution/cntcache.h>

#include <revolution/vi.h>
#include <revolution/dvd.h>
#include <revolution/card.h>

#include <cstring>

#include <nw4r/ut/ArchiveFont.h>

#include "SoftKeyboard.h"

#include <revolution/vf.h>

#include <revolution/rso.h>

namespace ipl {
    System::Arg System::smArg;

    System::Arg::Arg() {
        memset(&smArg, 0, sizeof(Arg));
        OSCreateAlarm(&mUnusedAlarm);
    }

    void System::createRootHeap_() {
        EGG::Heap::initialize();

        smArg.mpMem1Arena = (void*)0x80080000;
        smArg.mMem1ArenaSize = 0xCC0000;

        smArg.mpChannelArena = (void*)0x80B40000;
        smArg.mpMem1Root = EGG::ExpHeap::create((void*)0x80D40000, 0x340000, MEM_HEAP_OPT_DEBUG_FILL);

        OSSetMEM1ArenaLo((void*)0x81080000);
        OSSetMEM1ArenaHi((void*)0x81080000);

        void* mem2LoAddr = OSGetMEM2ArenaLo();
        void* mem2HiAddr = OSGetMEM2ArenaHi();
        u32 mem2Lo = OSRoundUp32B(mem2LoAddr);
        u32 mem2Hi = OSRoundDown32B(mem2HiAddr);

        OSReport("arena lo %x hi %x\n", mem2Lo, mem2Hi);

        if (OSGetPhysicalMem2Size() == 0x4000000 || OSGetConsoleSimulatedMem2Size() == 0x4000000) {
            mem2Hi -= 0x000C0000;
            smArg.mpTreasureHeap = EGG::ExpHeap::create((void*)mem2Hi, 0xC0000, MEM_HEAP_OPT_DEBUG_FILL);

            OSReport("*****************************\n");
            OSReport("TREASURE HEAP: %p SIZE:%d\n", smArg.mpTreasureHeap, smArg.mpTreasureHeap->getAllocatableSize(4));
            OSReport("*****************************\n");

            smArg.mpMem2Root = EGG::ExpHeap::create((void*)mem2Lo, ((u32)mem2Hi - (u32)mem2Lo), MEM_HEAP_OPT_DEBUG_FILL);
        }
        else {
            smArg.mpTreasureHeap = EGG::ExpHeap::create((void*)0x93440000, 0xC0000, MEM_HEAP_OPT_DEBUG_FILL);

            OSReport("*****************************\n");
            OSReport("TREASURE HEAP: %p SIZE:%d\n", smArg.mpTreasureHeap, smArg.mpTreasureHeap->getAllocatableSize(4));
            OSReport("*****************************\n");

            smArg.mpMem2Root = EGG::ExpHeap::create((void*)mem2Lo, (0x93440000 - (u32)mem2Lo), MEM_HEAP_OPT_DEBUG_FILL);
        }

        OSSetMEM2ArenaLo((void*)mem2Hi);
        OSSetMEM2ArenaHi((void*)mem2Hi);
    }

    EGG::Heap* System::createMem1AppHeap() {
        if (smArg.mpMem1App == NULL) {
            DCInvalidateRange(smArg.mpMem1Arena, smArg.mMem1ArenaSize);
            smArg.mpMem1App = EGG::ExpHeap::create(smArg.mpMem1Arena, smArg.mMem1ArenaSize, MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        }

        return smArg.mpMem1App;
    }

    void System::destroyMem1AppHeap() {
        if (smArg.mpMem1App != NULL) {
            smArg.mpMem1App->destroy();
            DCInvalidateRange(smArg.mpMem1Arena, smArg.mMem1ArenaSize);
        }
        smArg.mpMem1App = NULL;
    }

    void System::createAppHeap_() {
        smArg.mpMem2Sys = EGG::ExpHeap::create(0x1200000, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        smArg.mpSceneHeap = EGG::ExpHeap::create(0x696000, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        smArg.mpSoundHeap = EGG::ExpHeap::create(0x325800, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL);
        smArg.mpChannelHeap = EGG::ExpHeap::create(0x1BA400, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        smArg.mpMailHeap = EGG::ExpHeap::create(0x200000, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        smArg.unk_0x1C = NULL;
        smArg.mpSharedHeap = EGG::ExpHeap::create(0x100000, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
        smArg.mpMem1Sys = EGG::ExpHeap::create(0xFFFFFFFF, getMem1Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);

        OSReport("*****************************\n");
        OSReport("MEM1SYS HEAP: %p SIZE:%d\n", smArg.mpMem1Sys, smArg.mpMem1Sys->getAllocatableSize(4));
        OSReport("*****************************\n");

        smArg.mpMem2App = EGG::ExpHeap::create(0xFFFFFFFF, getMem2Root(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
    }

    void* System::constructFontSub_(void* fontData) {
        u32 workSize = nw4r::ut::ArchiveFont::GetRequireBufferSize(fontData);
        u8* work = new(getMem2Sys(), DEFAULT_ALIGN) u8[OSRoundUp32B(workSize)];

        nw4r::ut::ArchiveFont* font = new(getMem1Sys(), CLASS_HEAP) nw4r::ut::ArchiveFont();
    
        font->Construct(work, workSize, fontData);
        return font;
    }

    void System::loadFont_() {
        smArg.mpFontArena = getMem2App()->alloc(0x400000, -DEFAULT_ALIGN);
        smArg.mpFontHeap = EGG::ExpHeap::create(smArg.mpFontArena, 0x400000, 0);

    #ifndef VERSION_43K
        smArg.mResources.file[Arg::FONT] = getNandManager()->readAsync(getMem2Sys(), "/font/font.ash");
    #else
        smArg.mResources.file[Arg::FONT] = getNandManager()->readAsync(getMem2Sys(), "/font/font_kr.ash");
    #endif

        smArg.mpWBF1File = getNandManager()->readSharedAsync(getFontHeap(), "wbf1.brfna", 5);
        smArg.mpWBF2File = getNandManager()->readSharedAsync(getFontHeap(), "wbf2.brfna", 5);
    }

    void System::constructFont_(void* work) {
        OSGetTick();

        smArg.mpWBFont1Data = (nw4r::ut::Font*)constructFontSub_(smArg.mpWBF1File->getBuffer());
        smArg.mpWBFont2Data = (nw4r::ut::Font*)constructFontSub_(smArg.mpWBF2File->getBuffer());

        smArg.mpFontHeap->destroy();
        smArg.mpMem2App->free(smArg.mpFontArena);

        smArg.mbFontResLoaded = true;
    }

    void System::constructSND_(void* work) {
        snd::getSystem()->initOnMemory(smArg.mResources.file[Arg::SOUND]->getBuffer(),
                                        getSoundHeap(), getSoundHeap()->getAllocatableSize(32));
        smArg.mbSndResLoaded = true;
    }

    void* System::loadZiDIC_(void* arcData, const char* fileName) {
        void* buffer = NULL;
        ARCHandle arc;
        ARCFileInfo file;

        ARCInitHandle(arcData, &arc);
        if (ARCOpen(&arc, fileName, &file)) {
            buffer = ARCGetStartAddrInMem(&file);
            ARCClose(&file);
        }

        return buffer;
    }

    void System::constructZiDIC_(void* work) {
    #if defined(VERSION_43U)
        smArg.mZiDicData.sys[EZTX_LANG_ENGLISH_USA]         = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemENAM.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_FRENCH_CANADA]       = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemFRCA.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_SPANISH_AMERICAN]    = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemESSA.zsd");

        smArg.mZiDicData.oem[EZTX_LANG_ENGLISH_USA]         = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoENAM.znd");
        smArg.mZiDicData.oem[EZTX_LANG_FRENCH_CANADA]       = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoFRCA.znd");
        smArg.mZiDicData.oem[EZTX_LANG_SPANISH_AMERICAN]    = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoESSA.znd");
    #elif defined(VERSION_43E)
        smArg.mZiDicData.sys[EZTX_LANG_ENGLISH_UK]          = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemENUK.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_GERMAN]              = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemDE.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_FRENCH_EUROPE]       = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemFREU.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_SPANISH_EUROPE]      = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemESEU.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_ITALIAN]             = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemIT.zsd");
        smArg.mZiDicData.sys[EZTX_LANG_DUTCH]               = (u8*)loadZiDIC_(smArg.mResources.file[Arg::ZI_DICT]->getBuffer(), "eZTSystemNL.zsd");

        smArg.mZiDicData.oem[EZTX_LANG_ENGLISH_UK]          = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoENUK.znd");
        smArg.mZiDicData.oem[EZTX_LANG_GERMAN]              = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoDE.znd");
        smArg.mZiDicData.oem[EZTX_LANG_FRENCH_EUROPE]       = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoFREU.znd");
        smArg.mZiDicData.oem[EZTX_LANG_SPANISH_EUROPE]      = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoESEU.znd");
        smArg.mZiDicData.oem[EZTX_LANG_ITALIAN]             = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoIT.znd");
        smArg.mZiDicData.oem[EZTX_LANG_DUTCH]               = (u8*)loadZiDIC_(smArg.mResources.file[Arg::NINTENDO_DICT]->getBuffer(), "eZTNintendoNL.znd");
    #endif

        smArg.mbZi8ResLoaded = true;
    }

    void System::resourceLoaded_(void* work) {
        BOOL enabled = OSDisableInterrupts();
        smArg.mbResLoaded = true;
        OSRestoreInterrupts(enabled);
    }

    void System::libraryInitialized_(void* work) {
        BOOL enabled = OSDisableInterrupts();
        smArg.mbLibraryInit = true;
        OSRestoreInterrupts(enabled);
    }

    void System::createFolders_(void* work) {
        // Init VF
        u8* workData = new(getMem1Sys(), DEFAULT_ALIGN) u8[VF_WORK_SIZE];
        VFInitEx(workData, VF_WORK_SIZE);

        // Init CDB
        workData = new(getMem1Sys(), 64) u8[CDB_SYSTEM_WORK_SIZE];
        if (!SCGetConfigDoneFlag() && !SCGetConfigDoneFlag2()) {
            // @BUG Should use the full path
            nand::wrapper::Delete("cdb.vff");
        }
        cdb::wrapper::init(workData);

        // @BUG: Reports free MEM1 size and how many NWC24 needs, yet it uses MEM2 instead.
        OSReport("MEM1SYS Free:%d NWC24 Need %d\n", getMem1Sys()->getAllocatableSize(4), NWC24_LIB_WORK_SIZE);
        workData = new(getMem2Sys(), -DEFAULT_ALIGN) u8[NWC24_LIB_WORK_SIZE];

        // Init NWC24
        if (!SCGetConfigDoneFlag() && !SCGetConfigDoneFlag2()) {
            NWC24InitFiles(workData, TRUE);
        }
        else {
            if (!SCGetConfigDoneFlag2()) {
                NWC24InitFiles(workData, FALSE);
            }
            else {
                NWC24Err err = NWC24OpenLib(workData);
                NWC24CloseLib();

                if (err == NWC24_ERR_BROKEN
                || (err == NWC24_ERR_FILE_OTHER || err == NWC24_ERR_FILE_NOEXISTS || err == NWC24_ERR_FILE_WRITE
                || err == NWC24_ERR_FILE_READ || err == NWC24_ERR_FILE_CLOSE || err == NWC24_ERR_FILE_OPEN)) {
                    NWC24InitFiles(workData, FALSE);
                    smArg.mbFoldersCreated = true;
                }
            }
        }

        delete[] workData;
        smArg.mbNeedToCreateFolders = false;
    }

    void System::requestCreateInstance(void* work) {
        getTask1()->request((EGG::TaskThread::TFunction)work, NULL, NULL);
    }

    void System::loadResource_(void* work) {
        smArg.mpMem1Sys->unkUnline_becomeCurrentHeap();

        // Load font
        loadFont_();
        getNandManager()->getTask()->request(requestCreateInstance, (void*)constructFont_, NULL);

        // Load sound
        smArg.mResources.file[Arg::SOUND] = getNandManager()->readAsync(getSoundHeap(), "/sound/iplSound.brsar");
        getNandManager()->getTask()->request(requestCreateInstance, (void*)constructSND_, NULL);

        // Load software keyboard archive
        smArg.mResources.file[Arg::SOFT_KEYBOARD] = getNandManager()->readAsync(getMem2Sys(), "/layout/common/sofkeybd.ash");

        // Load face data
        loadRFLRes_();

        // Load home menu data
        smArg.mResources.file[Arg::HBM_LAYOUT] = getNandManager()->readAsync(getMem2Sys(), "/layout/common/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_JPN] = getNandManager()->readAsync(getMem2Sys(), "/layout/jpn/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_ENG] = getNandManager()->readAsync(getMem2Sys(), "/layout/eng/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_GER] = getNandManager()->readAsync(getMem2Sys(), "/layout/ger/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_FRA] = getNandManager()->readAsync(getMem2Sys(), "/layout/fra/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_SPA] = getNandManager()->readAsync(getMem2Sys(), "/layout/spa/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_ITA] = getNandManager()->readAsync(getMem2Sys(), "/layout/ita/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_NED] = getNandManager()->readAsync(getMem2Sys(), "/layout/ned/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_KOR] = getNandManager()->readAsync(getMem2Sys(), "/layout/kor/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_LANG_CHN] = getNandManager()->readAsync(getMem2Sys(), "/layout/chn/homeBtn1.ash");
        smArg.mResources.file[Arg::HBM_MESSAGE] = getNandManager()->readAsync(getMem2Sys(), "/homebutton/home.csv");
        smArg.mResources.file[Arg::HBM_CONFIG] = getNandManager()->readAsync(getMem2Sys(), "/homebutton/config.txt");
        smArg.mResources.file[Arg::HBM_SPEAKER_SOUND] = getNandManager()->readAsync(getMem2Sys(), "/homebutton/SpeakerSe.arc");
        smArg.mResources.file[Arg::HBM_BAN_ICON] = getNandManager()->readAsync(getMem2Sys(), "/homebutton/homeBtnIcon.tpl");

        // Load dialog data
        smArg.mResources.layoutFile[Arg::DIALOG_WINDOW] = getNandManager()->readLayoutAsync(getMem2Sys(), "dlgWdw.ash");

        // Load "invalid jpeg" file
        smArg.mResources.file[Arg::INVALID_JPEG] = getNandManager()->readAsync(getMem2Sys(), "/my_question.jpg");

        // Load ZI dictionary
    #if defined(VERSION_43U)
        smArg.mResources.sharedFile[Arg::ZI_DICT] = getNandManager()->readSharedAsync(getMem2Sys(), "eZTSystemNA.arc", 6);
        smArg.mResources.sharedFile[Arg::NINTENDO_DICT] = getNandManager()->readSharedAsync(getMem2Sys(), "eZTNintendoNA.arc", 7);
        getNandManager()->getTask()->request(requestCreateInstance, (void*)constructZiDIC_, NULL);
    #elif defined(VERSION_43E)
        smArg.mResources.sharedFile[Arg::ZI_DICT] = getNandManager()->readSharedAsync(getMem2Sys(), "eZTSystemEU.arc", 6);
        smArg.mResources.sharedFile[Arg::NINTENDO_DICT] = getNandManager()->readSharedAsync(getMem2Sys(), "eZTNintendoEU.arc", 7);
        getNandManager()->getTask()->request(requestCreateInstance, (void*)constructZiDIC_, NULL);
    #endif

        // We are done!
        getNandManager()->getTask()->request(resourceLoaded_, NULL, NULL);

        smArg.mbNeedToCreateFolders = true;

        // Now create the folders
        smArg.mpTask2->request(createFolders_, NULL, NULL);
        smArg.mpTask2->request(libraryInitialized_, NULL, NULL);
    }

    void System::createAfter_(void* work) {
        EGG::Heap* old = EGG::Heap::unkInline2();
        smArg.mpMem1Sys->unkUnline_becomeCurrentHeap();

        // Create important instances
        smArg.mpDialog = new(getMem1Sys(), CLASS_HEAP) DialogWindow(getMem2Sys());
        smArg.mpWarningHandler = new(getMem1Sys(), CLASS_HEAP) WarningHandler(getMem2Sys());
        smArg.mpMiiManager = new(getMem1Sys(), CLASS_HEAP) nigaoe::Manager(getMem2Sys());
        smArg.mpKeyboardMgr = new(getMem1Sys(), CLASS_HEAP) keyboard::Manager();
        smArg.mpKeyboardMgr->create(smArg.mResources.file[Arg::SOFT_KEYBOARD], getMem2Sys());
        smArg.mpKeyboardMgr->init();
        smArg.mpHomeButton = new(getMem1Sys(), CLASS_HEAP) HomeButtonMenu(getMem2Sys());

        if (old != NULL) {
            old->unkUnline_becomeCurrentHeap();
        }

        // Done!
        smArg.mbCreatedAfter = true;
    }

    void System::createLibManager_() {
        EGG::Heap* old = EGG::Heap::unkInline2();

        smArg.mpMem1Sys->unkUnline_becomeCurrentHeap();

        // Create NWC24 and mail instances
        smArg.mpCdbManager = new(getMem1Sys(), CLASS_HEAP) cdb::Manager(getMem2Sys());
        smArg.mpNwc24Manager = new(getMem1Sys(), CLASS_HEAP) nwc24::Manager(getMem2Sys());

        getMiiManager()->commitHiddenDB();

        old->unkUnline_becomeCurrentHeap();
    }

    void System::stopReceiveSchedule() {
        if (isPostmanResumed()) {
            getPostmanManager()->Send_Pause();
        }
    }

    BOOL System::isPostmanResumed() {
        BOOL result = FALSE;
        if (!isSafeMode()) {
            if (!isNandFull()) {
                result = TRUE;
            }
        }
        return result;
    }

    void System::startReceiveSchedule() {
        if (isPostmanResumed()) {
            getPostmanManager()->Send_Start();
        }
    }

    void System::getUsbEtherMacAddr() {
        if (isPostmanResumed()) {
            getPostmanManager()->Send_GetUsbEtherMacAddr();
        }
    }

    void System::reloadDownloadTask() {
        if (isPostmanResumed()) {
            getPostmanManager()->Send_DownloadTaskReload();
        }
    }

    void System::receiveImmediately() {
        if (isPostmanResumed()) {
            getPostmanManager()->Send_ReceiveImmediately();
        }
    }

    BOOL System::isReceiveScheduleStopped() {
        BOOL result = TRUE;
        if (!System::getPostmanManager()->NotRunning() && isPostmanResumed()) {
            result = FALSE;
        }
        return result;
    }

    void System::setCurrentHeap(EGG::Heap* heap) {
        heap->unkUnline_becomeCurrentHeap();
    }

    void System::cbThreadSwitch(OSThread* thread1, OSThread* thread2) {
        if (thread2 == NULL) {
            return;
        }
        if (thread2->specific[0] == NULL) {
            return;
        }
        static_cast<EGG::Heap*>(thread2->specific[0])->_becomeCurrentHeapWithoutLock();
    }

    void System::setCountry(u8 country) {
        SCSimpleAddress address;
        memset(&address, 0, sizeof(address));

        address.id = country << SC_SIMPLE_ADDRESS_ID_COUNTRY;

        SCSetSimpleAddressData(&address);
    }

    void System::checkNandOverFlowFlagAsync() {
        getTask1()->request(nandwall::throwNandCheckCommand, NULL, NULL);
    }

    void System::setNWC24RegistEnd(s32 errorCode) {
        BOOL enabled = OSDisableInterrupts();
        smArg.mRegistState = Arg::REGIST_STATE_END;
        smArg.mRegistErrCode = errorCode;
        OSRestoreInterrupts(enabled);
    }

    void System::resetNWC24Regist() {
        smArg.mRegistState = Arg::REGIST_STATE_START;
        smArg.mRegistErrCode = 0;
    }
    
    BOOL System::processNWC24Regist() {
        switch (smArg.mRegistState) {
            case Arg::REGIST_STATE_START: {
                OSReport("Start: Process NWC24 WiiID\n");

                smArg.mRegistState = Arg::REGIST_STATE_DOING;
                smArg.mRegistErrCode = 0;

                getPostmanManager()->Start_RegistTask(getTask2());

                return FALSE;
            }
            case Arg::REGIST_STATE_END: {
                OSReport("Done: Process NWC24 WiiID\n");
                return TRUE;
            }
            case Arg::REGIST_STATE_DOING:
            default: {
                return FALSE;
            }
        }
    }

    void System::init(int argc, char** argv) {
        char rsoListPath[OSRoundUp32B(64)];
        OSCalendarTime newDateTime;

        __OSInIPL = TRUE; // Yes we are in the IPL! (... this is already set to TRUE in BS2Init)

        // Initialize OS (... this is already done in `main`)
        OSInit();
        DVDSetAutoFatalMessaging(FALSE);

        // Default values for initial setup (controllers)
        if (!SCGetConfigDoneFlag() && !SCGetConfigDoneFlag2()) {
            nand::wrapper::PrivateDelete("/shared2/sys/SYSCONF");

            resetSysConf_();
        }

        SCSetBtDpdSensibility(SCGetBtDpdSensibility());

        // Default values for initial setup
        if (!SCGetConfigDoneFlag() && !SCGetConfigDoneFlag2()) {
            SCOwnerNickname blankName;
            memset(&blankName, 0, sizeof(blankName));
            SCSetOwnerNickName(&blankName);

            SCSetAspectRatio(SC_ASPECT_RATIO_4x3);

            SCSetWpadSensorBarPosition(0);
        #ifdef VERSION_43U
            SCSetBtDpdSensibility(3);
        #endif // VERSION_43U

            SCSetScreenSaverMode(FALSE);
            VIEnableDimming(SCGetScreenSaverMode());

            switch (SCGetProductArea()) {
                case SC_PRODUCT_AREA_JPN: {
                    SCSetLanguage(SC_LANG_JAPANESE);
                    setCountry(SC_COUNTRY_JP);
                    break;
                }
                case SC_PRODUCT_AREA_USA: {
                    SCSetLanguage(SC_LANG_ENGLISH);
                    setCountry(SC_COUNTRY_AI);
                    break;
                }
                case SC_PRODUCT_AREA_EUR:
                case SC_PRODUCT_AREA_AUS: {
                    SCSetLanguage(SC_LANG_ENGLISH);
                    setCountry(SC_COUNTRY_AL);
                    break;
                }
                case SC_PRODUCT_AREA_TWN: {
                    SCSetLanguage(SC_LANG_JAPANESE);
                    setCountry(SC_COUNTRY_TW);
                    break;
                }
                case SC_PRODUCT_AREA_KOR: {
                    SCSetLanguage(SC_LANG_KOREAN);
                    setCountry(SC_COUNTRY_KR);
                    break;
                }
                case SC_PRODUCT_AREA_CHN: {
                    SCSetLanguage(SC_LANG_SIMP_CHINESE);
                    setCountry(SC_COUNTRY_CN);
                    break;
                }
                default: {
                    SCSetLanguage(SC_LANG_ENGLISH);
                    setCountry(SC_COUNTRY_AI);
                    break;
                }
            }

            // Reset date
            memset(&newDateTime, 0, sizeof(OSCalendarTime));
            newDateTime.year = 2010;
            newDateTime.mon = 0;
            newDateTime.mday = 1;
            utility::Calendar::setCalendarTime(&newDateTime);

            SCSetWpadSpeakerVolume(88);

            SCParentalControlsInfo pcInfo;
            memset(&pcInfo, 0, sizeof(pcInfo));
            SCSetParentalControl(&pcInfo);

            SCSetNetContentRestrictions(SC_NET_RESTRICTIONS_NONE);
            SCSetWwwRestriction(FALSE);
        }
        else if (!SCGetConfigDoneFlag2()) {
            switch (SCGetProductArea()) {
                case SC_PRODUCT_AREA_JPN: {
                    setCountry(SC_COUNTRY_JP);
                    break;
                }
                case SC_PRODUCT_AREA_USA: {
                    setCountry(SC_COUNTRY_AI);
                    break;
                }
                case SC_PRODUCT_AREA_TWN: {
                    setCountry(SC_COUNTRY_TW);
                }
                case SC_PRODUCT_AREA_KOR: {
                    setCountry(SC_COUNTRY_KR);
                }
                case SC_PRODUCT_AREA_CHN: {
                    setCountry(SC_COUNTRY_CN);
                }
            }

            SCSetScreenSaverMode(FALSE);
            VIEnableDimming(SCGetScreenSaverMode());
        }

        // Write the new changes
        SCFlush();

        // uhh this
        OSGetTick();

        // Check NAND Status
        nandwall::throwNandCheckCommand(NULL);

        // Create memory heap
        createRootHeap_();
        createAppHeap_();

        // Allocate work buffer for Banner Sound Player
        pBSWaveBuffer = getMem1Sys()->alloc(0x3000, DEFAULT_ALIGN);

        OSSetSwitchThreadCallback(cbThreadSwitch);

        smArg.mpMem1Sys->unkUnline_becomeCurrentHeap();

        // Create FIFO
        EGG::GraphicsFifo::create(0x40000, NULL);
        GXSetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);
        smArg.mpFramework = new(getMem1Sys(), CLASS_HEAP) Framework(getMem1Sys());

        // Fast cast
        OSInitFastCast();

        // Initialize file systems
        CARDInit();
        DVDInit();

        // Get BS2 arguments for IPL
        getBootArg(argc, argv);

        // Faders
        GXRenderModeObj* rMode = getRenderModeObj();
        smArg.mpFader = new(getMem1Sys(), CLASS_HEAP) EGG::ColorFader(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight);
        smArg.mpResetFader = new(getMem1Sys(), CLASS_HEAP) EGG::ColorFader(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight);
    
        // Main thread
        EGG::Thread::initialize();
        smArg.mpMainThread = new(getMem1Sys(), CLASS_HEAP) EGG::Thread(OSGetCurrentThread(), 4);

        smArg.mpControllerManager = new(getMem1Sys(), CLASS_HEAP) controller::Manager(getMem2Sys());
        smArg.mpResetHandler = new(getMem1Sys(), CLASS_HEAP) ResetHandler(getMem2Sys());
        smArg.mpErrorHandler = new(getMem1Sys(), CLASS_HEAP) ErrorHandler(getMem2Sys());

        // ES Library
        BOOL initResult = ES_InitLib() != ES_ERR_OK;
        if (initResult) {
            IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", initResult, 1201);
        }

        // Delete save data exploits
        utility::ESMisc::DeleteBadSaveData(getTreasureHeap());

        // Task threads
        smArg.mpTask1 = EGG::TaskThread::create(0x40, 19, 0x10000, getMem1Sys());
        smArg.mpTask2 = EGG::TaskThread::create(0x40, 21, 0x10000, getMem1Sys());
        smArg.mpTask3 = EGG::TaskThread::create(0x31, 20, 0x10000, getMem1Sys());

        // Postman
        smArg.mpPostmanManager = new(getMem1Sys(), CLASS_HEAP) postman::Manager(getMem1Sys());
        smArg.mpPostmanManager->InitManager();

        // Set current time
        setToday_();

        // BS2 Management
        smArg.mpBS2Manager = new(getMem1Sys(), CLASS_HEAP) bs2::Manager(getMem2Sys());
        if (isNandFull()) {
            getBS2Manager()->abort();
        }

        // Check for tmds.sys
        u8 tmdsType;
        if (nand::wrapper::PrivateGetType("/title/00000001/00000002/data/tmds.sys", (u8*)&tmdsType) == NAND_RESULT_NOEXISTS) {
            utility::ESMisc::DeleteEmptyTitles(getMem2Sys());
        }

        CNTCACHEInit(0, 0);

        // Random manager
        smArg.mpRandom = new(getMem1Sys(), CLASS_HEAP) math::Random(OSGetTick());

        // NAND manager
        smArg.mpNandManager = new(getMem1Sys(), CLASS_HEAP) nand::Manager(getMem1Sys());

        // Symbol list for RSO modules
        snprintf(rsoListPath, sizeof(rsoListPath), "/%s/%s/main.sel", SYSMENU_BUILD_TYPE, SYSMENU_BUILD_VERSION);
        smArg.mResources.file[Arg::RSO_SYM_LIST] = getNandManager()->read(getMem2Sys(), rsoListPath);
        RSOListInit(smArg.mResources.file[Arg::RSO_SYM_LIST]->getBuffer());

        // Load messages
    #ifndef VERSION_43E
        smArg.mResources.file[Arg::MESG_ENG] = getNandManager()->read(getMem2Sys(), "/message/eng/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_FRA] = getNandManager()->read(getMem2Sys(), "/message/fra/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_GER] = getNandManager()->read(getMem2Sys(), "/message/ger/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_ITA] = getNandManager()->read(getMem2Sys(), "/message/ita/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_JPN] = getNandManager()->read(getMem2Sys(), "/message/jpn/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_NED] = getNandManager()->read(getMem2Sys(), "/message/ned/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_SPA] = getNandManager()->read(getMem2Sys(), "/message/spa/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_KOR] = getNandManager()->read(getMem2Sys(), "/message/kor/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_CHN] = getNandManager()->read(getMem2Sys(), "/message/chn/ipl_common.bmg");
    #else
        // Load European messages
        smArg.mResources.file[Arg::MESG_ENG] = getNandManager()->read(getMem2Sys(), "/message/eng/ipl_common_noe.bmg");
        smArg.mResources.file[Arg::MESG_FRA] = getNandManager()->read(getMem2Sys(), "/message/fra/ipl_common_noe.bmg");
        smArg.mResources.file[Arg::MESG_GER] = getNandManager()->read(getMem2Sys(), "/message/ger/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_ITA] = getNandManager()->read(getMem2Sys(), "/message/ita/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_JPN] = getNandManager()->read(getMem2Sys(), "/message/jpn/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_NED] = getNandManager()->read(getMem2Sys(), "/message/ned/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_SPA] = getNandManager()->read(getMem2Sys(), "/message/spa/ipl_common_noe.bmg");
        smArg.mResources.file[Arg::MESG_KOR] = getNandManager()->read(getMem2Sys(), "/message/kor/ipl_common.bmg");
        smArg.mResources.file[Arg::MESG_CHN] = getNandManager()->read(getMem2Sys(), "/message/chn/ipl_common.bmg");
    #endif // VERSION_43E

        // Setup more stuff
        smArg.mpException = new(getMem1Sys(), CLASS_HEAP) Exception(getMem2Sys(), *System::getRenderModeObj());
        smArg.mpPointer = new(getMem1Sys(), CLASS_HEAP) Pointer(getMem2Sys());
        smArg.mpTVRCManager = new(getMem2Sys(), CLASS_HEAP) TVRCManager(getMem2Sys());
        ncd::NCDSetting::makeMacAddr();
        smArg.mpJpegDecoder = new(getMem1Sys(), CLASS_HEAP) utility::JpegDecoder(getMem2Sys());

        // Load system resources
        loadResource_(NULL);

        smArg.mpMessageMgr = new(getMem1Sys(), CLASS_HEAP) message::Manager(getMem2Sys());
        smArg.mpSceneManager = new(getMem1Sys(), CLASS_HEAP) scene::Manager(smArg.mpSceneHeap);

        // IPL save data
        smArg.mpSaveDataManager = new(getMem1Sys(), DEFAULT_ALIGN) savedata::Manager(getMem2Sys());
        smArg.mpSaveDataManager->initManager();

        // TVRC Database
        TVRCManager::getHandle()->loadDatabase();

        // Channel instances
        smArg.mpChannelScriptManager = new(getMem1Sys(), CLASS_HEAP) channel::ChannelScriptManager();
        smArg.mpChannelManager = new(getMem1Sys(), CLASS_HEAP) channel::Manager(smArg.mpChannelHeap);
        smArg.mpChannelManager->initManager();

        // Setup scenary
        smArg.mpSceneManager->init();

        // Quick little render test
        for (int i = 0; i < 3; i++) {
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();
            smArg.mpFramework->endRender();
            smArg.mpFramework->endFrame();
        }

    #if defined(VERSION_43K) || !defined(TURN_OFF_CK2_VERIFY)
        // And finally... fear.
        BOOL hasKoreanKey = ES_VerifyCK2() == ES_ERR_OK;
        if (hasKoreanKey) {
            IPLErrorLogAndDisplay(MESG_ERR_KEY2, "ES", hasKoreanKey, 1446);
        }
    #endif
    }

    BOOL System::isResetAcceptable() {
        return smArg.mbNeedToCreateFolders == false;
    }

    void System::run() {
        NWC24SuspendScheduler();
        VISetBlack(FALSE);

        while (TRUE) {
            if (System::isRsrcLoaded() && !smArg.mbInitCreateAfter && smArg.mbRequestCreateAfter) {
                createAfter_(NULL);
                smArg.mbInitCreateAfter = true;
            }

            if (hasCreatedAfter() && smArg.mbLibraryInit && smArg.mbRequestCreateLibMgr && !hasCreatedLibMgr() && !isNandFull()) {
                createLibManager_();
                getPostmanManager()->Resume();
                smArg.mbCreatedLibMgr = true;
            }

            // Start rendering
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();

            // Setup data
            if (hasCreatedAfter()) {
                getMiiManager()->makeIcon();
            }
            if (hasCreatedAfter()) {
                getJpegDecoder()->makeRawData();
            }

            // Setup view
            GXRenderModeObj* rMode = System::getRenderModeObj();
            GXSetViewport(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight, 0.0f, 1.0f);
            GXSetScissor(0, 0, rMode->fbWidth, rMode->efbHeight);

            // Drawing
            getSceneManager()->draw();
            if (hasCreatedAfter()) {
                getKeyboardManager()->draw();
                getDialog()->draw();
                getHomeButtonMenu()->draw();

                if (getHomeButtonMenu() != NULL && !getHomeButtonMenu()->isEnable()) {
                    getPointer()->draw();
                }
            }
            getFader()->draw();
            getResetFader()->draw();

            // End of rendering
            smArg.mpFramework->endRender();

            // Update logic
            TVRCManager::getHandle()->update();
            setToday_();
            getControllerManager()->read();
            if (getBS2Manager()->update() == bs2::IPL_STATE_FATAL) {
                IPLErrorDisplay(MESG_ERR_DVD);
            }
            getChannelManager()->update();

            if (!hasCreatedAfter()) {
                getSceneManager()->calc();
                getFader()->calc();
                getResetFader()->calc();
            }
            else {
                // Update log depending on HOME Menu state
                if (getHomeButtonMenu() != NULL && !getHomeButtonMenu()->isEnable()) {
                    getSceneManager()->calc();
                    getKeyboardManager()->calc();
                    getDialog()->calc();
                    getHomeButtonMenu()->calc();
                    getPointer()->calc();
                    getFader()->calc();
                    getResetFader()->calc();
                }
                else {
                    getHomeButtonMenu()->calc();
                    getPointer()->calc();
                    getFader()->calc();
                    getResetFader()->calc();
                }
            }
            snd::getSystem()->calc();
            smArg.mpFramework->endFrame();

            // Error handling
            if (hasCreatedAfter()) {
                getErrorHandler()->check();
            }

            // Reset handling
            getResetHandler()->update();
            getResetHandler()->check();
        }
    }

    void System::err_run() {
        if (getResetHandler()->isResetting()) {
            return;
        }

        int i = 0;

        VISetBlack(FALSE);

        // Stop sound
        if (hasCreatedAfter()) {
            snd::getSystem()->stopAllSound(5);
        }

        // Cancel all threads
        cancelThread();

        // Tell reset handler we are using fatal reset
        getResetHandler()->setFatalResetCallback();

        while (TRUE) {
            // Start rendering
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();

            // Setup view
            GXRenderModeObj* rMode = System::getRenderModeObj();
            GXSetViewport(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight, 0.0f, 1.0f);
            GXSetScissor(0, 0, rMode->fbWidth, rMode->efbHeight);

            i++;
            if (i > WPAD_MAX_CONTROLLERS) {
                if (WPADGetStatus() == 3) {
                    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        WPADControlMotor(i, 0);
                    }
                }
                i = 0;
            }

            // Drawing
            if (!getErrorHandler()->isReady()) {
                if (getSceneManager() != NULL) {
                    getSceneManager()->draw();
                }
                if (hasCreatedAfter()) {
                    getKeyboardManager()->draw();
                }
                if (hasCreatedAfter()) {
                    getHomeButtonMenu()->draw();
                }
                if (hasCreatedAfter()) {
                    getPointer()->draw();
                }
            }
            getErrorHandler()->draw();
            getFader()->draw();
            getResetFader()->draw();

            // End of rendering
            smArg.mpFramework->endRender();

            // Update logic
            getErrorHandler()->calc();
            getFader()->calc();
            getResetFader()->calc();
            if (hasCreatedAfter()) {
                snd::getSystem()->calc();
            }
            smArg.mpFramework->endFrame();

            // Reset handling
            getResetHandler()->fatalUpdate();
        }
    }

    void System::backup_run() {
        if (getResetHandler()->isResetting()) {
            return;
        }

        VISetBlack(FALSE);

        CdbBackup cdbBackup;

        while (cdbBackup.is_working()) {
            // Start rendering
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();

            // Setup view
            GXRenderModeObj* rMode = System::getRenderModeObj();
            GXSetViewport(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight, 0.0f, 1.0f);
            GXSetScissor(0, 0, rMode->fbWidth, rMode->efbHeight);

            // Drawing
            getSceneManager()->draw();
            getKeyboardManager()->draw();
            getDialog()->draw();
            getHomeButtonMenu()->draw();
            getPointer()->draw();
            getFader()->draw();
            getResetFader()->draw();

            // End of rendering
            smArg.mpFramework->endRender();

            // Update logic
            TVRCManager::getHandle()->update();
            setToday_();
            getControllerManager()->read();
            getBS2Manager()->update();
            getChannelManager()->update();
            cdbBackup.update();
            getDialog()->calc();
            getHomeButtonMenu()->calc();
            getPointer()->calc();
            getFader()->calc();
            getResetFader()->calc();
            snd::getSystem()->calc();

            smArg.mpFramework->endFrame();

            // Error handling
            if (hasCreatedAfter()) {
                getErrorHandler()->check();
            }
        }
    }

    void System::reset_run() {
        OSReport("START reset_run");

        while (TRUE) {
            // Start rendering
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();

            // Setup data
            if (hasCreatedAfter()) {
                getMiiManager()->makeIcon();
            }
            if (hasCreatedAfter()) {
                getJpegDecoder()->makeRawData();
            }

            // Setup view
            GXRenderModeObj* rMode = System::getRenderModeObj();
            GXSetViewport(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight, 0.0f, 1.0f);
            GXSetScissor(0, 0, rMode->fbWidth, rMode->efbHeight);

            // Drawing
            if (getSceneManager() != NULL) {
                getSceneManager()->draw();
            }
            if (hasCreatedAfter()) {
                getKeyboardManager()->draw();
                getDialog()->draw();
                getWarningHandler()->draw();
                getPointer()->draw();
                getHomeButtonMenu()->draw();
            }
            getFader()->draw();
            getResetFader()->draw();

            // End of rendering
            smArg.mpFramework->endRender();

            // Update logic
            TVRCManager::getHandle()->update();
            setToday_();
            if (getBS2Manager() != NULL) {
                getBS2Manager()->update();
            }
            if (getSceneManager() != NULL) {
                getSceneManager()->calc();
            }
            if (getControllerManager() != NULL) {
                getControllerManager()->read();
            }
            if (getDialog() != NULL) {
                getDialog()->calc();
            }
            if (getHomeButtonMenu() != NULL) {
                getHomeButtonMenu()->calc();
            }
            if (getPointer() != NULL) {
                getPointer()->calc();
            }
            if (hasCreatedAfter()) {
                snd::getSystem()->calc();
            }
            getFader()->calc();
            getResetFader()->calc();

            smArg.mpFramework->endFrame();

            // Reset handling
            getResetHandler()->update();
        }
    }

    void System::warning_run() {
        if (getResetHandler()->isResetting()) {
            return;
        }

        VISetBlack(FALSE);

        // Force pointer to be visible, and push it's old state
        bool isVisible = System::getPointer()->isVisible();
        System::getPointer()->setVisible(true);

        while (TRUE) {
            // Start rendering
            smArg.mpFramework->beginFrame();
            smArg.mpFramework->beginRender();

            // Setup data
            if (hasCreatedAfter()) {
                getMiiManager()->makeIcon();
            }
            if (hasCreatedAfter()) {
                getJpegDecoder()->makeRawData();
            }

            // Setup view
            GXRenderModeObj* rMode = System::getRenderModeObj();
            GXSetViewport(0.0f, 0.0f, rMode->fbWidth, rMode->efbHeight, 0.0f, 1.0f);
            GXSetScissor(0, 0, rMode->fbWidth, rMode->efbHeight);

            // Drawing
            getSceneManager()->draw();
            if (hasCreatedAfter()) {
                getKeyboardManager()->draw();
                getDialog()->draw();
            }
            getWarningHandler()->draw();
            if (hasCreatedAfter()) {
                getHomeButtonMenu()->draw();
            }
            if (hasCreatedAfter()) {
                getPointer()->draw();
            }
            getFader()->draw();
            getResetFader()->draw();

            // End of rendering
            smArg.mpFramework->endRender();

            // Update logic
            TVRCManager::getHandle()->update();
            setToday_();
            getControllerManager()->read();
            if (getBS2Manager()->update() == bs2::IPL_STATE_FATAL) {
                IPLErrorDisplay(MESG_ERR_DVD);
            }
            getChannelManager()->update();
            if (hasCreatedAfter()) {
                getHomeButtonMenu()->calc();
                getPointer()->calc();
                getFader()->calc();
                getResetFader()->calc();
                getWarningHandler()->calc();
                snd::getSystem()->calc();
            }

            smArg.mpFramework->endFrame();

            // Error handling
            if (hasCreatedAfter()) {
                getErrorHandler()->check();
            }

            // Reset handling
            getResetHandler()->update();
            getResetHandler()->check();

            // If we pressed button in dialog, goodbye!
            if (getWarningHandler()->check() != DialogWindow::RESULT_NONE) {
                break;
            }
        };

        // Pop old state
        if (isVisible) {
            System::getPointer()->setVisible(true);
        }
        else {
            System::getPointer()->setVisible(false);
        }

        // If the warning told the system to reset, then reset!
        if (getWarningHandler()->resetting()) {
            reset_run();
        }
    }

    void System::reinit() {
        getMem2App()->dump();
    }

    void System::cancelThread() {
        OSThread* thread;

        // Cancel NAND task
        if (getNandManager() != NULL) {
            thread = getNandManager()->getTask()->getMessageQueue()->queueSend.tail;
            if (!OSIsThreadTerminated(thread)) {
                OSCancelThread(thread);
            }
        }

        // Cancel system tasks
        if (getTask1() != NULL) {
            thread = getTask1()->getMessageQueue()->queueSend.tail;
            if (!OSIsThreadTerminated(thread)) {
                OSCancelThread(thread);
            }
        }
        if (getTask2() != NULL) {
            thread = getTask2()->getMessageQueue()->queueSend.tail;
            if (!OSIsThreadTerminated(thread)) {
                OSCancelThread(thread);
            }
        }
        if (getTask3() != NULL) {
            thread = getTask3()->getMessageQueue()->queueSend.tail;
            if (!OSIsThreadTerminated(thread)) {
                OSCancelThread(thread);
            }
        }
    }

    void System::getProjectionRect(nw4r::ut::Rect* rect) {
        // Depending on the aspect ratio
        switch (getAspectRatio()) {
            case SC_ASPECT_RATIO_4x3: {
                getProjectionRect4x3(rect);
                break;
            }
            case SC_ASPECT_RATIO_16x9: {
                getProjectionRect16x9(rect);
                break;
            }
        }
    }

    void System::getProjectionRect4x3(nw4r::ut::Rect* rect) {
        rect->left = -304.0;
        rect->right = 304.0;
        rect->bottom = 228.0;
        rect->top = -228.0;
    }

    void System::getProjectionRect16x9(nw4r::ut::Rect* rect) {
        rect->left = -416.0;
        rect->right = 416.0;
        rect->bottom = 228.0;
        rect->top = -228.0;
    }

    GXRenderModeObj* System::getRenderModeObj() {
        return smArg.mpFramework->getRenderMode();
    }

    controller::Interface* System::getMasterController() {
        return getControllerManager()->getMasterController();
    }

    controller::Interface* System::getYoungController() {
        return getControllerManager()->getYoungController();
    }

    controller::Interface* System::getController(int chan) {
        return getControllerManager()->getController(chan);
    }

    math::Random* System::getRndm() {
        return smArg.mpRandom;
    }

    s32 System::getLanguage() {
        s32 lang = SCGetLanguage();
        s32 region = getRegion();

        switch (region) {
            case SC_PRODUCT_AREA_USA: {
                // Fallback to english if the language is not available for USA consoles.
                if (lang >= (SC_LANG_SPANISH + 1) || lang < SC_LANG_FRENCH) {
                    lang = SC_LANG_ENGLISH;
                }
                break;
            }
            case SC_PRODUCT_AREA_JPN:
                lang = SC_LANG_JAPANESE;
                break;
            case SC_PRODUCT_AREA_EUR:
                // Fallback to english if the language is not available for European consoles.
                if (lang >= (SC_LANG_DUTCH + 1) || lang < SC_LANG_GERMAN) {
                    lang = SC_LANG_ENGLISH;
                }
                break;
            case SC_PRODUCT_AREA_KOR:
                lang = SC_LANG_KOREAN;
                break;
            case SC_PRODUCT_AREA_CHN:
                lang = SC_LANG_SIMP_CHINESE;
                break;
            default:
                // Fallback to enlgish if the language is invalid.
                lang = SC_LANG_ENGLISH;
                break;
        }

        return lang;
    }
    
    s32 System::getRegion() {
        s32 product = SCGetProductArea();

        switch (product) {
            // NTSC-J
            case SC_PRODUCT_AREA_JPN:
            case SC_PRODUCT_AREA_TWN: {
                return SC_PRODUCT_AREA_JPN;
            }
            // PAL
            case SC_PRODUCT_AREA_EUR:
            case SC_PRODUCT_AREA_AUS: {
                return SC_PRODUCT_AREA_EUR;
            }
            // NTSC-K
            case SC_PRODUCT_AREA_KOR: {
                return SC_PRODUCT_AREA_KOR;
            
            }
            // Unreleased iQue version
            case SC_PRODUCT_AREA_CHN: {
                return SC_PRODUCT_AREA_CHN;
            }
            // NTSC-U (default)
            default: {
                return SC_PRODUCT_AREA_USA;
            }
        }
    }

    void* System::getFont() {
        if (smArg.mResources.file[Arg::FONT] == NULL) {
            return NULL;
        }
        return smArg.mResources.file[Arg::FONT]->getBuffer();
    }

    void System::setToday_() {
        OSTicksToCalendarTime(OSGetTime(), &smArg.mCurrentTime);
        if (smArg.mCurrentTime.year > 2035) {
            smArg.mCurrentTime.year = 2035;
            smArg.mCurrentTime.mon = 11;
            smArg.mCurrentTime.mday = 31;
            OSTicksToCalendarTime(OSCalendarTimeToTicks(&smArg.mCurrentTime), &smArg.mCurrentTime);
        }
    }

    void System::getBootArg(int argc, char** argv) {
        smArg.mpNetSettingArg = NULL;
        smArg.mpDataManageArg = NULL;

        smArg.mbGoingToDataManager = false;

        smArg.mBS2LaunchTitle = 0;
        smArg.mBS2BootType = BS2GetBootType();
        smArg.mBS2LaunchCode = BS2GetLaunchCode();

        // If the boot type involves arguments
        if (smArg.mBS2BootType == BS2_BOOT_TYPE_RETURN_ARGS) {
            // Internet settings
            if (smArg.mBS2LaunchCode == LAUNCH_CODE_INTERNET_SETTING && BS2GetArgc() > 1) {
                strncpy(smArg.mBS2FirstArgv, BS2GetArgv()[1], sizeof(smArg.mBS2FirstArgv));
                smArg.mBS2FirstArgv[sizeof(smArg.mBS2FirstArgv)-1] = 0;
                smArg.mpNetSettingArg = smArg.mBS2FirstArgv;
            }
            // Data management
            else if (smArg.mBS2LaunchCode == LAUNCH_CODE_DATA_MANAGER && BS2GetArgc() > 1) {
                strncpy(smArg.mBS2FirstArgv, BS2GetArgv()[1], sizeof(smArg.mBS2FirstArgv));
                smArg.mBS2FirstArgv[sizeof(smArg.mBS2FirstArgv)-1] = 0;
                smArg.mpDataManageArg = smArg.mBS2FirstArgv;

                smArg.mbGoingToDataManager = true;

                smArg.mBS2LaunchTitle = BS2GetLaunchTitle();
            }
        }
    }
}
