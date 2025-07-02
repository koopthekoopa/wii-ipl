#ifndef NW4R_SND_MIDI_SEQ_PLAYER_H
#define NW4R_SND_MIDI_SEQ_PLAYER_H

#include <nw4r/snd/SeqPlayer.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            // No midi for you
            class MidiSeqPlayer : public SeqPlayer {
                MidiSeqPlayer();
                virtual ~MidiSeqPlayer() {}
            };
        }
    }
}

#endif // NW4R_SND_MIDI_SEQ_PLAYER_H
