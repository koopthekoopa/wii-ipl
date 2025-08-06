#ifndef IPL_SOUND_H
#define IPL_SOUND_H

#include <revolution/types.h>

#include "bannerSound/BannerSoundPlayer.h"

namespace ipl {
    namespace snd {
        class System {
            public:
                System();

                void            shutup(BOOL shutUpDMA);
                
                virtual void    fn_815F6278(); // 0x08
                virtual void    calc();        // 0x0C

                void            stopAllSound(BOOL unk = FALSE);
                void            stopBannerSound(BOOL unk = FALSE);

                int             startSE(const char* sndName);
                int             startSEIndex(u32 sndIndex);

                int             startBGM(const char* bgmName);
                int             pauseOnBGM();
                int             pauseOffBGM();

                int             resetAllSound();
            
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
