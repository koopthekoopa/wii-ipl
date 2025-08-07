#ifndef IPL_TVRC_MANAGER_H
#define IPL_TVRC_MANAGER_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class TVRCManager {
        public:
            TVRCManager(EGG::Heap* heap);

            void    setEnable(BOOL flag);

            void    update();

            void    loadDatabase();
            
            void    resetProcessAsync(BOOL unk);
            bool    waitResetProcessCompleted();
            
            static TVRCManager* getHandle() { return m_handle; }

        private:
            static TVRCManager* m_handle;

            u8 dummy[0x88];
    };
}

#endif // IPL_TVRC_MANAGER_H
