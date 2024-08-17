#ifndef IPL_MESSAGE_MANAGER_H
#define IPL_MESSAGE_MANAGER_H

#include <egg/core.h>

#include "system/iplMessage.h"

namespace ipl {
    namespace message {
        class Manager {
            public:
                Manager(EGG::Heap* pHeap);

                /**
                 * @return The message data in use.
                 */
                Message* getMessageData() { return mpMessageData; }
            
            private:
                void initMessage();

                Message* mpMessageData; // 0x00
        };
    }
}

#endif // IPL_MESSAGE_H


