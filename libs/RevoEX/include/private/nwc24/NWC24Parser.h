#ifndef PRIVATE_NWC24_PARSER_H
#define PRIVATE_NWC24_PARSER_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#include <private/nwc24/NWC24File.h>

#ifdef __cplusplus
extern "C" {
#endif

const char* NWC24GetMIMETypeStr(NWC24MIMEType type);
const char* NWC24iGetMIMETypeSuffix(NWC24MIMEType type);

const char* NWC24GetCharsetStr(NWC24Charset charset);
NWC24Err    NWC24ParseCharsetStr(NWC24Charset* charset, const char* str);

const char* NWC24GetEncodingStr(NWC24Encoding encoding);
NWC24Err    NWC24ParseEncodingStr(NWC24Encoding* encoding, const char* str);

NWC24Err    NWC24iExtractAddrSpec(NWC24FileStream* fileStream, u32 fullAddrLen, u32 startIdx, char* newAddr, u32 newAddrLen);

NWC24Err    NWC24iSearchHeaderF(NWC24FileStream* fileStream, const char* fieldName, u32 headerSize, u32* foundOffset, u32* foundLength);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_PARSER_H
