#include "system/iplNandShared.h"

#include "iplSystem.h"
#include "iplUtility.h"

#include <cstring>

namespace ipl {
    namespace nand {
        SharedFile::SharedFile(EGG::Heap* heap, const char* fileName, u32 index, int offset, u32 length, ESTitleId titleId, int ticketIdx) :
        File(heap, fileName, NULL, NULL, offset, length, false),
        mContentIdx(index),
        mDescriptor(-1),
        mTitleId(titleId),
        mTicket(NULL),
        mTicketIdx(ticketIdx),
        mpFSTBuffer(NULL) {}

        SharedFile::~SharedFile() {}

        BOOL SharedFile::openTicketFile_() {
            int code = 0;
            int errcode = 0;
            int erridx = 0;
            mTicket = (ESTicketView*)System::getSharedHeap()->alloc(OSRoundUp32B(sizeof(ESTicketView)), -BUFFER_HEAP);

            if (mTicketIdx >= 0) {
                if (utility::ESMisc::GetTicketView(System::getSharedHeap(), mTitleId, mTicket, mTicketIdx) < ES_ERR_OK) {
                    code = 100;
                    goto err;
                }
            }
            else {
                ESTicketView* tik;
                u32 tikCount;

                if (utility::ESMisc::GetTicketViewList(System::getSharedHeap(), mTitleId, &tik, &tikCount) != ES_ERR_OK) {
                    int tikIdx = utility::ESMisc::GetValidTicketIndex(System::getSharedHeap(), mTitleId, tik, tikCount);
                    if (tikIdx >= 0 && tikIdx <= tikCount) {
                        mTicketIdx = tikIdx;
                        memcpy(mTicket, &tik[tikIdx], sizeof(ESTicketView));
                        System::getSharedHeap()->free(tik);
                    }
                }
                else {
                    goto err;
                }
            }

            s32 ret = ES_OpenTitleContentFile(mTitleId, mTicket, mContentIdx);
            mDescriptor = ret;

            if (ret < ES_ERR_OK) {
                erridx = mContentIdx;
                code = 400;
                errcode = ret;
                goto err;
            }
            
            ARCHeader header ALIGN32;
            if (ES_ReadContentFile(mDescriptor, &header, sizeof(ARCHeader)) < ES_ERR_OK) {
                code = 500;
                goto err;
            }

            u32 bufSize = OSRoundUp32B(header.fileStart);
            mpFSTBuffer = System::getSharedHeap()->alloc(bufSize, -BUFFER_HEAP);

            if (ES_SeekContentFile(mDescriptor, 0, NAND_SEEK_BEG) < ES_ERR_OK
            || ES_ReadContentFile(mDescriptor, mpFSTBuffer, bufSize) < ES_ERR_OK
            || !ARCInitHandle(mpFSTBuffer, &mArc)) {
                code = 600;
                goto err;
            }

            BOOL result = ARCOpen(&mArc, msFileName, &mArcFile);
            if (result && ES_CloseContentFile(mDescriptor) >= ES_ERR_OK) {
                return result == TRUE;
            }
            else {
        err:
                char errString[192];
                sprintf(errString, "ES %d, %llx, %llx, %x", errcode, erridx, mTitleId);

                IPLErrorLogAndDisplay(MESG_ERR_FILE, errString, code, 158);
  
                return FALSE;
            }
        }

        BOOL SharedFile::closeTicketFile_() {
            if (ES_CloseContentFile(mDescriptor) >= ES_ERR_OK) {
                if (mTicket) {
                    System::getSharedHeap()->free(mTicket);
                }
                if (mpFSTBuffer) {
                    System::getSharedHeap()->free(mpFSTBuffer);
                    ARCClose(&mArcFile);
                }

                return TRUE;
            }
            else {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", 0, 189);

                return FALSE;
            }
        }

        BOOL SharedFile::open_(u8 attr) {
            return openTicketFile_();
        }

        BOOL SharedFile::close_() {
            return closeTicketFile_();
        }

        u32 SharedFile::getRawSize_() {
            return ARCGetLength(&mArcFile);
        }

        void SharedFile::readBlock_(void* buffer, int length, int offset) {
            int arcOffset = ARCGetStartOffset(&mArcFile);

            if (ES_SeekContentFile(mDescriptor, arcOffset + offset, NAND_SEEK_BEG) < ES_ERR_OK
            || ES_ReadContentFile(mDescriptor, buffer, length) < ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", 0, 358);
            }
        }
    }
}
