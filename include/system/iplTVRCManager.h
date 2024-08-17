#ifndef IPL_TVRC_MANAGER_H
#define IPL_TVRC_MANAGER_H

#include <decomp.h>

#include <revolution.h>

namespace ipl {
    class TVRCManager {
        public:
            TVRCManager();
            
            void resetProcessAsync(BOOL unk);
            bool waitResetProcessCompleted();
            
            static TVRCManager* getHandle() { return m_handle; }

        private:
            static TVRCManager* m_handle;
    };
}

#endif // IPL_TVRC_MANAGER_H


