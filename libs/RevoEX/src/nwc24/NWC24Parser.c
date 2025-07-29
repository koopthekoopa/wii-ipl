#include <revolution/nwc24.h>
#include <private/nwc24.h>

const char* MIMETypeStr[] = {
    "application/octet-stream",
    "application/x-wii-minidata",
    "application/x-wii-msgboard",
    "image/jpeg",
    "image/x-wii-picture",
    "multipart/alternative",
    "multipart/mixed",
    "multipart/related",
    "text/html",
    "text/plain"
};

NWC24MIMEType MIMETypeConv[] = {
    NWC24_APPLICATION_OCTET_STREAM,
    NWC24_X_WII_MINIDATA,
    NWC24_X_WII_MSGBOARD,
    NWC24_IMAGE_JPEG,
    NWC24_X_WII_PICTURE,
    NWC24_MULTIPART_ALTERNATIVE,
    NWC24_MULTIPART_MIXED,
    NWC24_MULTIPART_RELATED,
    NWC24_TEXT_HTML,
    NWC24_TEXT_PLAIN
};

const char* MIMETypeSuffix[] = {
    "dat",
    "wii",
    "wii",
    "jpg",
    "wii",
    "???",
    "???",
    "???",
    "htm",
    "txt"
};

const char* CharsetStr[] = {
    "euc-jp",
    "euc-kr",
    "gb2312",
    "iso-2022-jp",
    "iso-8859-1",
    "iso-8859-10",
    "iso-8859-15",
    "iso-8859-2", 
    "iso-8859-3",
    "iso-8859-5",
    "iso-8859-7", 
    "iso-8859-9", 
    "shift_jis", 
    "us-ascii",
    "utf-16be",
    "utf-32be",
    "utf-8",
    "windows-1252"
};

NWC24Charset CharsetConv[] = {
    NWC24_EUC_JP,
    NWC24_EUC_US,
    NWC24_GB_2312,
    NWC24_ISO_2022_JP,
    NWC24_ISO_8859_1,
    NWC24_ISO_8859_10,
    NWC24_ISO_8859_15,
    NWC24_ISO_8859_2,
    NWC24_ISO_8859_3,
    NWC24_ISO_8859_5,
    NWC24_ISO_8859_7,
    NWC24_ISO_8859_9,
    NWC24_SHIFT_JIS,
    NWC24_US_ASCII,
    NWC24_UTF_16BE, 
    NWC24_UTF_32BE,
    NWC24_UTF_8,
    NWC24_WINDOWS_1252
};

const char* EncodingStr[] = {
    "7bit",
    "8bit",
    "base64",
    "quoted-printable"
};

NWC24Encoding EncodingConv[] = {
    NWC24_ENC_7BIT,
    NWC24_ENC_8BIT,
    NWC24_ENC_BASE64,
    NWC24_ENC_QUOTED_PRINTABLE
};

static int  StrCmpNCS(const char* string1, const char* string2);
static int  StrCmpMultiNCS(const char* string1, const char** string2Array, int count);
static int  GetFieldLengthF(NWC24FileStream* fileStream);

const char* NWC24GetMIMETypeStr(NWC24MIMEType type) {
    NWC24MIMEType* conv;
    int i;
    for (i = 0; i < ARRSIZE(MIMETypeConv); i++) {
        conv = MIMETypeConv;
        if (conv && !conv) {
            u32 dummy = 0;
        }

        if (type == conv[i]) {
            return MIMETypeStr[i];
        }
    }
    return NULL;
}

const char* NWC24iGetMIMETypeSuffix(NWC24MIMEType type) {
    int i;
    for (i = 0; i < ARRSIZE(MIMETypeConv); i++) {
        if (type == MIMETypeConv[i]) {
            return MIMETypeSuffix[i];
        }
    }
    return NULL;
}

const char* NWC24GetCharsetStr(NWC24Charset charset) {
    int i;
    for (i = 0; i < ARRSIZE(CharsetConv); i++) {
        if (charset == CharsetConv[i]) {
            return CharsetStr[i];
        }
    }
    return NULL;
}

NWC24Err NWC24ParseCharsetStr(NWC24Charset* charset, const char* str) {
    int charSetIndex = StrCmpMultiNCS(str, CharsetStr, ARRSIZE(CharsetStr));
    if (charSetIndex < 0) {
        *charset = NWC24_CHARSET_UNKNOWN;
        return NWC24_ERR_NOT_SUPPORTED;
    }

    *charset = CharsetConv[charSetIndex];
    return NWC24_OK;
}

const char* NWC24GetEncodingStr(NWC24Encoding encoding) {
    int i;
    for (i = 0; i < ARRSIZE(EncodingConv); i++) {
        if (encoding == EncodingConv[i]) {
            return EncodingStr[i];
        }
    }
    return NULL;
}

NWC24Err NWC24ParseEncodingStr(NWC24Encoding* encoding, const char* str) {
    int charSetIndex = StrCmpMultiNCS(str, EncodingStr, ARRSIZE(EncodingStr));
    if (charSetIndex < 0) {
        *encoding = 0;
        return NWC24_ERR_NOT_SUPPORTED;
    }

    *encoding = EncodingConv[charSetIndex];
    return NWC24_OK;
}

NWC24Err NWC24iExtractAddrSpec(NWC24FileStream* fileStream, u32 fullAddrLen, u32 startIdx, char* newAddr, u32 newAddrLen) {
    NWC24Err    err = NWC24_ERR_NOT_FOUND;
    u32         sizeLeft;

    u32         i = 0;
    int         bufIdx = 0;
    int         flag = 0;
    BOOL        foundAtCh = FALSE;

    for (sizeLeft = fullAddrLen; sizeLeft != 0; sizeLeft--) {
        char ch = NWC24FStreamGetc(fileStream);
        if (ch == ',' && flag == 0) {
            i++;
            if (i > startIdx) {
                err = NWC24_OK;
            }
            else {
                foundAtCh = FALSE;
                continue;
            }
            break;
        }
        if (ch == '"') {
            flag ^= 1;
            continue;
        }
        if (ch == ')') {
            flag &= ~2;
            continue;
        }
        if (ch == '(') {
            flag |= 2;
            continue;
        }
        if (flag == 0 && i >= startIdx) {
            if (ch != ' ' && ch != '\t' && ch != '\r' && ch != '\n') {
                if (ch == '<') {
                    bufIdx = 0;
                    continue;
                }
                if (ch == '>') {
                    err = NWC24_OK;
                }
                else if (bufIdx >= newAddrLen-1) {
                    err = NWC24_ERR_OVERFLOW;
                }
                else {
                    if (ch == '@') {
                        // foundAtCh = TRUE;
                        foundAtCh += TRUE; // ok.
                    }
                    newAddr[bufIdx++] = ch;
                    continue;
                }
                break;
            }
        }
    }

    if (sizeLeft == 0 && bufIdx > 0) {
        err = NWC24_OK;
    }

    if (err == NWC24_OK) {
        newAddr[bufIdx] = 0;
        if (foundAtCh != TRUE) {
            err = NWC24_ERR_FORMAT;
        }
    }

    return err;
}

NWC24Err NWC24iSearchHeaderF(NWC24FileStream* fileStream, const char* fieldName, u32 headerSize, u32* foundOffset, u32* foundLength) {
    int fieldLen;

    int i;
    int fieldIdx = 0;
    NWC24Err err = NWC24_ERR_NOT_FOUND;

    NWC24FStreamSeek(fileStream, 0);

    for (i = 0; i < headerSize; i += fieldLen) {
        char* readName;
        fieldLen = GetFieldLengthF(fileStream);
        if (fieldLen < 0) {
            err = NWC24_ERR_FORMAT;
            break;
        }
    
        NWC24FStreamSeek(fileStream, fieldIdx);
        NWC24FStreamGetPtr(fileStream, &readName, fieldLen);

        if (StrCmpNCS(readName, fieldName) != 0) {
            int fieldNameLen = Mail_strlen(fieldName);

            *foundOffset = fieldIdx + fieldNameLen;
            *foundLength = fieldLen - fieldNameLen;

            err = NWC24_OK;
            break;
        }

        fieldIdx += fieldLen;
        NWC24FStreamSeek(fileStream, fieldIdx);
    }

    return err;
}

static int StrCmpNCS(const char* string1, const char* string2) {
    char* pStr2 = (char*)string2;
    char* pStr1 = (char*)string1;

    while (TRUE) {
        char ch = Mail_tolower(*pStr1);

        if (ch != *pStr2) {
            break;
        }

        ++pStr2;
        ++pStr1;

        if ((char)*pStr2 == 0) {
            return 1;
        }
    }

    return 0;
}

int StrCmpMultiNCS(const char* string1, const char** string2Array, int count) {
    int i;
    u8 ch;
    u8* pStr2Array;
    u8* pStr1;
    int result = -1;

    for (i = 0; i < count; i++) {
        pStr2Array = (u8*)string2Array[i];
        pStr1 = (u8*)string1;

        while (TRUE) {
            u8 ch = Mail_tolower(*pStr1);

            if (ch > *pStr2Array) {
                break;
            }
            if (ch < *pStr2Array) {
                return result;
            }

            ++pStr2Array;
            ++pStr1;

            if ((char)*pStr2Array == 0) {
                result = i;
            }
        }
    }

    return result;
}

int GetFieldLengthF(NWC24FileStream* fileStream) {
    int     count = 0;
    u32     state = 0;
    u32     letters = 0;

    while (TRUE) {
        char ch = NWC24FStreamGetc(fileStream);

        if (state == 2) {
            letters = 0;
            if (ch != '\t' && ch != ' ') {
                break;
            }
        }

        if (ch == '\r') {
            state |= 1;
        }
        else if (ch == '\n') {
            state <<= 1;
        }
        else {
            state = 0;
            letters++;
        }

        if (letters >= 1000) {
            count = -1;
            break;
        }

        count++;
    }

    return count;
}
