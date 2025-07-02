#include <nw4r/snd/SoundArchivePlayer.h>

#include <nw4r/snd/SoundPlayer.h>
#include <nw4r/snd/SoundHandle.h>
#include <nw4r/snd/SoundThread.h>
#include <nw4r/snd/SoundArchive.h>
#include <nw4r/snd/SoundArchiveFile.h>
#include <nw4r/snd/SoundArchiveLoader.h>

#include <nw4r/snd/Bank.h>
#include <nw4r/snd/MmlSeqTrack.h>
#include <nw4r/snd/SeqFile.h>

#include <nw4r/snd/DisposeCallbackManager.h>

#include <nw4r/snd/TaskThread.h>
#include <nw4r/snd/TaskManager.h>

#include <stddef.h>

namespace nw4r {
    namespace snd {
        SoundArchivePlayer::SoundArchivePlayer() :
        mSoundArchive(NULL),
        mSeqLoadCallback(*this),
        mSeqCallback(*this),
        mStrmCallback(*this),
        mWsdCallback(*this),
        mGroupTable (NULL),
        mFileManager(NULL),
        mSoundPlayerCount(0),
        mSoundPlayers(NULL),
        mSetupBufferAddress(NULL),
        mSetupBufferSize(0),
        mMmlSeqTrackAllocator(&mMmlParser),
        mSeqTrackAllocator(&mMmlSeqTrackAllocator) {
            detail::DisposeCallbackManager::GetInstance().RegisterDisposeCallback(this);
        }

        SoundArchivePlayer::~SoundArchivePlayer() {
            detail::DisposeCallbackManager::GetInstance().UnregisterDisposeCallback(this);
        }

        bool SoundArchivePlayer::IsAvailable() const {
            if (mSoundArchive == NULL) {
                return false;
            }

            return mSoundArchive->IsAvailable();
        }

        bool SoundArchivePlayer::Setup(const SoundArchive* soundArchive, void* mramBuffer, u32 mramBufferSize, void* strmBuffer, u32 strmBufferSize) {
            if (!SetupMram(soundArchive, mramBuffer, mramBufferSize)) {
                return false;
            }

            if (!SetupStrmBuffer(soundArchive, strmBuffer, strmBufferSize)) {
                return false;
            }

            return true;
        }

        void SoundArchivePlayer::Shutdown() {
            mSoundArchive = NULL;
            mGroupTable = NULL;
            mFileManager = NULL;

            for (int i = 0; i < mSoundPlayerCount; i++) {
                mSoundPlayers[i].~SoundPlayer();
            }

            mSoundPlayerCount = 0;
            mSoundPlayers = NULL;

            mStrmBufferPool.Shutdown();

            mSeqSoundInstanceManager.Destroy(mSetupBufferAddress, mSetupBufferSize);
            mStrmSoundInstanceManager.Destroy(mSetupBufferAddress, mSetupBufferSize);
            mWaveSoundInstanceManager.Destroy(mSetupBufferAddress, mSetupBufferSize);
            mMmlSeqTrackAllocator.Destroy(mSetupBufferAddress, mSetupBufferSize);

            mSetupBufferAddress = NULL;
            mSetupBufferSize = 0;
        }

        u32 SoundArchivePlayer::GetRequiredMemSize(const SoundArchive* soundArchive) {
            u32 size = 0;

            u32 playerCount = soundArchive->GetPlayerCount();
            size += ut::RoundUp(playerCount * sizeof(SoundPlayer), 4);

            for (u32 i = 0; i < playerCount; i++) {
                SoundArchive::PlayerInfo info;
                if (!soundArchive->ReadPlayerInfo(i, &info)) {
                    continue;
                }

                for (int j = 0; j < info.playableSoundCount; j++) {
                    if (info.heapSize == 0) {
                        continue;
                    }

                    size += ut::RoundUp(info.heapSize + sizeof(detail::PlayerHeap), 4);
                }
            }

            size += ut::RoundUp(soundArchive->GetGroupCount() * sizeof(Group) + (sizeof(GroupTable) - sizeof(Group)), 4);

            SoundArchive::SoundArchivePlayerInfo info;
            if (soundArchive->ReadSoundArchivePlayerInfo(&info)) {
                size += ut::RoundUp(info.seqSoundCount  * sizeof(detail::SeqSound),    4);
                size += ut::RoundUp(info.strmSoundCount * sizeof(detail::StrmSound),   4);
                size += ut::RoundUp(info.waveSoundCount * sizeof(detail::WaveSound),   4);
                size += ut::RoundUp(info.seqTrackCount  * sizeof(detail::MmlSeqTrack), 4);
            }

            return size;
        }

        u32 SoundArchivePlayer::GetRequiredStrmBufferSize(const SoundArchive* soundArchive) {
            int strmChannels = 0;

            SoundArchive::SoundArchivePlayerInfo info;
            if (soundArchive->ReadSoundArchivePlayerInfo(&info)) {
                strmChannels = info.strmChannelCount;
            }

            // TODO: How is this calculated?
            return strmChannels * 0xA000;
        }

        bool SoundArchivePlayer::SetupMram(const SoundArchive* soundArchive, void* buffer, u32 bufferSize) {
            void* pEndPtr = static_cast<u8*>(buffer) + bufferSize;
            void* pPtr = buffer;

            if (!SetupSoundPlayer(soundArchive, &pPtr, pEndPtr)) {
                return false;
            }

            if (!CreateGroupAddressTable(soundArchive, &pPtr, pEndPtr)) {
                return false;
            }

            SoundArchive::SoundArchivePlayerInfo info;
            if (soundArchive->ReadSoundArchivePlayerInfo(&info)) {
                if (!SetupSeqSound(soundArchive, info.seqSoundCount, &pPtr, pEndPtr)) {
                    return false;
                }

                if (!SetupStrmSound(soundArchive, info.strmSoundCount, &pPtr, pEndPtr)) {
                    return false;
                }

                if (!SetupWaveSound(soundArchive, info.waveSoundCount, &pPtr, pEndPtr)) {
                    return false;
                }

                if (!SetupSeqTrack(soundArchive, info.seqTrackCount, &pPtr, pEndPtr)) {
                    return false;
                }
            }

            mSoundArchive = soundArchive;
            mSetupBufferAddress = buffer;
            mSetupBufferSize = bufferSize;

            return true;
        }

        detail::PlayerHeap* SoundArchivePlayer::CreatePlayerHeap(void* buffer, u32 bufferSize) {
            detail::PlayerHeap* pHeap = new(buffer) detail::PlayerHeap();

            buffer = ut::AddOffsetToPtr(buffer, sizeof(detail::PlayerHeap));

            if (!pHeap->Create(buffer, bufferSize)) {
                return NULL;
            }

            return pHeap;
        }

        bool SoundArchivePlayer::SetupSoundPlayer(const SoundArchive* soundArchive, void** buffer, void* end) {
            u32 playerCount = soundArchive->GetPlayerCount();
            u32 requireSize = playerCount * sizeof(SoundPlayer);

            void* pPlayerEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(pPlayerEnd, end) > 0) {
                return false;
            }

            void* pPlayerBuffer = *buffer;
            *buffer = pPlayerEnd;

            mSoundPlayers = static_cast<SoundPlayer*>(pPlayerBuffer);
            mSoundPlayerCount = playerCount;

            u8* pPtr = static_cast<u8*>(pPlayerBuffer);

            for (u32 i = 0; i < playerCount; i++, pPtr += sizeof(SoundPlayer)) {
                SoundPlayer* player = new(pPtr) SoundPlayer();

                SoundArchive::PlayerInfo info;
                if (!soundArchive->ReadPlayerInfo(i, &info)) {
                    continue;
                }

                player->SetPlayableSoundCount(info.playableSoundCount);
                player->detail_SetPlayableSoundLimit(info.playableSoundCount);

                if (info.heapSize == 0) {
                    continue;
                }

                for (int j = 0; j < info.playableSoundCount; j++) {
                    u32 requireSize = sizeof(detail::PlayerHeap) + info.heapSize;

                    void* pHeapEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

                    if (ut::ComparePtr(pHeapEnd, end) > 0) {
                        return false;
                    }

                    void* pHeapBuffer = *buffer;
                    *buffer = pHeapEnd;

                    detail::PlayerHeap* pHeap = CreatePlayerHeap(pHeapBuffer, info.heapSize);

                    if (pHeap == NULL) {
                        return false;
                    }

                    player->detail_AppendPlayerHeap(pHeap);
                }
            }

            return true;
        }

        bool SoundArchivePlayer::CreateGroupAddressTable(const SoundArchive* soundArchive, void** buffer, void* end) {
            u32 requireSize =  soundArchive->GetGroupCount() * sizeof(Group) + (sizeof(GroupTable) - sizeof(Group));

            void* pTableEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(pTableEnd, end) > 0) {
                return false;
            }

            mGroupTable = static_cast<GroupTable*>(*buffer);
            *buffer = pTableEnd;

            mGroupTable->count = soundArchive->GetGroupCount();

            for (int i = 0; i < mGroupTable->count; i++) {
                mGroupTable->items[i].address = NULL;
                mGroupTable->items[i].waveDataAddress = NULL;
            }

            return true;
        }

        bool SoundArchivePlayer::SetupSeqSound(const SoundArchive* soundArchive, int sounds, void** buffer, void* end) {
            u32 requireSize = sounds * sizeof(detail::SeqSound);

            void* soundEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(soundEnd, end) > 0) {
                return false;
            }

            mSeqSoundInstanceManager.Create(*buffer, requireSize);
            *buffer = soundEnd;

            return true;
        }

        bool SoundArchivePlayer::SetupWaveSound(const SoundArchive* soundArchive, int sounds, void** buffer,void* end) {
            u32 requireSize = sounds * sizeof(detail::WaveSound);

            void* soundEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(soundEnd, end) > 0) {
                return false;
            }

            mWaveSoundInstanceManager.Create(*buffer, requireSize);
            *buffer = soundEnd;

            return true;
        }

        bool SoundArchivePlayer::SetupStrmSound(const SoundArchive* soundArchive, int sounds, void** buffer, void* end) {
            u32 requireSize = sounds * sizeof(detail::StrmSound);

            void* soundEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(soundEnd, end) > 0) {
                return false;
            }

            mStrmSoundInstanceManager.Create(*buffer, requireSize);
            *buffer = soundEnd;

            return true;
        }

        bool SoundArchivePlayer::SetupSeqTrack(const SoundArchive* soundArchive, int tracks, void** buffer, void* end) {
            u32 requireSize = tracks * sizeof(detail::MmlSeqTrack);

            void* pTrackEnd = ut::RoundUp(ut::AddOffsetToPtr(*buffer, requireSize), 4);

            if (ut::ComparePtr(pTrackEnd, end) > 0) {
                return false;
            }

            mMmlSeqTrackAllocator.Create(*buffer, requireSize);
            *buffer = pTrackEnd;

            return true;
        }

        bool SoundArchivePlayer::SetupStrmBuffer(const SoundArchive* soundArchive, void* buffer, u32 bufferSize) {
            if (bufferSize < GetRequiredStrmBufferSize(soundArchive)) {
                return false;
            }

            int strmChannels = 0;

            SoundArchive::SoundArchivePlayerInfo info;
            if (soundArchive->ReadSoundArchivePlayerInfo(&info)) {
                strmChannels = info.strmChannelCount;
            }

            mStrmBufferPool.Setup(buffer, bufferSize, strmChannels);
            return true;
        }

        void SoundArchivePlayer::Update() {
            ut::AutoMutexLock autoMutex(detail::SoundThread::GetInstance().GetSoundMutex());
            for (u32 i = 0; i < mSoundPlayerCount; i++) {
                GetSoundPlayer(i).Update();
            }

            mSeqSoundInstanceManager.SortPriorityList();
            mStrmSoundInstanceManager.SortPriorityList();
            mWaveSoundInstanceManager.SortPriorityList();
        }

        const SoundArchive& SoundArchivePlayer::GetSoundArchive() const {
            return *mSoundArchive;
        }

        SoundPlayer& SoundArchivePlayer::GetSoundPlayer(u32 idx) {
            return mSoundPlayers[idx];
        }

        const void* SoundArchivePlayer::detail_GetFileAddress(u32 id) const {
            const void* pAddr = mSoundArchive->detail_GetFileAddress(id);
            if (pAddr != NULL) {
                return pAddr;
            }

            if (mFileManager != NULL) {
                const void* pAddr = mFileManager->GetFileAddress(id);
                if (pAddr != NULL) {
                    return pAddr;
                }
            }

            SoundArchive::FileInfo file;
            if (!mSoundArchive->detail_ReadFileInfo(id, &file)) {
                return NULL;
            }

            for (u32 i = 0; i < file.filePosCount; i++) {
                SoundArchive::FilePos pos;
                if (!mSoundArchive->detail_ReadFilePos(id, i, &pos)) {
                    continue;
                }

                const void* pGroup = GetGroupAddress(pos.groupId);
                if (pGroup == NULL) {
                    continue;
                }

                SoundArchive::GroupItemInfo item;
                if (mSoundArchive->detail_ReadGroupItemInfo(pos.groupId, pos.index, &item)) {
                    return static_cast<const u8*>(pGroup) + item.offset;
                }
            }

            return NULL;
        }

        const void* SoundArchivePlayer::detail_GetFileWaveDataAddress(u32 id) const {
            const void* pAddr = mSoundArchive->detail_GetWaveDataFileAddress(id);
            if (pAddr != NULL) {
                return pAddr;
            }

            if (mFileManager != NULL) {
                const void* pAddr = mFileManager->GetFileWaveDataAddress(id);
                if (pAddr != NULL) {
                    return pAddr;
                }
            }

            SoundArchive::FileInfo file;
            if (!mSoundArchive->detail_ReadFileInfo(id, &file)) {
                return NULL;
            }

            for (u32 i = 0; i < file.filePosCount; i++) {
                SoundArchive::FilePos pos;
                if (!mSoundArchive->detail_ReadFilePos(id, i, &pos)) {
                    continue;
                }

                const void* pGroup = GetGroupWaveDataAddress(pos.groupId);
                if (pGroup == NULL) {
                    continue;
                }

                SoundArchive::GroupItemInfo item;
                if (mSoundArchive->detail_ReadGroupItemInfo(pos.groupId, pos.index, &item)) {
                    return static_cast<const u8*>(pGroup) + item.waveDataOffset;
                }
            }

            return NULL;
        }

        const void* SoundArchivePlayer::GetGroupAddress(u32 id) const {
            if (mGroupTable == NULL) {
                return NULL;
            }

            if (id >= mGroupTable->count) {
                return NULL;
            }

            return mGroupTable->items[id].address;
        }

        void SoundArchivePlayer::SetGroupAddress(u32 id, const void* pAddr) {
            if (mGroupTable == NULL) {
                return;
            }

            // @bug Index not validated
            mGroupTable->items[id].address = pAddr;
        }

        const void* SoundArchivePlayer::GetGroupWaveDataAddress(u32 id) const {
            if (mGroupTable == NULL) {
                return NULL;
            }

            if (id >= mGroupTable->count) {
                return NULL;
            }

            return mGroupTable->items[id].waveDataAddress;
        }

        void SoundArchivePlayer::SetGroupWaveDataAddress(u32 id, const void* pAddr) {
            if (mGroupTable == NULL) {
                return;
            }

            // @bug Index not validated
            mGroupTable->items[id].waveDataAddress = pAddr;
        }

        SoundStartable::StartResult SoundArchivePlayer::detail_SetupSound(SoundHandle* handle, u32 soundId,
                                                                        detail::BasicSound::AmbientArgInfo* ambientArgInfo, detail::ExternalSoundPlayer* extPlayer,
                                                                        bool holdFlag, const StartInfo* startInfo) {
            u8 streamBuffer[STREAM_BUFFER_SIZE];
            
            if (!IsAvailable()) {
                return SoundStartable::START_ERR_NOT_AVAILABLE;
            }

            if (handle->IsAttachedSound()) {
                handle->DetachSound();
            }

            SoundArchive::SoundInfo sndInfo;
            if (!mSoundArchive->ReadSoundInfo(soundId, &sndInfo)) {
                return SoundStartable::START_ERR_INVALID_SOUNDID;
            }

            u32 playerId = sndInfo.playerId;
            int playerPriority = sndInfo.playerPriority;

            SoundStartable::StartInfo::StartOffsetType startOffsetType = SoundStartable::StartInfo::START_OFFSET_TYPE_MILLISEC;

            int startOffset = 0;
            int voices = 1;

            if (startInfo != NULL) {
                if (startInfo->playerId != SoundArchive::INVALID_ID) {
                    playerId = startInfo->playerId;
                }

                if (startInfo->playerPriority >= 0) {
                    playerPriority = startInfo->playerPriority;
                }

                startOffsetType = startInfo->startOffsetType;
                startOffset = startInfo->startOffset;
                voices = startInfo->voiceOutCount;
            }

            int playerPriorityStart = holdFlag ? playerPriority - 1 : playerPriority;

            SoundPlayer& rPlayer = GetSoundPlayer(playerId);
            detail::BasicSound* sound = NULL;

            switch (mSoundArchive->GetSoundType(soundId)) {
                case SOUND_TYPE_SEQ: {
                    SoundArchive::SeqSoundInfo seqInfo;
                    if (!mSoundArchive->detail_ReadSeqSoundInfo(soundId, &seqInfo)) {
                        return SoundStartable::START_ERR_INVALID_SOUNDID;
                    }

                    detail::SeqSound* seqSound = rPlayer.detail_AllocSeqSound(playerPriority, playerPriorityStart,
                                                                            ambientArgInfo, extPlayer, soundId,
                                                                            &mSeqSoundInstanceManager);

                    if (seqSound == NULL) {
                        return SoundStartable::START_ERR_LOW_PRIORITY;
                    }

                    seqSound->SetId(soundId);

                    SoundStartable::StartResult result = PrepareSeqImpl(seqSound, &sndInfo, &seqInfo, voices);

                    if (result != SoundStartable::START_SUCCESS) {
                        seqSound->Shutdown();
                        return result;
                    }

                    sound = seqSound;
                    break;
                }
                case SOUND_TYPE_STRM: {
                    SoundArchive::StrmSoundInfo strmInfo;
                    if (!mSoundArchive->detail_ReadStrmSoundInfo(soundId, &strmInfo)) {
                        return SoundStartable::START_ERR_INVALID_SOUNDID;
                    }

                    ut::FileStream* stream = mSoundArchive->detail_OpenFileStream(sndInfo.fileId, streamBuffer, sizeof(streamBuffer));
                    if (stream == NULL) {
                        return START_ERR_CANNOT_OPEN_FILE;
                    }
                    stream->Close();

                    detail::StrmSound* pStrmSound = rPlayer.detail_AllocStrmSound(playerPriority, playerPriorityStart,
                                                                                ambientArgInfo, extPlayer, soundId,
                                                                                &mStrmSoundInstanceManager);

                    if (pStrmSound == NULL) {
                        return SoundStartable::START_ERR_LOW_PRIORITY;
                    }

                    pStrmSound->SetId(soundId);

                    SoundStartable::StartResult result = PrepareStrmImpl(pStrmSound, &sndInfo, &strmInfo, startOffsetType, startOffset, voices);

                    if (result != SoundStartable::START_SUCCESS) {
                        pStrmSound->Shutdown();
                        return result;
                    }

                    sound = pStrmSound;
                    break;
                }
                case SOUND_TYPE_WAVE: {
                    SoundArchive::WaveSoundInfo waveInfo;
                    if (!mSoundArchive->detail_ReadWaveSoundInfo(soundId, &waveInfo)) {
                        return SoundStartable::START_ERR_INVALID_SOUNDID;
                    }

                    detail::WaveSound* waveSound = rPlayer.detail_AllocWaveSound(playerPriority, playerPriorityStart,
                                                                                ambientArgInfo, extPlayer, soundId,
                                                                                &mWaveSoundInstanceManager);

                    if (waveSound == NULL) {
                        return SoundStartable::START_ERR_LOW_PRIORITY;
                    }

                    waveSound->SetId(soundId);

                    SoundStartable::StartResult result = PrepareWaveSoundImpl(waveSound, &sndInfo, &waveInfo, voices);

                    if (result != SoundStartable::START_SUCCESS) {
                        waveSound->Shutdown();
                        return result;
                    }

                    sound = waveSound;
                    break;
                }
                default: {
                    return SoundStartable::START_ERR_INVALID_SOUNDID;
                }
            }

            handle->detail_AttachSound(sound);
            return SoundStartable::START_SUCCESS;
        }

        SoundStartable::StartResult SoundArchivePlayer::PrepareSeqImpl(detail::SeqSound* sound, const SoundArchive::SoundInfo* soundInfo, const SoundArchive::SeqSoundInfo* info, int voices) {
            u8 streamBuffer[STREAM_BUFFER_SIZE];

            const void* seqData = detail_GetFileAddress(soundInfo->fileId);

            if (seqData == NULL) {
                detail::PlayerHeap* pHeap = sound->GetPlayerHeap();
                if (pHeap == NULL) {
                    return SoundStartable::START_ERR_NOT_DATA_LOADED;
                }

                detail::FileStreamHandle pFileStream = mSoundArchive->detail_OpenFileStream(soundInfo->fileId, streamBuffer, sizeof(streamBuffer));

                if (pHeap->GetFreeSize() < pFileStream->GetSize()) {
                    return SoundStartable::START_ERR_NOT_ENOUGH_PLAYER_HEAP;
                }
            }

            detail::SeqPlayer::SetupResult result = sound->Setup(mSeqTrackAllocator, info->allocTrack, voices, &mSeqCallback);

            if (result != detail::SeqPlayer::SETUP_SUCCESS) {
                if (result == detail::SeqPlayer::SETUP_ERR_CANNOT_ALLOCATE_TRACK) {
                    return SoundStartable::START_ERR_CANNOT_ALLOCATE_TRACK;
                }
                else {
                    return SoundStartable::START_ERR_UNKNOWN;
                }
            }

            sound->SetInitialVolume(soundInfo->volume / 127.0f);
            sound->SetChannelPriority(info->channelPriority);

            if (seqData != NULL) {
                detail::SeqFileReader reader(seqData);
                sound->Prepare(reader.GetBaseAddress(), info->dataOffset);
            }
            else {
                sound->Prepare(&mSeqLoadCallback, reinterpret_cast<u32>(sound));
            }

            return SoundStartable::START_SUCCESS;
        }

        SoundStartable::StartResult SoundArchivePlayer::PrepareStrmImpl(detail::StrmSound* sound, const SoundArchive::SoundInfo* soundInfo, const SoundArchive::StrmSoundInfo* info, SoundStartable::StartInfo::StartOffsetType startOffsetType, int startOffset, int voices) {
            detail::StrmPlayer::StartOffsetType strmOffsetType = detail::StrmPlayer::START_OFFSET_TYPE_SAMPLE;
           
            if (startOffsetType == SoundStartable::StartInfo::START_OFFSET_TYPE_MILLISEC) {
                strmOffsetType = detail::StrmPlayer::START_OFFSET_TYPE_MILLISEC;
            }

            if (!sound->Prepare(&mStrmBufferPool, strmOffsetType, startOffset, voices, &mStrmCallback, soundInfo->fileId)) {
                return SoundStartable::START_ERR_UNKNOWN;
            }

            sound->SetInitialVolume(soundInfo->volume / 127.0f);

            return SoundStartable::START_SUCCESS;
        }

        SoundStartable::StartResult SoundArchivePlayer::PrepareWaveSoundImpl(detail::WaveSound* sound, const SoundArchive::SoundInfo* soundInfo, const SoundArchive::WaveSoundInfo* info, int voices) {
            const void* waveData = detail_GetFileAddress(soundInfo->fileId);
            if (waveData == NULL) {
                return SoundStartable::START_ERR_NOT_DATA_LOADED;
            }

            if (!sound->Prepare(waveData, info->subNo, voices, &mWsdCallback, soundInfo->fileId)) {
                return SoundStartable::START_ERR_UNKNOWN;
            }

            sound->SetInitialVolume(soundInfo->volume / 127.0f);
            sound->SetChannelPriority(info->channelPriority);

            return SoundStartable::START_SUCCESS;
        }

        bool SoundArchivePlayer::LoadGroup(u32 id, SoundMemoryAllocatable* allocatable, u32 blockSize) {
            if (!IsAvailable()) {
                return false;
            }

            if (id >= mSoundArchive->GetGroupCount()) {
                return false;
            }

            if (GetGroupAddress(id) != NULL) {
                return true;
            }

            if (allocatable == NULL) {
                return false;
            }

            detail::SoundArchiveLoader loader(*mSoundArchive);

            void* waveBuffer;
            const void* pGroup = loader.LoadGroup(id, allocatable, &waveBuffer, blockSize);

            if (pGroup == NULL) {
                return NULL;
            }

            SetGroupAddress(id, pGroup);
            SetGroupWaveDataAddress(id, waveBuffer);

            return true;
        }

        bool SoundArchivePlayer::LoadGroup(const char* label, SoundMemoryAllocatable* allocatable, u32 blockSize) {
            u32 id = mSoundArchive->ConvertLabelStringToGroupId(label);
            if (id == SoundArchive::INVALID_ID) {
                return false;
            }

            return LoadGroup(id, allocatable, blockSize);
        }

        void SoundArchivePlayer::InvalidateData(const void* start, const void* end) {
            if (mGroupTable == NULL) {
                return;
            }

            for (int i = 0; i < mGroupTable->count; i++) {
                const void* pAddr = mGroupTable->items[i].address;

                if (start <= pAddr && pAddr <= end) {
                    mGroupTable->items[i].address = NULL;
                }
            }
        }

        void SoundArchivePlayer::InvalidateWaveData(const void* start, const void* end) {
            if (mGroupTable == NULL) {
                return;
            }

            for (int i = 0; i < mGroupTable->count; i++) {
                const void* pAddr = mGroupTable->items[i].waveDataAddress;

                if (start <= pAddr && pAddr <= end) {
                    mGroupTable->items[i].waveDataAddress = NULL;
                }
            }
        }

        SoundArchivePlayer::SeqLoadCallback::SeqLoadCallback(const SoundArchivePlayer& player) :
        mSoundArchivePlayer(player) {
            OSInitMutex(&mMutex);
        }

        detail::SeqSound::SeqLoadCallback::Result SoundArchivePlayer::SeqLoadCallback::LoadData(detail::SeqSound::NotifyAsyncEndCallback callback, void* callbackArg, u32 userData) const {
            if (!mSoundArchivePlayer.IsAvailable()) {
                return RESULT_FAILED;
            }

            const SoundArchive& soundArchive = mSoundArchivePlayer.GetSoundArchive();
            detail::SeqSound* sound = reinterpret_cast<detail::SeqSound*>(userData);
            u32 soundId = sound->GetId();

            SoundArchive::SoundInfo soundInfo;
            if (!soundArchive.ReadSoundInfo(soundId, &soundInfo)) {
                return RESULT_FAILED;
            }
            SoundArchive::SeqSoundInfo info;
            if (!soundArchive.detail_ReadSeqSoundInfo(soundId, &info)) {
                return RESULT_FAILED;
            }

            detail::PlayerHeap* playerHeap = sound->GetPlayerHeap();
            if (playerHeap == NULL) {
                return RESULT_FAILED;
            }

            void* allocBuf = detail::TaskManager::GetInstance().Alloc();
            SeqLoadTask* task = new(allocBuf) SeqLoadTask(callback, callbackArg,
                                                soundArchive, soundInfo.fileId, info.dataOffset, *playerHeap,
                                                userData, mMutex);

            detail::TaskManager::GetInstance().AppendTask(task, detail::TaskManager::PRIORITY_MIDDLE);
            detail::TaskThread::GetInstance().SendWakeupMessage();

            return RESULT_ASYNC;
        }

        void SoundArchivePlayer::SeqLoadCallback::CancelLoading(u32 userData) const {
            detail::TaskManager::GetInstance().CancelByTaskId(userData);
        }

        detail::Channel* SoundArchivePlayer::SeqNoteOnCallback::NoteOn(detail::SeqPlayer* seqPlayer, int bankNo, const detail::NoteOnInfo& noteOnInfo) {
            if (!mSoundArchivePlayer.IsAvailable()) {
                return NULL;
            }

            const SoundArchive& soundArchive = mSoundArchivePlayer.GetSoundArchive();
            u32 soundId = seqPlayer->GetId();

            SoundArchive::SeqSoundInfo seqInfo;
            if (!soundArchive.detail_ReadSeqSoundInfo(soundId, &seqInfo)) {
                return NULL;
            }

            SoundArchive::BankInfo bankInfo;
            if (!soundArchive.detail_ReadBankInfo(seqInfo.bankId, &bankInfo)) {
                return NULL;
            }

            const void* bankData = mSoundArchivePlayer.detail_GetFileAddress(bankInfo.fileId);

            if (bankData == NULL) {
                return NULL;
            }

            detail::Bank bank(bankData);

            const void* waveData = mSoundArchivePlayer.detail_GetFileWaveDataAddress(bankInfo.fileId);

            if (waveData == NULL) {
                return NULL;
            }

            bank.SetWaveDataAddress(waveData);
            return bank.NoteOn(noteOnInfo);
        }

        bool SoundArchivePlayer::WsdCallback::GetWaveSoundData(detail::WaveSoundInfo* waveSoundInfo, detail::WaveSoundNoteInfo* noteInfo,
                                                                detail::WaveData* waveData, const void* pWsdData, int index, int noteIndex,
                                                                u32 userData) const {

            u32 fileId = userData;

            if (!mSoundArchivePlayer.IsAvailable()) {
                return false;
            }

            const void* waveAddr =
                mSoundArchivePlayer.detail_GetFileWaveDataAddress(fileId);

            if (waveAddr == NULL) {
                return false;
            }

            detail::WsdFileReader reader(pWsdData);

            if (!reader.ReadWaveSoundInfo(waveSoundInfo, index)) {
                return false;
            }

            if (!reader.ReadWaveSoundNoteInfo(noteInfo, index, noteIndex)) {
                return false;
            }

            if (!reader.ReadWaveParam(noteInfo->waveIndex, waveData, waveAddr)) {
                return false;
            }

            return true;
        }

        SoundArchivePlayer::StrmCallback::StrmCallback(const SoundArchivePlayer& player) :
        mSoundArchivePlayer(player) {
            OSInitMutex(&mMutex);
        }

        detail::StrmPlayer::StrmCallback::Result SoundArchivePlayer::StrmCallback::LoadHeader(detail::StrmPlayer::NotifyLoadHeaderAsyncEndCallback callback, void* callbackData, u32 userId, u32 userData) const {
            if (!mSoundArchivePlayer.IsAvailable()) {
                return RESULT_FAILED;
            }

            void *addr = detail::TaskManager::GetInstance().Alloc();

            const SoundArchive& sndArc = mSoundArchivePlayer.GetSoundArchive();

            StrmHeaderLoadTask* task = new(addr) StrmHeaderLoadTask(callback, callbackData,
                                                                    sndArc, userData,
                                                                    userId, mMutex);

            detail::TaskManager::GetInstance().AppendTask(task, detail::TaskManager::PRIORITY_MIDDLE);
            detail::TaskThread::GetInstance().SendWakeupMessage();

            return RESULT_ASYNC;
        }

        detail::StrmPlayer::StrmCallback::Result SoundArchivePlayer::StrmCallback::LoadStream(void* mramAddr, u32 size, s32 offset, int numChannels,
                                                                                            u32 blockSize, s32 blockHeaderOffset, bool needUpdateAdpcmLoop,
                                                                                            detail::StrmPlayer::LoadCommand& callback, u32 userId, u32 userData) const {
            if (!mSoundArchivePlayer.IsAvailable()) {
                return RESULT_FAILED;
            }

            const SoundArchive& sndArc = mSoundArchivePlayer.GetSoundArchive();

            void *addr = detail::TaskManager::GetInstance().Alloc();

            StrmDataLoadTask* task = new(addr) StrmDataLoadTask(mramAddr, size, offset, numChannels,
                                                                blockSize, blockHeaderOffset, needUpdateAdpcmLoop,
                                                                callback, sndArc, userData,
                                                                userId, mMutex);

            detail::TaskManager::GetInstance().AppendTask(task, detail::TaskManager::PRIORITY_HIGH);
            detail::TaskThread::GetInstance().SendWakeupMessage();

            return RESULT_ASYNC;
        }

        void SoundArchivePlayer::StrmCallback::CancelLoading(u32 userId, u32 userData) const {
            detail::TaskManager::GetInstance().CancelByTaskId(userId);
        }

        SoundArchivePlayer::SeqLoadTask::SeqLoadTask(detail::SeqSound::NotifyAsyncEndCallback callback, void* callbackArg,
                                                const SoundArchive& arc, u32 fileId, u32 dataOffset, SoundHeap& heap,
                                                u32 taskId, OSMutex& mutex) :
        mCallback(callback),
        mCallbackData(callbackArg),
        mSoundArchive(arc),
        mFileId(fileId),
        mDataOffset(dataOffset),
        mHeap(heap),
        Task(taskId),
        mMutex(mutex) {}

        void SoundArchivePlayer::SeqLoadTask::Execute() {
            detail::SoundArchiveLoader loader(mSoundArchive);
            {
                ut::AutoMutexLock lock(mMutex);
                mLoader = &loader;
            }

            void* seqData = loader.LoadFile(mFileId, &mHeap);
            {
                ut::AutoMutexLock lock(mMutex);
                mLoader = NULL;
            }

            if (seqData == NULL) {
                if (mCallback != NULL) {
                    mCallback(false, NULL, 0, mCallbackData);
                }
                return;
            }

            detail::SeqFileReader reader(seqData);

            const void* baseAddr = reader.GetBaseAddress();
            s32 offset = static_cast<s32>(mDataOffset);

            if (mCallback != NULL) {
                mCallback(true, baseAddr, offset, mCallbackData);
            }
        }

        void SoundArchivePlayer::SeqLoadTask::Cancel() {
            ut::AutoMutexLock lock(mMutex);
            if (mLoader) {
                mLoader->Cancel();
            }
        }

        SoundArchivePlayer::StrmHeaderLoadTask::StrmHeaderLoadTask(detail::StrmPlayer::NotifyLoadHeaderAsyncEndCallback callback, void* callbackData,
                                                                    const SoundArchive& arc, u32 fileId,
                                                                    u32 taskId, OSMutex& mutex) :
        Task(taskId),
        mSoundArchive(arc),
        mFileId(fileId),
        mCallback(callback),
        mCallbackData(callbackData),
        mStream(NULL),
        mMutex(mutex) {}

        void SoundArchivePlayer::StrmHeaderLoadTask::Execute() {
            static u8 buffer[STREAM_BUFFER_SIZE] ALIGN32;
            static OSMutex mutex;

            static bool initFlag = false;

            u8 streamBuffer[STREAM_BUFFER_SIZE];

            {
                ut::AutoMutexLock lock(mMutex);
                mStream = mSoundArchive.detail_OpenFileStream(mFileId, streamBuffer, sizeof(streamBuffer));
            }

            if (mStream == NULL) {
                if (mCallback != NULL) {
                    mCallback(false, NULL, mCallbackData);
                }
                return;
            }

            if (!mStream->CanSeek() || !mStream->CanRead()) {
                mStream->Close();
                mStream = NULL;

                if (mCallback != NULL) {
                    mCallback(false, NULL, mCallbackData);
                }
                return;
            }

            if (!initFlag) {
                OSInitMutex(&mutex);
                initFlag = true;
            }

            ut::AutoMutexLock lock(mutex);

            detail::StrmFileLoader loader(*mStream);
            if (!loader.LoadFileHeader(buffer, sizeof(buffer))) {
                mStream->Close();
                mStream = NULL;

                if (mCallback != NULL) {
                    mCallback(false, NULL, mCallbackData);
                }
                return;
            }

            {
                ut::AutoMutexLock lock(mMutex);

                mStream->Close();
                mStream = NULL;
            }

            detail::StrmPlayer::StrmHeader header;
            loader.ReadStrmInfo(&header.strmInfo);

            for (int i = 0; i < header.strmInfo.numChannels; i++) {
                loader.ReadAdpcmInfo(&header.adpcmInfo[i], i);
            }

            if (mCallback != NULL) {
                mCallback(true, &header, mCallbackData);
            }
        }

        void SoundArchivePlayer::StrmHeaderLoadTask::Cancel() {
            ut::AutoMutexLock lock(mMutex);
            
            mCallback = NULL;

            if (mStream != NULL && mStream->CanCancel()) {
                if (mStream->CanAsync()) {
                    mStream->CancelAsync(NULL, NULL);
                }
                else {
                    mStream->Cancel();
                }
            }
        }

        SoundArchivePlayer::StrmDataLoadTask::StrmDataLoadTask(void* addr, u32 size, s32 offset, int numChannels,
                                                            u32 blockSize, s32 blockHeaderOffset, bool needUpdateAdpcmLoop,
                                                            detail::StrmPlayer::LoadCommand& callback, const SoundArchive& arc, u32 fileId,
                                                            u32 taskId, OSMutex& mutex) :
        Task(taskId),
        mAddr(addr),
        mSize(size),
        mOffset(offset),
        mSoundArchive(arc),
        mFileId(fileId),
        mStream(NULL),
        mNumChannels(numChannels),
        mCallback(&callback),
        mBlockSize(blockSize),
        mBlockHeaderOffset(blockHeaderOffset),
        mNeedUpdateAdpcmLoop(needUpdateAdpcmLoop),
        mMutex(mutex) {}

        void SoundArchivePlayer::StrmDataLoadTask::Execute() {
            DCInvalidateRange(mAddr, mSize);

            u8 streamBuffer[STREAM_BUFFER_SIZE];
            {
                ut::AutoMutexLock lock(mMutex);
                mStream = mSoundArchive.detail_OpenFileStream(mFileId, streamBuffer, sizeof(streamBuffer));
            }

            if (mStream == NULL) {
                if (mCallback != NULL) {
                    mCallback->NotifyAsyncEnd(false);
                }
                return;
            }

            if (!mStream->CanSeek() || !mStream->CanRead()) {
                mStream->Close();
                mStream = NULL;

                if (mCallback != NULL) {
                    mCallback->NotifyAsyncEnd(false);
                }
                return;
            }

            ut::DvdFileStream* dvdStream = ut::DynamicCast<ut::DvdFileStream*>(mStream);
            if (dvdStream != NULL) {
                dvdStream->SetPriority(DVD_PRIO_HIGH);
            }

            mStream->Seek(mOffset, ut::FileStream::SEEK_BEG);
            s32 bytesRead = mStream->Read(mAddr, mSize);

            {
                ut::AutoMutexLock lock(mMutex);
                mStream->Close();
                mStream = NULL;
            }

            if (bytesRead == DVD_RESULT_CANCELED) {
                return;
            }

            if (bytesRead != mSize) {
                detail::TaskManager::GetInstance().CancelByTaskId(GetTaskId());
                    
                if (mCallback != NULL) {
                    mCallback->NotifyAsyncEnd(false);
                }
                return;
            }

            u16 adpcmPredScale[CHANNEL_MAX];
            u8* pAddr = static_cast<u8*>(mAddr);
            for (int i = 0; i < mNumChannels; i++) {
                if (mNeedUpdateAdpcmLoop) {
                    adpcmPredScale[i] = pAddr[i * ut::RoundUp(mBlockSize, 32) + mBlockHeaderOffset];
                }

                if (mCallback != NULL) {
                    const void* pSrc = i * ut::RoundUp(mBlockSize, 32) + mBlockHeaderOffset + static_cast<u8*>(mAddr);

                    u32 len = static_cast<u32>(ut::RoundUp(mBlockSize, 32));

                    void* pDst = mCallback->GetBuffer(i);

                    memcpy(pDst, pSrc, len);
                    DCFlushRange(pDst, len);
                }
            }

            if (mNeedUpdateAdpcmLoop) {
                if (mCallback != NULL) {
                    mCallback->SetAdpcmLoopContext(mNumChannels, adpcmPredScale);
                }
            }

            if (mCallback != NULL) {
                mCallback->NotifyAsyncEnd(true);
            }
        }

        void SoundArchivePlayer::StrmDataLoadTask::Cancel() {
            ut::AutoMutexLock lock(mMutex);
            
            mCallback = NULL;

            if (mStream && mStream->CanCancel()) {
                if (mStream->CanAsync()) {
                    mStream->CancelAsync(NULL, NULL);
                }
                else {
                    mStream->Cancel();
                }
            }
        }
    }
}
