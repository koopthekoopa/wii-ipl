#include <nw4r/snd/SoundArchive.h>
#include <nw4r/snd/SoundArchiveFile.h>

#include <nw4r/ut.h>

#include <cstring>

namespace nw4r {
    namespace snd {
        namespace detail {
            SoundArchiveFileReader::SoundArchiveFileReader() :
            mInfo(NULL),
            mStringBase(NULL),
            mStringTable(NULL),
            mStringTreeSound(NULL),
            mStringTreePlayer(NULL),
            mStringTreeGroup(NULL),
            mStringTreeBank(NULL) {}

            void SoundArchiveFileReader::Init(const void* soundArchiveData) {
                if (!IsValidFileHeader(soundArchiveData)) {
                    return;
                }
                mHeader = *static_cast<const SoundArchiveFile::Header*>(soundArchiveData);
            }

            bool SoundArchiveFileReader::IsValidFileHeader(const void* soundArchiveData) {
                const ut::BinaryFileHeader* pFileHeader = static_cast<const ut::BinaryFileHeader*>(soundArchiveData);

                if (pFileHeader->signature != SIGNATURE) {
                    return false;
                }

                if (pFileHeader->version < NW4R_VERSION(1, 0)) {
                    return false;
                }

                if (pFileHeader->version > VERSION) {
                    return false;
                }

                return true;
            }

            void SoundArchiveFileReader::SetStringChunk(const void* pChunk, u32 size) {
                const SoundArchiveFile::SymbolBlock* pSymbolBlock = static_cast<const SoundArchiveFile::SymbolBlock*>(pChunk);

                const SoundArchiveFile::StringBlock* pStringBlock = &pSymbolBlock->stringBlock;

                mStringBase = pStringBlock;

                mStringTable = static_cast<const SoundArchiveFile::StringTable*>(GetPtrConst(mStringBase, pStringBlock->stringChunk.tableOffset));
                mStringTreeSound = static_cast<const SoundArchiveFile::StringTree*>(GetPtrConst(mStringBase, pStringBlock->stringChunk.soundTreeOffset));
                mStringTreePlayer = static_cast<const SoundArchiveFile::StringTree*>(GetPtrConst(mStringBase, pStringBlock->stringChunk.playerTreeOffset));
                mStringTreeGroup = static_cast<const SoundArchiveFile::StringTree*>(GetPtrConst(mStringBase, pStringBlock->stringChunk.groupTreeOffset));
                mStringTreeBank = static_cast<const SoundArchiveFile::StringTree*>(GetPtrConst(mStringBase, pStringBlock->stringChunk.bankTreeOffset));
            }

            void SoundArchiveFileReader::SetInfoChunk(const void* pChunk, u32 size) {
                const SoundArchiveFile::InfoBlock* pInfoBlock = static_cast<const SoundArchiveFile::InfoBlock*>(pChunk);
                mInfo = &pInfoBlock->info;
            }

            SoundType SoundArchiveFileReader::GetSoundType(u32 id) const {
                SoundType soundType;

                const SoundArchiveFile::SoundCommonTable* pTable = Util::GetDataRefAddress0(mInfo->soundTableRef, mInfo);

                if (pTable == NULL) {
                    return SOUND_TYPE_INVALID;
                }

                if (id >= pTable->count) {
                    return SOUND_TYPE_INVALID;
                }

                if (GetVersion() >= NW4R_VERSION(1, 1)) {
                    const SoundArchiveFile::SoundCommonInfo* pCmnInfo = Util::GetDataRefAddress0(pTable->items[id], mInfo);

                    if (pCmnInfo == NULL) {
                        return SOUND_TYPE_INVALID;
                    }

                    soundType = static_cast<SoundType>(pCmnInfo->soundType);
                }
                else {
                    soundType = static_cast<SoundType>(pTable->items[id].dataType);
                }

                switch (soundType) {
                    case SOUND_TYPE_SEQ: {
                        return SOUND_TYPE_SEQ;
                    }
                    case SOUND_TYPE_STRM: {
                        return SOUND_TYPE_STRM;
                    }
                    case SOUND_TYPE_WAVE: {
                        return SOUND_TYPE_WAVE;
                    }
                    default: {
                        return SOUND_TYPE_INVALID;
                    }
                }
            }

            bool SoundArchiveFileReader::ReadSoundInfo(u32 id, SoundArchive::SoundInfo* soundInfo) const {

                const SoundArchiveFile::SoundCommonInfo* pCmnInfo = impl_GetSoundInfo(id);

                if (pCmnInfo == NULL) {
                    return false;
                }

                soundInfo->fileId = pCmnInfo->fileId;
                soundInfo->playerId = pCmnInfo->playerId;
                soundInfo->playerPriority = pCmnInfo->playerPriority;
                soundInfo->volume = pCmnInfo->volume;

                return true;
            }

            bool SoundArchiveFileReader::ReadSeqSoundInfo(u32 id, SoundArchive::SeqSoundInfo* info) const {

                const SoundArchiveFile::SeqSoundInfo* pSrc = impl_GetSeqSoundInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                info->dataOffset = pSrc->dataOffset;
                info->bankId = pSrc->bankId;
                info->channelPriority = pSrc->channelPriority;
                info->allocTrack = pSrc->allocTrack;

                return true;
            }

            bool SoundArchiveFileReader::ReadStrmSoundInfo(u32 id, SoundArchive::StrmSoundInfo* info) const {
                const SoundArchiveFile::StrmSoundInfo* pSrc = impl_GetStrmSoundInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                // StrmSoundInfo is empty in this version of NW4R
                return true;
            }

            bool SoundArchiveFileReader::ReadWaveSoundInfo(u32 id, SoundArchive::WaveSoundInfo* info) const {

                const SoundArchiveFile::WaveSoundInfo* pSrc = impl_GetWaveSoundInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                info->subNo = pSrc->subNo;
                info->channelPriority = pSrc->channelPriority;

                return true;
            }

            bool SoundArchiveFileReader::ReadBankInfo(u32 id, SoundArchive::BankInfo* info) const {
                const SoundArchiveFile::BankInfo* pSrc = impl_GetBankInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                info->fileId = pSrc->fileId;

                return true;
            }

            bool SoundArchiveFileReader::ReadPlayerInfo(u32 id, SoundArchive::PlayerInfo* info) const {
                const SoundArchiveFile::PlayerInfo* pSrc = impl_GetPlayerInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                info->playableSoundCount = pSrc->playableSoundCount;
                info->heapSize = pSrc->heapSize;

                return true;
            }

            bool SoundArchiveFileReader::ReadGroupInfo(u32 id, SoundArchive::GroupInfo* info) const {
                const SoundArchiveFile::GroupInfo* pSrc = impl_GetGroupInfo(id);

                if (pSrc == NULL) {
                    return false;
                }

                const SoundArchiveFile::GroupItemTable* pTable = Util::GetDataRefAddress0(pSrc->itemTableRef, mInfo);

                if (pTable == NULL) {
                    return false;
                }

                info->extFilePath = Util::GetDataRefAddress0(pSrc->extFilePathRef, mInfo);
                info->offset = pSrc->offset;
                info->size = pSrc->size;
                info->waveDataOffset = pSrc->waveDataOffset;
                info->waveDataSize = pSrc->waveDataSize;
                info->itemCount = pTable->count;

                return true;
            }

            bool SoundArchiveFileReader::ReadGroupItemInfo(u32 groupId, u32 itemId, SoundArchive::GroupItemInfo* info) const {

                const SoundArchiveFile::GroupInfo* pGroup = impl_GetGroupInfo(groupId);

                if (pGroup == NULL) {
                    return false;
                }

                const SoundArchiveFile::GroupItemTable* pTable = Util::GetDataRefAddress0(pGroup->itemTableRef, mInfo);

                if (pTable == NULL) {
                    return false;
                }

                if (itemId >= pTable->count) {
                    return false;
                }

                const SoundArchiveFile::GroupItemInfo* pSrc = Util::GetDataRefAddress0(pTable->items[itemId], mInfo);

                if (pSrc == NULL) {
                    return false;
                }

                info->fileId = pSrc->fileId;
                info->offset = pSrc->offset;
                info->size = pSrc->size;
                info->waveDataOffset = pSrc->waveDataOffset;
                info->waveDataSize = pSrc->waveDataSize;

                return true;
            }

            bool SoundArchiveFileReader::ReadSoundArchivePlayerInfo(SoundArchive::SoundArchivePlayerInfo* info) const {

                const SoundArchiveFile::SoundArchivePlayerInfo* pSrc = Util::GetDataRefAddress0(mInfo->soundArchivePlayerInfoRef, mInfo);

                // @bug Doesn't check dataref result
                if (info == NULL) {
                    return false;
                }

                info->seqSoundCount = pSrc->seqSoundCount;
                info->seqTrackCount = pSrc->seqTrackCount;
                info->strmSoundCount = pSrc->strmSoundCount;
                info->strmTrackCount = pSrc->strmTrackCount;
                info->strmChannelCount = pSrc->strmChannelCount;
                info->waveSoundCount = pSrc->waveSoundCount;
                info->waveTrackCount = pSrc->waveTrackCount;

                return true;
            }

            u32 SoundArchiveFileReader::GetSoundStringId(u32 id) const {
                const SoundArchiveFile::SoundCommonInfo* info = impl_GetSoundInfo(id);

                if (info == NULL) {
                    return SoundArchive::INVALID_ID;
                }

                return info->stringId;
            }

            u32 SoundArchiveFileReader::GetPlayerCount() const {
                const SoundArchiveFile::PlayerTable* pTable = Util::GetDataRefAddress0(mInfo->playerTableRef, mInfo);

                if (pTable == NULL) {
                    return 0;
                }

                return pTable->count;
            }

            u32 SoundArchiveFileReader::GetGroupCount() const {
                const SoundArchiveFile::GroupTable* pTable = Util::GetDataRefAddress0(mInfo->groupTableRef, mInfo);

                if (pTable == NULL) {
                    return 0;
                }

                return pTable->count - 1;
            }

            const char* SoundArchiveFileReader::GetSoundLabelString(u32 id) const {
                return GetString(GetSoundStringId(id));
            }

            u32 SoundArchiveFileReader::GetSoundUserParam(u32 id) const {
                const SoundArchiveFile::SoundCommonInfo* info = impl_GetSoundInfo(id);

                if (info == NULL) {
                    return 0;
                }

                return info->userParam[0];
            }

            bool SoundArchiveFileReader::ReadFileInfo(u32 id, SoundArchive::FileInfo* info) const {
                const SoundArchiveFile::FileTable* pFileTable = Util::GetDataRefAddress0(mInfo->fileTableRef, mInfo);

                if (pFileTable == NULL) {
                    return false;
                }

                if (id >= pFileTable->count) {
                    return false;
                }

                const SoundArchiveFile::FileInfo* pFile = Util::GetDataRefAddress0(pFileTable->items[id], mInfo);

                if (pFile == NULL) {
                    return false;
                }

                const SoundArchiveFile::FilePosTable* pPosTable = Util::GetDataRefAddress0(pFile->filePosTableRef, mInfo);

                if (pPosTable == NULL) {
                    return false;
                }

                info->fileSize = pFile->fileSize;
                info->waveDataFileSize = pFile->waveDataSize;
                info->extFilePath = Util::GetDataRefAddress0(pFile->extFilePathRef, mInfo);
                info->filePosCount = pPosTable->count;

                return true;
            }

            bool SoundArchiveFileReader::ReadFilePos(u32 fileId, u32 id, SoundArchive::FilePos* filePos) const {
                const SoundArchiveFile::FileTable* pFileTable = Util::GetDataRefAddress0(mInfo->fileTableRef, mInfo);

                if (pFileTable == NULL) {
                    return false;
                }

                if (fileId >= pFileTable->count) {
                    return false;
                }

                const SoundArchiveFile::FileInfo* info = Util::GetDataRefAddress0(pFileTable->items[fileId], mInfo);

                if (info == NULL) {
                    return false;
                }

                const SoundArchiveFile::FilePosTable* pPosTable = Util::GetDataRefAddress0(info->filePosTableRef, mInfo);

                if (pPosTable == NULL) {
                    return false;
                }

                if (id >= pPosTable->count) {
                    return false;
                }

                const SoundArchive::FilePos* pSrc = Util::GetDataRefAddress0(pPosTable->items[id], mInfo);

                if (pSrc == NULL) {
                    return false;
                }

                *filePos = *pSrc;

                return true;
            }

            const char* SoundArchiveFileReader::GetString(u32 id) const {
                if (id == SoundArchive::INVALID_ID) {
                    return NULL;
                }

                if (mStringTable == NULL) {
                    return NULL;
                }

                return static_cast<const char*>(GetPtrConst(mStringBase, mStringTable->offsetTable.items[id]));
            }

            u32 SoundArchiveFileReader::ConvertLabelStringToId(const SoundArchiveFile::StringTree* pTree, const char* label) const {

                if (pTree == NULL) {
                    return SoundArchive::INVALID_ID;
                }

                if (pTree->rootIdx >= pTree->nodeTable.count) {
                    return SoundArchive::INVALID_ID;
                }

                const SoundArchiveFile::StringTreeNode* pNode = &pTree->nodeTable.items[pTree->rootIdx];

                int length = strlen(label);

                while (!(pNode->flags & 1)) {
                    int pos = pNode->bit >> 3;
                    int bit = pNode->bit & 7;

                    u32 nodeIndex;
                    if (pos < length && (1 << (7 - bit)) & label[pos]) {
                        nodeIndex = pNode->rightIdx;
                    }
                    else {
                        nodeIndex = pNode->leftIdx;
                    }

                    pNode = &pTree->nodeTable.items[nodeIndex];
                }

                const char* pExpected = GetString(pNode->strIdx);

                if (strcmp(label, pExpected) == 0) {
                    return pNode->id;
                }

                return SoundArchive::INVALID_ID;
            }

            const SoundArchiveFile::SoundCommonInfo* SoundArchiveFileReader::impl_GetSoundInfo(u32 id) const {
                const SoundArchiveFile::SoundCommonTable* pTable = Util::GetDataRefAddress0(mInfo->soundTableRef, mInfo);

                if (pTable == NULL) {
                    return NULL;
                }

                if (id >= pTable->count) {
                    return NULL;
                }

                if (GetVersion() >= NW4R_VERSION(1, 1)) {
                    return Util::GetDataRefAddress0(pTable->items[id], mInfo);
                }
                else {
                    return static_cast<const SoundArchiveFile::SoundCommonInfo*>(ut::AddOffsetToPtr(mInfo, pTable->items[id].value));
                }
            }

            SoundArchiveFile::SoundInfoOffset SoundArchiveFileReader::impl_GetSoundInfoOffset(u32 id) const {
                static SoundArchiveFile::SoundInfoOffset INVALID_DATA_REF;

                const SoundArchiveFile::SoundCommonTable* pTable = Util::GetDataRefAddress0(mInfo->soundTableRef, mInfo);

                if (pTable == NULL) {
                    return INVALID_DATA_REF;
                }

                if (id >= pTable->count) {
                    return INVALID_DATA_REF;
                }

                if (GetVersion() >= NW4R_VERSION(1, 1)) {
                    const SoundArchiveFile::SoundCommonInfo* info = Util::GetDataRefAddress0(pTable->items[id], mInfo);

                    if (info == NULL) {
                        return INVALID_DATA_REF;
                    }

                    return info->soundInfoRef;
                }

                SoundArchiveFile::SoundInfoOffset ref;

                // TODO: Why is the offset changed?
                ref.refType = pTable->items[id].refType;
                ref.dataType = pTable->items[id].dataType;
                ref.value = pTable->items[id].value + 0x1C;

                return ref;
            }

            const SoundArchiveFile::SeqSoundInfo* SoundArchiveFileReader::impl_GetSeqSoundInfo(u32 id) const {
                SoundArchiveFile::SoundInfoOffset offset = impl_GetSoundInfoOffset(id);
                return Util::GetDataRefAddress1(offset, mInfo);
            }

            const SoundArchiveFile::StrmSoundInfo* SoundArchiveFileReader::impl_GetStrmSoundInfo(u32 id) const {
                SoundArchiveFile::SoundInfoOffset offset = impl_GetSoundInfoOffset(id);
                return Util::GetDataRefAddress2(offset, mInfo);
            }

            const SoundArchiveFile::WaveSoundInfo* SoundArchiveFileReader::impl_GetWaveSoundInfo(u32 id) const {
                SoundArchiveFile::SoundInfoOffset offset = impl_GetSoundInfoOffset(id);
                return Util::GetDataRefAddress3(offset, mInfo);
            }

            const SoundArchiveFile::BankInfo* SoundArchiveFileReader::impl_GetBankInfo(u32 id) const {
                const SoundArchiveFile::BankTable* pTable = Util::GetDataRefAddress0(mInfo->bankTableRef, mInfo);

                if (pTable == NULL) {
                    return NULL;
                }

                if (id >= pTable->count) {
                    return NULL;
                }

                return Util::GetDataRefAddress0(pTable->items[id], mInfo);
            }

            const SoundArchiveFile::PlayerInfo* SoundArchiveFileReader::impl_GetPlayerInfo(u32 id) const {
                const SoundArchiveFile::PlayerTable* pTable = Util::GetDataRefAddress0(mInfo->playerTableRef, mInfo);

                if (pTable == NULL) {
                    return NULL;
                }

                if (id >= pTable->count) {
                    return NULL;
                }

                return Util::GetDataRefAddress0(pTable->items[id], mInfo);
            }

            const SoundArchiveFile::GroupInfo* SoundArchiveFileReader::impl_GetGroupInfo(u32 id) const {
                const SoundArchiveFile::GroupTable* pTable = Util::GetDataRefAddress0(mInfo->groupTableRef, mInfo);

                if (pTable == NULL) {
                    return NULL;
                }

                if (id >= pTable->count) {
                    return NULL;
                }

                return Util::GetDataRefAddress0(pTable->items[id], mInfo);
            }
        }
    }
}
