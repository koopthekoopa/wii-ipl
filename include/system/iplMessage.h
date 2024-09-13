#ifndef IPL_MESSAGE_H
#define IPL_MESSAGE_H

#include "system/MESGEntries.h"

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    namespace message {
        class Message {
            public:
                Message();
                ~Message();

                /**
                 * @brief Sets the message resource data.
                 * @param msgData The message resource data.
                 */
                void        setResource(u8* msgData);
                /**
                 * @brief Get message string from resource data.
                 * @param id The message ID.
                 * @return The message string as Unicode (wchar_t).
                 */
                wchar_t*    getMessage(u32 id) const;
            
            private:
                typedef struct {
                    u32 signatureMsg;           // 0x00 (unused)
                    u32 signatureBmg;           // 0x04 (unused)
                    u32 size;                   // 0x08 (unused)
                    u32 sectionCount;           // 0x0C
                    u8 encoding;                // 0x10 (unused)
                    u8 padding[15];             // 0x11 (unused)
                } MESGHeader;

                typedef struct {
                    u32 signature;              // 0x00
                    u32 size;                   // 0x04
                    u16 msgCount;               // 0x08
                    u16 infoSize;               // 0x0A (unused)
                    u32 padding;                // 0x0C (unused)
                } MESGInfoHeader;

                typedef struct {
                    u32 offset;                 // 0x00
                    u32 flags;                  // 0x04 (unused)
                    u32 unk;                    // 0x08 (unused)
                } MESGInfoBlock;

                typedef struct {
                    u32 signature;              // 0x00
                    u32 size;                   // 0x04
                } MESGDataHeader;
            
                MESGInfoHeader* mpInfoHeader;   // 0x00
                MESGInfoBlock* mpInfoData;      // 0x04

                u8* mspMessageData;             // 0x08
        };
    }
}

#endif // IPL_MESSAGE_H


