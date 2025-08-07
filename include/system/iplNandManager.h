#ifndef IPL_NAND_MANAGER_H
#define IPL_NAND_MANAGER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/nand.h>
#include <revolution/arc.h>
#include <private/es.h>

#include <egg/core.h>

#include "system/iplNand.h"
#include "system/iplNandShared.h"
#include "system/iplNandMeta.h"

#include "config.h"

namespace ipl {
    namespace nand {
        class Manager {
            public:
                Manager(EGG::Heap* heap);

                File*               read(EGG::Heap* heap, const char* fileName, int offset = 0, u32 length = 0, bool bJamRequest = false);
                File*               readAsync(EGG::Heap* heap, const char* fileName, int offset = 0, u32 length = 0, bool bJamRequest = false);

                File*               write(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms);
                File*               writeAsync(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms);

                SharedFile*         readSharedAsync(EGG::Heap* heap, const char* fileName, int index, int offset = 0, u32 length = 0, ESTitleId titleId = SYSMENU_TITLE_ID, int ticketIdx = 0);

                MetaFile*           readMetaHeaderAsync(EGG::Heap* heap, ESTitleId titleId, int offset, u32 length, MetaFile::Callback callback, void* callbackWork, int ticketIdx);
                MetaFile*           readMetaBodyAsync(EGG::Heap* heap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, MetaFile::Callback callback, void* callbackWork, int ticketIdx);

                LayoutFile*         readLayout(EGG::Heap* heap, const char* fileName, bool bJamRequest = false);
                LayoutFile*         readLayoutAsync(EGG::Heap* heap, const char* fileName, bool bJamRequest = false);
                
                void                openContentsAll();
                void                closeContentsAll();
                
                void                sendToken(int token);
                BOOL                receiveToken(int* token);
                
                ESFd                getDescriptor() const   { return mDescriptor; }
                ARCHandle*          getArc()                { return &mArc; }

                EGG::TaskThread*    getTask()               { return mpTask; }
            
            private:
                static void doReadTask(void* work);
                static void doWriteTask(void* work);
                static void doSendTokenTask(void* work);

                LayoutFile* readLayout_(EGG::Heap* heap, const char* fileName, ARCHandle* arc, bool bIsNand) NO_INLINE;
                
                File*       write_(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms) NO_INLINE;

                EGG::TaskThread*    mpTask;                         // 0x00

                OSMessageQueue      mMsgQueue;                      // 0x04
                OSMessage           mMessage;                       // 0x24

                // Big garbage data
                u8                  unused_0x28[0x1FC];

                char                mNandPath[NAND_MAX_PATH+1];     // 0x224
                ESFd                mDescriptor;                    // 0x268
                u8*                 mpFSTBuffer;                    // 0x26C
                ARCHandle           mArc;                           // 0x270
        };
    }
}

#endif // IPL_NAND_MANAGER_H
