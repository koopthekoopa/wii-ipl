#ifndef IPL_SOUND_H
#define IPL_SOUND_H

#include <revolution/types.h>

namespace ipl {
    namespace snd {
        class System {
            public:
                System();

                virtual void    fn_815F6278(); // 0x08
                virtual void    calc();        // 0x0C

                void            stopAllSound(BOOL unk = FALSE);
                void            stopBannerSound(BOOL unk = FALSE);
                void            startSE(const char* sndName);
                int             startBGM(const char* bgmName);
            
            private:
                undefined4      unk_0x00[0x638];
        };

        extern System sSystem;

        static System* getSystem() {
            return &sSystem;
        }
    }
}

#endif // IPL_SOUND_H


