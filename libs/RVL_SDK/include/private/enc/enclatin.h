#ifndef PRIVATE_ENC_LATIN_H
#define PRIVATE_ENC_LATIN_H

#include <revolution/types.h>

#include <private/enc/encutility.h>
#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

struct latin_hash_table_entry {
    u16 c16;  // 0x00
    u8 cc;    // 0x02
    u8 next;  // 0x03
};

extern const u16 latin1_unicode_array[];
extern const u16 latin2_unicode_array[];
extern const u16 latin3_unicode_array[];
extern const u16 greek_unicode_array[];
extern const u16 latin6_unicode_array[];
extern const u16 latin9_unicode_array[];
extern const u16 win1250_unicode_array[];
extern const u16 win1253_unicode_array[];
extern const u16 macroman_unicode_array[];
extern const u16 macgreek_unicode_array[];
extern const u16 macce_unicode_array[];
extern const u16 ibm850_unicode_array[];
extern const u16 ibm852_unicode_array[];

extern const struct latin_hash_table_entry unicode_latin1_array[];
extern const struct latin_hash_table_entry unicode_latin2_array[];
extern const struct latin_hash_table_entry unicode_latin3_array[];
extern const struct latin_hash_table_entry unicode_greek_array[];
extern const struct latin_hash_table_entry unicode_latin6_array[];
extern const struct latin_hash_table_entry unicode_latin9_array[];
extern const struct latin_hash_table_entry unicode_win1252_array[];
extern const struct latin_hash_table_entry unicode_win1250_array[];
extern const struct latin_hash_table_entry unicode_win1253_array[];
extern const struct latin_hash_table_entry unicode_macroman_array[];
extern const struct latin_hash_table_entry unicode_macgreek_array[];
extern const struct latin_hash_table_entry unicode_macce_array[];
extern const struct latin_hash_table_entry unicode_ibm850_array[];
extern const struct latin_hash_table_entry unicode_ibm852_array[];

ENCResult ENCiConvertStringLatinToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType, const u16* table);
ENCResult ENCiConvertStringUnicodeToLatin(u8* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType,
                                          const struct latin_hash_table_entry* table);

DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Latin1)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Latin1)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Latin2)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Latin2)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Latin3)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Latin3)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Greek)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Greek)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Latin6)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Latin6)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Latin9)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Latin9)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Win1252)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Win1252)

// All of these are only convertible from, not to
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Win1250)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Win1253)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Macroman)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Macgreek)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Macce)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Ibm850)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Ibm852)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ENC_LATIN_H
