#ifndef IPL_NAND_META_H
#define IPL_NAND_META_H

#include "system/iplNand.h"

#include <revolution/es.h>

namespace ipl {
    namespace nand {
        class MetaFile : File {
            public:
                typedef void (*Callback)(void*);

                MetaFile(EGG::Heap* heap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, Callback callBack, void* callBackWork, int ticketIdx);
                virtual ~MetaFile();
            
            protected:
                virtual BOOL    open_(u8 attr);
                virtual BOOL    close_();

                virtual void    readBlock_(void* buffer, int length, int offset = 0);

                virtual u32     getRawSize_();

                virtual void    callback_();
            
            private:
                BOOL            openNandFile_();
                BOOL            openTicketFile_();
                
                void            readNandBlock_(void* bufferOut, int length, int offset);
                void            readTicketBlock_(void* bufferOut, int length, int offset);
                
                BOOL            closeNandFile_();
                BOOL            closeTicketFile_();
                
                undefined4      unused_0x190;
                int             mDescriptor;    // 0x194
                ESTitleId       mTitleId;       // 0x198
                ESTicketView*   mTicket;        // 0x19C
                int             mTicketIdx;     // 0x1A0
                bool            mbMetaInNand;   // 0x1A4
                
                Callback    mCallback;      // 0x1A8
                void*           mCallbackWork;  // 0x1AC
        };
    }
}

#endif // IPL_NAND_META_H
