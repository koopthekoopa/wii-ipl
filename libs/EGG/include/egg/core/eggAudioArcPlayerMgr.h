#ifndef EGG_AUDIO_ARC_PLAYER_MGR_H
#define EGG_AUDIO_ARC_PLAYER_MGR_H

#include <nw4r/snd.h>

#include <revolution/cnt.h>
#include <revolution/os.h>

namespace EGG {
    enum SARC_STORAGE {
        SARC_STORAGE_NONE,
        SARC_STORAGE_DVD,
        SARC_STORAGE_NAND,
        SARC_STORAGE_MEM
    };

    class ArcPlayer {
    public:
        explicit ArcPlayer(nw4r::snd::SoundHeap* pHeap);
        virtual ~ArcPlayer();  // 0x08

        virtual nw4r::snd::SoundArchivePlayer* openArchive(const char* pPath, nw4r::snd::SoundHeap* pHeap, SARC_STORAGE storage);  // 0x0C

        virtual nw4r::snd::SoundArchivePlayer* openDvdArchive(const char* pPath,
                                                              nw4r::snd::SoundHeap* pHeap);  // 0x10

        virtual nw4r::snd::SoundArchivePlayer* openNandArchive(const char* pPath,
                                                               nw4r::snd::SoundHeap* pHeap);  // 0x14

        virtual nw4r::snd::SoundArchivePlayer* setupMemoryArchive(const void* pPath,
                                                                  nw4r::snd::SoundHeap* pHeap);  // 0x1C

        virtual void closeArchive();  // 0x20

        virtual bool loadGroup(unsigned int id, nw4r::snd::SoundHeap* pHeap);    // 0x24
        virtual bool loadGroup(int id, nw4r::snd::SoundHeap* pHeap);             // 0x28
        virtual bool loadGroup(const char* pName, nw4r::snd::SoundHeap* pHeap);  // 0x2C

        virtual void calc();  // 0x30

        virtual bool startSound(nw4r::snd::SoundHandle* pHandle, u32 id) { return mSoundArchivePlayer.StartSound(pHandle, id); }           // 0x34
        virtual bool startSound(nw4r::snd::SoundHandle* pHandle, unsigned int id) { return mSoundArchivePlayer.StartSound(pHandle, id); }  // 0x38
        virtual bool startSound(nw4r::snd::SoundHandle* pHandle, const char* pName) {
            u32 id = nw4r::snd::SoundArchive::INVALID_ID;
            if (mpArchive != NULL) {
                id = changeNameToId(pName);
            }

            return mSoundArchivePlayer.StartSound(pHandle, id);
        }  // 0x3C

        virtual bool prepareSound(nw4r::snd::SoundHandle* pHandle, u32 id) { return mSoundArchivePlayer.PrepareSound(pHandle, id); }           // 0x44
        virtual bool prepareSound(nw4r::snd::SoundHandle* pHandle, unsigned int id) { return mSoundArchivePlayer.PrepareSound(pHandle, id); }  // 0x44
        virtual bool prepareSound(nw4r::snd::SoundHandle* pHandle, const char* pName) {
            u32 id = nw4r::snd::SoundArchive::INVALID_ID;
            if (mpArchive != NULL) {
                id = changeNameToId(pName);
            }

            return mSoundArchivePlayer.PrepareSound(pHandle, id);
        }  // 0x48

        virtual bool holdSound(nw4r::snd::SoundHandle* pHandle, u32 id) { return mSoundArchivePlayer.HoldSound(pHandle, id); }           // 0x50
        virtual bool holdSound(nw4r::snd::SoundHandle* pHandle, unsigned int id) { return mSoundArchivePlayer.HoldSound(pHandle, id); }  // 0x50
        virtual bool holdSound(nw4r::snd::SoundHandle* pHandle, const char* pName) {
            u32 id = nw4r::snd::SoundArchive::INVALID_ID;
            if (mpArchive != NULL) {
                id = changeNameToId(pName);
            }

            return mSoundArchivePlayer.HoldSound(pHandle, id);
        }  // 0x58

        u32 changeNameToId(const char* pName) { return mpArchive->ConvertLabelStringToSoundId(pName); }
        const char* changeIdToName(u32 id) { return mpArchive->GetSoundLabelString(id); }

        const char* getSoundWithOffsetDirect(const char* pName, u32 offset) {
            u32 id = changeNameToId(pName);
            return changeIdToName(id + offset);
        }

        nw4r::snd::SoundArchive& getSoundArchive() { return *mpArchive; }

    protected:
        bool mbIsOpeningArchive;  // 0x04

        nw4r::snd::SoundArchive* mpArchive;  // 0x08

        nw4r::snd::DvdSoundArchive mDvdSoundArchive;        // 0x0C
        nw4r::snd::NandSoundArchive mNandSoundArchive;      // 0x198
        nw4r::snd::MemorySoundArchive mMemorySoundArchive;  // 0x374

        nw4r::snd::SoundArchivePlayer mSoundArchivePlayer;  // 0x4C4

        nw4r::snd::SoundHeap* mpSoundHeap;  // 0x59C
        SARC_STORAGE mStorage;              // 0x5A0
    };

};  // namespace EGG

#endif  // EGG_AUDIO_ARC_PLAYER_MGR_H
