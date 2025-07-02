#ifndef NW4R_SND_SOUND_ARCHIVE_FILE_H
#define NW4R_SND_SOUND_ARCHIVE_FILE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/SoundArchive.h>
#include <nw4r/snd/Util.h>

#include <nw4r/ut.h>

#include <nw4r/config.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace SoundArchiveFile {
                typedef struct StringTreeNode {
                    u16 flags;      // 0x00
                    u16 bit;        // 0x02
                    u32 leftIdx;    // 0x04
                    u32 rightIdx;   // 0x08
                    u32 strIdx;     // 0x0C
                    u32 id;         // 0x10
                } StringTreeNode;

                typedef struct StringTree {
                    u32                         rootIdx;    // 0x00
                    Util::Table<StringTreeNode> nodeTable;  // 0x04
                } StringTree;

                typedef struct StringTable {
                    Util::Table<u32>    offsetTable;    // 0x00
                } StringTable;

                typedef struct StringChunk {
                    u32 tableOffset;        // 0x00
                    u32 soundTreeOffset;    // 0x04
                    u32 playerTreeOffset;   // 0x08
                    u32 groupTreeOffset;    // 0x0C
                    u32 bankTreeOffset;     // 0x10
                } StringChunk;

                typedef struct StringBlock {
                    union {
                        StringTable stringTable;
                        StringChunk stringChunk;
                    };  // 0x00
                } StringBlock;

                typedef struct SymbolBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    StringBlock             stringBlock;    // 0x08
                } SymbolBlock;

                typedef struct SeqSoundInfo {
                    u32 dataOffset;         // 0x00
                    u32 bankId;             // 0x04
                    u32 allocTrack;         // 0x08
                    u8  channelPriority;    // 0x0C
                    u8  releasePriorityFix; // 0x0D
                } SeqSoundInfo;

                typedef struct StrmSoundInfo {
                    /* Nothing to see here. */
                } StrmSoundInfo;

                typedef struct WaveSoundInfo {
                    s32 subNo;              // 0x00
                    u32 allocTrack;         // 0x04
                    u8  channelPriority;    // 0x08
                    u8  releasePriorityFix; // 0x09
                } WaveSoundInfo;

                typedef Util::DataRef<void, SeqSoundInfo, StrmSoundInfo, WaveSoundInfo> SoundInfoOffset;

                typedef struct Sound3DParam {
                    u32 flags;      // 0x00
                    u8  decayCurve; // 0x04
                    u8  decayRatio; // 0x05
                } Sound3DParam;

                typedef struct SoundCommonInfo {
                    u32                         stringId;       // 0x00
                    u32                         fileId;         // 0x04
                    u32                         playerId;       // 0x08

                    Util::DataRef<Sound3DParam> param3dRef;     // 0x0C
                    u8                          volume;         // 0x14
                    u8                          playerPriority; // 0x15
                    u8                          soundType;      // 0x16
                    u8                          remoteFilter;   // 0x17
                    SoundInfoOffset             soundInfoRef;   // 0x18

                    u32                         userParam[2];   // 0x20

                    u8                          panMode;        // 0x28
                    u8                          panCurve;       // 0x29
                } SoundCommonInfo;
                typedef Util::Table<Util::DataRef<SoundCommonInfo> > SoundCommonTable;

                typedef struct BankInfo {
                    u32 stringId;   // 0x00
                    u32 fileId;     // 0x04
                } BankInfo;
                typedef Util::Table<Util::DataRef<BankInfo> > BankTable;

                typedef struct PlayerInfo {
                    u32 stringId;           // 0x00
                    u8  playableSoundCount; // 0x04
                    u32 heapSize;           // 0x08
                } PlayerInfo;
                typedef Util::Table<Util::DataRef<PlayerInfo> > PlayerTable;

                typedef Util::Table<Util::DataRef<SoundArchive::FilePos> > FilePosTable;

                typedef struct FileInfo {
                    u32                         fileSize;           // 0x00
                    u32                         waveDataSize;       // 0x04
                    s32                         entryNum;           // 0x08
                    Util::DataRef<char>         extFilePathRef;     // 0x0C
                    Util::DataRef<FilePosTable> filePosTableRef;    // 0x14
                } FileInfo;
                typedef Util::Table<Util::DataRef<FileInfo> > FileTable;

                typedef struct GroupItemInfo {
                    u32 fileId;         // 0x0
                    u32 offset;         // 0x4
                    u32 size;           // 0x8
                    u32 waveDataOffset; // 0xC
                    u32 waveDataSize;   // 0x10
                } GroupItemInfo;
                typedef Util::Table<Util::DataRef<GroupItemInfo> > GroupItemTable;

                typedef struct GroupInfo {
                    u32                             stringId;       // 0x00
                    s32                             entryNum;       // 0x04
                    Util::DataRef<char>             extFilePathRef; // 0x08
                    u32                             offset;         // 0x10
                    u32                             size;           // 0x14
                    u32                             waveDataOffset; // 0x18
                    u32                             waveDataSize;   // 0x1C
                    Util::DataRef<GroupItemTable>   itemTableRef;   // 0x20
                } GroupInfo;
                typedef Util::Table<Util::DataRef<GroupInfo> > GroupTable;

                typedef struct SoundArchivePlayerInfo {
                    u16 seqSoundCount;      // 0x00
                    u16 seqTrackCount;      // 0x02
                    u16 strmSoundCount;     // 0x04
                    u16 strmTrackCount;     // 0x06
                    u16 strmChannelCount;   // 0x08
                    u16 waveSoundCount;     // 0x0A
                    u16 waveTrackCount;     // 0x0C
                } SoundArchivePlayerInfo;

                typedef struct Info {
                    Util::DataRef<SoundCommonTable>         soundTableRef;              // 0x00
                    Util::DataRef<BankTable>                bankTableRef;               // 0x08
                    Util::DataRef<PlayerTable>              playerTableRef;             // 0x10
                    Util::DataRef<FileTable>                fileTableRef;               // 0x18
                    Util::DataRef<GroupTable>               groupTableRef;              // 0x20
                    Util::DataRef<SoundArchivePlayerInfo>   soundArchivePlayerInfoRef;  // 0x28
                } Info;

                typedef struct InfoBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    Info                    info;           // 0x08
                } InfoBlock;

                typedef struct Header {
                    ut::BinaryFileHeader    fileHeader;         // 0x00
                    u32                     symbolDataOffset;   // 0x10
                    u32                     symbolDataSize;     // 0x14
                    u32                     infoOffset;         // 0x18
                    u32                     infoSize;           // 0x1C
                    u32                     fileImageOffset;    // 0x20
                    u32                     fileImageSize;      // 0x24
                } Header;

                static const int HEADER_AREA_SIZE = OSRoundUp32B(sizeof(Header)) + 40;
            }

            class SoundArchiveFileReader {
                public:
                    static const u32 SIGNATURE = 'RSAR';
                    static const int VERSION = NW4R_VERSION(1, 1);

                public:
                    SoundArchiveFileReader();

                    void        Init(const void* soundArchiveData);
                    bool        IsValidFileHeader(const void* soundArchiveData);

                    void        SetStringChunk(const void* chunk, u32 size);
                    void        SetInfoChunk(const void* chunk, u32 size);

                    SoundType   GetSoundType(u32 id) const;

                    bool        ReadSoundInfo(u32 id, SoundArchive::SoundInfo* info) const;
                    bool        ReadSound3DParam(u32 id, SoundArchive::Sound3DParam* param) const;
                    bool        ReadSeqSoundInfo(u32 id, SoundArchive::SeqSoundInfo* info) const;
                    bool        ReadStrmSoundInfo(u32 id, SoundArchive::StrmSoundInfo* info) const;
                    bool        ReadWaveSoundInfo(u32 id, SoundArchive::WaveSoundInfo* info) const;
                    bool        ReadBankInfo(u32 id, SoundArchive::BankInfo* info) const;
                    bool        ReadPlayerInfo(u32 id, SoundArchive::PlayerInfo* info) const;
                    bool        ReadGroupInfo(u32 id, SoundArchive::GroupInfo* info) const;
                    bool        ReadGroupItemInfo(u32 groupId, u32 itemId, SoundArchive::GroupItemInfo* info) const;
                    bool        ReadSoundArchivePlayerInfo(SoundArchive::SoundArchivePlayerInfo* info) const;

                    u32         GetSoundStringId(u32 id) const;
                    u32         GetPlayerCount() const;
                    u32         GetGroupCount() const;

                    const char* GetSoundLabelString(u32 id) const;
                    u32         GetSoundUserParam(u32 id) const;

                    bool        ReadFileInfo(u32 id, SoundArchive::FileInfo* info) const;
                    bool        ReadFilePos(u32 fileId, u32 id, SoundArchive::FilePos* filePos) const;

                    const char* GetString(u32 id) const;

                    u32         ConvertLabelStringToSoundId(const char* label) const    { return ConvertLabelStringToId(mStringTreeSound, label); }
                    u32         ConvertLabelStringToPlayerId(const char* label) const   { return ConvertLabelStringToId(mStringTreePlayer, label); }
                    u32         ConvertLabelStringToGroupId(const char* label) const    { return ConvertLabelStringToId(mStringTreeGroup, label); }

                    u16         GetVersion() const                                      { return mHeader.fileHeader.version; }
                    u32         GetLabelStringChunkOffset() const                       { return mHeader.symbolDataOffset; }
                    u32         GetLabelStringChunkSize() const                         { return mHeader.symbolDataSize; }
                    u32         GetInfoChunkOffset() const                              { return mHeader.infoOffset; }

                    u32         GetInfoChunkSize() const                                { return mHeader.infoSize; }

                private:
                    u32                                         ConvertLabelStringToId(const SoundArchiveFile::StringTree* tree, const char* label) const;

                    const SoundArchiveFile::SoundCommonInfo*    impl_GetSoundInfo(u32 id) const;
                    SoundArchiveFile::SoundInfoOffset           impl_GetSoundInfoOffset(u32 id) const NO_INLINE;

                    const SoundArchiveFile::SeqSoundInfo*       impl_GetSeqSoundInfo(u32 id) const;
                    const SoundArchiveFile::StrmSoundInfo*      impl_GetStrmSoundInfo(u32 id) const;
                    const SoundArchiveFile::WaveSoundInfo*      impl_GetWaveSoundInfo(u32 id) const;

                    const SoundArchiveFile::BankInfo*           impl_GetBankInfo(u32 id) const;
                    const SoundArchiveFile::PlayerInfo*         impl_GetPlayerInfo(u32 id) const;
                    const SoundArchiveFile::GroupInfo*          impl_GetGroupInfo(u32 id) const;

                    const void* GetPtrConst(const void* base, u32 offset) const {
                        if (offset == 0) {
                            return NULL;
                        }
                        return ut::AddOffsetToPtr(base, offset);
                    }

                private:
                    SoundArchiveFile::Header                mHeader;            // 0x00
                    const SoundArchiveFile::Info*           mInfo;              // 0x28
                    const void*                             mStringBase;        // 0x2C
                    const SoundArchiveFile::StringTable*    mStringTable;       // 0x30
                    const SoundArchiveFile::StringTree*     mStringTreeSound;   // 0x34
                    const SoundArchiveFile::StringTree*     mStringTreePlayer;  // 0x38
                    const SoundArchiveFile::StringTree*     mStringTreeGroup;   // 0x3C
                    const SoundArchiveFile::StringTree*     mStringTreeBank;    // 0x40
            };
        }
    }
}

#endif
