#ifndef IPL_SOUND_H
#define IPL_SOUND_H

#include <revolution/types.h>

#include "bannerSound/BannerSoundPlayer.h"

#include <egg/core.h>

#include "sound/IplSound.rsid"

namespace ipl {
    namespace snd {
        typedef struct tagSBgmInfo {
        public:
            tagSBgmInfo() {}

            nw4r::snd::SoundHandle* GetHandle() { return &mHandle; }

        private:
            nw4r::snd::SoundHandle mHandle;

            friend class System;
        } SBgmInfo;

        typedef struct tagSSeInfo {
        public:
            tagSSeInfo() {}

            nw4r::snd::SoundHandle* GetHandle() { return &mHandle; }

        private:
            nw4r::snd::SoundHandle mHandle;  // 0x00
            const char* mpName;              // 0x04
            u32 mID;                         // 0x08

            friend class System;
        } SSeInfo;

        typedef enum EAudioOutputMode {
            AUDIO_OUTPUT_MODE_STEREO = 0,
            AUDIO_OUTPUT_MODE_SURROUND,
            AUDIO_OUTPUT_MODE_MONO,
        } EAudioOutputMode;

        class System : EGG::SimpleAudioMgrWithFx {
        public:
            System() : EGG::SimpleAudioMgrWithFx() {}

            void initOnMemory(const void* data, EGG::Heap* heap, u32 soundHeapSize);
            void initFx() NO_INLINE;

            void shutup(BOOL isLocked);

            virtual void calc();  // 0x0C

            SBgmInfo* startBGM(const char* bgmName);
            SSeInfo* startSE(const char* seName);
            SSeInfo* startSEIndex(u32 seIndex);
            SSeInfo* startSEwithPos(const char* seName, f32 pos);

            SSeInfo* holdSE(const char* seName);
            SSeInfo* holdSEwithPosDis(const char* seName, f32 pos, f32 dis);

            void stopBGM(int fadeOut = 0);
            void stopSE(nw4r::snd::SoundHandle* handle, int fadeOut = 0);
            void stopAllSound(int fadeOut = 0);

            void resetAllSound();

            void muteOffBGM(int fadeOut = 0);
            void muteOnBGM(int fadeOut = 0);

            void pauseOnBGM();
            void pauseOffBGM();

            void pauseOnSE();
            void pauseOffSE();

            // DIRTY FAKEMATCH
            // The original functions do not return anything, and changing the return type changes codegen
            // But iplHomeButtonMenu expects it to return a BOOL value so ima just add these hacky inlines... i hate this damn codebase.
            BOOL resetAllSoundCheck() { resetAllSound(); }
            BOOL pauseOnBGMCheck() { pauseOnBGM(); }
            BOOL pauseOffBGMCheck() { pauseOffBGM(); }

            void setOutputMode(EAudioOutputMode outputMode);

            BOOL isSEActive(const char* seName);
            BOOL isSEActive(u32 seIndex);

            SSeInfo* FIsSEActive(const char* seName);
            SSeInfo* FIsSEActive(u32 seIndex);

            SSeInfo* getFreeSEBlock(bool unk);

            BOOL startBannerSound(void* data, u32 dataSize, bool ignoreSize = false);
            void stopBannerSound(int fadeOut = 0);

            BOOL checkTmpSoundFile(void* data, u32 dataSize);

        private:
            s32 clipGELT_S32(s32 value, s32 min, s32 max);

            u32 mFreeBlock;  // 0x620
            u32 unk_0x624;
            nw4r::snd::SoundArchivePlayer* mpSoundArcPlayer;  // 0x628
        };

        // use getSystem() and getBannerPlayer() instead
        extern System sSystem;
        extern BannerSoundPlayer sBannerSoundPlayer;

        static System* getSystem() {
            return &sSystem;
        }

        static BannerSoundPlayer* getBannerPlayer() {
            return &sBannerSoundPlayer;
        }
    }  // namespace snd
}  // namespace ipl

#endif  // IPL_SOUND_H
