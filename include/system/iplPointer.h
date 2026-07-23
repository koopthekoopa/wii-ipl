#ifndef IPL_POINTER_H
#define IPL_POINTER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/kpad.h>

#include <egg/core.h>

#include "system/iplController.h"
#include "system/iplNand.h"

#include "iplMath.h"

#include "layout/iplLayout.h"

#define MAX_LAYOUT_FILES 9

namespace ipl {
    class Pointer;
    namespace utility {
        class BScroller;
    }

    /** @warning Do not use `ipl::PointerCoreObject`, Please instead use `ipl::Pointer` */
    class PointerCoreObject {
    public:
        PointerCoreObject();

        void calc(Pointer* pointer, const controller::Interface* pController);
        void draw();

        void setState(int newState) { mState = newState; }
        void changeType(int newLayoutType) { mLayoutType = newLayoutType; }

        void setChan(int newChan) { mChan = newChan; }
        int getChan() const { return mChan; }

    private:
        layout::Object* mpLayout;  // 0x00

        int mState;       // 0x04
        int mLayoutType;  // 0x08
        int mChan;        // 0x0C

        f32 unused_0x10;
    };

    /** @warning Do not use `ipl::PointerCore`, Please instead use `ipl::Pointer` */
    class PointerCore {
    public:
        PointerCore();

        void calc(Pointer* pointer);
        void draw();

        void setState(int chan, int state);
        void changeType(int chan, int type);

    private:
        PointerCoreObject mCursors[WPAD_MAX_CONTROLLERS];  // 0x00
    };

    class Pointer {
    public:
        // not sure if this is a good place to put it?
        enum {
            NO_SCROLL = -1,
            SCROLL,
            SCROLL_CON_UP,
            SCROLL_CON_DOWN,
            SCROLL_BTN_UP,
            SCROLL_BTN_DOWN,
            SCROLLING_BY_BTN,
        };

        enum {
            STATE_NORMAL = 0,
            STATE_SCROLL,
        };

        enum {
            TYPE_POINT = 0,
            TYPE_GRAB,
            TYPE_UNK2,
            TYPE_MAX, /* ??? */
        };

        /** @param heap The memory heap used for work. */
        Pointer(EGG::Heap* heap);

        /** @brief Updates the Wii Remote Pointers. */
        void calc();
        /** @brief Draws the Wii Remote Pointers. */
        void draw();

        /**
         * @brief Changes the state of a Wii Remote Pointer.
         * @param chan The Wii Remote Player (0 - 3)
         * @param state The state that will change to.
         */
        void setState(int chan, int state);
        /**
         * @brief Changes the Layout Type of a Wii Remote Pointer.
         * @param chan The Wii Remote Player (1 - 4; exclusive)
         * @param type The layout type that will change to.
         */
        void changeType(int chan, int type);
        /**
         * @brief Gets the Layout Data of a Wii Remote Pointer.
         * @param chan The Wii Remote Player (1 - 4; exclusive)
         * @param type The layout type that will return.
         * @return The Layout Data as `ipl::layout::Object`
         */
        layout::Object* get_layout(int chan, int type);

        /**
         * @brief Change the visibility of the cursor
         */
        void setVisible(bool value) { mbVisible = value; }
        /**
         * @brief Get the visibility of the cursor
         */
        bool isVisible() { return mbVisible; }

        /**
         * @brief Set cursor origin position
         * @param x X position
         * @param y Y position
         */
        void setOrigin(f32 x, f32 y) {
            mOriginPos.x = x;
            mOriginPos.y = y;
        }
        /**
         * @brief Set cursor origin position
         * @param vec 2D Vector position
         */
        void setOrigin(math::VEC2 vec) { mOriginPos = vec; }

        /**
         * @brief Set scroll arrow length
         * @param length The length.
         */
        void setArrowLength(f32 length) { mArrowLength = length; }

        /**
         * @brief Set scrolling state of cursor.
         * @param length New scrolling state.
         */
        void setScrollState(s32 state) { mScrollState = state; }

        /**
         * @brief Is currently cursor scrolling
         */
        bool isCursorScrolling() { return mbCursorScrolling; }
        /**
         * @brief Set cursor scrolling flag
         */
        void setCursorScrolling(bool flag) { mbCursorScrolling = flag; }

        /**
         * @brief Set cursor scrolling pointer direction
         * @param dir New direction
         */
        void setPointDirection(int dir) { mPointDirection = dir; }
        /**
         * @brief Get cursor scrolling pointer direction
         */
        int getPointDirection(int dir) { return mPointDirection; }

    private:
        enum {
            POINT_DOWN = 0,
            POINT_UP
        };

        nand::LayoutFile* mpLayoutArchive;           // 0x00
        layout::Object* mpLayout[MAX_LAYOUT_FILES];  // 0x04

        s32 mScrollState;       // 0x28
        math::VEC2 mOriginPos;  // 0x2C

        f32 mArrowLength;     // 0x34
        int mPointDirection;  // 0x38

        bool mbCursorScrolling;  // 0x3C
        bool mbVisible;          // 0x3D

        PointerCore mCore;  // 0x40

        friend class PointerCoreObject;
        friend class PointerCore;
        friend class utility::BScroller;
    };
}  // namespace ipl

#endif  // IPL_POINTER_H
