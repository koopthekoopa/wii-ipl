#ifndef IPL_SOUND_H
#define IPL_SOUND_H

#include <revolution/types.h>

#include "bannerSound/BannerSoundPlayer.h"

#include <egg/core.h>

namespace ipl {
    namespace snd {
        class System {
            public:
                System();

                void            initOnMemory(const void* data, EGG::Heap* heap, u32 soundSize);
                void            initFx();

                void            shutup(BOOL shutUpDMA);
                
                virtual void    fn_815F6278(); // 0x08
                virtual void    calc();        // 0x0C

                void            stopAllSound(int unk = 0);
                void            stopBannerSound(int unk = 0);

                int             startSE(const char* sndName);
                int             holdSE(const char* sndName);
                int             holdSEwithPosDis(const char* sndName, f32 x, f32 y);
                int             startSEIndex(u32 sndIndex);

                int             startSEwithPos(const char* sndName, f32 pos);

                BOOL            isSEActive(const char* sndName);

                int             startBGM(const char* bgmName);
                int             pauseOnBGM();
                int             pauseOffBGM();

                int             muteOffBGM(int);
                int             muteOnBGM(int);

                int             resetAllSound();

                BOOL            checkTmpSoundFile(void*, u32);
            
            private:
                u32             unk_0x00[0x638];
        };

        extern System               sSystem;
        extern BannerSoundPlayer    sBannerSoundPlayer;

        static System* getSystem() {
            return &sSystem;
        }

        static BannerSoundPlayer* getBannerPlayer() {
            return &sBannerSoundPlayer;
        }
    }
}

#endif // IPL_SOUND_H
