#ifndef PRIVATE_NWC24_MIME_H
#define PRIVATE_NWC24_MIME_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#ifdef __cplusplus
extern "C" {
#endif

void        NWC24InitBase64Table(u8* table);

NWC24Err    NWC24Base64Encode(u8* decoded,  int decodedSize, u8* encooded, int encodedSize, u32* stringSize);
NWC24Err    NWC24Base64Decode(u8* encooded, int encodedSize, u8* decoded,  int decodedSize, u32* stringSize);

NWC24Err    NWC24EncodeQuotedPrintable(char* encData, u32 encDataSize, u32* encodedSize, u8* decData, u32 decDataSize, u32* decodedSize);
NWC24Err    NWC24DecodeQuotedPrintable(char* decData, u32 decDataSize, u32* decodedSize, u8* encData, u32 encDataSize, u32* encodedSize);

NWC24Err    NWC24EncodeWord(u8* encData, u32 encDataSize, u32* encodedSize, char* charset, u32 charsetSize, char encoding, u8* decData, u32 decDataSize);

NWC24Err    NWC24DecodeMIMEHeaderFieldBody(u8* charsetData, u32 charsetDataSize, u8* decData, u32 decDataSize, u32* decodedSize, u8* encData, u32 encDataSize);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_MIME_H
