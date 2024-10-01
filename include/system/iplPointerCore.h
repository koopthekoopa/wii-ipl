#ifndef IPL_POINTER_CORE_H
#define IPL_POINTER_CORE_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/kpad.h>

#include <egg/core.h>

#include "system/iplController.h"

#include "layout/iplLayout.h"

namespace ipl {
    enum {
        POINTER_LYT_POINT = 0,
        POINTER_LYT_GRABBING,
        POINTER_LYT_UNK2,
        POINTER_LYT_UNK3
    };

    class Pointer;
    /**
     * @warning Do not use `ipl::PointerCoreObject`, Please instead use `ipl::Pointer`
     */
    class PointerCoreObject {
        public:
            PointerCoreObject();

            void    calc(Pointer* pPointer, const controller::Interface* pController);
            void    draw();
            
            void    setState(int newState) { mState = newState; }
            void    changeType(int newLayoutType) { mLayoutType = newLayoutType; }
            
            void    setChan(int newChan) { mChan = newChan; }
            int     getChan() { return mChan; }

        private:
            layout::Object* mpLayout;       // 0x00
            
            int             mState;         // 0x04
            int             mLayoutType;    // 0x08
            int             mChan;          // 0x0C
            
            f32             unk_0x10;
    };
    
    /**
     * @warning Do not use `ipl::PointerCore`, Please instead use `ipl::Pointer`
     */
    class PointerCore {
        public:
            PointerCore();
            
            void    calc(Pointer* pPointer);
            void    draw();
            
            void    setState(int chan, int state);
            void    changeType(int chan, int type);
        
        private:
            PointerCoreObject   mCursors[KPAD_MAX_CONTROLLERS]; // 0x00
    };
}

#include "system/iplPointer.h"

#endif // IPL_POINTER_CORE_H


