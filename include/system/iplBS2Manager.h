#ifndef IPL_BS2_MANAGER_H
#define IPL_BS2_MANAGER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/es.h>

#include <egg/core.h>

#include "BS2/BS2.h"
#include "BS2/BS2Update.h"

namespace ipl {
    namespace bs2 {
        class Manager {
            public:
                /** @param pHeap The work heap used. */
                Manager(EGG::Heap* pHeap);
                virtual ~Manager();

                int update();
                void startUpdate();

                u32 getDiskBannerBuffer(void** pBuffer);

                void reserveRVLGame();
                void reserveGCGame();
                
                void startRVLGame();
                void startGCGame();

                void abort();
                void restart();

                bool checkParentalControl();

                void getDiskInfo(char** diskID, char** diskMaker);
                
                BOOL isTitleAvailable(ESTitleId titleId) const;
                s32  getTicketFromNand(ESTitleId titleId, ESTicketView* pTicketView) const;
                void loadLockedTitleAsync(ESTitleId titleId, ESTicketView& ticketView);

                void splashTick(BS2State state);
                void execTick(BS2State state);
                void updateTick();

                void bootNewSystem();

            private:
                u32                 unk_0x04;
                volatile BS2State   mState;             // 0x08
                bool                unk_0x0C;
                bool                unk_0x0D;
                bool                unk_0x0E;
                bool                unk_0x0F;
                bool                mbIsDiagDisc;       // 0x10
                bool                unk_0x11;
                u8*                 mpBannerBuffer;     // 0x14
                BOOL                mHasBanner;         // 0x18
                BS2State            unk_0x1C;

                // For Update

                bool                mbStartUpdate;      // 0x20
                BS2UpdateEntry*     mEntries;           // 0x24
                int                 mPrevEntry;         // 0x28
                int                 mPrevFound;         // 0x2C
                u32                 mEntrySize;         // 0x30
                u32                 mEntryOffset;       // 0x34
        };
    }
}

#endif // IPL_BS2_MANAGER_H


