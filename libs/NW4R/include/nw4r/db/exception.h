#ifndef NW4R_DB_EXCEPTION_H
#define NW4R_DB_EXCEPTION_H

#include <nw4r/db/console.h>

#include <revolution/gx/GXStruct.h>

namespace nw4r {
    namespace db {
        typedef bool (*ExceptionUserCallback)(ConsoleHandle console, void* arg);
        
        void            Exception_Init();
        void            Exception_SetUserCallback(ExceptionUserCallback callback, void* arg);
        
        ConsoleHandle   Exception_SetConsole(ConsoleHandle console, const GXRenderModeObj* renderMode);
    }
}

#endif // NW4R_DB_EXCEPTION_H
