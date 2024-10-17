#define UNIT_DOESNT_MATCH

#include "system/iplNand.h"

#include "config.h"

#include "system/iplSystem.h"
#include "system/rvl_dec.h"
#include "system/iplErrorHandler.h"
#include "system/iplNandWall.h"
#include "system/iplNandWrapper.h"

#include "utility/iplUtility.h"

#include <revolution/cx.h>
#include <revolution/es.h>
#include <revolution/net/NETDigest.h>

#include <cstring>

#define BUFFER_SIZE     0x1000

#define EXT_SIZE        0x40
#define STANDARD_SIZE   0x20

#define CHECK_MAGIC3(buffer, sig0, sig1, sig2) \
    buffer[0] == sig0 && buffer[1] == sig1 && buffer[2] == sig2

#define CHECK_MAGIC4(buffer, sig0, sig1, sig2, sig3) \
    buffer[0] == sig0 && buffer[1] == sig1 && buffer[2] == sig2 && buffer[3] == sig3

namespace ipl {
    namespace nand {
        /**
         * @note Address: 0x8133B2E4 (4.3U)
         * @note Size: 0x10
         */
        Base::Base() {}

        /**
         * @note Address: 0x8133B2F4 (4.3U)
         * @note Size: 0x40
         */
        Base::~Base() {}

        /**
         * @note Address: 0x8133B334 (4.3U)
         * @note Size: 0xC0
         */
        // https://decomp.me/scratch/fOAdi
        File::File(EGG::Heap* pHeap, const char* fileName, ARCHandle* arc, const char* unk2, int offset, u32 length, bool isInNand) : Base() {
            mDoneTask = FALSE;
            mLastError = NAND_RESULT_OK;
            mpHeap = pHeap;
            mpArc = arc;
            mFileOffset = offset;
            mpLength = length;
            mInit = true;
            mFilePerms = NAND_ACCESS_NONE;
            mpBuffer = NULL;
            mpCmpBuffer = NULL;
            mResult = IPL_NAND_RESULT_NONE;
            mFatalError = false;
            mIsNandFull = false;
            mIsInNand = isInNand;

            strncpy(msFileName, fileName, NAND_MAX_PATH + 1);
            if (unk2) {
                strncpy(msUnkFileName, unk2, NAND_MAX_PATH + 1);
            }
            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        /**
         * @note Address: 0x8133B3F4 (4.3U)
         * @note Size: 0xC0
         */
        // https://decomp.me/scratch/FjG9e
        File::File(EGG::Heap* pHeap, const char* fileName, u8* buffer, u32 length, u8 perms) : Base() {
            mDoneTask = FALSE;
            mLastError = NAND_RESULT_OK;
            mpHeap = pHeap;
            mpArc = NULL;
            mFileOffset = 0;
            mpLength = length;
            mInit = true;
            mFilePerms = perms;
            mpBuffer = buffer;
            mpCmpBuffer = NULL;
            mResult = IPL_NAND_RESULT_NONE;
            mFatalError = false;
            mIsNandFull = false;
            mIsInNand = TRUE;
            
            strncpy(msFileName, fileName, NAND_MAX_PATH + 1);

            mpCmpBuffer = new(mpHeap, -BUFFER_HEAP) u8[mpLength];
            memcpy(mpCmpBuffer, mpBuffer, mpLength);

            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        /**
         * @note Address: 0x8133B4B4 (4.3U)
         * @note Size: 0x78
         */
        File::~File() {
            if (mInit == true && mpBuffer) {
                delete[] mpBuffer;
            }
        }

        /**
         * @note Address: 0x8133B52C (4.3U)
         * @note Size: 0xF0
         */
        BOOL File::open_(u8 attr) {
            ARCHandle* handle;

            if (mpArc) {
                if (mIsInNand) {
                    // This part seems to be never used.
                    s32 result = wrapper::PrivateOpen(msUnkFileName, &mNandFile, attr);
                    if (nand_error_handling(result) == FALSE) {
                        return FALSE;
                    }
                }
                return ARCOpen(mpArc, msFileName, &mArcFile) == TRUE;
            }
            else {
                if (mIsInNand) {
                    s32 result = wrapper::PrivateOpen(msFileName, &mNandFile, attr);
                    return nand_error_handling(result);
                }
                else {
                    if (System::getNand()->getDescriptor() < 0) {
                        handle = NULL;
                    }
                    else {
                        handle = System::getNand()->getArc();
                    }

                    return ARCOpen(handle, msFileName, &mArcFile) == TRUE;
                }
            }
        }

        /**
         * @note Address: 0x8133B61C (4.3U)
         * @note Size: 0x1B4
         */
        void File::readBlock_(void* buffer, int length, int offset) {
            int arcOffset;
            s32 result;

            if (mpArc) {
                arcOffset = ARCGetStartOffset(&mArcFile);

                if (mIsInNand) {
                    result = wrapper::Seek(&mNandFile, mFileOffset + arcOffset + offset, 0);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
            }
            else {
                if (mIsInNand) {
                    result = wrapper::Seek(&mNandFile, mFileOffset + offset, 0);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
                else {
                    arcOffset = ARCGetStartOffset(&mArcFile);

                    result = ES_SeekContentFile(System::getNand()->getDescriptor(), mFileOffset + arcOffset + offset, 0);
                    if (result < 0) {
                        System::err_log(ES, result, 229);
                        System::err_display(MESG_ERR_CONTENT);
                    }

                    result = ES_ReadContentFile(System::getNand()->getDescriptor(), buffer, length);
                    if (result < 0) {
                        System::err_log(ES, result, 237);
                        System::err_display(MESG_ERR_CONTENT);
                    }
                }
            }
        }

        /**
         * @note Address: 0x8133B7D0 (4.3U)
         * @note Size: 0xBC
         */
        u32 File::getDecodeSize_(const u8* buffer) {
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) {
                return CXGetUncompressedSize(buffer);
            }
            else if (buffer[0] == 'Y') {
                return Rvl_decode_szs_size(buffer);
            }
            else if (buffer[0] == 'L') {
                return CXGetUncompressedSize(&buffer[4]);
            }
            else {
                return Rvl_decode_ash_size(buffer);
            }
        }

        /**
         * @note Address: 0x8133B88C (4.3U)
         * @note Size: 0x84
         */
        u32 File::getRawSize_() {
            u32 length = 0;

            if (mpArc) {
                length = ARCGetLength(&mArcFile);
            }
            else {
                if (mIsInNand) {
                    s32 result = wrapper::GetLength(&mNandFile, &length);
                    nand_error_handling(result);
                }
                else {
                    length = ARCGetLength(&mArcFile);
                }
            }

            return length;
        }

        /**
         * @note Address: 0x8133B910 (4.3U)
         * @note Size: 0x30
         */
        BOOL File::isSliCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'Y', 'a', 'z');
        }

        /*
         `isAsrCompressed` checks for `ASH`, and `isAshCompressed` checks for `ASR`, this should be the other way round.
         Luckily, when the IPL uses either one of those routines, it only calls Rvl_decode.
         Which also checks the magic without the little mistake.
        */

        /**
         * @note Address: 0x8133B940 (4.3U)
         * @note Size: 0x30
         */
        BOOL File::isAsrCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'A','S','H');
        }

        /**
         * @note Address: 0x8133B970 (4.3U)
         * @note Size: 0x30
         */
        BOOL File::isAshCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'A','S','R');
        }

        /**
         * @note Address: 0x8133B9A0 (4.3U)
         * @note Size: 0x94
         */
        BOOL File::isLz7Compressed(const u8* buffer) {
            // Check the file extension
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) {
                return TRUE;
            }
            // Check the magic
            else {
                BOOL result = FALSE;
                if (CHECK_MAGIC4(buffer, 'L','Z','7','7')) {
                    result = TRUE;
                }
                return result;
            }
        }

        /**
         * @note Address: 0x8133BA34 (4.3U)
         * @note Size: 0xB8
         */
        BOOL File::isCompressed(const u8* buffer) {
            if (isSliCompressed(buffer) || isAsrCompressed(buffer) || isAshCompressed(buffer) || isLz7Compressed(buffer)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        /**
         * @note Address: 0x8133BAEC (4.3U)
         * @note Size: 0x74
         */
        void File::uncompressLz7(const u8* src, u8* dest) {
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) {
                CXUncompressLZ(src, dest);
            }
            else {
                CXUncompressLZ(&src[4], dest);
            }
        }

        /**
         * @note Address: 0x8133BB60 (4.3U)
         * @note Size: 0x300
         */
        // https://decomp.me/scratch/IsA3X
        void File::read() {
            if (open_(NAND_ACCESS_READ)) {
                if (mpLength == 0) {
                    EGG::Heap* usedHeap;

                    mpLength = OSRoundUp32B(getRawSize_());

                    // Heap used to allocate the data.
                    usedHeap = System::getUnk28Heap();
                    if (System::getUnk28Heap() == NULL) {
                        usedHeap = System::getAppHeap();
                    }

                    mpCmpBuffer = new(usedHeap, -BUFFER_HEAP) u8[mpLength];
                }

                u8  headerData[EXT_SIZE]     ALIGN32;
                u8  sum[NET_MD5_DIGEST_SIZE] ALIGN32;

                u8* buffer = headerData;

                // Read the header
                readBlock_(headerData, mpLength >= EXT_SIZE ? EXT_SIZE : STANDARD_SIZE);

                s8  bHasMd5 = FALSE;
                u32 fileLen;
                u32 fileOff = 0;
                // Check if the header is an MD5 file.
                if (CHECK_MAGIC4(headerData, 'I','M','D','5')) {
                    fileLen = *(u32*)(&headerData[4]);  // get file length

                    bHasMd5 = TRUE;

                    memcpy(sum, &headerData[0x10], NET_MD5_DIGEST_SIZE);    // copy MD5 sum

                    fileOff = 0x20;
                    buffer += 0x20;
                }

                // Check if the file is compressed.
                if (isCompressed(buffer)) {
                    // read compressed data
                    readBlock_(mpCmpBuffer, mpLength);

                    // prepare for decompression
                    mpLength = getDecodeSize_(&mpCmpBuffer[fileOff]);
                    mpBuffer = getBuffer_(mpLength);

                    // LZ7 compressed
                    if (isLz7Compressed(buffer)) {
                        uncompressLz7(&mpCmpBuffer[fileOff], mpBuffer);
                        u32 rawSize = getRawSize_();    // unused
                    }
                    else { // any other compression
                        Rvl_decode(mpBuffer, &mpCmpBuffer[fileOff]);
                    }

                    // calculate MD5. (result 1 = success, result 2 = failed)
                    if (bHasMd5 == TRUE) {
                        mResult = calcMD5_(sum, &mpCmpBuffer[fileOff], fileLen);
                    }
                }
                else {
                    // just read the data.
                    mpBuffer = getBuffer_(mpLength - fileOff);
                    readBlock_(mpBuffer, mpLength - fileOff, fileOff);

                    // calculate MD5. (result 1 = success, result 2 = failed)
                    if (bHasMd5 == TRUE) {
                        mResult = calcMD5_(sum, mpBuffer, fileLen);
                    }
                }

                // clear uneeded stuff
                delete[] mpCmpBuffer;
                mpCmpBuffer = NULL;

                DCStoreRange(mpBuffer, mpLength);

                close_();
            }
            mDoneTask = TRUE;
            callback_();
        }

        /**
         * @note Address: 0x8133BE60 (4.3U)
         * @note Size: 0x4
         */
        void File::callback_() {}

        /**
         * @note Address: 0x8133BE64 (4.3U)
         * @note Size: 0x90
         */
        IPLNandResult File::calcMD5_(const u8* sum, const u8* buffer, u32 length) const {
            u8 calcSum[NET_MD5_DIGEST_SIZE];

            NETCalcMD5(calcSum, buffer, length);

            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                if (calcSum[i] != sum[i]) {
                    return IPL_NAND_RESULT_VERIFY_ERROR;
                }
            }

            return IPL_NAND_RESULT_SUCCESS;
        }

        /**
         * @note Address: 0x8133BEF4 (4.3U)
         * @note Size: 0xA8
         */
        BOOL File::close_() {
            s32 result;

            if (mpArc) {
                if (mIsInNand) {
                    result = wrapper::Close(&mNandFile);
                    return nand_error_handling(result);
                }
                else {
                    return ARCClose(&mArcFile) == TRUE;
                }
            }
            else {
                if (mIsInNand) {
                    result = wrapper::Close(&mNandFile);
                    return nand_error_handling(result);
                }
                else {
                    return ARCClose(&mArcFile) == TRUE;
                }
            }
        }

        /**
         * @note Address: 0x8133BF9C (4.3U)
         * @note Size: 0x14
         */
        u8* File::getBuffer_(u32 length) {
            return new(mpHeap, BUFFER_HEAP) u8[length];
        }

        /**
         * @note Address: 0x8133BFB0 (4.3U)
         * @note Size: 0x194
         */
        LangFile::LangFile(EGG::Heap* pHeap, const char* dirName, const char* fileName, ARCHandle* arc, bool isInNand) {
            char fullName[NAND_MAX_PATH + 1];
            
            cmnFile = NULL;
            langFile = NULL;

            strncpy(fullName, dirName, NAND_MAX_PATH + 1);
            strncat(fullName, "/common/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH + 1) - strlen(fullName));

            cmnFile = new(pHeap, CLASS_HEAP) File(pHeap, fullName, arc, NULL, 0, 0, isInNand);

            char* langPath = utility::Language::getPath();

            strncpy(fullName, dirName, NAND_MAX_PATH + 1);
            strncat(fullName, "/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, langPath, (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, "/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH + 1) - strlen(fullName));

            langFile = new(pHeap, CLASS_HEAP) File(pHeap, fullName, arc, NULL, 0, 0, isInNand);
        }

        /**
         * @note Address: 0x8133C144 (4.3U)
         * @note Size: 0xA8
         */
        LangFile::~LangFile() {
            if (cmnFile)  delete cmnFile;
            if (langFile) delete langFile;
        }

        /**
         * @note Address: 0x8133C1EC (4.3U)
         * @note Size: 0x64
         */
        void LangFile::read() {
            if (cmnFile)  cmnFile->read();
            if (langFile) langFile->read();
        }

        /**
         * @note Address: 0x8133C250 (4.3U)
         * @note Size: 0x3C
         */
        LayoutFile::LayoutFile(EGG::Heap* pHeap, const char* dirName, const char* fileName, ARCHandle* arc, bool isNandFile)
        : LangFile(pHeap, dirName, fileName, arc, isNandFile) {}

        /**
         * @note Address: 0x8133C28C (4.3U)
         * @note Size: 0x128
         */
        void File::write() {
            u8 unused;

            EGG::Heap* usedHeap = System::getUnk0CHeap();
            if (System::getUnk0CHeap() == NULL) {
                usedHeap = System::getAppHeap();
            }

            u8* buffer = new(usedHeap, -BUFFER_HEAP) u8[BUFFER_SIZE];
            s32 result;
            BOOL success;

            ES_SetUid(SYSMENU_TITLE_ID);

            result = wrapper::PrivateGetType(msFileName, &unused);
            nand_error_handling(result);

            if (mLastError == NAND_RESULT_NOEXISTS) {
                result = wrapper::PrivateCreate(msFileName, mFilePerms, NAND_ACCESS_NONE);
                success = nand_error_handling(result);

                if (!success) {
                    goto done;
                }
            }

            result = wrapper::PrivateSafeOpen(msFileName, &mNandFile, NAND_ACCESS_WRITE, buffer, BUFFER_SIZE);
            success = nand_error_handling(result);

            if (success) {
                result = wrapper::Write(&mNandFile, mpCmpBuffer, mpLength);
                nand_error_handling(result);

                result = wrapper::SafeClose(&mNandFile);
                nand_error_handling(result);
            }

done:
            delete[] buffer;

            delete[] mpCmpBuffer;
            mpCmpBuffer = NULL;

            mDoneTask = TRUE;
        }

        /**
         * @note Address: 0x8133C3B4 (4.3U)
         * @note Size: 0x110
         */
        BOOL File::nand_error_handling(int errcode) {
            BOOL result = FALSE;

            mLastError = errcode;

            if (errcode >= 0) {
                return TRUE;
            }
            else {
                switch (errcode) {
                    case NAND_RESULT_EXISTS: {
                        result = TRUE;
                        break;
                    }
                    case NAND_RESULT_NOEXISTS: {
                        mResult = IPL_NAND_RESULT_OPEN_ERROR;
                        break;
                    }
                    case NAND_RESULT_MAXFILES:
                    case NAND_RESULT_MAXBLOCKS: {
                        mIsNandFull = true;
                        break;
                    }
                    case NAND_RESULT_AUTHENTICATION:
                    case NAND_RESULT_ECC_CRIT: {
                        mResult = IPL_NAND_RESULT_VERIFY_ERROR;
                        break;
                    }
                    case NAND_RESULT_CORRUPT: {
                        mFatalError = true;
                        System::err_display(MESG_ERR_NAND);
                        break;
                    }
                    default: {
                        mFatalError = true;
                        System::err_log(NAND, errcode, 808);
                        System::err_display(MESG_ERR_CONTENT);
                    }
                }
                return result;
            }
        }

        /**
         * @note Address: 0x8133C4C4 (4.3U)
         * @note Size: 0x4
         */
        void Base::write() {}

        /**
         * @note Address: 0x8133C4C8 (4.3U)
         * @note Size: 0xA8
         */
        bool LangFile::isFatalError() {
            bool result = true;
            bool fatalError = false;

            if (cmnFile && cmnFile->isFatalError()) {
                fatalError = true;
            }

            if (!fatalError) {
                bool fatalError = false;
                if (langFile && langFile->isFatalError()) {
                    fatalError = true;
                }
                if (!fatalError) {
                    result = false;
                }
            }

            return result;
        }

        /**
         * @note Address: 0x8133C570 (4.3U)
         * @note Size: 0x8
         */
        bool File::isFatalError() {
            return mFatalError;
        }

        /**
         * @note Address: 0x8133C578 (4.3U)
         * @note Size: 0x44
         */
        bool LangFile::checkData() {
            if (langFile) return langFile->checkData();
            if (cmnFile)  return cmnFile->checkData();
            return false;
        }

        /**
         * @note Address: 0x8133C5BC (4.3U)
         * @note Size: 0xA8
         */
        bool LangFile::isFinished() {
            bool result = false;
            bool finished = true;
            
            if (cmnFile && !cmnFile->isFinished()) {
                finished = false;
            }

            if (finished) {
                bool finished = true;
                if (langFile && !langFile->isFinished()) {
                    finished = false;
                }
                if (finished) {
                    result = true;
                }
            }

            return result;
        }

        /**
         * @note Address: 0x8133C680 (4.3U)
         * @note Size: 0x58
         */
        LayoutFile::~LayoutFile() {}
    }
}


