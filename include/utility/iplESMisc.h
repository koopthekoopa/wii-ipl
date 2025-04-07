#ifndef IPL_ES_MISC_H
#define IPL_ES_MISC_H

#include <private/es.h>

#include <egg/core.h>

namespace ipl {
    namespace utility {
        class ESMisc {
            public:
                static ESError  GetTicketView(EGG::Heap* heap, ESTitleId titleId, ESTicketView* ticket, int ticketIndex);
                static ESError  GetTicketViewList(EGG::Heap* heap, ESTitleId titleId, ESTicketView** ticket, u32* ticketLength);
                static ESError  GetValidTicketIndex(EGG::Heap* heap, ESTitleId titleId, ESTicketView* ticket, u32 ticketLength);

                static BOOL     PrivateContentsExist(ESTitleId titleId);

                static ESError  checkContentsNum(ESTitleId titleId, ESTmdView* tmdView);
                static ESError  GetTmdView(EGG::Heap* heap, ESTitleId titleId, ESTmdView** tmdView);

                static ESError  DeleteExpiredFlagFile();
        };
    }
}

#endif // IPL_ES_MISC_H
