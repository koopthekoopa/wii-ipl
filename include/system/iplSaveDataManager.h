#ifndef IPL_SAVE_DATA_MANAGER_H
#define IPL_SAVE_DATA_MANAGER_H

#include <revolution.h>
#include <revolution/es.h>
#include <revolution/net/NETDigest.h>

#include <egg/core.h>

#include "system/iplChannelManager.h"

#include "keyboard/saveData.h"
#include "system/iplNand.h"

#define SAVEDATA_VERSION    3

namespace ipl {
    namespace savedata {
        class Manager {
            public:
                Manager(EGG::Heap* heap);
                virtual ~Manager();

                void        initManager();

                void        setPrevPage(int prevPage);
                void        setChanInfo(int page, int index, const channel::SInfo& chanInfo);
                void        setMemoSetting(const textinput::extend::savedata::MemoSetting& memoSetting);

                nand::File* flushAsync(EGG::Heap* flushHeap);

                ESTitleId   hasChannel(ESTitleId titleId, int* outIndex = NULL, int* outPage = NULL) const;

                int         getNumValidChannel() const;

                BOOL        isFinished(nand::File* file);
                BOOL        isResetAcceptable();

                void        setDefaultSaveData();
                void        updateVersion(u32 newVersion, u32 oldVersion);

                BOOL        updateChanInfos();

                bool        hasPhotoMP3Dummy()      { return mbPhotoMP3; }
                bool        hasPhoto2Title()        { return mbPhoto2; }
                bool        hasPhoto2DummyCheck()   { return mbPhoto2Check; }

                ESTitleId   getPhotoID()            { return mPhotoId; }

            private:
                BOOL        checkValidApp(ESTitleId titleId);

                static void initManagerTask(void* work);
                static void initManagerTask_();

                void        setDefaultHeader();
                void        setDefaultTitleCache();
                void        setDefaultKeyboard();
                void        setDefaultTVRC();

                void        deleteInvalidTitle(ESTitleId* titleIds, u32 titleCount);
                void        checkSpecialTitles(ESTitleId* titleIds, u32 titleCount);
                void        checkTmpTitle(ESTitleId* titleIds, u32 titleCount);

                int         getAvailableInList(const ESTitleId* titleIds, u32 titleCount);
                int         getAvailableNumInList(const ESTitleId* titleIds, u32 titleCount);
                
                int         isEqualChannel(ESTitleId titleId0, ESTitleId titleId1);
                int         isDefaultChannel(ESId titleIdHi, ESId titleIdLo);

                void        makePriorTitleIDList(ESTitleId* titleIdsOut, ESTitleId* titleIdsIn, u32 titleCount);
                void        integrateTitleIDList(ESTitleId* titleIdsOut, ESTitleId* titleIdsIn, u32 titleCount);
                
                BOOL        doUpdateChanInfos(ESTitleId* titleIds);

                BOOL        nand_error_handling(int code);

                /**
                 * VERSION HISTORY
                 * ===============
                 * Version 1 - Initial version
                 * Version 2 - Same as version 1 but memoSetting is initialised with different settings.
                 * Version 3 - Add title caching
                 */
                // CURRENT VERSION IS 3 !!
                typedef struct Data {
                    // Meta data
                    u8                                          sig[4];                                             // 0x00 (Always `RIPL`)
                    u32                                         fileSize;                                           // 0x04
                    u32                                         version;                                            // 0x08

                    // Channel related
                    u32                                         prevPage;                                           // 0x0C
                    channel::SInfo                              chanInfo[MAX_CHANNEL_PAGE][MAX_CHANNEL_INDEX];      // 0x10

                    // Keyboard
                    textinput::extend::savedata::MemoSetting    memoSetting;                                        // 0x310

                    // TVRC Data
                    u8                                          tvrcData[4];                                        // 0x318

                    u32                                         unk_0x31C;

                    // Title Cache
                    ESTitleId                                   titleCache[MAX_CHANNEL_PAGE][MAX_CHANNEL_INDEX];    // 0x320
                    int                                         unk_0x4A0;

                    u8                                          padding[0x0C];

                    // Sums
                    u8                                          MD5Sum[NET_MD5_DIGEST_SIZE];                        // 0x4B0
                } Data;
                
                EGG::Heap*  mpHeap;         // 0x04
                u8          unk_0x08[24];

                Data        mData;          // 0x20

                int         unk_0x4E0;
                int         unk_0x4E4;
                bool        unk_0x4E8;

                nand::File* mpFile;         // 0x4EC
                nand::File* mpUpdatedFile;  // 0x4F0

                bool        mbInit;         // 0x4F4

                bool        mbPhoto2;       // 0x4F5
                bool        mbPhoto2Check;  // 0x4F6
                bool        mbPhotoMP3;     // 0x4F7
                ESTitleId   mPhotoId;       // 0x4F8

                int         mLastError;     // 0x500

                u8          dummy[28];      // 0x504
        };
    }
}

#endif // IPL_SAVE_DATA_MANAGER_H
