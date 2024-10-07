#include "system/iplNandMeta.h"

#include "system/iplSystem.h"
#include "system/iplNandWrapper.h"

#include "utility/iplESMisc.h"

#include <cstring>

namespace ipl {
    namespace nand {
        /**
         * @note Address: 0x8133CC34 (4.3U)
         * @note Size: 0x90
         */
        MetaFile::MetaFile(EGG::Heap* pHeap, const char* fileName, ARCHandle* arc, ESTitleId titleId, int offset, u32 length, UnkCallback callBack, void* callBackWork, int ticketIdx) :
        File(pHeap, fileName, arc, NULL, offset, length, false),
        mDescriptor(-1),
        mTitleId(titleId),
        mTicket(NULL),
        mTicketIdx(ticketIdx),
        mMetaInNand(false),
        mCallback(callBack),
        mCallbackWork(callBackWork) {}

        /**
         * @note Address: 0x8133CCC4 (4.3U)
         * @note Size: 0x58
         */
        MetaFile::~MetaFile() {}

        /**
         * @note Address: 0x8133CD1C (4.3U)
         * @note Size: 0xC4
         */
        BOOL MetaFile::openNandFile_() {
            char fileName[48];

            // Create title path
            sprintf(fileName, "/meta/%08x/%08x/title.met",  NANDTitleIdHi(mTitleId), NANDTitleIdLo(mTitleId));

            if (mpArc) {
                s32 result = wrapper::PrivateOpen(fileName, &mNandFile, NAND_ACCESS_READ);
                if (nand_error_handling(result) == FALSE
                || ARCOpen(mpArc, msFileName, &mArcFile) == FALSE) {
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

        /**
         * @note Address: 0x8133CDE0 (4.3U)
         * @note Size: 0x8133CDE0
         */
        void MetaFile::readNandBlock_(void* bufferOut, int length, int offset) {
            s32 result;

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

        /**
         * @note Address: 0x8133CE94 (4.3U)
         * @note Size: 0x64
         */
        BOOL MetaFile::closeNandFile_() {
            if (mTicket) {
                System::getUnk0CHeap()->free(mTicket);
            }

            s32 result = wrapper::Close(&mNandFile);
            return nand_error_handling(result);
        }

        /**
         * @note Address: 0x8133CEF8 (4.3U)
         * @note Size: 0x158
         */
        BOOL MetaFile::openTicketFile_() {
            s32 line;

            mTicket = (ESTicketView*)System::getUnk0CHeap()->alloc(sizeof(ESTicketView), -BUFFER_HEAP);
            s32 result = utility::ESMisc::GetTicketView(System::getUnk0CHeap(), mTitleId, mTicket, mTicketIdx);

            if (result < 0) {
                line = 146;
            }
            else {
                // Open up the meta file from content index 0 (the 00000000.app files)
                result = ES_OpenTitleContentFile(mTitleId, mTicket, 0);
                mDescriptor = result;

                // If it does not exist, load the meta file from the NAND instead (from the meta folder).
                if (result == -1026) {
                    mMetaInNand = true;
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

                        // In case it was unlucky and it failed to even do that.
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

        /**
         * @note Address: 0x8133D050 (4.3U)
         * @note Size: 0xE8
         */
        void MetaFile::readTicketBlock_(void* bufferOut, int length, int offset) {
            s32 result;

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

            if (ES_ReadContentFile(mDescriptor, bufferOut, length) < ES_ERR_OK) {
        failed:
                System::err_log(ES, 0, 230);
                System::err_display(MESG_ERR_CONTENT);
            }
        }

        /**
         * @note Address: 0x8133D138 (4.3U)
         * @note Size: 0xAC
         */
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

        /**
         * @note Address: 0x8133D1E4 (4.3U)
         * @note Size: 0x4
         */
        BOOL MetaFile::open_(u8 attr) {
            return openTicketFile_();
        }

        /**
         * @note Address: 0x8133D1E8 (4.3U)
         * @note Size: 0x14
         */
        BOOL MetaFile::close_() {
            if (mMetaInNand) {
                return closeNandFile_();
            }
            else {
                return closeTicketFile_();
            }
        }

        /**
         * @note Address: 0x8133D1FC (4.3U)
         * @note Size: 0x8
         */
        u32 MetaFile::getRawSize_() {
            return ARCGetLength(&mArcFile);
        }

        /**
         * @note Address: 0x8133D204 (4.3U)
         * @note Size: 0x14
         */
        void MetaFile::readBlock_(void* buffer, int length, int offset) {
            if (mMetaInNand) {
                readNandBlock_(buffer, length, offset);
            }
            else {
                readTicketBlock_(buffer, length, offset);
            }
        }

        /**
         * @note Address: 0x8133D218 (4.3U)
         * @note Size: 0x1C
         */
        void MetaFile::callback_() {
            if (mCallback) {
                mCallback(mCallbackWork);
            }
        }
    }
}


