#include "config.h"

#include "system/iplNandManager.h"

#include "system/iplNandMeta.h"
#include "iplSystem.h"

#include <cstring>

#ifdef STAND_ALONE_BUILD
#include "utility/iplESMisc.h"
#endif // STAND_ALONE_BUILD

namespace ipl {
    namespace nand {
        static ESTicketView* spSysMenuTik = NULL;
        Manager::Manager(EGG::Heap* heap) {
            s32 ret;

            mDescriptor = -1;
            mpFSTBuffer = NULL;

            // Init task thread
            mpTask = EGG::TaskThread::create(0x80, 18, 0x10000, heap);
            OSInitMessageQueue(&mMsgQueue, &mMessage, 0x80);
            mpTask->setMessageQueue(&mMsgQueue);

            // Clear file name
            strncpy(mNandPath, "", sizeof(mNandPath));

            ES_SetUid(SYSMENU_TITLE_ID);

            // Open content archive
#ifdef STAND_ALONE_BUILD
            spSysMenuTik = (ESTicketView*)System::getMem2Sys()->alloc(OSRoundUp32B(sizeof(ESTicketView)), -BUFFER_HEAP);
            ret = utility::ESMisc::GetTicketView(System::getMem2Sys(), SYSMENU_TITLE_ID, spSysMenuTik, 0);
            if (ret < ES_ERR_OK) {
                System::err_log("ES", mDescriptor, 0xBAD);
                System::err_display(MESG_ERR_FILE);
            }

            mDescriptor = ES_OpenTitleContentFile(SYSMENU_TITLE_ID, spSysMenuTik, SYSMENU_CONTENT_ID);
#else
            mDescriptor = ES_OpenContentFile(SYSMENU_CONTENT_ID);
#endif // STAND_ALONE_BUILD
            if (mDescriptor < ES_ERR_OK) {
                System::err_log("ES", mDescriptor, 43);
                System::err_display(MESG_ERR_FILE);
            }

            // Read archive header
            ARCHeader header ALIGN32;
            ret = ES_ReadContentFile(mDescriptor, &header, sizeof(ARCHeader));
            if (ret < ES_ERR_OK) {
                System::err_log("ES", ret, 52);
                System::err_display(MESG_ERR_FILE);
            }

            u32 bufSize = OSRoundUp32B(header.fileStart);
            mpFSTBuffer = new(BUFFER_HEAP) u8[bufSize];

            // Seek to file system table offset
            ret = ES_SeekContentFile(mDescriptor, 0, NAND_SEEK_BEG);
            if (ret < ES_ERR_OK) {
                System::err_log("ES", ret, 66);
                System::err_display(MESG_ERR_FILE);
            }

            // Read file system table
            ret = ES_ReadContentFile(mDescriptor, mpFSTBuffer, bufSize);
            if (ret < ES_ERR_OK) {
                System::err_log("ES", ret, 72);
                System::err_display(MESG_ERR_FILE);
            }

            // Setup ARC with the read file system table
            ARCInitHandle(mpFSTBuffer, &mArc);
        }

        // Stub
        void Manager::openContentsAll() {}

        void Manager::closeContentsAll() {
#ifdef STAND_ALONE_BUILD
            System::getMem2Sys()->free(spSysMenuTik);
#endif
            s32 ret = ES_CloseContentFile(mDescriptor);
            if (ret != ES_ERR_OK) {
                System::err_log("ES", ret, 102);
                System::err_display(MESG_ERR_FILE);
            }
            mDescriptor = -1;
        }

        File* Manager::readAsync(EGG::Heap* heap, const char* fileName, int offset, u32 length, bool bJamRequest) {
            char fullName[NAND_MAX_PATH+1];

            // Set up path
            strncpy(fullName, mNandPath, sizeof(mNandPath));
            strncat(fullName, fileName, sizeof(mNandPath) - strlen(fullName));

            File* file = new(heap, CLASS_HEAP) File(heap, fullName, NULL, NULL, offset, length, false);

            if (bJamRequest) {
                mpTask->requestJam(doReadTask, file, NULL);
            }
            else {
                mpTask->request(doReadTask, file, NULL);
            }

            return file;
        }

        File* Manager::read(EGG::Heap* heap, const char* fileName, int offset, u32 length, bool bJamRequest) {
            char fullName[NAND_MAX_PATH+1];

            // Set up path
            strncpy(fullName, mNandPath, sizeof(mNandPath));
            strncat(fullName, fileName, sizeof(mNandPath) - strlen(fullName));

            File* file = new(heap, CLASS_HEAP) File(heap, fullName, NULL, NULL, offset, length, false);

            file->read();

            return file;
        }

        SharedFile* Manager::readSharedAsync(EGG::Heap* heap, const char* fileName, int index, int offset, u32 length, ESTitleId titleId, int ticketIdx) {
            SharedFile* file = new(heap, CLASS_HEAP) SharedFile(heap, fileName, index, offset, length, titleId, ticketIdx);

            mpTask->request(doReadTask, file, NULL);

            return file;
        }

        MetaFile* Manager::readMetaHeaderAsync(EGG::Heap* heap, ESTitleId titleId, int offset, u32 length, MetaFile::Callback callback, void* callbackWork, int ticketIdx) {
            MetaFile* file = new(heap, CLASS_HEAP) MetaFile(heap, "", NULL, titleId, offset, length, callback, callbackWork, ticketIdx);

            System::getNandTask()->request(doReadTask, file, NULL);

            return file;
        }

        MetaFile* Manager::readMetaBodyAsync(EGG::Heap* heap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, MetaFile::Callback callback, void* callbackWork, int ticketIdx) {
            MetaFile* file = new(heap, CLASS_HEAP) MetaFile(heap, fileName, arc, titleId, offset, length, callback, callbackWork, ticketIdx);

            mpTask->request(doReadTask, file, NULL);

            return file;
        }

        LayoutFile* Manager::readLayoutAsync(EGG::Heap* heap, const char* fileName, bool bJamRequest) {
            LayoutFile* file = readLayout_(heap, fileName, NULL, false);

            if (bJamRequest) {
                OSReport("Jam Request*****************************************************************\n");
                mpTask->requestJam(doReadTask, file, NULL);
            }
            else {
                mpTask->request(doReadTask, file, NULL);
            }

            return file;
        }

        LayoutFile* Manager::readLayout(EGG::Heap* heap, const char* fileName, bool bJamRequest) {
            LayoutFile* file = readLayout_(heap, fileName, NULL, false);

            file->read();

            return file;
        }

        LayoutFile* Manager::readLayout_(EGG::Heap* heap, const char* fileName, ARCHandle* arc, bool bIsNand) {
            char fullName[NAND_MAX_PATH+1];

            // Set up path
            strncpy(fullName, mNandPath, sizeof(mNandPath));
            strncat(fullName, "/layout", sizeof(mNandPath) - strlen(fullName));

            LayoutFile* file = new(heap, CLASS_HEAP) LayoutFile(heap, fullName, fileName, arc, bIsNand);
            
            return file;
        }

        void Manager::doReadTask(void* work) {
            reinterpret_cast<File*>(work)->read();
        }

        File* Manager::writeAsync(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms) {
            File* file = write_(heap, fileName, buffer, length, perms);

            mpTask->request(doWriteTask, file, NULL);

            return file;
        }

        File* Manager::write(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms) {
            File* file = write_(heap, fileName, buffer, length, perms);

            file->write();

            return file;
        }

        File* Manager::write_(EGG::Heap* heap, const char* fileName, void* buffer, u32 length, u8 perms) {
            char fullName[NAND_MAX_PATH+1];

            strncpy(fullName, mNandPath, sizeof(mNandPath));
            strncat(fullName, fileName, sizeof(mNandPath) - strlen(fullName));

            File* file = new(heap, CLASS_HEAP) File(heap, fileName, (u8*)buffer, length, perms);

            return file;
        }

        void Manager::doWriteTask(void* work) {
            reinterpret_cast<File*>(work)->write();
        }

        void Manager::sendToken(int token) {
            mpTask->request(doSendTokenTask, NULL, (void*)token);
        }

        void Manager::doSendTokenTask(void* work) {}

        BOOL Manager::receiveToken(int* token) {
            BOOL result = FALSE;
            OSMessage msg = EGG::TaskThread::waitQueueMessage(mpTask->getMessageQueue(), &result);
            if (result && msg != NULL) {
                *token = reinterpret_cast<int>(msg);
            }

            return (result && msg != NULL) ? TRUE : FALSE;
        }
    }
}
