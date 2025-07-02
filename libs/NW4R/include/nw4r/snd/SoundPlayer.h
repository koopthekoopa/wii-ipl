#ifndef NW4R_SND_SOUND_PLAYER_H
#define NW4R_SND_SOUND_PLAYER_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/BasicSound.h>
#include <nw4r/snd/PlayerHeap.h>

#include <revolution/os.h>
#include <revolution/wpad.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class ExternalSoundPlayer;
            class SeqSound;
            template<typename T> class SoundInstanceManager;
            class StrmSound;
            class WaveSound;
        }

        class SoundPlayer {
            public:
                SoundPlayer();
                ~SoundPlayer();

                void    InitParam();
                void    Update();

                void    StopAllSound(int frames);
                void    PauseAllSound(bool flag, int frames);

                void    SetVolume(f32 volume);

                int     detail_GetOutputLine() const;
                bool    detail_IsEnabledOutputLine() const;

                f32     detail_GetRemoteOutVolume(int idx) const;

                void    detail_InsertSoundList(detail::BasicSound* sound);
                void    detail_RemoveSoundList(detail::BasicSound* sound);

                void    detail_InsertPriorityList(detail::BasicSound* sound);
                void    detail_RemovePriorityList(detail::BasicSound* sound);

                void    detail_SortPriorityList();

                detail::SeqSound*   detail_AllocSeqSound(int priority, int startPriority,
                                                        detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                        detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                        detail::SoundInstanceManager<detail::SeqSound>* manager);

                detail::StrmSound*  detail_AllocStrmSound(int priority, int startPriority,
                                                        detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                        detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                        detail::SoundInstanceManager<detail::StrmSound>* manager);

                detail::WaveSound*  detail_AllocWaveSound(int priority, int startPriority,
                                                        detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                        detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                        detail::SoundInstanceManager<detail::WaveSound>* manager);

                int                 CalcPriorityReduction(detail::BasicSound::AmbientArgInfo* ambientArgInfo, u32 id);

                void                InitAmbientArg(detail::BasicSound* sound, detail::BasicSound::AmbientArgInfo* ambientArgInfo);

                void                SetPlayableSoundCount(int count);
                void                detail_SetPlayableSoundLimit(int limit);

                bool                CheckPlayableSoundCount(int startPriority, detail::ExternalSoundPlayer* extPlayer);

                void                detail_AppendPlayerHeap(detail::PlayerHeap* pHeap);
                detail::PlayerHeap* detail_AllocPlayerHeap(detail::BasicSound* sound);
                void                detail_FreePlayerHeap(detail::BasicSound* sound);

                int                 GetPlayingSoundCount() const    { return mSoundList.GetSize(); }
                int                 GetPlayableSoundCount() const   { return mPlayableCount; }

                f32                 GetVolume() const               { return mVolume; }

                detail::BasicSound* detail_GetLowestPrioritySound() {
                    // @bug UB when the list is empty
                    return &mPriorityList.GetFront();
                }

                f32                 detail_GetMainOutVolume() const { return mMainOutVolume; }

            private:
                detail::BasicSoundPlayerPlayList    mSoundList;                             // 0x00
                detail::BasicSoundPlayerPrioList    mPriorityList;                          // 0x0C
                detail::PlayerHeapList              mHeapList;                              // 0x18

                u16                                 mPlayableCount;                         // 0x24
                u16                                 mPlayableLimit;                         // 0x26

                f32                                 mVolume;                                // 0x28
                bool                                mOutputLineFlagEnable;                  // 0x2C
                bool                                mUsePlayerHeap;                         // 0x2D
                int                                 mOutputLineFlag;                        // 0x30
                f32                                 mMainOutVolume;                         // 0x34
                f32                                 mRemoteOutVolume[WPAD_MAX_CONTROLLERS]; // 0x38
        };

    }
}

#endif
