#include "system/iplNandMeta.h"

#include "system/iplSystem.h"
#include "system/iplNandWrapper.h"

#include "utility/iplESMisc.h"

#include <cstring>

namespace ipl {
    namespace nand {
        MetaFile::MetaFile(EGG::Heap* pHeap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, MetaCallback callBack, void* callBackWork, int ticketIdx) :
        File(pHeap, fileName, arc, NULL, offset, length, false),
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
                System::getUnk0CHeap()->free(mTicket);
            }

            s32 result = wrapper::Close(&mNandFile);
            return nand_error_handling(result);
        }

        BOOL MetaFile::openTicketFile_() {
            s32 line;

            mTicket = (ESTicketView*)System::getUnk0CHeap()->alloc(sizeof(ESTicketView), -BUFFER_HEAP);
            s32 result = utility::ESMisc::GetTicketView(System::getUnk0CHeap(), mTitleId, mTicket, mTicketIdx);

            if (result < 0) {
                line = 146;
            }
            else {
                // Open up the meta file from content index 0 (the 00000000.app file)
                result = ES_OpenTitleContentFile(mTitleId, mTicket, 0);
                mDescriptor = result;

                // If the file could not open for whatever reason, load the meta file from the NAND instead (from the meta folder).
                if (result == ES_ERR_TMD_INVALID_RIGHT) {
                    mbMetaInNand = true;
                    return openNandFile_();
                }

                // Otherwise if it could not open the file for any reason, abort.
                if (result < 0) {
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
            System::err_log(ES, result, line);
            System::err_display(MESG_ERR_CONTENT);

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
                System::err_log(ES, 0, 230);
                System::err_display(MESG_ERR_CONTENT);
            }
        }

        BOOL MetaFile::closeTicketFile_() {
            s32 result = ES_CloseContentFile(mDescriptor);
            if (result >= ES_ERR_OK) {
                if (mTicket) {
                    System::getUnk0CHeap()->free(mTicket);
                }
                return TRUE;
            }
            else {
                System::err_log(ES, 0, 253);
                System::err_display(MESG_ERR_CONTENT);
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


