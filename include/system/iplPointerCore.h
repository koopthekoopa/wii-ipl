#ifndef IPL_POINTER_CORE_H
#define IPL_POINTER_CORE_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/wpad.h>

#include <egg/core.h>

#include "system/iplController.h"

#include "layout/iplLayout.h"


namespace ipl {
    enum {
        POINTER_LYT_TYPE_POINT = 0,
        POINTER_LYT_TYPE_GRABBING,
        POINTER_LYT_TYPE_UNK2,
        POINTER_LYT_TYPE_UNK3
    };

    class Pointer;
    class PointerCoreObject {
        public:
            PointerCoreObject();

            void    calc(Pointer* pPointer, const controller::Interface* pController);
            void    draw();
            
            void    setState(int newState) { mState = newState; }
            int     getState() { return mState; }
            
            void    setLayoutType(int newLayoutType) { mLayoutType = newLayoutType; }
            int     getLayoutType() { return mLayoutType; }
            
            void    setChan(int newChan) { mChan = newChan; }
            int     getChan() { return mChan; }

        private:
            layout::Object* mLayoutObject;  // 0x00
            
            int             mState;         // 0x04
            int             mLayoutType;    // 0x08
            int             mChan;          // 0x0C
            
            f32             unk_0x10;
    };
    
    class PointerCore {
        public:
            PointerCore();
            
            void    calc(Pointer* pPointer);
            void    draw();
            
            void    setState(int chan, int state);
            void    changeType(int chan, int type);
        
        private:
            PointerCoreObject   mCursors[WPAD_MAX_CONTROLLERS]; // 0x00
    };
}

#include "system/iplPointer.h"

#endif // IPL_POINTER_CORE_H


