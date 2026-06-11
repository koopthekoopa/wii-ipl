#ifndef IPL_SCENE_ANM_CONTROLLER_H
#define IPL_SCENE_ANM_CONTROLLER_H

#include <revolution/types.h>

#include "layout/iplGuiManager.h"
#include "layout/iplLayout.h"

namespace ipl {
    namespace scene {
#define WAIT_FOR_ANIM_STATE(FN_NAME, ANIM, THEN)                                                                                                     \
    void FN_NAME() {                                                                                                                                 \
        if (is_animation(ANIM))                                                                                                                      \
            return;                                                                                                                                  \
        THEN;                                                                                                                                        \
    }

        struct Anm {
            ipl::layout::GroupAnimator* animator;
        };

        struct AnmPane {
        public:
            enum AnimCommand {
                ANIM_CMD_0 = 0,
                ANIM_CMD_POINT = 1,
                ANIM_CMD_LEFT = 2,
            };
            void calc();
            void on_cmd_recv(AnimCommand);

            inline const char* getName() const { return pName; }

            inline void decHoverCount() { mHoverCount--; }
            inline void incHoverCount() { mHoverCount++; }

        private:
            u8 unk_0x00[0x08];    // 0x00
            const char* pName;    // 0x08
            undefined4 unk_0x0c;  // 0x0c
            undefined4 unk_0x10;  // 0x10
            int mHoverCount;      // 0x14
            undefined4 unk_0x18;  // 0x18
            undefined4 unk_0x1c;  // 0x1c
            Anm* pAnmIn;          // 0x20
            Anm* pAnmOut;         // 0x24
        };

        class AnmController {
        public:
            inline AnmController(EGG::Heap* heap) : pHeap(heap) {
                pLytObj = NULL;
                nw4r::ut::List_Init(&mAnmList, 4);
                nw4r::ut::List_Init(&mPaneList, 0);
            }
            virtual ~AnmController();

            void add_animation(const char* brlan, const char* group);

            void do_animation(int idx, int anmType, bool calc);
            void stop_animation(int idx);

            bool is_animation(int idx);
            Anm* get_animation(int idx);

            void add_anmpane(const char* name, Anm* anmIn, Anm* anmOut);
            AnmPane* get_anmpane(const char* paneName);
            void clear_anmpane(const char* paneName);

            void set_textbox(const char* pane, u32 msgId);
            void set_textbox(const char* pane, const wchar_t* msg);
            void set_texture(const char* pane, const GXTexObj& tex);

            void set_visible(const char* pane, bool visibility);

            const nw4r::math::VEC3& get_translate(const char* pane);
            void set_translate(const char* pane, const nw4r::math::VEC3&);

        protected:
            layout::Object* pLytObj;              // 0x04
            ipl::gui::PaneManager* pPaneManager;  // 0x08
            nw4r::ut::List mAnmList;              // 0x0c
            nw4r::ut::List mPaneList;             // 0x18
            EGG::Heap* pHeap;                     // 0x24
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_ANM_CONTROLLER_H
