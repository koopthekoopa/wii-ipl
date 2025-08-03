#ifndef IPL_MESSAGE_BASE_H
#define IPL_MESSAGE_BASE_H

#include <decomp.h>

#include <revolution/os/OSMessage.h>

namespace ipl {
    namespace utility {
        class ut_message_base {
            public:
                virtual ~ut_message_base() {}
                virtual BOOL    SendMessage(OSMessage msg, s32 flags);              // 0x0C
                virtual BOOL    JamMessage(OSMessage msg, s32 flags);               // 0x10
                virtual BOOL    ReceiveMessage(OSMessage* pMsg, s32 flags);         // 0x14
                virtual void    InitMessageQueue(OSMessage* pMsg, s32 msgCount);    // 0x18
                
            private:
                OSMessageQueue  mpMsgQueue; // 0x04
        };

        template<int count> class ut_message : public ut_message_base {
            public:
                ut_message() {
                    InitMessageQueue(mMessages, count);
                }
                virtual ~ut_message() {}

            private:
                OSMessage   mMessages[count];   // 0x24
                u32         unk_0x00;           // (sizeof(mMessages) * count) + 0x00
        };
    }
}

#endif // IPL_MESSAGE_BASE_H
