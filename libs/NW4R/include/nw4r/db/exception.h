#ifndef NW4R_DEBUG_EXCEPTION_H
#define NW4R_DEBUG_EXCEPTION_H

#include <revolution.h>

#include <nw4r/db/console.h>

namespace nw4r {
    namespace db {
        typedef bool (*ExceptionUserCallback)(ConsoleHandle console, void* arg);
        
        void            Exception_Init();
        void            Exception_SetUserCallback(ExceptionUserCallback callback, void* arg);
        
        ConsoleHandle   Exception_SetConsole(ConsoleHandle console, const GXRenderModeObj* renderMode);
    }
}

#endif // NW4R_DEBUG_EXCEPTION_H


