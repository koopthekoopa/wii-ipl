#include <nw4r/snd/NandSoundArchive.h>
#include <nw4r/ut.h>

#include <revolution/nand.h>

#include <cstring>

#include <new>

namespace nw4r {
    namespace snd {
        class NandSoundArchive::NandFileStream : public ut::NandFileStream {
            public:
                NandFileStream(const NANDFileInfo* pFileInfo, u32 offset, u32 size);
                NandFileStream(const char* path, u32 offset, u32 size);

                virtual s32     Read(void* dst, u32 size);                                          // 0x14
                virtual void    Seek(s32 offset, u32 origin);                                       // 0x44

                virtual u32     Tell() const    { return ut::NandFileStream::Tell() - mOffset; }    // 0x58

                virtual u32     GetSize() const { return mSize; }                                   // 0x40

            private:
                s32 mOffset;    // 0x16C
                s32 mSize;      // 0x170
        };

        NandSoundArchive::NandSoundArchive() : mOpen(false) {}

        NandSoundArchive::~NandSoundArchive() {
            Close();
        }

        bool NandSoundArchive::Open(const char* path) {
            if (mOpen) {
                Close();
            }

            if (NANDOpen(path, &mFileInfo, NAND_ACCESS_READ)) {
                return false;
            }

            mOpen = true;

            if (!LoadFileHeader()) {
                return false;
            }

            char currentDir[64];
            NANDGetCurrentDir(currentDir);
            u32 currDirLen = strlen(currentDir);

            char extRoot[FILE_PATH_MAX];
            strncpy(extRoot, currentDir, currDirLen + 1);

            for (int i = strlen(path) - 1; i >= 0; i--) {
                if (path[i] == '/' || path[i] == '\\') {
                    // @bug Long path can overflow extRoot buffer
                    strncat(extRoot, path, i);
                    extRoot[currDirLen + i] = '\0';
                    break;
                }
            }

            SetExternalFileRoot(extRoot);
            return true;
        }

        void NandSoundArchive::Close() {
            if (mOpen) {
                NANDClose(&mFileInfo);
                mOpen = false;
            }

            Shutdown();
        }

        ut::FileStream* NandSoundArchive::OpenStream(void* buffer, int size, u32 offset, u32 length) const {
            if (!mOpen) {
                return NULL;
            }

            if (size < sizeof(NandFileStream)) {
                return NULL;
            }

            return new(buffer) NandFileStream(&mFileInfo, offset, length);
        }

        ut::FileStream* NandSoundArchive::OpenExtStream(void* buffer, int size, const char* extPath, u32 offset, u32 length) const {
            if (!mOpen) {
                return NULL;
            }

            if (size < sizeof(NandFileStream)) {
                return NULL;
            }

            NandFileStream* pExtStream =
                new(buffer) NandFileStream(extPath, offset, length);

            if (!pExtStream->IsAvailable()) {
                pExtStream->~NandFileStream();
                return NULL;
            }

            return pExtStream;
        }

        int NandSoundArchive::detail_GetRequiredStreamBufferSize() const {
            return sizeof(NandFileStream);
        }

        bool NandSoundArchive::LoadFileHeader() {
            u8 headerArea[detail::SoundArchiveFile::HEADER_AREA_SIZE];

            static const u32 headerAlignSize = ut::RoundUp(sizeof(detail::SoundArchiveFile::Header), 32);

            void* pFile = ut::RoundUp<u8>(headerArea, 32);

            if (NANDSeek(&mFileInfo, 0, NAND_SEEK_BEG) != NAND_RESULT_OK) {
                return false;
            }

            s32 bytesRead = NANDRead(&mFileInfo, pFile, headerAlignSize);
            if (bytesRead != headerAlignSize) {
                return false;
            }

            mFileReader.Init(pFile);
            Setup(&mFileReader);

            return true;
        }

        bool NandSoundArchive::LoadHeader(void* buffer, u32 size) {
            u32 infoSize = mFileReader.GetInfoChunkSize();

            u32 infoOffsetU = mFileReader.GetInfoChunkOffset();
            s32 infoOffset = *reinterpret_cast<s32*>(&infoOffsetU);

            if (size < infoSize) {
                return false;
            }

            s32 currOffset = NANDSeek(&mFileInfo, infoOffset, NAND_SEEK_BEG);
            if (currOffset != infoOffset) {
                return false;
            }

            s32 bytesRead = NANDRead(&mFileInfo, buffer, infoSize);
            if (bytesRead != infoSize) {
                return false;
            }

            mFileReader.SetInfoChunk(buffer, infoSize);
            return true;
        }

        bool NandSoundArchive::LoadLabelStringData(void* buffer, u32 size) {
            u32 labelSize = mFileReader.GetLabelStringChunkSize();

            u32 labelOffsetU = mFileReader.GetLabelStringChunkOffset();
            s32 labelOffset = *reinterpret_cast<s32*>(&labelOffsetU);

            if (size < labelSize) {
                return false;
            }

            s32 currOffset = NANDSeek(&mFileInfo, labelOffset, NAND_SEEK_BEG);
            if (currOffset != labelOffset) {
                return false;
            }

            s32 bytesRead = NANDRead(&mFileInfo, buffer, labelSize);
            if (bytesRead != labelSize) {
                return false;
            }

            mFileReader.SetStringChunk(buffer, labelSize);
            return true;
        }

        NandSoundArchive::NandFileStream::NandFileStream(const NANDFileInfo* pFileInfo, u32 offset, u32 size) :
        ut::NandFileStream(pFileInfo, NAND_ACCESS_READ, false),
            mOffset(offset),
            mSize(size) {

            if (IsAvailable()) {
                if (mSize == 0) {
                    mSize = ut::NandFileStream::GetSize();
                }

                ut::NandFileStream::Seek(mOffset, SEEK_BEG);
            }
        }

        NandSoundArchive::NandFileStream::NandFileStream(const char* path, u32 offset, u32 size) :
        ut::NandFileStream(path, NAND_ACCESS_READ),
            mOffset(offset),
            mSize(size) {

            if (IsAvailable()) {
                if (mSize == 0) {
                    mSize = ut::NandFileStream::GetSize();
                }

                ut::NandFileStream::Seek(mOffset, SEEK_BEG);
            }
        }

        s32 NandSoundArchive::NandFileStream::Read(void* dst, u32 size) {
            u32 endOffset = mOffset + mSize;
            u32 startOffset = ut::NandFileStream::Tell();

            if (startOffset + size > endOffset) {
                size = ut::RoundUp(endOffset - ut::NandFileStream::Tell(), 32);
            }

            s32 bytesRead = ut::NandFileStream::Read(dst, size);
            DCStoreRange(dst, size);

            return bytesRead;
        }

        void NandSoundArchive::NandFileStream::Seek(s32 offset, u32 origin) {
            switch (origin) {
                case SEEK_BEG: {
                    offset += mOffset;
                    break;
                }
                case SEEK_CUR: {
                    offset += ut::NandFileStream::Tell();
                    break;
                }
                case SEEK_END: {
                    offset = mOffset + mSize - offset;
                    break;
                }
                default: {
                    return;
                }
            }

            if (offset < mOffset) {
                offset = mOffset;
            }
            else if (offset > mOffset + mSize) {
                offset = mOffset + mSize;
            }

            ut::NandFileStream::Seek(offset, SEEK_BEG);
        }
    }
}
