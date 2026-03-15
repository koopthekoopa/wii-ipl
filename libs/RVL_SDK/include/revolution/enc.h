#ifndef REVOLUTION_ENC_H
#define REVOLUTION_ENC_H

#include <revolution/enc/enctypes.h>
#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

ENCResult ENCInitContext(ENCContext* context);
ENCResult ENCDuplicateContext(ENCContext* dst, const ENCContext* src);
ENCResult ENCSetExternalEncoding(ENCContext* context, const char* name);
ENCResult ENCGetExternalEncoding(ENCContext* context, char* name);
ENCResult ENCSetBreakType(ENCContext* context, ENCBreakType breakType);
ENCResult ENCSetAlternativeCharacter(ENCContext* context, u16 nomap, u16 invalid);
ENCResult ENCGetExternalCharacterWidth(ENCContext* context, u32* width);
ENCResult ENCConvertToInternalEncoding(ENCContext* context, u16* dst, s32* dstSize, const void* src, s32* srcSize);
ENCResult ENCConvertFromInternalEncoding(ENCContext* context, void* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCCheckEncoding(int* index, const char* names[], int num, const u16* src, u32 srcSize);
ENCResult ENCIs7BitEncoding(BOOL* is7Bit, const char* name);

ENCResult ENCGetNextCharacterWidth(ENCContext* context, const void* src, u32* width);

ENCResult ENCConvertStringUnicodeToAscii(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringAsciiToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUtf32ToUtf16(u16* dst, s32* dstSize, const u32* src, s32* srcSize);
ENCResult ENCConvertStringUtf16ToUtf32(u32* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringUtf32ToUtf8(u8* dst, s32* dstSize, const u32* src, s32* srcSize);
ENCResult ENCConvertStringUtf8ToUtf32(u32* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUtf16ToUtf8(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringUtf8ToUtf16(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUtf16ToUtf16(u16* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringUtf16LEToUtf16BE(u16* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringUtf7ToUtf16(u16* dst, s32* dstSize, const u8* src, s32* srcSize);

ENCResult ENCSetUnicodeBOM(u16* dst, s32 dstSize);
ENCResult ENCSetUnicodeBOM32(u32* dst, s32 dstSize);
ENCResult ENCSetUnicodeBOM16(u16* dst, s32 dstSize);
ENCResult ENCSetUnicodeBOM8(u8* dst, s32 dstSize);

ENCResult ENCConvertStringSjisToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToSjis(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringJisToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToJis(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringJisToSjis(u8* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringSjisToJis(u8* dst, s32* dstSize, const u8* src, s32* srcSize);

ENCResult ENCConvertStringLatin1ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToLatin1(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringLatin2ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToLatin2(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringLatin3ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToLatin3(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringGreekToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToGreek(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringLatin6ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToLatin6(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringLatin9ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToLatin9(u8* dst, s32* dstSize, const u16* src, s32* srcSize);
ENCResult ENCConvertStringWin1252ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToWin1252(u8* dst, s32* dstSize, const u16* src, s32* srcSize);

ENCResult ENCConvertStringWin1250ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringWin1253ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringMacromanToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringMacgreekToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringMacceToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringIbm850ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringIbm852ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);

ENCResult ENCConvertStringGb2312ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToGb2312(u8* dst, s32* dstSize, const u16* src, s32* srcSize);

ENCResult ENCConvertStringUhcToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize);
ENCResult ENCConvertStringUnicodeToUhc(u8* dst, s32* dstSize, const u16* src, s32* srcSize);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_ENC_H
