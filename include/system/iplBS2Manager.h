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
                /** @param heap The work heap used. */
                Manager(EGG::Heap* heap);
                virtual ~Manager();

                /** @brief Initialize Disc Update */
                void    startUpdate();
                /** @brief Start Disc Update */
                int     update();

                /**
                 * @brief Get buffer length of a game disc's banner.
                 * @param pBuffer Disc banner data.
                 */
                u32     getDiskBannerBuffer(void** pBuffer);

                void    reserveRVLGame();
                void    reserveGCGame();
                
                /** @brief Start Wii Game (same as `startGCGame`) */
                void    startRVLGame();
                /** @brief Start Game Cube Game (same as `startRVLGame`) */
                void    startGCGame();

                /** @brief Abort Game Disk? */
                void    abort();
                /** @brief Restart Game Disk? */
                void    restart();

                /** @brief Wrapper for `BS2CheckParentalControl` */
                bool    checkParentalControl();

                /**
                 * @brief Gets the information of the game disc.
                 * @param diskID Output title ID of disc.
                 * @param diskMaker Output maker ID of disc.
                 */
                void    getDiskInfo(char** diskID, char** diskMaker);

                /** @brief Check is disc title is available? */
                BOOL    isTitleAvailable(ESTitleId titleId) const;
                /** @brief Get disc's ticket from NAND? */
                s32     getTicketFromNand(ESTitleId titleId, ESTicketView* pTicketView) const;
                void    loadLockedTitleAsync(ESTitleId titleId, ESTicketView& ticketView);

                void    splashTick(BS2State state);
                void    execTick(BS2State state);
                void    updateTick();

            private:
                void    bootNewSystem();
                
                u32                 unk_0x04;
                volatile BS2State   mState;             // 0x08
                bool                unk_0x0C;
                bool                unk_0x0D;
                bool                unk_0x0E;
                bool                unk_0x0F;
                bool                mbIsDiagDisc;       // 0x10
                bool                unk_0x11;
                u8*                 mpBannerBuffer;     // 0x14
                BOOL                mbHasBanner;        // 0x18
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


