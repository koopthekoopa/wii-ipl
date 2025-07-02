#include <nw4r/snd/SoundArchive.h>
#include <nw4r/snd/SoundArchiveFile.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        SoundArchive::SoundArchive() : mFileReader(NULL) {
            mExtFileRoot[0] = '/';
            mExtFileRoot[1] = '\0';
        }

        SoundArchive::~SoundArchive() {}

        bool SoundArchive::IsAvailable() const {
            return mFileReader;
        }

        void SoundArchive::Setup(detail::SoundArchiveFileReader* pReader) {
            mFileReader = pReader;
        }

        void SoundArchive::Shutdown() {
            mFileReader = NULL;
            mExtFileRoot[0] = '/';
            mExtFileRoot[1] = '\0';
        }

        u32 SoundArchive::GetPlayerCount() const {
            return mFileReader->GetPlayerCount();
        }

        u32 SoundArchive::GetGroupCount() const {
            return mFileReader->GetGroupCount();
        }

        const char* SoundArchive::GetSoundLabelString(u32 id) const {
            return mFileReader->GetSoundLabelString(id);
        }

        u32 SoundArchive::ConvertLabelStringToSoundId(const char* label) const {
            return mFileReader->ConvertLabelStringToSoundId(label);
        }

        u32 SoundArchive::ConvertLabelStringToPlayerId(const char* label) const {
            return mFileReader->ConvertLabelStringToPlayerId(label);
        }

        u32 SoundArchive::ConvertLabelStringToGroupId(const char* label) const {
            return mFileReader->ConvertLabelStringToGroupId(label);
        }

        u32 SoundArchive::GetSoundUserParam(u32 id) const {
            return mFileReader->GetSoundUserParam(id);
        }

        SoundType SoundArchive::GetSoundType(u32 id) const {
            return mFileReader->GetSoundType(id);
        }

        bool SoundArchive::ReadSoundInfo(u32 id, SoundInfo* info) const {
            return mFileReader->ReadSoundInfo(id, info);
        }

        bool SoundArchive::detail_ReadSeqSoundInfo(u32 id, SeqSoundInfo* info) const {
            return mFileReader->ReadSeqSoundInfo(id, info);
        }

        bool SoundArchive::detail_ReadStrmSoundInfo(u32 id, StrmSoundInfo* info) const {
            return mFileReader->ReadStrmSoundInfo(id, info);
        }

        bool SoundArchive::detail_ReadWaveSoundInfo(u32 id, WaveSoundInfo* info) const {
            return mFileReader->ReadWaveSoundInfo(id, info);
        }

        bool SoundArchive::ReadPlayerInfo(u32 id, PlayerInfo* info) const {
            return mFileReader->ReadPlayerInfo(id, info);
        }

        bool SoundArchive::ReadSoundArchivePlayerInfo(SoundArchivePlayerInfo* info) const {
            return mFileReader->ReadSoundArchivePlayerInfo(info);
        }

        bool SoundArchive::detail_ReadBankInfo(u32 id, BankInfo* info) const {
            return mFileReader->ReadBankInfo(id, info);
        }

        bool SoundArchive::detail_ReadGroupInfo(u32 id, GroupInfo* info) const {
            return mFileReader->ReadGroupInfo(id, info);
        }

        bool SoundArchive::detail_ReadGroupItemInfo(u32 groupId, u32 itemId, GroupItemInfo* info) const {
            return mFileReader->ReadGroupItemInfo(groupId, itemId, info);
        }

        bool SoundArchive::detail_ReadFileInfo(u32 id, FileInfo* info) const {
            return mFileReader->ReadFileInfo(id, info);
        }

        bool SoundArchive::detail_ReadFilePos(u32 fileId, u32 posId, FilePos* filePos) const {
            return mFileReader->ReadFilePos(fileId, posId, filePos);
        }

        ut::FileStream* SoundArchive::detail_OpenFileStream(u32 id, void* buffer, int bufferSize) const {
            FileInfo fileInfo;
            if (!detail_ReadFileInfo(id, &fileInfo)) {
                return NULL;
            }

            if (fileInfo.extFilePath != NULL) {
                return OpenExtStreamImpl(buffer, bufferSize, fileInfo.extFilePath, 0, 0);
            }

            FilePos filePos;
            if (!detail_ReadFilePos(id, 0, &filePos)) {
                return NULL;
            }

            GroupInfo groupInfo;
            if (!detail_ReadGroupInfo(filePos.groupId, &groupInfo)) {
                return NULL;
            }

            GroupItemInfo groupItemInfo;
            if (!detail_ReadGroupItemInfo(filePos.groupId, filePos.index, &groupItemInfo)) {
                return NULL;
            }

            u32 offset = groupInfo.offset + groupItemInfo.offset;
            u32 size = groupItemInfo.size;

            if (groupInfo.extFilePath != NULL) {
                return OpenExtStreamImpl(buffer, bufferSize, groupInfo.extFilePath, offset, size);
            }

            return OpenStream(buffer, bufferSize, offset, size);
        }

        ut::FileStream* SoundArchive::detail_OpenGroupStream(u32 id, void* buffer, int bufferSize) const {
            GroupInfo groupInfo;
            if (!detail_ReadGroupInfo(id, &groupInfo)) {
                return NULL;
            }

            if (groupInfo.extFilePath != NULL) {
                return OpenExtStreamImpl(buffer, bufferSize, groupInfo.extFilePath, groupInfo.offset, groupInfo.size);
            }

            return OpenStream(buffer, bufferSize, groupInfo.offset, groupInfo.size);
        }

        ut::FileStream* SoundArchive::detail_OpenGroupWaveDataStream(u32 id, void* buffer, int bufferSize) const {
            GroupInfo groupInfo;
            if (!detail_ReadGroupInfo(id, &groupInfo)) {
                return NULL;
            }

            if (groupInfo.extFilePath != NULL) {
                return OpenExtStreamImpl(buffer, bufferSize, groupInfo.extFilePath, groupInfo.waveDataOffset, groupInfo.waveDataSize);
            }

            return OpenStream(buffer, bufferSize, groupInfo.waveDataOffset, groupInfo.waveDataSize);
        }


        ut::FileStream* SoundArchive::OpenExtStreamImpl(void* buffer, int bufferSize, const char* extPath, u32 offset, u32 size) const {
            char pathBuffer[FILE_PATH_MAX];
            const char* pFullPath;

            if (extPath[0] == '/') {
                pFullPath = extPath;
            }
            else {
                u32 fileLen = strlen(extPath);
                u32 dirLen = strlen(mExtFileRoot);

                if (fileLen + dirLen >= FILE_PATH_MAX) {
                    return NULL;
                }

                strncpy(pathBuffer, mExtFileRoot, dirLen + 1);
                strncat(pathBuffer, extPath, fileLen + 1);

                pFullPath = pathBuffer;
            }

            return OpenExtStream(buffer, bufferSize, pFullPath, offset, size);
        }

        void SoundArchive::SetExternalFileRoot(const char* pExtFileRoot) {
            u32 len = strlen(pExtFileRoot);
            u32 nullPos = len;

            if (pExtFileRoot[len - 1] != '/') {
                mExtFileRoot[len] = '/';
                nullPos++;
            }

            mExtFileRoot[nullPos] = '\0';

            // @bug Long path can overflow mExtFileRoot buffer
            strncpy(mExtFileRoot, pExtFileRoot, len);
        }
    }
}
