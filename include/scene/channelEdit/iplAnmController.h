#ifndef IPL_SCENE_ANM_CONTROLLER_H
#define IPL_SCENE_ANM_CONTROLLER_H

#include <revolution/types.h>

#include "layout/iplGuiManager.h"
#include "layout/iplLayout.h"

namespace ipl {
    namespace scene {

#define WAIT_FOR_ANIM_STATE(FN_NAME, ANIM, THEN)                                                                                                     \
    void FN_NAME() {                                                                                                                                 \
        if (is_animation(ANIM)) {                                                                                                                    \
            return;                                                                                                                                  \
        }                                                                                                                                            \
        THEN;                                                                                                                                        \
    }

        class Anm {
        public:
            inline Anm(layout::GroupAnimator* _animator) : animator(_animator) {}
            layout::GroupAnimator* animator;
            nw4r::ut::Link mLink;
        };

        typedef class AnmPane {
        public:
            enum AnimCommand {
                ANIM_CMD_NONE = 0,
                ANIM_CMD_POINT = 1,
                ANIM_CMD_LEFT = 2,
                ANIM_CMD_CANCEL = 3,
            };
            inline AnmPane(const char* name, Anm* anmIn, Anm* anmOut)
                : pName(name), mCurrState(ANIM_STATE_IDLE), mPrevState(ANIM_STATE_IDLE), mHoverCount(0), mCurrCmd(ANIM_CMD_NONE), mpAnmCurr(NULL),
                  mpAnmIn(anmIn), mpAnmOut(anmOut) {}

            void calc();
            void on_cmd_recv(AnimCommand);

            inline const char* getName() const { return pName; }

            inline int hoverCount() const { return mHoverCount; }
            inline void setHoverCount(int newHoverCount) { mHoverCount = newHoverCount; }
            inline void decHoverCount() { mHoverCount--; }
            inline void incHoverCount() { mHoverCount++; }

        private:
            enum AnimState {
                ANIM_STATE_IDLE = 0,
                ANIM_STATE_POINT = 1,
                ANIM_STATE_LEFT = 2,
            };

            nw4r::ut::Link mLink;  // 0x00

            const char* pName;  // 0x08

            AnimState mCurrState;  // 0x0C
            AnimState mPrevState;  // 0x10

            int mHoverCount;  // 0x14

            AnimCommand mCurrCmd;  // 0x18

            Anm* mpAnmCurr;  // 0x1C
            Anm* mpAnmIn;    // 0x20
            Anm* mpAnmOut;   // 0x24
        } AnmPane;

        class AnmController {
        public:
            inline AnmController(EGG::Heap* heap) : mpHeap(heap) {
                mpLayout = NULL;
                nw4r::ut::List_Init(&mAnmList, 4);
                nw4r::ut::List_Init(&mPaneList, 0);
            }
            virtual ~AnmController() {
                Anm* currAnm = (Anm*)nw4r::ut::List_GetFirst(&mAnmList);
                while (currAnm != NULL) {
                    nw4r::ut::List_Remove(&mAnmList, currAnm);

                    if (currAnm != NULL) {
                        delete currAnm;
                    }

                    currAnm = (Anm*)nw4r::ut::List_GetFirst(&mAnmList);
                }

                AnmPane* currPane = (AnmPane*)nw4r::ut::List_GetFirst(&mPaneList);
                while (currPane != NULL) {
                    nw4r::ut::List_Remove(&mPaneList, currPane);
                    delete currPane;
                    currPane = (AnmPane*)nw4r::ut::List_GetFirst(&mPaneList);
                }
            }

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
            bool get_visible(const char* pane);

            const nw4r::math::VEC3& get_translate(const char* pane);
            void set_translate(const char* pane, const nw4r::math::VEC3&);

            const nw4r::math::VEC2& get_scale(const char* pane);

        protected:
            layout::Object* mpLayout;  // 0x04
            gui::PaneManager* mpGui;   // 0x08

            nw4r::ut::List mAnmList;   // 0x0c
            nw4r::ut::List mPaneList;  // 0x18

            EGG::Heap* mpHeap;  // 0x24
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_ANM_CONTROLLER_H
