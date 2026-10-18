#ifndef IPL_SCENE_MEMORY_CARD_BASE_H
#define IPL_SCENE_MEMORY_CARD_BASE_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        class MemoryBase {
            public:

            struct AnmName {
                const char* animName;
                const char* groupName;
            };

            MemoryBase();
            virtual ~MemoryBase();

            virtual void onPoint(const char* paneName);
            virtual void onLeft(const char* paneName);
            virtual void onMove(const char* paneName);
            virtual void onTrig(const char* paneName);

            virtual void add_button(const char* paneName, int p2, int p3);
            virtual void add_anmbutton(const char* paneName, int p2, int p3, int p4);

            virtual void get_button(const char* paneName);
            virtual void get_anmbutton(const char* paneName);
            virtual void clear_button();

            // Must be virtual to match vtable offset 0x30!
            virtual void add_animation(const AnmName* anims, int count);
            virtual int  get_animation(int idx);

            virtual int  do_animation(int idx);                          // Offset 0x30
            virtual int  do_animation(int idx, bool flag);               // Offset 0x34

            virtual void stop_animation(int idx);
            virtual bool is_animation(int idx);
            virtual bool is_fadein_enable();
            virtual void set_visible(bool flag);

            private:

            u32 mField_0x04;            // +0x04
            u32 mField_0x08;            // +0x08
            u32 mUnkPad_0x0C;           // +0x0C

            nw4r::ut::List mList_0x10;  // +0x10
            nw4r::ut::List mList_0x1C;  // +0x1C
            nw4r::ut::List mList_0x28;  // +0x28
        };
    }
}

#endif // IPL_SCENE_MEMORY_CARD_BASE_H
