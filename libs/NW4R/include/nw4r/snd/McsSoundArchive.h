#ifndef NW4R_SND_MCS_SOUND_ARCHIVE_H
#define NW4R_SND_MCS_SOUND_ARCHIVE_H

#include <revolution/types.h>

#include <nw4r/snd/SoundArchive.h>

#include <nw4r/ut/RuntimeTypeInfo.h>
#include <nw4r/ut/FileStream.h>

namespace nw4r {
    namespace snd {
        class McsSoundArchive : public SoundArchive {
            class McsFileStream;
            McsSoundArchive();
        };
    }
}

#endif // NW4R_SND_MCS_SOUND_ARCHIVE_H
