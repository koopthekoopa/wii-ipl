#ifndef NW4R_SND_EXTERNAL_SOUND_PLAYER_H
#define NW4R_SND_EXTERNAL_SOUND_PLAYER_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/SoundHandle.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class ExternalSoundPlayer {
                public:
                    ExternalSoundPlayer();
                    ~ExternalSoundPlayer();

                    int         GetPlayableSoundCount() const   { return mPlayableCount; }
                    void        SetPlayableSoundCount(int count);

                    int         GetPlayingSoundCount() const    { return mSoundList.GetSize(); }

                    f32         detail_GetVolume() const        { return mVolume; }
                    BasicSound* GetLowestPrioritySound();

                    void        InsertSoundList(BasicSound* sound);
                    void        RemoveSoundList(BasicSound* sound);

                    template<typename TForEachFunc>
                    TForEachFunc ForEachSound(TForEachFunc func, bool reverse) {
                        if (reverse) {
                            BasicSoundExtPlayList::RevIterator it = mSoundList.GetBeginReverseIter();

                            while (it != mSoundList.GetEndReverseIter()) {
                                BasicSoundExtPlayList::RevIterator curr = it;

                                SoundHandle handle;
                                handle.detail_AttachSoundAsTempHandle(&*curr);
                                func(handle);

                                if (handle.IsAttachedSound()) {
                                    it++;
                                }
                            }
                        }
                        else {
                            for (BasicSoundExtPlayList::Iterator itr = mSoundList.GetBeginIter(); itr != mSoundList.GetEndIter();) {
                                BasicSoundExtPlayList::Iterator curr = itr++;
                                SoundHandle handle;
                                handle.detail_AttachSoundAsTempHandle(&*curr);
                                func(handle);
                            }
                        }

                        return func;
                    }

                private:
                    BasicSoundExtPlayList   mSoundList;     // 0x00
                    u16                     mPlayableCount; // 0x0C
                    f32                     mVolume;        // 0x10
                };
        }
    }
}

#endif // NW4R_SND_AXFX_IMPL_H
