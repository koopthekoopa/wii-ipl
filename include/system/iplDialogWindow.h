#ifndef IPL_DIALOG_WINDOW_H
#define IPL_DIALOG_WINDOW_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class DialogWindow {
        public:
            /**
             * @param pHeap The work heap used.
             */
            DialogWindow(EGG::Heap* pHeap);

            /**
             * @brief Update the Dialog Window.
             */
            void calc();
            /**
             * @brief Draw the Dialog Window.
             */
            void draw();

            /**
             * @brief Create Dialog Window with one button
             * 
             * @param messageStringID The Message String ID.
             * @param buttonStringID The Button String ID.
             */
            void callBtn1(u32 messageStringID, u32 buttonStringID);

            /**
             * @brief Check if the Dialog is available.
             */
            BOOL isActive() { return mActive; }

        private:
            u8      unk_0x00[0x24];
            
            BOOL    mActive;        // 0x24

            u8      unk_0x28[0x73];
    };
}

#endif // IPL_DIALOG_WINDOW_H


