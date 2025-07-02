#ifndef NW4R_SND_MIDI_SEQ_TRACK_H
#define NW4R_SND_MIDI_SEQ_TRACK_H

#include <nw4r/snd/SeqTrack.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            // No midi for you
            class MidiSeqTrack : public SeqTrack {
                MidiSeqTrack();
                virtual ~MidiSeqTrack() {}
            };
        }
    }
}

#endif // NW4R_SND_MIDI_SEQ_TRACK_H
