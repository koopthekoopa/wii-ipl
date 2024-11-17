#include "system/iplMessage.h"

#include <revolution/sc.h>

#include "system/iplSystem.h"

namespace ipl {
    namespace message {
        Message::Message()
        : mpInfoHeader(NULL), mpInfoData(NULL), mspMessageData(NULL) {}

        Message::~Message() {}

        void Message::setResource(u8* msgData) {
            MESGHeader* header = (MESGHeader*)(msgData);

            msgData += sizeof(MESGHeader); // Start after the header

            for (int i = 0; i < header->sectionCount; i++) { // for every section available
                #define CURRENT_SECTION ((MESGDataHeader*)(msgData))

                switch (CURRENT_SECTION->signature) {
                    case 'INF1': { // Meta Data section
                        mpInfoHeader = (MESGInfoHeader*)(msgData);
                        mpInfoData = (MESGInfoBlock*)(msgData + sizeof(MESGInfoHeader));
                        break;
                    }
                    case 'DAT1': { // Data section
                        mspMessageData = (u8*)(msgData + sizeof(MESGDataHeader));
                        break;
                    }
                }

                // Next section!
                msgData += CURRENT_SECTION->size;

                #undef CURRENT_SECTION
            }
        }

        wchar_t* Message::getMessage(u32 id) const {
            // Get data from offset
            u32 off = (&mpInfoData->offset)[(u16)id];
            return (wchar_t*)(mspMessageData + off);
        }
    }
}


