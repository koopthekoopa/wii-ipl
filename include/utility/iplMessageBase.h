#ifndef IPL_MESSAGE_BASE_H
#define IPL_MESSAGE_BASE_H

#include <decomp.h>

#include <revolution.h>

namespace ipl {
    namespace utility {
        class ut_message_base {
            public:
                BOOL    SendMessage(OSMessage msg, s32 flags);
                BOOL    JamMessage(OSMessage msg, s32 flags);
                BOOL    ReceiveMessage(OSMessage* pMsg, s32 flags);
                void    InitMessageQueue(OSMessage* pMsg, s32 msgCount);
                
            private:
                undefined4      unk_0x00;
                OSMessageQueue  mpMsgQueue; // 0x04
        };
    }
}

#endif // IPL_MESSAGE_BASE_H


