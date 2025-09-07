#ifndef IPL_SCENE_CALENDAR_H
#define IPL_SCENE_CALENDAR_H

#include "iplSceneHeader.h"

#include "scene/calendar/iplDate.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(Calendar) {
            public:
                Calendar(EGG::Heap* heap);

                void    onTrigDate(Date* date);
                void    onPointDate(Date* date);

            private:
                u8  unk_0x58[0x58];
        };
    }
}

#endif // IPL_SCENE_CALENDAR_H
