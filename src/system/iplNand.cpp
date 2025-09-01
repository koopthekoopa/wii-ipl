#include "system/iplNand.h"

#include "config.h"

#include "system/rvl_dec.h"
#include "iplSystem.h"
#include "system/iplNandManager.h"

#include "iplUtility.h"

#include <revolution/cx.h>
#include <private/es.h>

#include <cstring>

#define BUFFER_SIZE     0x1000

#define STANDARD_SIZE   sizeof(MD5Head)
#define EXT_SIZE        sizeof(MD5Head) + 0x20

namespace ipl {
    namespace nand {
        Base::Base() {}
        Base::~Base() {}

        File::File(EGG::Heap* heap, const char* fileName, ARCHandle* arc, const char* nandFileName, int offset, u32 length, bool bIsInNand) :
        Base(),
        mbDoneTask(FALSE),
        mLastError(NAND_RESULT_OK),
        mpHeap(heap),
        mpArc(arc),
        mFileOffset(offset),
        mFileLength(length),
        mFileMode(MODE_WRITE),
        mFilePerms(NAND_ACCESS_NONE),
        mpBuffer(NULL), mpCmpBuffer(NULL),
        mResult(RESULT_NONE),
        mbFatalError(false),
        mbIsFullForTask(false),
        mbIsNandFile(bIsInNand) {
            strncpy(msFileName, fileName, NAND_MAX_PATH+1);
            if (nandFileName) {
                strncpy(msNandFileName, nandFileName, NAND_MAX_PATH+1);
            }
            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        File::File(EGG::Heap* heap, const char* fileName, u8* buffer, u32 length, u8 perms) :
        Base(),
        mbDoneTask(FALSE),
        mLastError(NAND_RESULT_OK),
        mpHeap(heap),
        mpArc(NULL),
        mFileOffset(0),
        mFileLength(length),
        mFileMode(MODE_READ),
        mFilePerms(perms),
        mpBuffer(buffer), mpCmpBuffer(NULL),
        mResult(RESULT_NONE),
        mbFatalError(false),
        mbIsFullForTask(false),
        mbIsNandFile(TRUE) {
            strncpy(msFileName, fileName, NAND_MAX_PATH+1);

            mpCmpBuffer = new(mpHeap, -DEFAULT_ALIGN) u8[mFileLength];
            memcpy(mpCmpBuffer, mpBuffer, mFileLength);

            memset(&mNandFile, 0, sizeof(NANDFileInfo));
        }

        File::~File() {
            if (mFileMode == MODE_WRITE && mpBuffer) {
                delete[] mpBuffer;
            }
        }

        BOOL File::open_(u8 attr) {
            ARCHandle* handle;

            if (mpArc) {
                if (mbIsNandFile) {
                    s32 result = wrapper::PrivateOpen(msNandFileName, &mNandFile, attr);
                    if (nand_error_handling(result) == FALSE) {
                        return FALSE;
                    }
                }
                return ARCOpen(mpArc, msFileName, &mArcFile) == TRUE;
            }
            else {
                // Is a NAND File?
                if (mbIsNandFile) {
                    s32 result = wrapper::PrivateOpen(msFileName, &mNandFile, attr);
                    return nand_error_handling(result);
                }
                else { // Is a System Menu file?
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
                    result = wrapper::Seek(&mNandFile, mFileOffset + arcOffset + offset, NAND_SEEK_BEG);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
            }
            else {
                if (mbIsNandFile) {
                    result = wrapper::Seek(&mNandFile, mFileOffset + offset, NAND_SEEK_BEG);
                    nand_error_handling(result);

                    result = wrapper::Read(&mNandFile, buffer, length);
                    nand_error_handling(result);
                }
                else {
                    arcOffset = ARCGetStartOffset(&mArcFile);

                    result = ES_SeekContentFile(System::getNandManager()->getDescriptor(), mFileOffset + arcOffset + offset, NAND_SEEK_BEG);
                    if (result < ES_ERR_OK) {
                        IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", result, 229);
                    }

                    result = ES_ReadContentFile(System::getNandManager()->getDescriptor(), buffer, length);
                    if (result < ES_ERR_OK) {
                        IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", result, 237);
                    }
                }
            }
        }

        u32 File::getDecodeSize_(const u8* buffer) {
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) { // Check file extension
                return CXGetUncompressedSize(buffer);
            }
            else if (buffer[0] == 'Y') { // Is Yaz0? (.szs; horrible way to check)
                return Rvl_decode_szs_size(buffer);
            }
            else if (buffer[0] == 'L') { // Is LZ77? (horrible way to check)
                return CXGetUncompressedSize(&buffer[4]);
            }
            else { // Otherwise, it's an ASH file.
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
            return NAND_CHECK_MAGIC3(buffer, 'Y','a','z');
        }

        /*
         `isAsrCompressed` checks for `ASH`, and `isAshCompressed` checks for `ASR`, this should be the other way round.
         Luckily, when the IPL uses either one of these routines, it for calling Rvl_decode.
         Which also checks the magic without the little mistake.
        */

        BOOL File::isAsrCompressed(const u8* buffer) {
            return NAND_CHECK_MAGIC3(buffer, 'A','S','H');
        }

        BOOL File::isAshCompressed(const u8* buffer) {
            return NAND_CHECK_MAGIC3(buffer, 'A','S','R');
        }

        BOOL File::isLz7Compressed(const u8* buffer) {
            // Check the file extension
            if (stricmp(&msFileName[strlen(msFileName) - 4], ".lz7") == 0) {
                return TRUE;
            }
            // Check the magic
            else {
                BOOL result = FALSE;
                if (NAND_CHECK_MAGIC4(buffer, 'L','Z','7','7')) {
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
                if (mFileLength == 0) {
                    EGG::Heap* usedHeap;

                    mFileLength = OSRoundUp32B(getRawSize_());

                    // Heap used to allocate the data.
                    usedHeap = System::getMem2App();
                    if (System::getMem2App() == NULL) {
                        usedHeap = System::getMem2Root();
                    }

                    mpCmpBuffer = new(usedHeap, -DEFAULT_ALIGN) u8[mFileLength];
                }

                // Read header
                u8  buffer[EXT_SIZE] ALIGN32;
                u8* pBuffer = buffer;
                readBlock_(buffer, mFileLength >= EXT_SIZE ? EXT_SIZE : STANDARD_SIZE);

                // For MD5
                NETMD5Sum md5sum ALIGN32;
                MD5Bool   bHasMd5 = false;
                MD5Head*  md5Head = reinterpret_cast<MD5Head*>(buffer);

                u32 fileLen, fileOff = 0;

                // Check if the header is an MD5 file.
                if (NAND_CHECK_MAGIC4(md5Head->sig, 'I','M','D','5')) {
                    fileLen = md5Head->length;

                    bHasMd5 = true;
                    memcpy(md5sum, md5Head->md5, NET_MD5_DIGEST_SIZE);    // Copy MD5 sum

                    // Set offset to file data
                    fileOff  = sizeof(MD5Head);
                    pBuffer += sizeof(MD5Head);
                }

                // Check if the file is compressed
                if (isCompressed(pBuffer)) {
                    // Read compressed data
                    readBlock_(mpCmpBuffer, mFileLength);

                    // Prepare for decompression
                    mFileLength = getDecodeSize_(&mpCmpBuffer[fileOff]);
                    mpBuffer = getBuffer_(mFileLength);

                    // LZ77 compression
                    if (isLz7Compressed(pBuffer)) {
                        uncompressLz7(&mpCmpBuffer[fileOff], mpBuffer);
                        u32 rawSize = getRawSize_(); // Unused
                    }
                    else { // Any other compression
                        Rvl_decode(mpBuffer, &mpCmpBuffer[fileOff]);
                    }

                    // Calculate MD5
                    if (bHasMd5 == true) {
                        mResult = calcMD5_(md5sum, &mpCmpBuffer[fileOff], fileLen);
                    }
                }
                else {
                    // Just read the data
                    mpBuffer = getBuffer_(mFileLength - fileOff);
                    readBlock_(mpBuffer, mFileLength - fileOff, fileOff);

                    // Calculate MD5
                    if (bHasMd5 == true) {
                        mResult = calcMD5_(md5sum, mpBuffer, fileLen);
                    }
                }

                // Clean up no longer needed stuff
                delete[] mpCmpBuffer;
                mpCmpBuffer = NULL;

                DCStoreRange(mpBuffer, mFileLength);

                // Seems like there was going to be logic when close_ returns false, but it seemed like it was not included on release.
                // However it did left the compare instruction!
                if (!close_()) {
                    u32 dummy = 0;
                }
            }
            
            mbDoneTask = TRUE;
            callback_();
        }

        // For derived classes.
        void File::callback_() {}

        int File::calcMD5_(const u8* sum, const u8* buffer, u32 length) const {
            NETMD5Sum md5;
            NETCalcMD5(md5, buffer, length);

            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                if (md5[i] != sum[i]) {
                    return RESULT_VERIFY_ERROR;
                }
            }

            return RESULT_SUCCESS;
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
            return new(mpHeap, DEFAULT_ALIGN) u8[length];
        }

        LangFile::LangFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool bIsNandFile) {
            char fullName[NAND_MAX_PATH+1];
            
            mpCommonFile = NULL;
            mpLangFile = NULL;

            // Open the "common" file.
            strncpy(fullName, dirName, NAND_MAX_PATH+1);
            strncat(fullName, "/common/", (NAND_MAX_PATH+1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH+1) - strlen(fullName));

            mpCommonFile = new(heap, CLASS_HEAP) File(heap, fullName, arc, NULL, 0, 0, bIsNandFile);

            char* langPath = utility::Language::getPath();

            // Open the language exclusive file
            strncpy(fullName, dirName, NAND_MAX_PATH+1);
            strncat(fullName, "/", (NAND_MAX_PATH+1) - strlen(fullName));
            strncat(fullName, langPath, (NAND_MAX_PATH+1) - strlen(fullName));
            strncat(fullName, "/", (NAND_MAX_PATH+1) - strlen(fullName));
            strncat(fullName, fileName, (NAND_MAX_PATH+1) - strlen(fullName));

            mpLangFile = new(heap, CLASS_HEAP) File(heap, fullName, arc, NULL, 0, 0, bIsNandFile);
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
        LayoutFile::LayoutFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool bIsNandFile)
        : LangFile(heap, dirName, fileName, arc, bIsNandFile) {}

        void File::write() {
            u8 dummy;

            EGG::Heap* usedHeap = System::getMem2Sys();
            if (System::getMem2Sys() == NULL) {
                usedHeap = System::getMem2Root();
            }

            u8* buffer = new(usedHeap, -DEFAULT_ALIGN) u8[BUFFER_SIZE];
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
                result = wrapper::Write(&mNandFile, mpCmpBuffer, mFileLength);
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
                        mResult = RESULT_OPEN_ERROR;
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
                        mResult = RESULT_VERIFY_ERROR;
                        break;
                    }
                    // Display the system memory is damaged screen.
                    case NAND_RESULT_CORRUPT: {
                        mbFatalError = true;
                        IPLErrorDisplay(MESG_ERR_NAND);
                        break;
                    }
                    // Otherwise assume the system files are corrupted.
                    default: {
                        mbFatalError = true;
                        IPLErrorLogAndDisplay(MESG_ERR_FILE, "NAND", result, 808);
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

        int LangFile::checkData() {
            if (mpLangFile) return mpLangFile->checkData();
            if (mpCommonFile) return mpCommonFile->checkData();
            return 0;
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
        int Base::checkData() { return 0; }
        bool Base::isFinished() { return false; }
        void Base::read() {}
        
        LayoutFile::~LayoutFile() {}
    }
}
