#include <nw4r/snd/ExternalSoundPlayer.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            void ExternalSoundPlayer::InsertSoundList(BasicSound* sound) {
                mSoundList.PushBack(sound);
                sound->SetExternalSoundPlayer(this);
            }

            void ExternalSoundPlayer::RemoveSoundList(BasicSound* sound) {
                mSoundList.Erase(sound);
                sound->SetExternalSoundPlayer(NULL);
            }

            BasicSound* ExternalSoundPlayer::GetLowestPrioritySound() {
                int lowestPrio = BasicSound::PRIORITY_MAX + 1;
                BasicSound* pLowest = NULL;

                for (BasicSoundExtPlayList::Iterator it = mSoundList.GetBeginIter();
                    it != mSoundList.GetEndIter(); it++) {

                    int priority = it->CalcCurrentPlayerPriority();

                    if (lowestPrio > priority) {
                        pLowest = &*it;
                        lowestPrio = priority;
                    }
                }

                return pLowest;
            }
        }
    }
}
