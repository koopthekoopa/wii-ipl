#ifndef IPL_SCENE_MEMORY_H
#define IPL_SCENE_MEMORY_H

#include "iplSceneHeader.h"

#include "scene/channelEdit/iplAnmController.h"

#include "scene/saveDataEdit/iplSaveDataBox.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Memory) {
        public:
            Memory(EGG::Heap * heap);

            void onTrig(AnmPane*);
            void onTrig(SavedataBox*);
            void onTrigDel();
            void onTrigCopy();

            void onPoint(AnmPane*);
            void onLeft(AnmPane*);

            void onTrigMove();

            void getCorruptIconTexture(GXTexObj * out) const;
            void getCorruptBannerTexture(GXTexObj * out) const;

        private:
            u8 unk_0x54[0x80];
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_MEMORY_H
