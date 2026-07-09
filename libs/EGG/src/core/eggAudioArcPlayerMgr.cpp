#include <egg/core.h>
#include <egg/prim.h>

#include <nw4r/snd.h>

#include <revolution/os.h>
#pragma sym on
namespace EGG {
    ArcPlayer::ArcPlayer(nw4r::snd::SoundHeap* pHeap) : mpSoundHeap(pHeap) {
        mStorage = SARC_STORAGE_NONE;
        mpArchive = NULL;
        mbIsOpeningArchive = false;
    }

    ArcPlayer::~ArcPlayer() {
    }

    nw4r::snd::SoundArchivePlayer* ArcPlayer::openArchive(const char* pPath, nw4r::snd::SoundHeap* pHeap, SARC_STORAGE storage) {
        nw4r::snd::SoundArchivePlayer* pArchive = NULL;

        switch (storage) {
            case SARC_STORAGE_DVD: {
                pArchive = openDvdArchive(pPath, pHeap);
                break;
            }
            case SARC_STORAGE_NAND: {
                pArchive = openNandArchive(pPath, pHeap);
                break;
            }
            default: {
                break;
            }
        }

        return pArchive;
    }

    nw4r::snd::SoundArchivePlayer* ArcPlayer::openDvdArchive(const char* pPath, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        nw4r::snd::DvdSoundArchive* pDvdArchive = &mDvdSoundArchive;
        mpArchive = &mDvdSoundArchive;

        if (pDvdArchive->Open(pPath)) {
            mbIsOpeningArchive = true;

            u32 headerSize = pDvdArchive->GetHeaderSize();
            void* pHeaderBuffer = pHeap->Alloc(headerSize, NULL, NULL);

            if (!pDvdArchive->LoadHeader(pHeaderBuffer, headerSize)) {
                return NULL;
            }

            u32 setupSize = mSoundArchivePlayer.GetRequiredMemSize(pDvdArchive);
            u32 strmSize = mSoundArchivePlayer.GetRequiredStrmBufferSize(pDvdArchive);
            void* pSetupBuffer = pHeap->Alloc(setupSize, NULL, NULL);
            void* pStrmBuffer = pHeap->Alloc(strmSize, NULL, NULL);

            if (!mSoundArchivePlayer.Setup(pDvdArchive, pSetupBuffer, setupSize, pStrmBuffer, strmSize)) {
                mbIsOpeningArchive = false;
                return NULL;
            }

            u32 stringSize = pDvdArchive->GetLabelStringDataSize();
            void* pStringBuffer = pHeap->Alloc(stringSize, NULL, NULL);

            pDvdArchive->LoadLabelStringData(pStringBuffer, stringSize);

            mStorage = SARC_STORAGE_DVD;
            mbIsOpeningArchive = false;
            return &mSoundArchivePlayer;
        }

        return NULL;
    }

    nw4r::snd::SoundArchivePlayer* ArcPlayer::openNandArchive(const char* pPath, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        nw4r::snd::NandSoundArchive* pNandArchive = &mNandSoundArchive;
        mpArchive = pNandArchive;

        if (pNandArchive->Open(pPath)) {
            mbIsOpeningArchive = true;

            u32 headerSize = pNandArchive->GetHeaderSize();
            void* pHeaderBuffer = pHeap->Alloc(headerSize, NULL, NULL);

            if (!pNandArchive->LoadHeader(pHeaderBuffer, headerSize)) {
                return NULL;
            }

            u32 setupSize = mSoundArchivePlayer.GetRequiredMemSize(pNandArchive);
            u32 strmSize = mSoundArchivePlayer.GetRequiredStrmBufferSize(pNandArchive);
            void* pStrmBuffer = pHeap->Alloc(strmSize, NULL, NULL);
            void* pSetupBuffer = pHeap->Alloc(setupSize, NULL, NULL);

            if (!mSoundArchivePlayer.Setup(pNandArchive, pSetupBuffer, setupSize, pStrmBuffer, strmSize)) {
                mbIsOpeningArchive = false;
                return NULL;
            }

            u32 stringSize = pNandArchive->GetLabelStringDataSize();
            void* pStringBuffer = pHeap->Alloc(stringSize, NULL, NULL);

            pNandArchive->LoadLabelStringData(pStringBuffer, stringSize);

            mStorage = SARC_STORAGE_NAND;
            mbIsOpeningArchive = false;
            return &mSoundArchivePlayer;
        }

        return NULL;
    }

    nw4r::snd::SoundArchivePlayer* ArcPlayer::setupMemoryArchive(const void* pBinary, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        nw4r::snd::MemorySoundArchive* pMemoryArchive = &mMemorySoundArchive;
        mpArchive = pMemoryArchive;

        if (pMemoryArchive->Setup(pBinary)) {
            mbIsOpeningArchive = true;

            u32 mramSize = mSoundArchivePlayer.GetRequiredMemSize(pMemoryArchive);

            u32 strmSize = mSoundArchivePlayer.GetRequiredStrmBufferSize(pMemoryArchive);
            void* pStrmBuffer = pHeap->Alloc(strmSize, NULL, NULL);
            void* pMramBuffer = pHeap->Alloc(mramSize, NULL, NULL);

            if (!mSoundArchivePlayer.Setup(pMemoryArchive, pMramBuffer, mramSize, pStrmBuffer, strmSize)) {
                mbIsOpeningArchive = false;
                return NULL;
            }

            mStorage = SARC_STORAGE_MEM;
            mbIsOpeningArchive = false;
            return &mSoundArchivePlayer;
        }

        return NULL;
    }

    void ArcPlayer::closeArchive() {
        switch (mStorage) {
            case SARC_STORAGE_DVD: {
                mDvdSoundArchive.Close();
                break;
            }

            case SARC_STORAGE_NAND: {
                mNandSoundArchive.Close();
                break;
            }

            case SARC_STORAGE_MEM: {
                mMemorySoundArchive.Shutdown();
                break;
            }

            default: {
                break;
            }
        }

        mSoundArchivePlayer.Shutdown();
        mStorage = SARC_STORAGE_NONE;
        mpArchive = NULL;
    }

    bool ArcPlayer::loadGroup(unsigned int id, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        if (mbIsOpeningArchive) {
            return false;
        }

        return mSoundArchivePlayer.LoadGroup((int)id, pHeap, 0);
    }

    bool ArcPlayer::loadGroup(int id, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        if (mbIsOpeningArchive) {
            return false;
        }

        return mSoundArchivePlayer.LoadGroup((int)id, pHeap, 0);
    }

    bool ArcPlayer::loadGroup(const char* pName, nw4r::snd::SoundHeap* pHeap) {
        if (pHeap == NULL) {
            pHeap = mpSoundHeap;
        }

        if (mbIsOpeningArchive) {
            return false;
        }

        return mSoundArchivePlayer.LoadGroup(pName, pHeap, 0);
    }

    void ArcPlayer::calc() {
        if (mbIsOpeningArchive) {
            return;
        }

        mSoundArchivePlayer.Update();
    }
}  // namespace EGG
