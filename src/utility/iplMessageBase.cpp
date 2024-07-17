#include "utility/iplMessageBase.h"

namespace ipl {
    namespace utility {
        /*
            @Address: 0x81364D78
            @Size: 0x2C
        */
        BOOL ut_message_base::SendMessage(OSMessage msg, s32 flags) {
            return OSSendMessage(&pMsgQueue, msg, flags) != FALSE;
        }
        
        /*
            @Address: 0x81364DA4
            @Size: 0x2C
        */
        BOOL ut_message_base::JamMessage(OSMessage msg, s32 flags) {
            return OSJamMessage(&pMsgQueue, msg, flags) != FALSE;
        }
        
        /*
            @Address: 0x81364DD0
            @Size: 0x2C
        */
        BOOL ut_message_base::ReceiveMessage(OSMessage* pMsg, s32 flags) {
            return OSReceiveMessage(&pMsgQueue, pMsg, flags) != FALSE;
        }
        
        /*
            @Address: 0x81364DFC
            @Size: 0x8
        */
        void ut_message_base::InitMessageQueue(OSMessage* pMsg, s32 msgCount) {
            OSInitMessageQueue(&pMsgQueue, pMsg, msgCount);
        }
    }
}


