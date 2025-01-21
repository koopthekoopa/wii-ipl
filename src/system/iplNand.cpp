#include "system/iplNand.h"

#include "config.h"

#include "system/rvl_dec.h"
#include "system/iplSystem.h"
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

#define CHECK_MAGIC3(buffer, sig0, sig1, sig2)          buffer[0] == sig0 && buffer[1] == sig1 && buffer[2] == sig2
#define CHECK_MAGIC4(buffer, sig0, sig1, sig2, sig3)    buffer[0] == sig0 && buffer[1] == sig1 && buffer[2] == sig2 && buffer[3] == sig3

namespace ipl {
    namespace nand {
        Base::Base() {}
        Base::~Base() {}

        // https://decomp.me/scratch/fOAdi
        File::File(EGG::Heap* heap, const char* fileName, ARCHandle* arc, const char* unk2, int offset, u32 length, bool isNandFile) : Base() {
            mbDoneTask = FALSE;
            mLastError = NAND_RESULT_OK;
            mpHeap = heap;
            mpArc = arc;
            mFileOffset = offset;
            mpLength = length;
            mbInit = true;
            mFilePerms = NAND_ACCESS_NONE;
            mpBuffer = NULL;
            mpCmpBuffer = NULL;
            mResult = IPL_NAND_RESULT_NONE;
            mbFatalError = false;
            mbIsFullForTask = false;
            mbIsNandFile = isNandFile;

            strncpy(msFileName, fileName, NAND_MAX_PATH + 1);
            if (unk2) {
                strncpy(msUnkFileName, unk2, NAND_MAX_PATH + 1);
            }
            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        // https://decomp.me/scratch/FjG9e
        File::File(EGG::Heap* heap, const char* fileName, u8* buffer, u32 length, u8 perms) : Base() {
            mbDoneTask = FALSE;
            mLastError = NAND_RESULT_OK;
            mpHeap = heap;
            mpArc = NULL;
            mFileOffset = 0;
            mpLength = length;
            mbInit = true;
            mFilePerms = perms;
            mpBuffer = buffer;
            mpCmpBuffer = NULL;
            mResult = IPL_NAND_RESULT_NONE;
            mbFatalError = false;
            mbIsFullForTask = false;
            mbIsNandFile = TRUE;
            
            strncpy(msFileName, fileName, NAND_MAX_PATH + 1);

            mpCmpBuffer = new(mpHeap, -BUFFER_HEAP) u8[mpLength];
            memcpy(mpCmpBuffer, mpBuffer, mpLength);

            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        File::~File() {
            if (mbInit == true && mpBuffer) {
                delete[] mpBuffer;
            }
        }

        BOOL File::open_(u8 attr) {
            ARCHandle* handle;

            if (mpArc) {
                // This part seems to be never used.
                if (mbIsNandFile) {
                    s32 result = wrapper::PrivateOpen(msUnkFileName, &mNandFile, attr);
                    if (nand_error_handling(result) == FALSE) {
                        return FALSE;
                    }
                }
                return ARCOpen(mpArc, msFileName, &mArcFile) == TRUE;
            }
            else {
                // NAND File?
                if (mbIsNandFile) {
                    s32 result = wrapper::PrivateOpen(msFileName, &mNandFile, attr);
                    return nand_error_handling(result);
                }
                else { // System Menu file?
                    if (System::getNandManager()->getDescriptor() < 0) {
                        handle = NULL;
                    }
                    else {
                        handle = System::getNandManager()->getArc();
                    }

                    return ARCOpen(handle, msFileName, &mArcFile) == TRUE;
                }
            }
        }

        void File::readBlock_(void* buffer, int length, int offset) {
            int arcOffset;
            s32 result;

            if (mpArc) {
                arcOffset = ARCGetStartOffset(&mArcFile);

                if (mbIsNandFile) {
                    result = wrapper::Seek(&mNandFile, mFileOffset + arcOffset + offset, 0);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
            }
            else {
                if (mbIsNandFile) {
                    result = wrapper::Seek(&mNandFile, mFileOffset + offset, 0);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
                else {
                    arcOffset = ARCGetStartOffset(&mArcFile);

                    result = ES_SeekContentFile(System::getNandManager()->getDescriptor(), mFileOffset + arcOffset + offset, 0);
                    if (result < 0) {
                        System::err_log("ES", result, 229);
                        System::err_display(MESG_ERR_CONTENT);
                    }

                    result = ES_ReadContentFile(System::getNandManager()->getDescriptor(), buffer, length);
                    if (result < 0) {
                        System::err_log("ES", result, 237);
                        System::err_display(MESG_ERR_CONTENT);
                    }
                }
            }
        }

        u32 File::getDecodeSize_(const u8* buffer) {
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) { // Check file extension
                return CXGetUncompressedSize(buffer);
            }
            else if (buffer[0] == 'Y') { // See if it is Yaz0 by checking if the first letter is 'Y' (...why)
                return Rvl_decode_szs_size(buffer);
            }
            else if (buffer[0] == 'L') { // See if it is LZ77 by checking if the first letter is 'L' (again...why)
                return CXGetUncompressedSize(&buffer[4]);
            }
            else {                       // Otherwise, decompress it with Rvl_decode
                return Rvl_decode_ash_size(buffer);
            }
        }

        u32 File::getRawSize_() {
            u32 length = 0;

            if (mpArc) {
                length = ARCGetLength(&mArcFile);
            }
            else {
                if (mbIsNandFile) {
                    s32 result = wrapper::GetLength(&mNandFile, &length);
                    nand_error_handling(result);
                }
                else {
                    length = ARCGetLength(&mArcFile);
                }
            }

            return length;
        }

        BOOL File::isSliCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'Y', 'a', 'z');
        }

        /*
         `isAsrCompressed` checks for `ASH`, and `isAshCompressed` checks for `ASR`, this should be the other way round.
         Luckily, when the IPL uses either one of those routines, it only calls Rvl_decode.
         Which also checks the magic without the little mistake.
        */

        BOOL File::isAsrCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'A','S','H');
        }

        BOOL File::isAshCompressed(const u8* buffer) {
            return CHECK_MAGIC3(buffer, 'A','S','R');
        }

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

        BOOL File::isCompressed(const u8* buffer) {
            if (isSliCompressed(buffer) || isAsrCompressed(buffer) || isAshCompressed(buffer) || isLz7Compressed(buffer)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        void File::uncompressLz7(const u8* src, u8* dest) {
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) {
                CXUncompressLZ(src, dest);
            }
            else {
                CXUncompressLZ(&src[4], dest);
            }
        }

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

                u8  headerData[EXT_SIZE]     ATTRIBUTE_ALIGN(DEFAULT_ALIGN);
                u8  sum[NET_MD5_DIGEST_SIZE] ATTRIBUTE_ALIGN(DEFAULT_ALIGN);

                u8* buffer = headerData;

                // Read the header
                readBlock_(headerData, mpLength >= EXT_SIZE ? EXT_SIZE : STANDARD_SIZE);

                s8  bHasMd5 = FALSE;
                u32 fileLen;
                u32 fileOff = 0;
                // Check if the header is an MD5 file.
                if (CHECK_MAGIC4(headerData, 'I','M','D','5')) {
                    fileLen = *(u32*)(&headerData[4]);  // Get file length

                    bHasMd5 = TRUE;

                    memcpy(sum, &headerData[0x10], NET_MD5_DIGEST_SIZE);    // Copy MD5 sum

                    fileOff = 0x20;
                    buffer += 0x20;
                }

                // Check if the file is compressed
                if (isCompressed(buffer)) {
                    // Read compressed data
                    readBlock_(mpCmpBuffer, mpLength);

                    // Prepare for decompression
                    mpLength = getDecodeSize_(&mpCmpBuffer[fileOff]);
                    mpBuffer = getBuffer_(mpLength);

                    // LZ77 compression
                    if (isLz7Compressed(buffer)) {
                        uncompressLz7(&mpCmpBuffer[fileOff], mpBuffer);
                        u32 rawSize = getRawSize_(); // Unused
                    }
                    else { // Any other compression
                        Rvl_decode(mpBuffer, &mpCmpBuffer[fileOff]);
                    }

                    // Calculate MD5
                    if (bHasMd5 == TRUE) {
                        mResult = calcMD5_(sum, &mpCmpBuffer[fileOff], fileLen);
                    }
                }
                else {
                    // Just read the data
                    mpBuffer = getBuffer_(mpLength - fileOff);
                    readBlock_(mpBuffer, mpLength - fileOff, fileOff);

                    // Calculate MD5
                    if (bHasMd5 == TRUE) {
                        mResult = calcMD5_(sum, mpBuffer, fileLen);
                    }
                }

                // Clean up no longer needed stuff
                delete[] mpCmpBuffer;
                mpCmpBuffer = NULL;

                DCStoreRange(mpBuffer, mpLength);

                // Seems like there was going to be logic when close_ returns false, but it seemed like it was not included on release.
                // However it did left the compare instruction! So here is my way of generating that one instruction.
                if (!close_()) {
                    u32 dummy = 0;
                }
            }
            mbDoneTask = TRUE;
            callback_();
        }

        // For derived classes.
        void File::callback_() {}

        NandErrResult File::calcMD5_(const u8* sum, const u8* buffer, u32 length) const {
            u8 calcSum[NET_MD5_DIGEST_SIZE];

            NETCalcMD5(calcSum, buffer, length);

            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                if (calcSum[i] != sum[i]) {
                    return IPL_NAND_RESULT_VERIFY_ERROR;
                }
            }

            return IPL_NAND_RESULT_SUCCESS;
        }

        BOOL File::close_() {
            s32 result;

            if (mpArc) {
                if (mbIsNandFile) {
                    result = wrapper::Close(&mNandFile);
                    return nand_error_handling(result);
                }
                else {
                    return ARCClose(&mArcFile) == TRUE;
                }
            }
            else {
                if (mbIsNandFile) {
                    result = wrapper::Close(&mNandFile);
                    return nand_error_handling(result);
                }
                else {
                    return ARCClose(&mArcFile) == TRUE;
                }
            }
        }

        u8* File::getBuffer_(u32 length) {
            return new(mpHeap, BUFFER_HEAP) u8[length];
        }

        LangFile::LangFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool isNandFile) {
            char fullName[NAND_MAX_PATH + 1];
            
            mpCommonFile = NULL;
            mpLangFile = NULL;

            // Open the "common" file.
            strncpy(fullName, dirName, NAND_MAX_PATH + 1);
            strncat(fullName, "/common/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH + 1) - strlen(fullName));

            mpCommonFile = new(heap, CLASS_HEAP) File(heap, fullName, arc, NULL, 0, 0, isNandFile);

            char* langPath = utility::Language::getPath();

            // Open the language exclusive file
            strncpy(fullName, dirName, NAND_MAX_PATH + 1);
            strncat(fullName, "/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, langPath, (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, "/", (NAND_MAX_PATH + 1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH + 1) - strlen(fullName));

            mpLangFile = new(heap, CLASS_HEAP) File(heap, fullName, arc, NULL, 0, 0, isNandFile);
        }

        LangFile::~LangFile() {
            if (mpCommonFile)  delete mpCommonFile;
            if (mpLangFile) delete mpLangFile;
        }

        void LangFile::read() {
            if (mpCommonFile)  mpCommonFile->read();
            if (mpLangFile) mpLangFile->read();
        }

        // `LayoutFile` is literally `LangFile` lol.
        LayoutFile::LayoutFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool isNandFile)
        : LangFile(heap, dirName, fileName, arc, isNandFile) {}

        void File::write() {
            u8 dummy;

            EGG::Heap* usedHeap = System::getUnk0CHeap();
            if (System::getUnk0CHeap() == NULL) {
                usedHeap = System::getAppHeap();
            }

            u8* buffer = new(usedHeap, -BUFFER_HEAP) u8[BUFFER_SIZE];
            s32 result;
            BOOL success;

            ES_SetUid(SYSMENU_TITLE_ID);

            result = wrapper::PrivateGetType(msFileName, &dummy);
            nand_error_handling(result);

            // Create file if it does not exist.
            if (mLastError == NAND_RESULT_NOEXISTS) {
                result = wrapper::PrivateCreate(msFileName, mFilePerms, NAND_ACCESS_NONE);
                success = nand_error_handling(result);

                if (!success) {
                    goto done;
                }
            }

            // Open created file.
            result = wrapper::PrivateSafeOpen(msFileName, &mNandFile, NAND_ACCESS_WRITE, buffer, BUFFER_SIZE);
            success = nand_error_handling(result);

            // If successfully open, start writing the file.
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

            mbDoneTask = TRUE;
        }

        BOOL File::nand_error_handling(int result) {
            BOOL isGood = FALSE;

            mLastError = result;

            if (result >= 0) {
                return TRUE;
            }
            else {
                switch (result) {
                    // If the file exists, move on.
                    case NAND_RESULT_EXISTS: {
                        isGood = TRUE;
                        break;
                    }
                    // If it did not exist, open error occured.
                    case NAND_RESULT_NOEXISTS: {
                        mResult = IPL_NAND_RESULT_OPEN_ERROR;
                        break;
                    }
                    // Too big to do anymore NAND stuff.
                    case NAND_RESULT_MAXFILES:
                    case NAND_RESULT_MAXBLOCKS: {
                        mbIsFullForTask = true;
                        break;
                    }
                    // Authentication error
                    case NAND_RESULT_AUTHENTICATION:
                    case NAND_RESULT_ECC_CRIT: {
                        mResult = IPL_NAND_RESULT_VERIFY_ERROR;
                        break;
                    }
                    // Display the system memory is damaged screen.
                    case NAND_RESULT_CORRUPT: {
                        mbFatalError = true;
                        System::err_display(MESG_ERR_NAND);
                        break;
                    }
                    // Otherwise assume the system files are corrupted.
                    default: {
                        mbFatalError = true;
                        System::err_log("NAND", result, 808);
                        System::err_display(MESG_ERR_CONTENT);
                    }
                }
                return isGood;
            }
        }

        void Base::write() {}

        bool LangFile::isFatalError() {
            bool result = true;
            bool fatalError = false;

            if (mpCommonFile && mpCommonFile->isFatalError()) {
                fatalError = true;
            }

            if (!fatalError) {
                bool fatalError = false;
                if (mpLangFile && mpLangFile->isFatalError()) {
                    fatalError = true;
                }
                if (!fatalError) {
                    result = false;
                }
            }

            return result;
        }

        bool File::isFatalError() { return mbFatalError; }

        bool LangFile::checkData() {
            if (mpLangFile) return mpLangFile->checkData();
            if (mpCommonFile)  return mpCommonFile->checkData();
            return false;
        }

        bool LangFile::isFinished() {
            bool result = false;
            bool finished = true;
            
            if (mpCommonFile && !mpCommonFile->isFinished()) {
                finished = false;
            }

            if (finished) {
                bool finished = true;
                if (mpLangFile && !mpLangFile->isFinished()) {
                    finished = false;
                }
                if (finished) {
                    result = true;
                }
            }

            return result;
        }
        
        bool Base::isFatalError() { return false; }
        bool Base::checkData() { return false; }
        bool Base::isFinished() { return false; }
        void Base::read() {}
        
        LayoutFile::~LayoutFile() {}
    }
}


