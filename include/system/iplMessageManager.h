#ifndef IPL_MESSAGE_MANAGER_H
#define IPL_MESSAGE_MANAGER_H

#include <egg/core.h>

#include "system/iplMessage.h"

namespace ipl {
    namespace message {
        class Manager {
            public:
                Manager(EGG::Heap* heap);

                /** @return The message data in use. */
                const wchar_t*  getMessage(u32 id) const         { return mpMessage->getMessage(id); }
                void            setResource(u8* msgData) const   { mpMessage->setResource(msgData); }
            
            private:
                void initMessage();

                Message* mpMessage; // 0x00
        };
    }
}

#endif // IPL_MESSAGE_MANAGER_H
