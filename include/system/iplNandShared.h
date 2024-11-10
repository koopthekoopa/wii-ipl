#ifndef IPL_NAND_SHARED_H
#define IPL_NAND_SHARED_H

#include "system/iplNand.h"

#include <revolution/es.h>

namespace ipl {
    namespace nand {
        class SharedFile : File {
            public:
                SharedFile(EGG::Heap* pHeap, const char* fileName, u32 index, int offset, u32 length, ESTitleId titleId, int ticket);
                virtual ~SharedFile();
            
            protected:
                virtual BOOL    open_(u8 attr);
                virtual BOOL    close_();
            
            private:
                BOOL            openTicketFile_();
                BOOL            closeTicketFile_();

                u32             mContentIdx;    // 0x190
                int             mDescriptor;    // 0x194

                ESTitleId       mTitleId;       // 0x198

                ESTicketView*   mTicket;        // 0x1A0

                int             mTicketIdx;     // 0x1A4

                void*           mpBuffer;       // 0x1A8

                ARCHandle       mArc;           // 0x1AC
        };
    }
}

#endif // IPL_NAND_SHARED_H

