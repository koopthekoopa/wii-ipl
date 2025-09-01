#ifndef IPL_UTILITY_ES_MISC_H
#define IPL_UTILITY_ES_MISC_H

#include <private/es.h>
#include <revolution/nand.h>

#include <egg/core.h>

namespace ipl {
    namespace utility {
        class TMDFile {
            public:
                typedef struct EntryHead {
                    ESTitleId   titleId;            // 0x00
                    u32         tmdSize;            // 0x08

                    void*   getTmdPtr() {
                        return ((u8*)this + OSRoundUp32B(sizeof(EntryHead)));
                    }
                } EntryHead;
                TMDFile(EGG::Heap* heap);

                s32     Open(char* fileName);
                s32     Close();

                BOOL    Exist(ESTitleId titleId, u32* tmdOffset, u32* tmdSize);

                s32     Backup(ESTitleId titleId);
                s32     Restore(ESTitleId titleId);

            private:
                EGG::Heap*      mpHeap;         // 0x00
                NANDFileInfo    mFile;          // 0x04
                BOOL            mbFileOpen;     // 0x90
                u32             mFileLength;    // 0x94
        };
        class ESMisc {
            public:
                static ESError  GetTmdView(EGG::Heap* heap, ESTitleId titleId, ESTmdView** outTmdView);

                static ESError  GetTicketViewList(EGG::Heap* heap, ESTitleId titleId, ESTicketView** outTicketViews, u32* outNumTicketViews);
                static ESError  GetTicketView(EGG::Heap* heap, ESTitleId titleId, ESTicketView* ticketView, int numTicketViews);

                static s32      PrivateContentsExist(ESTitleId titleId);

                static BOOL     ContentExist(ESTmdView* tmdView, u32 contentIndex, s32* result);

                static ESError  checkContentsNum(ESTitleId titleId, ESTmdView* tmdView);
    
                static ESError  GetValidTicketIndex(EGG::Heap* heap, ESTitleId titleId, ESTicketView* ticket = NULL, u32 ticketLength = 0);

                static BOOL     IsLastTicketExpired(ESTitleId* titleId);
                static void     DeleteExpiredFlagFile();

                static void     DeleteBadSaveData(EGG::Heap* heap);

                static u32      CheckTmdCountryCode(ESTmdView* tmdView);

                static BOOL     __IsPCEnable();

                static BOOL     ChangeUid(ESTitleId titleId);

                static u32      NumInodesSaveDirRoot(ESTitleId titleId);

                static s32      DeleteTitle(EGG::Heap* heap, ESTitleId titleId);
                static s32      DeleteEmptyTitles(EGG::Heap* heap);
                static s32      DeleteMetaContent(ESTitleId titleId);
        };
    }
}

#endif // IPL_UTILITY_ES_MISC_H
