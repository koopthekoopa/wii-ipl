#ifndef IPL_NAND_SHARED_H
#define IPL_NAND_SHARED_H

#include "revolution/types.h"
#include "system/iplNand.h"

#include <private/es.h>

namespace ipl {
    namespace nand {
        class SharedFile : public File {
            public:
                SharedFile(EGG::Heap* heap, const char* fileName, u32 index, int offset, u32 length, ESTitleId titleId, int ticketIdx);
                virtual ~SharedFile();
            
            protected:
                virtual BOOL    open_(u8 attr);
                virtual BOOL    close_();

                virtual u32     getRawSize_();

                virtual void    readBlock_(void* buffer, int length, int offset = 0);
            
            private:
                BOOL            openTicketFile_();
                BOOL            closeTicketFile_();

                u32             mContentIdx;    // 0x190
                ESFd            mDescriptor;    // 0x194

                ESTitleId       mTitleId;       // 0x198

                ESTicketView*   mTicket;        // 0x1A0

                int             mTicketIdx;     // 0x1A4

                void*           mpFSTBuffer;    // 0x1A8

                ARCHandle       mArc;           // 0x1AC
        };
    }
}

#endif // IPL_NAND_SHARED_H
