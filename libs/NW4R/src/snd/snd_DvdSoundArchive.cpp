#include <nw4r/snd/DvdSoundArchive.h>
#include <nw4r/ut.h>

#include <cstring>

#include <new>

namespace nw4r {
    namespace snd {
        class DvdSoundArchive::DvdFileStream : public ut::DvdLockedFileStream {
            public:
                DvdFileStream(const DVDFileInfo* fileInfo, u32 offset, u32 size);
                DvdFileStream(s32 entrynum, u32 offset, u32 size);

                virtual s32     Read(void* dst, u32 size);                                          // 0x14
                virtual void    Seek(s32 offset, u32 origin);                                       // 0x44

                virtual u32     Tell() const        { return ut::DvdFileStream::Tell() - mOffset; } // 0x58

                virtual u32     GetSize() const     { return mSize; }                               // 0x40

            private:
                s32 mOffset;    // 0x70
                s32 mSize;      // 0x74
        };

        DvdSoundArchive::DvdSoundArchive() :
        mOpen(false) {}

        DvdSoundArchive::~DvdSoundArchive() {
            Close();
        }

        bool DvdSoundArchive::Open(s32 entrynum) {
            if (!DVDFastOpen(entrynum, &mFileInfo)) {
                return false;
            }

            mOpen = true;
            return LoadFileHeader();
        }

        bool DvdSoundArchive::Open(const char* path) {
            s32 entrynum = DVDConvertPathToEntrynum(path);
            if (entrynum < 0) {
                return false;
            }

            if (!Open(entrynum)) {
                return false;
            }

            char extRoot[FILE_PATH_MAX];
            for (int i = strlen(path) - 1; i >= 0; i--) {
                if (path[i] == '/' || path[i] == '\\') {
                    // @bug Long path can overflow extRoot buffer
                    strncpy(extRoot, path, i);
                    extRoot[i] = '\0';

                    SetExternalFileRoot(extRoot);
                    break;
                }
            }

            return true;
        }

        void DvdSoundArchive::Close() {
            DVDClose(&mFileInfo);
            mOpen = false;
            Shutdown();
        }

        ut::FileStream* DvdSoundArchive::OpenStream(void* buffer, int size, u32 offset, u32 length) const {
            if (!mOpen) {
                return NULL;
            }

            if (size < sizeof(DvdFileStream)) {
                return NULL;
            }

            return new(buffer) DvdFileStream(&mFileInfo, offset, length);
        }

        ut::FileStream* DvdSoundArchive::OpenExtStream(void* buffer, int size, const char* extPath, u32 offset, u32 length) const {
            if (!mOpen) {
                return NULL;
            }

            if (size < sizeof(DvdFileStream)) {
                return NULL;
            }

            s32 entrynum = DVDConvertPathToEntrynum(extPath);
            if (entrynum < 0) {
                return NULL;
            }

            return new(buffer) DvdFileStream(entrynum, offset, length);
        }

        int DvdSoundArchive::detail_GetRequiredStreamBufferSize() const {
            return sizeof(DvdFileStream);
        }

        bool DvdSoundArchive::LoadFileHeader() {
            u8 headerArea[detail::SoundArchiveFile::HEADER_AREA_SIZE];

            static const u32 headerAlignSize = ut::RoundUp(sizeof(detail::SoundArchiveFile::Header), 32);

            void* pFile = ut::RoundUp<u8>(headerArea, 32);

            s32 bytesRead = DVDReadPrio(&mFileInfo, pFile, headerAlignSize, 0, DVD_PRIO_MEDIUM);

            if (bytesRead != headerAlignSize) {
                return false;
            }

            mFileReader.Init(pFile);
            Setup(&mFileReader);

            return true;
        }

        bool DvdSoundArchive::LoadHeader(void* buffer, u32 size) {
            u32 infoSize = mFileReader.GetInfoChunkSize();
            s32 infoOffset = mFileReader.GetInfoChunkOffset();

            if (size < infoSize) {
                return false;
            }

            s32 bytesRead = DVDReadPrio(&mFileInfo, buffer, infoSize, infoOffset, DVD_PRIO_MEDIUM);

            if (bytesRead != infoSize) {
                return false;
            }

            mFileReader.SetInfoChunk(buffer, infoSize);
            return true;
        }

        bool DvdSoundArchive::LoadLabelStringData(void* buffer, u32 size) {
            u32 labelSize = mFileReader.GetLabelStringChunkSize();
            s32 labelOffset = mFileReader.GetLabelStringChunkOffset();

            if (size < labelSize) {
                return false;
            }

            s32 bytesRead = DVDReadPrio(&mFileInfo, buffer, labelSize, labelOffset, DVD_PRIO_MEDIUM);

            if (bytesRead != labelSize) {
                return false;
            }

            mFileReader.SetStringChunk(buffer, labelSize);
            return true;
        }

        DvdSoundArchive::DvdFileStream::DvdFileStream(const DVDFileInfo* fileInfo, u32 offset, u32 size) :
        DvdLockedFileStream(fileInfo, false),
        mOffset(offset),
        mSize(size) {
            if (mSize == 0) {
                mSize = ut::DvdFileStream::GetSize();
            }

            ut::DvdFileStream::Seek(mOffset, SEEK_BEG);
        }

        DvdSoundArchive::DvdFileStream::DvdFileStream(s32 entrynum, u32 offset, u32 size) :
        DvdLockedFileStream(entrynum),
        mOffset(offset),
        mSize(size) {
            if (mSize == 0) {
                mSize = ut::DvdFileStream::GetSize();
            }

            ut::DvdFileStream::Seek(mOffset, SEEK_BEG);
        }

        s32 DvdSoundArchive::DvdFileStream::Read(void* dst, u32 size) {
            u32 endOffset = mOffset + mSize;
            u32 startOffset = ut::DvdFileStream::Tell();

            if (startOffset + size > endOffset) {
                size = ut::RoundUp(endOffset - ut::DvdFileStream::Tell(), 32);
            }

            return DvdLockedFileStream::Read(dst, size);
        }

        void DvdSoundArchive::DvdFileStream::Seek(s32 offset, u32 origin) {
            switch (origin) {
                case SEEK_BEG: {
                    offset += mOffset;
                    break;
                }
                case SEEK_CUR: {
                    offset += ut::DvdFileStream::Tell();
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

            ut::DvdFileStream::Seek(offset, SEEK_BEG);
        }
    }
}
