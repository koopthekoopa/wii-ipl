#ifndef NW4R_SND_SOUND_ARCHIVE_H
#define NW4R_SND_SOUND_ARCHIVE_H

#include <nw4r/snd/types.h>

#include <nw4r/ut/FileStream.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class SoundArchiveFileReader;
        }

        typedef enum SoundType {
            SOUND_TYPE_INVALID = 0,
            SOUND_TYPE_SEQ,
            SOUND_TYPE_STRM,
            SOUND_TYPE_WAVE
        } SoundType;

        class SoundArchive {
            public:
                typedef struct SoundInfo {
                    u32 fileId;         // 0x00
                    u32 playerId;       // 0x04
                    int playerPriority; // 0x08
                    int volume;         // 0x0C
                } SoundInfo;

                typedef struct SeqSoundInfo {
                    u32 dataOffset;         // 0x00
                    u32 bankId;             // 0x04
                    u32 allocTrack;         // 0x08
                    int channelPriority;    // 0x0C
                } SeqSoundInfo;

                typedef struct StrmSoundInfo {
                    /* Nothing here to see */
                } StrmSoundInfo;

                typedef struct WaveSoundInfo {
                    int subNo;              // 0x00
                    int channelPriority;    // 0x04
                } WaveSoundInfo;

                typedef struct Sound3DParam {
                    u32 flags;      // 0x00
                    u8  decayCurve; // 0x04
                    u8  decayRatio; // 0x05
                } Sound3DParam;

                typedef struct BankInfo {
                    u32 fileId; // 0x0
                } BankInfo;

                typedef struct PlayerInfo {
                    int playableSoundCount; // 0x00
                    u32 heapSize;           // 0x04
                } PlayerInfo;

                typedef struct GroupInfo {
                    u32         itemCount;      // 0x00
                    const char* extFilePath;    // 0x04
                    u32         offset;         // 0x08
                    u32         size;           // 0x0C
                    u32         waveDataOffset; // 0x10
                    u32         waveDataSize;   // 0x14
                } GroupInfo;

                typedef struct GroupItemInfo {
                    u32 fileId;         // 0x00
                    u32 offset;         // 0x04
                    u32 size;           // 0x08
                    u32 waveDataOffset; // 0x0C
                    u32 waveDataSize;   // 0x10
                } GroupItemInfo;

                typedef struct FileInfo {
                    u32         fileSize;           // 0x00
                    u32         waveDataFileSize;   // 0x04
                    const char* extFilePath;        // 0x08
                    u32         filePosCount;       // 0x0C
                } FileInfo;

                typedef struct FilePos {
                    u32 groupId;    // 0x00
                    u32 index;      // 0x04
                } FilePos;

                typedef struct SoundArchivePlayerInfo {
                    int seqSoundCount;      // 0x00
                    int seqTrackCount;      // 0x04
                    int strmSoundCount;     // 0x08
                    int strmTrackCount;     // 0x0C
                    int strmChannelCount;   // 0x10
                    int waveSoundCount;     // 0x14
                    int waveTrackCount;     // 0x18
                } SoundArchivePlayerInfo;

                static const u32 INVALID_ID = 0xFFFFFFFF;

            public:
                SoundArchive();
                virtual ~SoundArchive();    // 0x08

                virtual const void*     detail_GetFileAddress(u32 id) const = 0;                                                            // 0x0C
                virtual const void*     detail_GetWaveDataFileAddress(u32 id) const = 0;                                                    // 0x10

                virtual int             detail_GetRequiredStreamBufferSize() const = 0;                                                     // 0x14

                virtual ut::FileStream* OpenStream(void* buffer, int bufferSize, u32 offset, u32 length) const = 0;                         // 0x18
                virtual ut::FileStream* OpenExtStream(void* buffer, int bufferSize, const char* extPath, u32 offset, u32 length) const = 0; // 0x1C

                bool                    IsAvailable() const;

                void                    Setup(detail::SoundArchiveFileReader* pReader);
                void                    Shutdown();

                u32                     GetPlayerCount() const;
                u32                     GetGroupCount() const;

                const char*             GetSoundLabelString(u32 id) const;
                u32                     ConvertLabelStringToSoundId(const char* label) const;
                u32                     ConvertLabelStringToPlayerId(const char* label) const;
                u32                     ConvertLabelStringToGroupId(const char* label) const;

                u32                     GetSoundUserParam(u32 id) const;
                SoundType               GetSoundType(u32 id) const;

                bool                    ReadSoundInfo(u32 id, SoundInfo* info) const;
                bool                    detail_ReadSeqSoundInfo(u32 id, SeqSoundInfo* info) const;
                bool                    detail_ReadStrmSoundInfo(u32 id, StrmSoundInfo* info) const;
                bool                    detail_ReadWaveSoundInfo(u32 id, WaveSoundInfo* info) const;

                bool                    ReadPlayerInfo(u32 id, PlayerInfo* info) const;
                bool                    ReadSoundArchivePlayerInfo(SoundArchivePlayerInfo* info) const;

                bool                    detail_ReadBankInfo(u32 id, BankInfo* info) const;
                bool                    detail_ReadGroupInfo(u32 id, GroupInfo* info) const;
                bool                    detail_ReadGroupItemInfo(u32 groupId, u32 itemId, GroupItemInfo* info) const;

                bool                    detail_ReadFileInfo(u32 id, FileInfo* info) const;
                bool                    detail_ReadFilePos(u32 fileId, u32 posId, FilePos* pos) const;

                ut::FileStream*         detail_OpenFileStream(u32 id, void* buffer, int bufferSize) const;
                ut::FileStream*         detail_OpenGroupStream(u32 id, void* buffer, int bufferSize) const;
                ut::FileStream*         detail_OpenGroupWaveDataStream(u32 id, void* buffer, int bufferSize) const;

                void                    SetExternalFileRoot(const char* extFileRoot);

            protected:
                static const int    FILE_PATH_MAX = 256;

            private:
                ut::FileStream*         OpenExtStreamImpl(void* buffer, int bufferSize, const char* extPath, u32 offset, u32 size) const;

            private:
                detail::SoundArchiveFileReader* mFileReader;                    // 0x04
                char                            mExtFileRoot[FILE_PATH_MAX];    // 0x08
        };

    }
}

#endif
