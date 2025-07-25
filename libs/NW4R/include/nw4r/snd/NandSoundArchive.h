#ifndef NW4R_SND_NAND_SOUND_ARCHIVE_H
#define NW4R_SND_NAND_SOUND_ARCHIVE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/SoundArchive.h>
#include <nw4r/snd/SoundArchiveFile.h>

#include <nw4r/ut.h>

#include <revolution/nand.h>

namespace nw4r {
    namespace snd {
        class NandSoundArchive : public SoundArchive {
            private:
                class NandFileStream;

            public:
                NandSoundArchive();
                virtual ~NandSoundArchive(); // 0x08

                virtual const void*     detail_GetFileAddress(u32 id) const         { return NULL; }                                // 0x0C
                virtual const void*     detail_GetWaveDataFileAddress(u32 id) const { return NULL; }                                // 0x10

                virtual int             detail_GetRequiredStreamBufferSize() const;                                                 // 0x14

                virtual ut::FileStream* OpenStream(void* buffer, int size, u32 offset, u32 length) const;                           // 0x18

                virtual ut::FileStream* OpenExtStream(void* buffer, int size, const char* extPath, u32 offset, u32 length) const;   // 0x1C

                bool                    Open(const char* path);
                void                    Close();

                bool                    LoadHeader(void* buffer, u32 size);
                bool                    LoadLabelStringData(void* buffer, u32 size);

                u32                     GetHeaderSize() const                       { return mFileReader.GetInfoChunkSize(); }
                u32                     GetLabelStringDataSize() const              { return mFileReader.GetLabelStringChunkSize(); }

            private:
                bool                    LoadFileHeader() NO_INLINE;

            private:
                detail::SoundArchiveFileReader  mFileReader;    // 0x108
                NANDFileInfo                    mFileInfo;      // 0x14C
                bool                            mOpen;          // 0x1D8
        };

    }
}

#endif
