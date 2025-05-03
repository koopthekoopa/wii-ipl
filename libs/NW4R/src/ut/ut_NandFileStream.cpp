#include <nw4r/ut/NandFileStream.h>

namespace nw4r {
    namespace ut {
        NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(NandFileStream, FileStream);

        void NandFileStream::NandAsyncCallback_(s32 result, NANDCommandBlock* pBlock) {
            NandFileStream* p = reinterpret_cast<NandFileStreamInfo*>(pBlock)->stream;
        
            p->mIsBusy = false;
            p->mAsyncResult = result;
        
            if (p->mCallback != NULL) {
                p->mCallback(result, p, p->mArg);
            }
        }
        
        void NandFileStream::Initialize_() {
            mCanRead = false;
            mCanWrite = false;
        
            mCloseOnDestroyFlg = false;
            mCloseEnableFlg = false;
        
            mAvailable = false;
            mIsBusy = false;
        
            mCallback = NULL;
            mArg = NULL;
            mAsyncResult = NAND_RESULT_OK;
        
            mFileInfo.stream = this;
        }
        
        NandFileStream::NandFileStream(const char* pPath, u32 mode) {
            Initialize_();
            Open(pPath, mode);
        }
        
        NandFileStream::NandFileStream(const NANDFileInfo* pInfo, u32 mode, bool enableClose) {
            Initialize_();
            Open(pInfo, mode, enableClose);
        }
        
        NandFileStream::~NandFileStream() {
            if (mCloseOnDestroyFlg) {
                Close();
            }
        }
        
        bool NandFileStream::Open(const char* pPath, u32 mode) {
            if (mCloseOnDestroyFlg) {
                Close();
            }
        
            mCanRead = mode & NAND_ACCESS_READ;
            mCanWrite = mode & NAND_ACCESS_WRITE;
        
            if (NANDOpen(pPath, &mFileInfo.nandInfo, mode) != NAND_RESULT_OK) {
                return false;
            }
        
            if (mCanRead) {
                u32 fileSize;
        
                if (NANDGetLength(&mFileInfo.nandInfo, &fileSize) != NAND_RESULT_OK) {
                    NANDClose(&mFileInfo.nandInfo);
                    return false;
                }
        
                mFilePosition.SetFileSize(fileSize);
            }
        
            mFilePosition.Seek(0, SEEK_BEG);
        
            mCloseOnDestroyFlg = true;
            mCloseEnableFlg = true;
            mAvailable = true;
        
            return true;
        }
        
        bool NandFileStream::Open(const NANDFileInfo* pInfo, u32 mode, bool enableClose) {
            if (mCloseOnDestroyFlg) {
                Close();
            }
        
            mCanRead = mode & NAND_ACCESS_READ;
            mCanWrite = mode & NAND_ACCESS_WRITE;
        
            mFileInfo.nandInfo = *pInfo;
        
            u32 fileSize;
            if (NANDGetLength(&mFileInfo.nandInfo, &fileSize) != NAND_RESULT_OK) {
                if (enableClose) {
                    NANDClose(&mFileInfo.nandInfo);
                }
        
                return false;
            }
        
            mFilePosition.SetFileSize(fileSize);
            mFilePosition.Seek(0, SEEK_BEG);
        
            mCloseOnDestroyFlg = false;
            mCloseEnableFlg = enableClose;
            mAvailable = true;
        
            return true;
        }
        
        void NandFileStream::Close() {
            if (mCloseEnableFlg && mAvailable) {
                NANDClose(&mFileInfo.nandInfo);
                mAvailable = false;
            }
        }
        
        s32 NandFileStream::Read(void* pDst, u32 size) {
            NANDSeek(&mFileInfo.nandInfo, mFilePosition.Tell(), NAND_SEEK_BEG);
        
            s32 result = NANDRead(&mFileInfo.nandInfo, pDst, size);
            
            mFilePosition.Skip(result);
        
            return result;
        }
        
        bool NandFileStream::ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg) {
            mCallback = pCallback;
            mArg = pCallbackArg;
            mIsBusy = true;
        
            NANDSeek(&mFileInfo.nandInfo, mFilePosition.Tell(), NAND_SEEK_BEG);
        
            bool success = NANDReadAsync(&mFileInfo.nandInfo, pDst, size, NandAsyncCallback_, &mFileInfo.nandBlock) == NAND_RESULT_OK;
        
            if (success) {
                mFilePosition.Skip(size);
            }
            else {
                mIsBusy = false;
            }
        
            return success;
        }
        
        void NandFileStream::Write(const void* pSrc, u32 size) {
            NANDSeek(&mFileInfo.nandInfo, mFilePosition.Tell(), NAND_SEEK_BEG);
            s32 result = NANDWrite(&mFileInfo.nandInfo, pSrc, size);
        
            // @bug Error code will be interpreted as a negative size
            mFilePosition.Append(result);
        }
        
        bool NandFileStream::WriteAsync(const void* pSrc, u32 size, IOStreamCallback pCallback, void* pCallbackArg) {
            mCallback = pCallback;
            mArg = pCallbackArg;
            mIsBusy = true;
        
            NANDSeek(&mFileInfo.nandInfo, mFilePosition.Tell(), NAND_SEEK_BEG);
        
            s32 result = NANDWriteAsync(&mFileInfo.nandInfo, pSrc, size,
                                        NandAsyncCallback_, &mFileInfo.nandBlock);
        
            if (result == NAND_RESULT_OK) {
                mFilePosition.Append(size);
            }
            else {
                mIsBusy = false;
            }
        
            return result == NAND_RESULT_OK;
        }
        
        void NandFileStream::Seek(s32 offset, u32 origin) {
            mFilePosition.Seek(offset, origin);
        }
    }
}
