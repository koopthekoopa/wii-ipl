#include <nw4r/snd/ExternalSoundPlayer.h>
#include <nw4r/snd/SoundPlayer.h>
#include <nw4r/snd/SoundInstanceManager.h>

#include <nw4r/snd/SeqSound.h>
#include <nw4r/snd/WaveSound.h>
#include <nw4r/snd/StrmSound.h>

namespace nw4r {
    namespace snd {
        SoundPlayer::SoundPlayer() :
        mPlayableCount(1),
        mPlayableLimit(1),
        mUsePlayerHeap(false) {
            InitParam();
        }

        SoundPlayer::~SoundPlayer() {
            StopAllSound(0);
        }

        void SoundPlayer::InitParam() {
            mVolume = 1.0f;
            mOutputLineFlag = OUTPUT_LINE_MAIN;
            mOutputLineFlagEnable = false;

            mMainOutVolume = 1.0f;
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                mRemoteOutVolume[i] = 1.0f;
            }
        }

        void SoundPlayer::Update() {
            for (detail::BasicSoundPlayerPlayList::Iterator it = mSoundList.GetBeginIter(); it != mSoundList.GetEndIter();) {
                detail::BasicSoundPlayerPlayList::Iterator currIt = it++;
                currIt->Update();
            }
            detail_SortPriorityList();
        }

        void SoundPlayer::StopAllSound(int frames) {
            for (detail::BasicSoundPlayerPlayList::Iterator it = mSoundList.GetBeginIter(); it != mSoundList.GetEndIter();) {
                detail::BasicSoundPlayerPlayList::Iterator currIt = it++;
                currIt->Stop(frames);
            }
        }

        void SoundPlayer::SetVolume(f32 volume) {
            mVolume = volume;
        }

        int SoundPlayer::detail_GetOutputLine() const {
            return mOutputLineFlag;
        }

        bool SoundPlayer::detail_IsEnabledOutputLine() const {
            return mOutputLineFlagEnable;
        }

        f32 SoundPlayer::detail_GetRemoteOutVolume(int idx) const {
            return mRemoteOutVolume[idx];
        }

        void SoundPlayer::detail_InsertSoundList(detail::BasicSound* sound) {
            mSoundList.PushBack(sound);
            sound->SetSoundPlayer(this);
        }

        void SoundPlayer::detail_RemoveSoundList(detail::BasicSound* sound) {
            mSoundList.Erase(sound);
            sound->SetSoundPlayer(NULL);
        }

        void SoundPlayer::detail_InsertPriorityList(detail::BasicSound* sound) {
            detail::BasicSoundPlayerPrioList::Iterator it =
                mPriorityList.GetBeginIter();

            for (; it != mPriorityList.GetEndIter(); it++) {
                if (sound->CalcCurrentPlayerPriority() <
                    it->CalcCurrentPlayerPriority()) {
                    break;
                }
            }

            mPriorityList.Insert(it, sound);
        }

        void SoundPlayer::detail_RemovePriorityList(detail::BasicSound* sound) {
            mPriorityList.Erase(sound);
        }

        void SoundPlayer::detail_SortPriorityList() {
            detail::BasicSoundPlayerPrioList listsByPrio[detail::BasicSound::PRIORITY_MAX + 1];

            while (!mPriorityList.IsEmpty()) {
                detail::BasicSound& rSound = mPriorityList.GetFront();
                mPriorityList.PopFront();
                listsByPrio[rSound.CalcCurrentPlayerPriority()].PushBack(&rSound);
            }

            for (int i = 0; i < detail::BasicSound::PRIORITY_MAX + 1; i++) {
                while (!listsByPrio[i].IsEmpty()) {
                    detail::BasicSound& rSound = listsByPrio[i].GetFront();
                    listsByPrio[i].PopFront();
                    mPriorityList.PushBack(&rSound);
                }
            }
        }

        detail::SeqSound* SoundPlayer::detail_AllocSeqSound(int priority, int startPriority,
                                                            detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                            detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                            detail::SoundInstanceManager<detail::SeqSound>* manager) {
            if (manager == NULL) {
                return NULL;
            }

            int priorityReduction = CalcPriorityReduction(ambientArgInfo, id);

            startPriority = ut::Clamp(startPriority - priorityReduction, 0, detail::BasicSound::PRIORITY_MAX);

            if (!CheckPlayableSoundCount(startPriority, extPlayer)) {
                return NULL;
            }

            detail::SeqSound* sound = manager->Alloc(startPriority);
            if (sound == NULL) {
                return NULL;
            }

            detail_AllocPlayerHeap(sound);

            if (ambientArgInfo != NULL) {
                InitAmbientArg(sound, ambientArgInfo);
            }

            sound->SetPriority(priority);
            sound->GetAmbientParam().priority = priorityReduction;

            detail_InsertSoundList(sound);

            if (extPlayer != NULL) {
                extPlayer->InsertSoundList(sound);
            }

            detail_InsertPriorityList(sound);

            return sound;
        }

        detail::StrmSound* SoundPlayer::detail_AllocStrmSound(int priority, int startPriority,
                                                            detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                            detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                            detail::SoundInstanceManager<detail::StrmSound>* manager) {
            if (manager == NULL) {
                return NULL;
            }

            int priorityReduction = CalcPriorityReduction(ambientArgInfo, id);

            startPriority = ut::Clamp(startPriority - priorityReduction, 0, detail::BasicSound::PRIORITY_MAX);

            if (!CheckPlayableSoundCount(startPriority, extPlayer)) {
                return NULL;
            }

            detail::StrmSound* sound = manager->Alloc(startPriority);
            if (sound == NULL) {
                return NULL;
            }

            detail_AllocPlayerHeap(sound);

            if (ambientArgInfo != NULL) {
                InitAmbientArg(sound, ambientArgInfo);
            }

            sound->SetPriority(priority);
            sound->GetAmbientParam().priority = priorityReduction;

            detail_InsertSoundList(sound);

            if (extPlayer != NULL) {
                extPlayer->InsertSoundList(sound);
            }

            detail_InsertPriorityList(sound);

            return sound;
        }

        detail::WaveSound* SoundPlayer::detail_AllocWaveSound(int priority, int startPriority,
                                                            detail::BasicSound::AmbientArgInfo* ambientArgInfo,
                                                            detail::ExternalSoundPlayer* extPlayer, u32 id,
                                                            detail::SoundInstanceManager<detail::WaveSound>* manager) {

            if (manager == NULL) {
                return NULL;
            }

            int priorityReduction = CalcPriorityReduction(ambientArgInfo, id);

            startPriority = ut::Clamp(startPriority - priorityReduction, 0,
                                    detail::BasicSound::PRIORITY_MAX);

            if (!CheckPlayableSoundCount(startPriority, extPlayer)) {
                return NULL;
            }

            detail::WaveSound* sound = manager->Alloc(startPriority);
            if (sound == NULL) {
                return NULL;
            }

            detail_AllocPlayerHeap(sound);

            if (ambientArgInfo != NULL) {
                InitAmbientArg(sound, ambientArgInfo);
            }

            sound->SetPriority(priority);
            sound->GetAmbientParam().priority = priorityReduction;

            detail_InsertSoundList(sound);

            if (extPlayer != NULL) {
                extPlayer->InsertSoundList(sound);
            }

            detail_InsertPriorityList(sound);

            return sound;
        }

        int SoundPlayer::CalcPriorityReduction(detail::BasicSound::AmbientArgInfo* ambientArgInfo, u32 id) {
            int priority = 0;

            if (ambientArgInfo != NULL) {
                SoundParam param;

                ambientArgInfo->paramUpdateCallback->detail_Update(&param, id, NULL, ambientArgInfo->arg, detail::BasicSound::AmbientParamUpdateCallback::PARAM_UPDATE_PRIORITY);

                priority = param.priority;
            }

            return priority;
        }

        void SoundPlayer::InitAmbientArg(detail::BasicSound* sound,detail::BasicSound::AmbientArgInfo* ambientArgInfo) {
            if (ambientArgInfo == NULL) {
                return;
            }

            void* pExtArg = ambientArgInfo->argAllocaterCallback->detail_AllocAmbientArg(
                ambientArgInfo->argSize);

            if (pExtArg == NULL) {
                return;
            }

            memcpy(pExtArg, ambientArgInfo->arg, ambientArgInfo->argSize);

            sound->SetAmbientParamCallback(ambientArgInfo->paramUpdateCallback,
                                            ambientArgInfo->argUpdateCallback,
                                            ambientArgInfo->argAllocaterCallback,
                                            pExtArg);
        }

        void SoundPlayer::SetPlayableSoundCount(int count) {
            mPlayableCount = count;

            if (mUsePlayerHeap) {
                count = ut::Clamp<u16>(count, 0, mPlayableLimit);
                mPlayableCount = count;
            }

            while (GetPlayingSoundCount() > GetPlayableSoundCount()) {
                detail::BasicSound* pDrosound = detail_GetLowestPrioritySound();
                pDrosound->Shutdown();
            }
        }

        void SoundPlayer::detail_SetPlayableSoundLimit(int limit) {
            mPlayableLimit = limit;
        }

        bool SoundPlayer::CheckPlayableSoundCount(
            int startPriority, detail::ExternalSoundPlayer* extPlayer) {

            if (GetPlayableSoundCount() == 0) {
                return false;
            }

            while (GetPlayingSoundCount() >= GetPlayableSoundCount()) {
                detail::BasicSound* pDrosound = detail_GetLowestPrioritySound();

                if (pDrosound == NULL) {
                    return false;
                }

                if (startPriority < pDrosound->CalcCurrentPlayerPriority()) {
                    return false;
                }

                pDrosound->Shutdown();
            }

            if (extPlayer != NULL) {
                if (extPlayer->GetPlayableSoundCount() == 0) {
                    return false;
                }

                while (extPlayer->GetPlayingSoundCount() >= extPlayer->GetPlayableSoundCount()) {
                    detail::BasicSound* pDrosound = extPlayer->GetLowestPrioritySound();

                    if (pDrosound == NULL) {
                        return false;
                    }

                    if (startPriority < pDrosound->CalcCurrentPlayerPriority()) {
                        return false;
                    }

                    pDrosound->Shutdown();
                }
            }

            return true;
        }

        void SoundPlayer::detail_AppendPlayerHeap(detail::PlayerHeap* pHeap) {
            pHeap->SetSoundPlayer(this);
            mHeapList.PushBack(pHeap);

            mUsePlayerHeap = true;
        }

        detail::PlayerHeap* SoundPlayer::detail_AllocPlayerHeap(detail::BasicSound* sound) {
            if (mHeapList.IsEmpty()) {
                return NULL;
            }

            detail::PlayerHeap& rHeap = mHeapList.GetFront();
            mHeapList.PopFront();

            rHeap.SetSound(sound);
            sound->SetPlayerHeap(&rHeap);
            rHeap.Clear();

            return &rHeap;
        }

        void SoundPlayer::detail_FreePlayerHeap(detail::BasicSound* sound) {
            detail::PlayerHeap* pHeap = sound->GetPlayerHeap();

            if (pHeap != NULL) {
                mHeapList.PushBack(pHeap);
            }

            if (pHeap != NULL) {
                pHeap->SetSound(NULL);
            }

            sound->SetPlayerHeap(NULL);
        }
    }
}
