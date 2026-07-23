#ifndef IPL_SOUND_H
#define IPL_SOUND_H

#include <revolution/types.h>

#include "bannerSound/BannerSoundPlayer.h"

#include <egg/core.h>

#include "IplSound.rsid"

namespace ipl {
    namespace snd {
        class System : EGG::SimpleAudioMgrWithFx {
        public:
            System();

            void initOnMemory(const void* data, EGG::Heap* heap, u32 soundSize);
            void initFx();

            void shutup(BOOL shutUpDMA);

            virtual void calc();  // 0x0C

            void* /*todo*/ startBGM(const char* bgmName);
            nw4r::snd::SoundHandle* startSE(const char* sndName);
            int startSEIndex(u32 sndIndex);
            int startSEwithPos(const char* sndName, f32 pos);

            int holdSE(const char* sndName);
            int holdSEwithPosDis(const char* sndName, f32 x, f32 y);

            int stopBGM(int unk = 0);
            int stopBGM(nw4r::snd::SoundHandle* handle, int unk = 0);
            int stopSE(nw4r::snd::SoundHandle* handle, int unk = 0);
            void stopAllSound(int unk = 0);

            int resetAllSound();

            int muteOffBGM(int);
            int muteOnBGM(int);

            int pauseOnBGM();
            int pauseOffBGM();

            int pauseOnSE();
            int pauseOffSE();

            BOOL isSEActive(const char* sndName);
            BOOL isSEActive(u32 id);

            BOOL FisSEActive(const char* sndName);
            BOOL FisSEActive(u32 id);

            void startBannerSound(void*, u32, bool ignoreSize = false);
            void stopBannerSound(int unk = 0);

            BOOL checkTmpSoundFile(void*, u32);

        private:
            u32 unk_0x620[0x18];
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
