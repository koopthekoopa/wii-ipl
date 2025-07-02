#ifndef NW4R_SND_NOTE_ON_CALLBACK_H
#define NW4R_SND_NOTE_ON_CALLBACK_H

#include <nw4r/snd/Channel.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            typedef struct NoteOnInfo {
                int                         prgNo;                  // 0x00

                int                         key;                    // 0x04
                int                         velocity;               // 0x08
                int                         length;                 // 0x0C
                int                         initPan;                // 0x10
                int                         priority;               // 0x14
                int                         voiceOutCount;          // 0x18

                Channel::ChannelCallback    channelCallback;        // 0x1C
                u32                         channelCallbackData;    // 0x20
            };

            class SeqPlayer;
            class NoteOnCallback {
                public:
                    virtual ~NoteOnCallback() {}    // 0x08

                    virtual Channel*    NoteOn(SeqPlayer* player, int bankNo, const NoteOnInfo& noteOnInfo) = 0;    // 0x0C
            };
        }
    }
}

#endif
