#include "system/iplNandMeta.h"

#include "iplSystem.h"
#include "system/iplNandWrapper.h"

#include "iplUtility.h"

#include <cstring>

namespace ipl {
    namespace nand {
        MetaFile::MetaFile(EGG::Heap* heap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, Callback callBack, void* callBackWork, int ticketIdx) :
        File(heap, fileName, arc, NULL, offset, length, false),
        mDescriptor(-1),
        mTitleId(titleId),
        mTicket(NULL),
        mTicketIdx(ticketIdx),
        mbMetaInNand(false),
        mCallback(callBack),
        mCallbackWork(callBackWork) {}

        MetaFile::~MetaFile() {}

        BOOL MetaFile::openNandFile_() {
            char fileName[48];

            // Get title path
            sprintf(fileName, "/meta/%08x/%08x/title.met",  NANDTitleIdHi(mTitleId), NANDTitleIdLo(mTitleId));

            if (mpArc) {
                s32 result = wrapper::PrivateOpen(fileName, &mNandFile, NAND_ACCESS_READ);
                if (nand_error_handling(result) == FALSE || ARCOpen(mpArc, msFileName, &mArcFile) == FALSE) {
                    return FALSE;
                }
                else {
                    return TRUE;
                }
            }
            else {
                s32 result = wrapper::PrivateOpen(fileName, &mNandFile, NAND_ACCESS_READ);
                return nand_error_handling(result);
            }
        }

        void MetaFile::readNandBlock_(void* bufferOut, int length, int offset) {
            s32 result;

            // Seek to offset
            if (mpArc) {
                result = wrapper::Seek(&mNandFile, mFileOffset + ARCGetStartOffset(&mArcFile) + offset, 0);
                nand_error_handling(result);
            }
            else {
                result = wrapper::Seek(&mNandFile, mFileOffset + offset, 0);
                nand_error_handling(result);
            }

            result = wrapper::Read(&mNandFile, bufferOut, length);
            nand_error_handling(result);
        }

        BOOL MetaFile::closeNandFile_() {
            if (mTicket) {
                System::getMem2Sys()->free(mTicket);
            }

            s32 result = wrapper::Close(&mNandFile);
            return nand_error_handling(result);
        }

        BOOL MetaFile::openTicketFile_() {
            s32 line;

            mTicket = (ESTicketView*)System::getMem2Sys()->alloc(OSRoundUp32B(sizeof(ESTicketView)), -BUFFER_HEAP);
            s32 result = utility::ESMisc::GetTicketView(System::getMem2Sys(), mTitleId, mTicket, mTicketIdx);

            if (result < ES_ERR_OK) {
                line = 146;
            }
            else {
                // Open up the meta file from content index 0 (the 00000000.app file)
                result = ES_OpenTitleContentFile(mTitleId, mTicket, 0);
                mDescriptor = result;

                // If we don't have the rights to open the file, load the meta file from the NAND instead (from the meta folder).
                if (result == ES_ERR_TMD_INVALID_RIGHT) {
                    mbMetaInNand = true;
                    return openNandFile_();
                }

                // Otherwise if it could not open the file for any reason, abort.
                if (result < ES_ERR_OK) {
                    line = 163;
                }
                else {
                    if (!mpArc) return TRUE;

                    // Open up the arc file
                    BOOL success = ARCOpen(mpArc, msFileName, &mArcFile);
                    if (!success) {
                        // Failed to do that? Close the file and abort.
                        result = ES_CloseContentFile(mDescriptor);

                        // In case if it was unlucky and failed to even do that.
                        if (result < ES_ERR_OK) {
                            line = 178;
                            goto failed;
                        }
                    }

                    return success == TRUE;
                }
            }
        failed:
            IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", result, line);

            return FALSE;
        }

        void MetaFile::readTicketBlock_(void* bufferOut, int length, int offset) {
            s32 result;

            // Seek to the offset
            if (mpArc) {
                result = ES_SeekContentFile(mDescriptor, mFileOffset + ARCGetStartOffset(&mArcFile) + offset, 0);
                if (result < ES_ERR_OK) {
                    goto failed;
                }
            }
            else {
                result = ES_SeekContentFile(mDescriptor, mFileOffset + offset, 0);
                if (result < ES_ERR_OK) {
                    goto failed;
                }
            }

            // Read the file
            if (ES_ReadContentFile(mDescriptor, bufferOut, length) < ES_ERR_OK) {
        failed:
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", 0, 230);
            }
        }

        BOOL MetaFile::closeTicketFile_() {
            s32 result = ES_CloseContentFile(mDescriptor);
            if (result >= ES_ERR_OK) {
                if (mTicket) {
                    System::getMem2Sys()->free(mTicket);
                }
                return TRUE;
            }
            else {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", 0, 253);
                return FALSE;
            }
        }

        BOOL MetaFile::open_(u8 attr) {
            return openTicketFile_();
        }

        BOOL MetaFile::close_() {
            if (mbMetaInNand) {
                return closeNandFile_();
            }
            else {
                return closeTicketFile_();
            }
        }

        u32 MetaFile::getRawSize_() {
            return ARCGetLength(&mArcFile);
        }

        void MetaFile::readBlock_(void* buffer, int length, int offset) {
            if (mbMetaInNand) {
                readNandBlock_(buffer, length, offset);
            }
            else {
                readTicketBlock_(buffer, length, offset);
            }
        }

        void MetaFile::callback_() {
            if (mCallback) {
                mCallback(mCallbackWork);
            }
        }
    }
}
