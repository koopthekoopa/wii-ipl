#ifndef IPL_POINTERCORE_H
#define IPL_POINTERCORE_H

#include <decomp_types.h>
#include <revolution.h>
#include <revolution/wpad.h>
#include <egg/core.h>

namespace ipl {
    class PointerCoreObject {
        public:
            PointerCoreObject();
        
        private:
            
    };
    
    class Pointer;
    class PointerCore {
        public:
            PointerCore();
            
            void calc(Pointer* pointer);
            void draw();
            
            void setState(int chan, int unk1);
            void changeType(int chan, int unk1);
        
        private:
            PointerCoreObject mCoreObjects[WPAD_MAX_CONTROLLERS];
    };
}

#endif // IPL_POINTERCORE_H


