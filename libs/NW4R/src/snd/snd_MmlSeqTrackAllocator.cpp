#include <nw4r/snd/MmlSeqTrackAllocator.h>
#include <nw4r/snd/MmlSeqTrack.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            SeqTrack* MmlSeqTrackAllocator::AllocTrack(SeqPlayer* seqPlayer) {
                MmlSeqTrack* track = mTrackPool.Alloc();

                if (track != NULL) {
                    track->SetSeqPlayer(seqPlayer);
                    track->SetMmlParser(mParser);
                }

                return track;
            }

            void MmlSeqTrackAllocator::FreeTrack(SeqTrack* track) {
                track->SetSeqPlayer(NULL);
                mTrackPool.Free(static_cast<MmlSeqTrack*>(track));
            }

            u32 MmlSeqTrackAllocator::Create(void* buffer, u32 size) {
                return mTrackPool.Create(buffer, size);
            }

            void MmlSeqTrackAllocator::Destroy(void* buffer, u32 size) {
                mTrackPool.Destroy(buffer, size);
            }
        }
    }
}
