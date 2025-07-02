#include <nw4r/snd/MmlSeqTrack.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            MmlSeqTrack::MmlSeqTrack() {
                mMmlParserParam.noteWaitFlag = true;
                mMmlParserParam.tieFlag = false;
                mMmlParserParam.cmpFlag = true;
                mMmlParserParam.callStackDepth = 0;
            }

            ParseResult MmlSeqTrack::Parse(bool doNoteOn) {
                return mParser->Parse(this, doNoteOn);
            }
        }
    }
}
