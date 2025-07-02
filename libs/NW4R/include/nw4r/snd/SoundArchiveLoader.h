#ifndef NW4R_SND_SOUND_ARCHIVE_LOADER_H
#define NW4R_SND_SOUND_ARCHIVE_LOADER_H

#include <nw4r/snd/types.h>

#include <nw4r/ut.h>

#include <revolution/os/OSMutex.h>

namespace nw4r {
    namespace snd {
        class SoundArchive;
        class SoundMemoryAllocatable;
        namespace detail {
            class FileStreamHandle {
                public:
                    FileStreamHandle(ut::FileStream* pStream) :
                    mStream(pStream) {}

                    ~FileStreamHandle() {
                        if (mStream != NULL) {
                            mStream->Close();
                        }
                    }

                    ut::FileStream* GetFileStream() { return mStream; }

                    ut::FileStream* operator->()    { return mStream; }

                    operator bool() const           { return mStream; }

                private:
                    ut::FileStream* mStream;    // 0x00
            };

            class SoundArchiveLoader {
                public:
                    explicit SoundArchiveLoader(const SoundArchive& soundArchive);
                    ~SoundArchiveLoader();

                    void*   LoadGroup(u32 id, SoundMemoryAllocatable* allocatable, void** waveBuffer, u32 blockSize);
                    s32     ReadFile(u32 id, void* dst, s32 size, s32 offset);
                    void*   LoadFile(u32 id, SoundMemoryAllocatable* allocatable);

                    void    Cancel();

                private:
                    mutable OSMutex     mMutex;                             // 0x00
                    const SoundArchive& mArc;                               // 0x18
                    u8                  mStreamArea[STREAM_BUFFER_SIZE];    // 0x1C
                    ut::FileStream*     mStream;                            // 0x21C
            };
        }
    }
}

#endif
