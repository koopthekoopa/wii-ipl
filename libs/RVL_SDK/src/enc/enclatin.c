#include <revolution/enc.h>
#include <private/enc.h>

// C1 control block

/* Universal character names may not refer to control characters, so it's just
 * the hex value instead
 */
#define  PAD    L'\x80'        // U+0080 <control>
#define  HOP    L'\x81'        // U+0081 <control>
#define  BPH    L'\x82'        // U+0082 <control>
#define  NBH    L'\x83'        // U+0083 <control>
#define  IND    L'\x84'        // U+0084 <control>
#define  NEL    L'\x85'        // U+0085 <control>
#define  SSA    L'\x86'        // U+0086 <control>
#define  ESA    L'\x87'        // U+0087 <control>
#define  HTS    L'\x88'        // U+0088 <control>
#define  HTJ    L'\x89'        // U+0089 <control>
#define  LTS    L'\x8a'        // U+008A <control>
#define  PLD    L'\x8b'        // U+008B <control>
#define  PLU    L'\x8c'        // U+008C <control>
#define   RI    L'\x8d'        // U+008D <control>
#define  SS2    L'\x8e'        // U+008E <control>
#define  SS3    L'\x8f'        // U+008F <control>
#define  DCS    L'\x90'        // U+0090 <control>
#define  PU1    L'\x91'        // U+0091 <control>
#define  PU2    L'\x92'        // U+0092 <control>
#define  STS    L'\x93'        // U+0093 <control>
#define  CCH    L'\x94'        // U+0094 <control>
#define   MW    L'\x95'        // U+0095 <control>
#define  SPA    L'\x96'        // U+0096 <control>
#define  EPA    L'\x97'        // U+0097 <control>
#define  SOS    L'\x98'        // U+0098 <control>
#define SGCI    L'\x99'        // U+0099 <control>
#define  SCI    L'\x9a'        // U+009A <control>
#define  CSI    L'\x9b'        // U+009B <control>
#define   ST    L'\x9c'        // U+009C <control>
#define  OSC    L'\x9d'        // U+009D <control>
#define   PM    L'\x9e'        // U+009E <control>
#define  APC    L'\x9f'        // U+009F <control>

// Whitespace

#define NBSP    L'\u00A0'    // U+00A0 NO-BREAK SPACE
#define  SHY    L'\u00AD'    // U+00AD SOFT HYPHEN

// Private Use Area codepoints

#define F8FF    L'\uF8FF'    // U+F8FF <Private Use> (Apple uses this codepoint for the Apple logo.)

// Lossless round-trip encoding assistance for unassigned codepoints

// ISO-8859-7(:1987)
#define F7C2    L'\uF7C2'    // 0xA4 (ISO-8859-7:2003 adds U+20AC EURO SIGN here.)
#define F7C3    L'\uF7C3'    // 0xA5 (ISO-8859-7:2003 adds U+20AF DRACHMA SIGN here.)
#define F7C4    L'\uF7C4'    // 0xAA (ISO-8859-7:2003 adds U+0345 COMBINING GREEK YPOGEGRAMMENI here.)
#define F7C5    L'\uF7C5'    // 0xAE
#define F7C6    L'\uF7C6'    // 0xD2
#define F7C7    L'\uF7C7'    // 0xFF

// ISO-8859-3
#define F7F5    L'\uF7F5'    // 0xA5
#define F7F6    L'\uF7F6'    // 0xAE
#define F7F7    L'\uF7F7'    // 0xBE
#define F7F8    L'\uF7F8'    // 0xC3
#define F7F9    L'\uF7F9'    // 0xD0
#define F7FA    L'\uF7FA'    // 0xE3
#define F7FB    L'\uF7FB'    // 0xF0

// Mac OS Greek
#define F8A0    L'\uF8A0'    // 0xFF
/* (Mac OS 9.2.2 moves U+00AD SOFT HYPHEN here, and also adds U+20AC EURO SIGN
 * to where it was moved from (0x9C).)
 */

// windows-1253
#define F8F9    L'\uF8F9'    // 0xAA
#define F8FA    L'\uF8FA'    // 0xD2
#define F8FB    L'\uF8FB'    // 0xFF

#define DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(src_, table_)                                                                            \
    ENCResult ENCiConvertString ## src_ ## ToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType) { \
        return ENCiConvertStringLatinToUnicode(dst, dstSize, src, srcSize, breakType, table_);                                      \
    }

#define DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(dst_, table_)                    \
    ENCResult ENCiConvertStringUnicodeTo ## dst_(u8* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType) { \
        return ENCiConvertStringUnicodeToLatin(dst, dstSize, src, srcSize, breakType, table_);                                  \
    }

static u8 ENCiGetLatinCharFromHashTable(const struct latin_hash_table_entry* table, u16 src);

const u16 latin1_unicode_array[] = {
    L'€', 0x81, L'‚', L'ƒ', L'„', L'…', L'†', L'‡', L'ˆ', L'‰', L'Š', L'‹', L'Œ', 0x8D, L'Ž', 0x8F,
    0x90, L'‘', L'’', L'“', L'”', L'•', L'–', L'—', L'˜', L'™', L'š', L'›', L'œ', 0x9D, L'ž', L'Ÿ',
    0xA0, L'¡', L'¢', L'£', L'¤', L'¥', L'¦', L'§', L'¨', L'©', L'ª', L'«', L'¬', 0xAD, L'®', L'¯',
    L'°', L'±', L'²', L'³', L'´', L'µ', L'¶', L'·', L'¸', L'¹', L'º', L'»', L'¼', L'½', L'¾', L'¿', 
    L'À', L'Á', L'Â', L'Ã', L'Ä', L'Å', L'Æ', L'Ç', L'È', L'É', L'Ê', L'Ë', L'Ì', L'Í', L'Î', L'Ï',
    L'Ð', L'Ñ', L'Ò', L'Ó', L'Ô', L'Õ', L'Ö', L'×', L'Ø', L'Ù', L'Ú', L'Û', L'Ü', L'Ý', L'Þ', L'ß',
    L'à', L'á', L'â', L'ã', L'ä', L'å', L'æ', L'ç', L'è', L'é', L'ê', L'ë', L'ì', L'í', L'î', L'ï',
    L'ð', L'ñ', L'ò', L'ó', L'ô', L'õ', L'ö', L'÷', L'ø', L'ù', L'ú', L'û', L'ü', L'ý', L'þ', L'ÿ'
};

// ISO-8859-2
const u16 latin2_unicode_array[] = {
     PAD,  HOP,  BPH,  NBH,  IND,  NEL,  SSA,  ESA,  HTS,  HTJ,  LTS,  PLD,  PLU,   RI,  SS2,  SS3,
     DCS,  PU1,  PU2,  STS,  CCH,   MW,  SPA,  EPA,  SOS, SGCI,  SCI,  CSI,   ST,  OSC,   PM,  APC,
    0xA0, L'Ą', L'˘', L'Ł', 0xA4, L'Ľ', L'Ś', 0xA7, 0xA8, L'Š', L'Ş', L'Ť', L'Ź', 0xAD, L'Ž', L'Ż',
    0xB0, L'ą', L'˛', L'ł', 0xB4, L'ľ', L'ś', L'ˇ', 0xB8, L'š', L'ş', L'ť', L'ź', L'˝', L'ž', L'ż',
    L'Ŕ', 0xC1, 0xC2, L'Ă', 0xC4, L'Ĺ', L'Ć', 0xC7, L'Č', 0xC9, L'Ę', 0xCB, L'Ě', 0xCD, 0xCE, L'Ď',
    L'Đ', L'Ń', L'Ň', 0xD3, 0xD4, L'Ő', 0xD6, 0xD7, L'Ř', L'Ů', 0xDA, L'Ű', 0xDC, 0xDD, L'Ţ', 0xDF,
    L'ŕ', 0xE1, 0xE2, L'ă', 0xE4, L'ĺ', L'ć', 0xE7, L'č', 0xE9, L'ę', 0xEB, L'ě', 0xED, 0xEE, L'ď',
    L'đ', L'ń', L'ň', 0xF3, 0xF4, L'ő', 0xF6, 0xF7, L'ř', L'ů', 0xFA, L'ű', 0xFC, 0xFD, L'ţ', L'˙'
};

// ISO-8859-3
const u16 latin3_unicode_array[] = {
     PAD,  HOP,  BPH,  NBH,  IND,  NEL,  SSA,  ESA,  HTS,  HTJ,  LTS,  PLD,  PLU,   RI,  SS2,  SS3,
     DCS,  PU1,  PU2,  STS,  CCH,   MW,  SPA,  EPA,  SOS, SGCI,  SCI,  CSI,   ST,  OSC,   PM,  APC,
    0xA0, L'Ħ', L'˘', 0xA3, 0xA4, F7F5, L'Ĥ', 0xA7, 0xA8, L'İ', L'Ş', L'Ğ', L'Ĵ', 0xAD, F7F6, L'Ż',
    0xB0, L'ħ', 0xB2, 0xB3, 0xB4, 0xB5, L'ĥ', 0xB7, 0xB8, L'ı', L'ş', L'ğ', L'ĵ', 0xBD, F7F7, L'ż',
    0xC0, 0xC1, 0xC2, F7F8, 0xC4, L'Ċ', L'Ĉ', 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF,
    F7F9, 0xD1, 0xD2, 0xD3, 0xD4, L'Ġ', 0xD6, 0xD7, L'Ĝ', 0xD9, 0xDA, 0xDB, 0xDC, L'Ŭ', L'Ŝ', 0xDF,
    0xE0, 0xE1, 0xE2, F7FA, 0xE4, L'ċ', L'ĉ', 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF,
    F7FB, 0xF1, 0xF2, 0xF3, 0xF4, L'ġ', 0xF6, 0xF7, L'ĝ', 0xF9, 0xFA, 0xFB, 0xFC, L'ŭ', L'ŝ', L'˙'
};

// ISO-8859-7
const u16 greek_unicode_array[] = {
     PAD,  HOP,  BPH,  NBH,  IND,  NEL,  SSA,  ESA,  HTS,  HTJ,  LTS,  PLD,  PLU,   RI,  SS2,  SS3,
     DCS,  PU1,  PU2,  STS,  CCH,   MW,  SPA,  EPA,  SOS, SGCI,  SCI,  CSI,   ST,  OSC,   PM,  APC,
    0xA0, L'ʽ', L'ʼ', 0xA3, F7C2, F7C3, 0xA6, 0xA7, 0xA8, 0xA9, F7C4, 0xAB, 0xAC, 0xAD, F7C5, L'―',
    0xB0, 0xB1, 0xB2, 0xB3, L'΄', L'΅', L'Ά', 0xB7, L'Έ', L'Ή', L'Ί', 0xBB, L'Ό', 0xBD, L'Ύ', L'Ώ',
    L'ΐ', L'Α', L'Β', L'Γ', L'Δ', L'Ε', L'Ζ', L'Η', L'Θ', L'Ι', L'Κ', L'Λ', L'Μ', L'Ν', L'Ξ', L'Ο',
    L'Π', L'Ρ', F7C6, L'Σ', L'Τ', L'Υ', L'Φ', L'Χ', L'Ψ', L'Ω', L'Ϊ', L'Ϋ', L'ά', L'έ', L'ή', L'ί',
    L'ΰ', L'α', L'β', L'γ', L'δ', L'ε', L'ζ', L'η', L'θ', L'ι', L'κ', L'λ', L'μ', L'ν', L'ξ', L'ο',
    L'π', L'ρ', L'ς', L'σ', L'τ', L'υ', L'φ', L'χ', L'ψ', L'ω', L'ϊ', L'ϋ', L'ό', L'ύ', L'ώ', F7C7
};

// ISO-8859-10
const u16 latin6_unicode_array[] = {
     PAD,  HOP,  BPH,  NBH,  IND,  NEL,  SSA,  ESA,  HTS,  HTJ,  LTS,  PLD,  PLU,   RI,  SS2,  SS3,
     DCS,  PU1,  PU2,  STS,  CCH,   MW,  SPA,  EPA,  SOS, SGCI,  SCI,  CSI,   ST,  OSC,   PM,  APC,
    0xA0, L'Ą', L'Ē', L'Ģ', L'Ī', L'Ĩ', L'Ķ', 0xA7, L'Ļ', L'Đ', L'Š', L'Ŧ', L'Ž', 0xAD, L'Ū', L'Ŋ',
    0xB0, L'ą', L'ē', L'ģ', L'ī', L'ĩ', L'ķ', 0xB7, L'ļ', L'đ', L'š', L'ŧ', L'ž', L'―', L'ū', L'ŋ',
    L'Ā', 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, L'Į', L'Č', 0xC9, L'Ę', 0xCB, L'Ė', 0xCD, 0xCE, 0xCF,
    0xD0, L'Ņ', L'Ō', 0xD3, 0xD4, 0xD5, 0xD6, L'Ũ', 0xD8, L'Ų', 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF,
    L'ā', 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, L'į', L'č', 0xE9, L'ę', 0xEB, L'ė', 0xED, 0xEE, 0xEF,
    0xF0, L'ņ', L'ō', 0xF3, 0xF4, 0xF5, 0xF6, L'ũ', 0xF8, L'ų', 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, L'ĸ'
};

// ISO-8859-15
const u16 latin9_unicode_array[] = {
     PAD,  HOP,  BPH,  NBH,  IND,  NEL,  SSA,  ESA,  HTS,  HTJ,  LTS,  PLD,  PLU,   RI,  SS2,  SS3,
     DCS,  PU1,  PU2,  STS,  CCH,   MW,  SPA,  EPA,  SOS, SGCI,  SCI,  CSI,   ST,  OSC,   PM,  APC,
    0xA0, 0xA1, 0xA2, 0xA3, L'€', 0xA5, L'Š', 0xA7, L'š', 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF,
    0xB0, 0xB1, 0xB2, 0xB3, L'Ž', 0xB5, 0xB6, 0xB7, L'ž', 0xB9, 0xBA, 0xBB, L'Œ', L'œ', L'Ÿ', 0xBF,
    0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF,
    0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF,
    0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF,
    0xF0, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF
};

// windows-1250
const u16 win1250_unicode_array[] = {
    L'€', 0x81, L'‚', 0x83, L'„', L'…', L'†', L'‡', 0x88, L'‰', L'Š', L'‹', L'Ś', L'Ť', L'Ž', L'Ź',
    0x90, L'‘', L'’', L'“', L'”', L'•', L'–', L'—', 0x98, L'™', L'š', L'›', L'ś', L'ť', L'ž', L'ź',
    0xA0, L'ˇ', L'˘', L'Ł', 0xA4, L'Ą', 0xA6, 0xA7, 0xA8, 0xA9, L'Ş', 0xAB, 0xAC, 0xAD, 0xAE, L'Ż',
    0xB0, 0xB1, L'˛', L'ł', 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, L'ą', L'ş', 0xBB, L'Ľ', L'˝', L'ľ', L'ż',
    L'Ŕ', 0xC1, 0xC2, L'Ă', 0xC4, L'Ĺ', L'Ć', 0xC7, L'Č', 0xC9, L'Ę', 0xCB, L'Ě', 0xCD, 0xCE, L'Ď',
    L'Đ', L'Ń', L'Ň', 0xD3, 0xD4, L'Ő', 0xD6, 0xD7, L'Ř', L'Ů', 0xDA, L'Ű', 0xDC, 0xDD, L'Ţ', 0xDF,
    L'ŕ', 0xE1, 0xE2, L'ă', 0xE4, L'ĺ', L'ć', 0xE7, L'č', 0xE9, L'ę', 0xEB, L'ě', 0xED, 0xEE, L'ď',
    L'đ', L'ń', L'ň', 0xF3, 0xF4, L'ő', 0xF6, 0xF7, L'ř', L'ů', 0xFA, L'ű', 0xFC, 0xFD, L'ţ', L'˙'
};

// windows-1253
const u16 win1253_unicode_array[] = {
    L'€', 0x81, L'‚', L'ƒ', L'„', L'…', L'†', L'‡', 0x88, L'‰', 0x8A, L'‹', 0x8C, 0x8D, 0x8E, 0x8F,
    0x90, L'‘', L'’', L'“', L'”', L'•', L'–', L'—', 0x98, L'™', 0x9A, L'›', 0x9C, 0x9D, 0x9E, 0x9F,
    0xA0, L'΅', L'Ά', 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, F8F9, 0xAB, 0xAC, 0xAD, 0xAE, L'―',
    0xB0, 0xB1, 0xB2, 0xB3, L'΄', 0xB5, 0xB6, 0xB7, L'Έ', L'Ή', L'Ί', 0xBB, L'Ό', 0xBD, L'Ύ', L'Ώ',
    L'ΐ', L'Α', L'Β', L'Γ', L'Δ', L'Ε', L'Ζ', L'Η', L'Θ', L'Ι', L'Κ', L'Λ', L'Μ', L'Ν', L'Ξ', L'Ο',
    L'Π', L'Ρ', F8FA, L'Σ', L'Τ', L'Υ', L'Φ', L'Χ', L'Ψ', L'Ω', L'Ϊ', L'Ϋ', L'ά', L'έ', L'ή', L'ί',
    L'ΰ', L'α', L'β', L'γ', L'δ', L'ε', L'ζ', L'η', L'θ', L'ι', L'κ', L'λ', L'μ', L'ν', L'ξ', L'ο',
    L'π', L'ρ', L'ς', L'σ', L'τ', L'υ', L'φ', L'χ', L'ψ', L'ω', L'ϊ', L'ϋ', L'ό', L'ύ', L'ώ', F8FB
};

// macintosh ("Mac Roman")
const u16 macroman_unicode_array[] = {
    L'Ä', L'Å', L'Ç', L'É', L'Ñ', L'Ö', L'Ü', L'á', L'à', L'â', L'ä', L'ã', L'å', L'ç', L'é', L'è',
    L'ê', L'ë', L'í', L'ì', L'î', L'ï', L'ñ', L'ó', L'ò', L'ô', L'ö', L'õ', L'ú', L'ù', L'û', L'ü',
    L'†', L'°', L'¢', L'£', L'§', L'•', L'¶', L'ß', L'®', L'©', L'™', L'´', L'¨', L'≠', L'Æ', L'Ø',
    L'∞', L'±', L'≤', L'≥', L'¥', L'µ', L'∂', L'∑', L'∏', L'π', L'∫', L'ª', L'º', L'Ω', L'æ', L'ø',
    L'¿', L'¡', L'¬', L'√', L'ƒ', L'≈', L'∆', L'«', L'»', L'…', NBSP, L'À', L'Ã', L'Õ', L'Œ', L'œ',
    L'–', L'—', L'“', L'”', L'‘', L'’', L'÷', L'◊', L'ÿ', L'Ÿ', L'⁄', L'€', L'‹', L'›', L'ﬁ', L'ﬂ',
    L'‡', L'·', L'‚', L'„', L'‰', L'Â', L'Ê', L'Á', L'Ë', L'È', L'Í', L'Î', L'Ï', L'Ì', L'Ó', L'Ô',
    F8FF, L'Ò', L'Ú', L'Û', L'Ù', L'ı', L'ˆ', L'˜', L'¯', L'˘', L'˙', L'˚', L'¸', L'˝', L'˛', L'ˇ'
};

// Mac OS Greek (No MIME entry. encconvert.c uses "x-mac-greek".)
const u16 macgreek_unicode_array[] = {
    L'Ä', L'¹', L'²', L'É', L'³', L'Ö', L'Ü', L'΅', L'à', L'â', L'ä', L'΄', L'¨', L'ç', L'é', L'è',
    L'ê', L'ë', L'£', L'™', L'î', L'ï', L'•', L'½', L'‰', L'ô', L'ö', L'¦',  SHY, L'ù', L'û', L'ü',
    L'†', L'Γ', L'Δ', L'Θ', L'Λ', L'Ξ', L'Π', L'ß', L'®', L'©', L'Σ', L'Ϊ', L'§', L'≠', L'°', L'·',
    L'Α', L'±', L'≤', L'≥', L'¥', L'Β', L'Ε', L'Ζ', L'Η', L'Ι', L'Κ', L'Μ', L'Φ', L'Ϋ', L'Ψ', L'Ω',
    L'ά', L'Ν', L'¬', L'Ο', L'Ρ', L'≈', L'Τ', L'«', L'»', L'…', NBSP, L'Υ', L'Χ', L'Ά', L'Έ', L'œ',
    L'–', L'―', L'“', L'”', L'‘', L'’', L'÷', L'Ή', L'Ί', L'Ό', L'Ύ', L'έ', L'ή', L'ί', L'ό', L'Ώ',
    L'ύ', L'α', L'β', L'ψ', L'δ', L'ε', L'φ', L'γ', L'η', L'ι', L'ξ', L'κ', L'λ', L'μ', L'ν', L'ο',
    L'π', L'ώ', L'ρ', L'σ', L'τ', L'θ', L'ω', L'ς', L'χ', L'υ', L'ζ', L'ϊ', L'ϋ', L'ΐ', L'ΰ', F8A0
};

// Mac OS Central European (No MIME entry. encconvert.c uses "x-mac-ce".)
const u16 macce_unicode_array[] = {
    L'Ä', L'Ā', L'ā', L'É', L'Ą', L'Ö', L'Ü', L'á', L'ą', L'Č', L'ä', L'č', L'Ć', L'ć', L'é', L'Ź',
    L'ź', L'Ď', L'í', L'ď', L'Ē', L'ē', L'Ė', L'ó', L'ė', L'ô', L'ö', L'õ', L'ú', L'Ě', L'ě', L'ü',
    L'†', L'°', L'Ę', L'£', L'§', L'•', L'¶', L'ß', L'®', L'©', L'™', L'ę', L'¨', L'≠', L'ģ', L'Į',
    L'į', L'Ī', L'≤', L'≥', L'ī', L'Ķ', L'∂', L'∑', L'ł', L'Ļ', L'ļ', L'Ľ', L'ľ', L'Ĺ', L'ĺ', L'Ņ',
    L'ņ', L'Ń', L'¬', L'√', L'ń', L'Ň', L'∆', L'«', L'»', L'…', NBSP, L'ň', L'Ő', L'Õ', L'ő', L'Ō',
    L'–', L'—', L'“', L'”', L'‘', L'’', L'÷', L'◊', L'ō', L'Ŕ', L'ŕ', L'Ř', L'‹', L'›', L'ř', L'Ŗ',
    L'ŗ', L'Š', L'‚', L'„', L'š', L'Ś', L'ś', L'Á', L'Ť', L'ť', L'Í', L'Ž', L'ž', L'Ū', L'Ó', L'Ô',
    L'ū', L'Ů', L'Ú', L'ů', L'Ű', L'ű', L'Ų', L'ų', L'Ý', L'ý', L'ķ', L'Ż', L'Ł', L'ż', L'Ģ', L'ˇ'
};

// IBM850 (No preferred MIME name. This is the regular MIME name.)
const u16 ibm850_unicode_array[] = {
    L'Ç', L'ü', L'é', L'â', L'ä', L'à', L'å', L'ç', L'ê', L'ë', L'è', L'ï', L'î', L'ì', L'Ä', L'Å',
    L'É', L'æ', L'Æ', L'ô', L'ö', L'ò', L'û', L'ù', L'ÿ', L'Ö', L'Ü', L'ø', L'£', L'Ø', L'×', L'ƒ',
    L'á', L'í', L'ó', L'ú', L'ñ', L'Ñ', L'ª', L'º', L'¿', L'®', L'¬', L'½', L'¼', L'¡', L'«', L'»',
    L'░', L'▒', L'▓', L'│', L'┤', L'Á', L'Â', L'À', L'©', L'╣', L'║', L'╗', L'╝', L'¢', L'¥', L'┐',
    L'└', L'┴', L'┬', L'├', L'─', L'┼', L'ã', L'Ã', L'╚', L'╔', L'╩', L'╦', L'╠', L'═', L'╬', L'¤',
    L'ð', L'Ð', L'Ê', L'Ë', L'È', L'ı', L'Í', L'Î', L'Ï', L'┘', L'┌', L'█', L'▄', L'¦', L'Ì', L'▀',
    L'Ó', L'ß', L'Ô', L'Ò', L'õ', L'Õ', L'µ', L'þ', L'Þ', L'Ú', L'Û', L'Ù', L'ý', L'Ý', L'¯', L'´',
     SHY, L'±', L'‗', L'¾', L'¶', L'§', L'÷', L'¸', L'°', L'¨', L'·', L'¹', L'³', L'²', L'■', NBSP
};

// IBM852 (No preferred MIME name. This is the regular MIME name.)
const u16 ibm852_unicode_array[] = {
    L'Ç', L'ü', L'é', L'â', L'ä', L'ů', L'ć', L'ç', L'ł', L'ë', L'Ő', L'ő', L'î', L'Ź', L'Ä', L'Ć',
    L'É', L'Ĺ', L'ĺ', L'ô', L'ö', L'Ľ', L'ľ', L'Ś', L'ś', L'Ö', L'Ü', L'Ť', L'ť', L'Ł', L'×', L'č',
    L'á', L'í', L'ó', L'ú', L'Ą', L'ą', L'Ž', L'ž', L'Ę', L'ę', L'¬', L'ź', L'Č', L'ş', L'«', L'»',
    L'░', L'▒', L'▓', L'│', L'┤', L'Á', L'Â', L'Ě', L'Ş', L'╣', L'║', L'╗', L'╝', L'Ż', L'ż', L'┐',
    L'└', L'┴', L'┬', L'├', L'─', L'┼', L'Ă', L'ă', L'╚', L'╔', L'╩', L'╦', L'╠', L'═', L'╬', L'¤',
    L'đ', L'Đ', L'Ď', L'Ë', L'ď', L'Ň', L'Í', L'Î', L'ě', L'┘', L'┌', L'█', L'▄', L'Ţ', L'Ů', L'▀',
    L'Ó', L'ß', L'Ô', L'Ń', L'ń', L'ň', L'Š', L'š', L'Ŕ', L'Ú', L'ŕ', L'Ű', L'ý', L'Ý', L'ţ', L'´',
     SHY, L'˝', L'˛', L'ˇ', L'˘', L'§', L'÷', L'¸', L'°', L'¨', L'˙', L'ű', L'Ř', L'ř', L'■', NBSP
};

// Hash tables for conversion from Unicode

const struct latin_hash_table_entry unicode_latin1_array[] = {
    { PAD, 0x80,    0}, { HOP, 0x81,    1}, { BPH, 0x82,    2}, { NBH, 0x83,    3},
    { IND, 0x84,    4}, { NEL, 0x85,    5}, { SSA, 0x86,    6}, { ESA, 0x87,    7},
    { HTS, 0x88,    8}, { HTJ, 0x89,    9}, { LTS, 0x8A,   10}, { PLD, 0x8B,   11},
    { PLU, 0x8C,   12}, {  RI, 0x8D,   13}, { SS2, 0x8E,   14}, { SS3, 0x8F,   15},
    { DCS, 0x90,   16}, { PU1, 0x91,   17}, { PU2, 0x92,   18}, { STS, 0x93,   19},
    { CCH, 0x94,   20}, {  MW, 0x95,   21}, { SPA, 0x96,   22}, { EPA, 0x97,   23},
    { SOS, 0x98,   24}, {SGCI, 0x99,   25}, { SCI, 0x9A,   26}, { CSI, 0x9B,   27},
    {  ST, 0x9C,   28}, { OSC, 0x9D,   29}, {  PM, 0x9E,   30}, { APC, 0x9F,   31},
    {NBSP, 0xA0,   32}, {L'¡', 0xA1,   33}, {L'¢', 0xA2,   34}, {L'£', 0xA3,   35},
    {L'¤', 0xA4,   36}, {L'¥', 0xA5,   37}, {L'¦', 0xA6,   38}, {L'§', 0xA7,   39},
    {L'¨', 0xA8,   40}, {L'©', 0xA9,   41}, {L'ª', 0xAA,   42}, {L'«', 0xAB,   43},
    {L'¬', 0xAC,   44}, { SHY, 0xAD,   45}, {L'®', 0xAE,   46}, {L'¯', 0xAF,   47},
    {L'°', 0xB0,   48}, {L'±', 0xB1,   49}, {L'²', 0xB2,   50}, {L'³', 0xB3,   51},
    {L'´', 0xB4,   52}, {L'µ', 0xB5,   53}, {L'¶', 0xB6,   54}, {L'·', 0xB7,   55},
    {L'¸', 0xB8,   56}, {L'¹', 0xB9,   57}, {L'º', 0xBA,   58}, {L'»', 0xBB,   59},
    {L'¼', 0xBC,   60}, {L'½', 0xBD,   61}, {L'¾', 0xBE,   62}, {L'¿', 0xBF,   63},
    {L'À', 0xC0,   64}, {L'Á', 0xC1,   65}, {L'Â', 0xC2,   66}, {L'Ã', 0xC3,   67},
    {L'Ä', 0xC4,   68}, {L'Å', 0xC5,   69}, {L'Æ', 0xC6,   70}, {L'Ç', 0xC7,   71},
    {L'È', 0xC8,   72}, {L'É', 0xC9,   73}, {L'Ê', 0xCA,   74}, {L'Ë', 0xCB,   75},
    {L'Ì', 0xCC,   76}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'Ï', 0xCF,   79},
    {L'Ð', 0xD0,   80}, {L'Ñ', 0xD1,   81}, {L'Ò', 0xD2,   82}, {L'Ó', 0xD3,   83},
    {L'Ô', 0xD4,   84}, {L'Õ', 0xD5,   85}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'Ø', 0xD8,   88}, {L'Ù', 0xD9,   89}, {L'Ú', 0xDA,   90}, {L'Û', 0xDB,   91},
    {L'Ü', 0xDC,   92}, {L'Ý', 0xDD,   93}, {L'Þ', 0xDE,   94}, {L'ß', 0xDF,   95},
    {L'à', 0xE0,   96}, {L'á', 0xE1,   97}, {L'â', 0xE2,   98}, {L'ã', 0xE3,   99},
    {L'ä', 0xE4,  100}, {L'å', 0xE5,  101}, {L'æ', 0xE6,  102}, {L'ç', 0xE7,  103},
    {L'è', 0xE8,  104}, {L'é', 0xE9,  105}, {L'ê', 0xEA,  106}, {L'ë', 0xEB,  107},
    {L'ì', 0xEC,  108}, {L'í', 0xED,  109}, {L'î', 0xEE,  110}, {L'ï', 0xEF,  111},
    {L'ð', 0xF0,  112}, {L'ñ', 0xF1,  113}, {L'ò', 0xF2,  114}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {L'õ', 0xF5,  117}, {L'ö', 0xF6,  118}, {L'÷', 0xF7,  119},
    {L'ø', 0xF8,  120}, {L'ù', 0xF9,  121}, {L'ú', 0xFA,  122}, {L'û', 0xFB,  123},
    {L'ü', 0xFC,  124}, {L'ý', 0xFD,  125}, {L'þ', 0xFE,  126}, {L'ÿ', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_latin2_array[] = {
    { PAD, 0x80,    0}, { HOP, 0x81,    1}, { BPH, 0x82, 0x36}, { NBH, 0x83, 0x4c},
    { IND, 0x84, 0x21}, { NEL, 0x85, 0x29}, { SSA, 0x86, 0x37}, { ESA, 0x87, 0x51},
    { HTS, 0x88,    8}, { HTJ, 0x89,    9}, { LTS, 0x8A,   10}, { PLD, 0x8B,   11},
    { PLU, 0x8C, 0x3a}, {  RI, 0x8D, 0x52}, { SS2, 0x8E, 0x3f}, { SS3, 0x8F, 0x66},
    { DCS, 0x90, 0x40}, { PU1, 0x91, 0x68}, { PU2, 0x92,   18}, { STS, 0x93,   19},
    { CCH, 0x94,   20}, {  MW, 0x95,   21}, { SPA, 0x96,   22}, { EPA, 0x97,   23},
    { SOS, 0x98, 0x3b}, {SGCI, 0x99, 0x59}, { SCI, 0x9A, 0x3c}, { CSI, 0x9B, 0x63},
    {  ST, 0x9C,   28}, { OSC, 0x9D,   29}, {  PM, 0x9E,   30}, { APC, 0x9F,   31},
    {NBSP, 0xA0,   32}, {L'Ą', 0xA1,   33}, {L'Ł', 0xA3, 0x22}, {L'Ś', 0xA6, 0x23},
    {L'¤', 0xA4,   36}, {L'Ť', 0xAB, 0x25}, {L'Ž', 0xAE, 0x26}, {L'§', 0xA7,   39},
    {L'¨', 0xA8,   40}, {L'ą', 0xB1, 0x29}, {L'ł', 0xB3, 0x2a}, {L'ś', 0xB6, 0x2b},
    {L'ˇ', 0xB7, 0x45}, { SHY, 0xAD,   45}, {L'š', 0xB9, 0x2e}, {L'ş', 0xBA, 0x2f},
    {L'°', 0xB0,   48}, {L'ź', 0xBC, 0x31}, {L'˝', 0xBD, 0x32}, {L'ż', 0xBF, 0x33},
    {L'´', 0xB4,   52}, {L'Ŕ', 0xC0, 0x35}, {L'Ă', 0xC3, 0x36}, {L'Ć', 0xC6, 0x37},
    {L'¸', 0xB8,   56}, {L'Ĺ', 0xC5, 0x39}, {L'Č', 0xC8, 0x4f}, {L'Ę', 0xCA, 0x3b},
    {L'Ě', 0xCC, 0x3c}, {L'Ľ', 0xA5, 0x3d}, {L'ľ', 0xB5, 0x3e}, {L'Ď', 0xCF, 0x3f},
    {L'Đ', 0xD0, 0x40}, {L'Á', 0xC1, 0x22}, {L'Â', 0xC2, 0x2a}, {L'Ń', 0xD1, 0x43},
    {L'Ä', 0xC4, 0x6a}, {L'Ň', 0xD2, 0x45}, {L'Ř', 0xD8, 0x46}, {L'Ç', 0xC7, 0x2c},
    {L'Ů', 0xD9, 0x6c}, {L'É', 0xC9,   73}, {L'Ţ', 0xDE, 0x4a}, {L'Ë', 0xCB,   75},
    {L'ă', 0xE3, 0x4c}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'ĺ', 0xE5, 0x4f},
    {L'Ő', 0xD5, 0x50}, {L'ć', 0xE6, 0x6f}, {L'č', 0xE8, 0x52}, {L'Ó', 0xD3,   83},
    {L'Ô', 0xD4, 0x35}, {L'ŕ', 0xE0, 0x55}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'˘', 0xA2, 0x46}, {L'ę', 0xEA, 0x71}, {L'Ú', 0xDA, 0x23}, {L'˛', 0xB2, 0x2b},
    {L'Ü', 0xDC,   92}, {L'Ý', 0xDD, 0x32}, {L'Ş', 0xAA, 0x5e}, {L'ß', 0xDF, 0x2f},
    {L'Š', 0xA9, 0x60}, {L'á', 0xE1, 0x2e}, {L'â', 0xE2, 0x4a}, {L'ě', 0xEC, 0x78},
    {L'ä', 0xE4, 0x25}, {L'ť', 0xBB, 0x65}, {L'ď', 0xEF, 0x66}, {L'ç', 0xE7,  103},
    {L'đ', 0xF0, 0x68}, {L'é', 0xE9,  105}, {L'ń', 0xF1, 0x6a}, {L'ë', 0xEB,  107},
    {L'ň', 0xF2, 0x6c}, {L'í', 0xED,  109}, {L'î', 0xEE, 0x48}, {L'ő', 0xF5, 0x72},
    {L'Ű', 0xDB, 0x70}, {L'ř', 0xF8, 0x75}, {L'ů', 0xF9, 0x72}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {L'ű', 0xFB, 0x7f}, {L'ö', 0xF6,  118}, {L'÷', 0xF7,  119},
    {L'ţ', 0xFE, 0x78}, {L'Ź', 0xAC, 0x79}, {L'ú', 0xFA, 0x31}, {L'Ż', 0xAF, 0x7b},
    {L'ü', 0xFC, 0x33}, {L'ý', 0xFD, 0x26}, {L'ž', 0xBE, 0x7e}, {L'˙', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_latin3_array[] = {
    { PAD, 0x80,    0}, { HOP, 0x81,    1}, { BPH, 0x82,    2}, { NBH, 0x83,    3},
    { IND, 0x84,    4}, { NEL, 0x85,    5}, { SSA, 0x86,    6}, { ESA, 0x87,    7},
    { HTS, 0x88, 0x3e}, { HTJ, 0x89,   99}, { LTS, 0x8A, 0x3c}, { PLD, 0x8B, 0x5d},
    { PLU, 0x8C,   12}, {  RI, 0x8D,   13}, { SS2, 0x8E,   14}, { SS3, 0x8F,   15},
    { DCS, 0x90,   16}, { PU1, 0x91,   17}, { PU2, 0x92,   18}, { STS, 0x93,   19},
    { CCH, 0x94,   20}, {  MW, 0x95,   21}, { SPA, 0x96,   22}, { EPA, 0x97,   23},
    { SOS, 0x98,   24}, {SGCI, 0x99,   25}, { SCI, 0x9A,   26}, { CSI, 0x9B,   27},
    {  ST, 0x9C, 0x45}, { OSC, 0x9D, 0x70}, {  PM, 0x9E, 0x25}, { APC, 0x9F, 0x36},
    {NBSP, 0xA0, 0x43}, {L'Ĥ', 0xA6, 0x66}, {L'İ', 0xA9, 0x22}, {L'£', 0xA3,   35},
    {L'¤', 0xA4, 0x21}, {L'Ğ', 0xAB, 0x2e}, {L'Ħ', 0xA1, 0x26}, {L'§', 0xA7, 0x2c},
    {L'¨', 0xA8,   40}, {L'Ĵ', 0xAC, 0x29}, {F7F6, 0xAE, 0x2a}, {L'Ż', 0xAF, 0x65},
    {L'ħ', 0xB1, 0x2c}, { SHY, 0xAD,   45}, {L'ĥ', 0xB6, 0x2e}, {L'ş', 0xBA, 0x2f},
    {L'°', 0xB0, 0x22}, {L'ı', 0xB9, 0x31}, {L'²', 0xB2,   50}, {L'³', 0xB3,   51},
    {L'´', 0xB4, 0x29}, {L'µ', 0xB5, 0x39}, {L'ğ', 0xBB, 0x36}, {L'·', 0xB7,   55},
    {L'¸', 0xB8,   56}, {L'ĵ', 0xBC, 0x39}, {F7F7, 0xBE, 0x3a}, {L'ż', 0xBF, 0x3b},
    {L'Ċ', 0xC5, 0x3c}, {L'½', 0xBD,   61}, {L'Ĉ', 0xC6, 0x3e}, {F7F9, 0xD0, 0x3f},
    {L'À', 0xC0,   64}, {L'Á', 0xC1,   65}, {L'Â', 0xC2,   66}, {L'Ġ', 0xD5, 0x43},
    {L'Ä', 0xC4,   68}, {L'Ĝ', 0xD8, 0x45}, {L'Ŭ', 0xDD, 0x46}, {L'Ç', 0xC7,   71},
    {L'È', 0xC8,   72}, {L'É', 0xC9,   73}, {L'Ê', 0xCA,   74}, {L'Ë', 0xCB,   75},
    {L'Ì', 0xCC,   76}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'Ï', 0xCF,   79},
    {L'Ŝ', 0xDE, 0x50}, {L'Ñ', 0xD1,   81}, {L'Ò', 0xD2,   82}, {L'Ó', 0xD3,   83},
    {L'Ô', 0xD4,   84}, {F7FA, 0xE3, 0x55}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'˘', 0xA2, 0x58}, {L'Ù', 0xD9, 0x7f}, {L'Ú', 0xDA,   90}, {L'Û', 0xDB,   91},
    {L'Ü', 0xDC, 0x50}, {L'ċ', 0xE5, 0x7e}, {L'Ş', 0xAA, 0x5e}, {L'ß', 0xDF, 0x2f},
    {L'à', 0xE0,   96}, {L'á', 0xE1,   97}, {L'â', 0xE2,   98}, {L'ĉ', 0xE6, 0x63},
    {L'ä', 0xE4,  100}, {F7FB, 0xF0, 0x65}, {L'ġ', 0xF5, 0x66}, {L'ç', 0xE7,  103},
    {L'è', 0xE8,  104}, {L'é', 0xE9,  105}, {L'ê', 0xEA,  106}, {L'ë', 0xEB,  107},
    {L'ì', 0xEC, 0x46}, {L'í', 0xED, 0x7d}, {L'î', 0xEE,  110}, {L'ï', 0xEF,  111},
    {L'ĝ', 0xF8, 0x70}, {L'ñ', 0xF1,  113}, {L'ò', 0xF2,  114}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {F7F5, 0xA5, 0x75}, {L'ö', 0xF6, 0x2a}, {L'÷', 0xF7, 0x3a},
    {F7F8, 0xC3, 0x78}, {L'ù', 0xF9, 0x3f}, {L'ú', 0xFA, 0x55}, {L'û', 0xFB, 0x2b},
    {L'ü', 0xFC, 0x3b}, {L'ŭ', 0xFD,  125}, {L'ŝ', 0xFE,  126}, {L'˙', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_greek_array[] = {
    { PAD, 0x80,    0}, { HOP, 0x81,    1}, { BPH, 0x82,    2}, { NBH, 0x83,    3},
    { IND, 0x84, 0x24}, { NEL, 0x85, 0x25}, { SSA, 0x86, 0x2a}, { ESA, 0x87,    7},
    { HTS, 0x88, 0x2e}, { HTJ, 0x89, 0x2f}, { LTS, 0x8A, 0x34}, { PLD, 0x8B,   11},
    { PLU, 0x8C, 0x35}, {  RI, 0x8D,   13}, { SS2, 0x8E, 0x36}, { SS3, 0x8F, 0x38},
    { DCS, 0x90, 0x39}, { PU1, 0x91, 0x3a}, { PU2, 0x92, 0x3e}, { STS, 0x93, 0x3f},
    { CCH, 0x94, 0x40}, {  MW, 0x95, 0x22}, { SPA, 0x96, 0x46}, { EPA, 0x97, 0x47},
    { SOS, 0x98, 0x48}, {SGCI, 0x99, 0x49}, { SCI, 0x9A, 0x4a}, { CSI, 0x9B, 0x4b},
    {  ST, 0x9C, 0x4c}, { OSC, 0x9D, 0x4d}, {  PM, 0x9E, 0x4e}, { APC, 0x9F, 0x4f},
    {NBSP, 0xA0, 0x50}, {L'ʽ', 0xA1, 0x51}, {L'―', 0xAF, 0x41}, {L'£', 0xA3, 0x53},
    {L'΄', 0xB4, 0x54}, {L'΅', 0xB5, 0x55}, {L'¦', 0xA6, 0x56}, {L'§', 0xA7, 0x57},
    {L'¨', 0xA8, 0x58}, {L'©', 0xA9, 0x59}, {L'Ά', 0xB6, 0x5a}, {L'«', 0xAB, 0x5b},
    {L'¬', 0xAC, 0x5c}, { SHY, 0xAD, 0x5d}, {L'Έ', 0xB8, 0x5e}, {L'Ή', 0xB9, 0x5f},
    {L'°', 0xB0, 0x60}, {L'±', 0xB1, 0x61}, {L'²', 0xB2, 0x62}, {L'³', 0xB3, 0x63},
    {L'Ί', 0xBA, 0x64}, {L'Ό', 0xBC, 0x65}, {L'Ύ', 0xBE, 0x66}, {L'·', 0xB7, 0x67},
    {L'Ώ', 0xBF, 0x68}, {L'ΐ', 0xC0, 0x69}, {L'Α', 0xC1, 0x6a}, {L'»', 0xBB, 0x6b},
    {L'ʼ', 0xA2, 0x6c}, {L'½', 0xBD, 0x21}, {L'Β', 0xC2, 0x6e}, {L'Γ', 0xC3, 0x6f},
    {L'Δ', 0xC4, 0x70}, {L'Ε', 0xC5, 0x71}, {F7C2, 0xA4, 0x72}, {F7C3, 0xA5, 0x73},
    {F7C4, 0xAA, 0x74}, {F7C5, 0xAE, 0x75}, {L'Ζ', 0xC6, 0x52}, {L'Η', 0xC7, 0x77},
    {L'Θ', 0xC8, 0x78}, {L'Ι', 0xC9, 0x79}, {L'Κ', 0xCA, 0x7a}, {L'Λ', 0xCB, 0x7b},
    {L'Μ', 0xCC, 0x7c}, {L'Ν', 0xCD, 0x7d}, {L'Ξ', 0xCE, 0x7e}, {L'Ο', 0xCF,   79},
    {L'Π', 0xD0,   80}, {L'Ρ', 0xD1, 0x6d}, {F7C6, 0xD2, 0x76}, {L'Σ', 0xD3,   83},
    {L'Τ', 0xD4,   84}, {L'Υ', 0xD5,   85}, {L'Φ', 0xD6,   86}, {L'Χ', 0xD7,   87},
    {L'Ψ', 0xD8,   88}, {L'Ω', 0xD9,   89}, {L'Ϊ', 0xDA,   90}, {L'Ϋ', 0xDB,   91},
    {L'ά', 0xDC,   92}, {L'έ', 0xDD,   93}, {L'ή', 0xDE,   94}, {L'ί', 0xDF,   95},
    {L'ΰ', 0xE0,   96}, {L'α', 0xE1,   97}, {L'β', 0xE2,   98}, {L'γ', 0xE3,   99},
    {L'δ', 0xE4,  100}, {L'ε', 0xE5,  101}, {L'ζ', 0xE6,  102}, {L'η', 0xE7,  103},
    {L'θ', 0xE8,  104}, {L'ι', 0xE9,  105}, {L'κ', 0xEA,  106}, {L'λ', 0xEB,  107},
    {L'μ', 0xEC,  108}, {L'ν', 0xED,  109}, {L'ξ', 0xEE,  110}, {L'ο', 0xEF,  111},
    {L'π', 0xF0,  112}, {L'ρ', 0xF1,  113}, {L'ς', 0xF2,  114}, {L'σ', 0xF3,  115},
    {L'τ', 0xF4,  116}, {L'υ', 0xF5,  117}, {L'φ', 0xF6,  118}, {L'χ', 0xF7, 0x7f},
    {L'ψ', 0xF8,  120}, {L'ω', 0xF9,  121}, {L'ϊ', 0xFA,  122}, {L'ϋ', 0xFB,  123},
    {L'ό', 0xFC,  124}, {L'ύ', 0xFD,  125}, {L'ώ', 0xFE,  126}, {F7C7, 0xFF,  127}
};

const struct latin_hash_table_entry unicode_latin6_array[] = {
    { PAD, 0x80, 0x3a}, { HOP, 0x81, 0x48}, { BPH, 0x82,    2}, { NBH, 0x83,    3},
    { IND, 0x84, 0x21}, { NEL, 0x85, 0x29}, { SSA, 0x86,    6}, { ESA, 0x87,    7},
    { HTS, 0x88,    8}, { HTJ, 0x89,    9}, { LTS, 0x8A,   10}, { PLD, 0x8B,   11},
    { PLU, 0x8C, 0x3e}, {  RI, 0x8D, 0x52}, { SS2, 0x8E,   14}, { SS3, 0x8F,   15},
    { DCS, 0x90, 0x24}, { PU1, 0x91, 0x32}, { PU2, 0x92, 0x22}, { STS, 0x93, 0x2b},
    { CCH, 0x94,   20}, {  MW, 0x95, 0x35}, { SPA, 0x96, 0x40}, { EPA, 0x97, 0x59},
    { SOS, 0x98, 0x3f}, {SGCI, 0x99, 0x57}, { SCI, 0x9A,   26}, { CSI, 0x9B,   27},
    {  ST, 0x9C,   28}, { OSC, 0x9D,   29}, {  PM, 0x9E,   30}, { APC, 0x9F,   31},
    {NBSP, 0xA0,   32}, {L'Ą', 0xA1,   33}, {L'Ē', 0xA2, 0x23}, {L'Ģ', 0xA3, 0x2c},
    {L'Đ', 0xA9, 0x24}, {L'Ŧ', 0xAB, 0x25}, {L'Ž', 0xAC, 0x26}, {L'§', 0xA7,   39},
    {L'Ĩ', 0xA5, 0x28}, {L'ą', 0xB1, 0x2f}, {L'Ī', 0xA4, 0x2a}, {L'ē', 0xB2, 0x2e},
    {L'ģ', 0xB3, 0x2c}, { SHY, 0xAD,   45}, {L'ī', 0xB4, 0x3d}, {L'ĩ', 0xB5, 0x51},
    {L'°', 0xB0,   48}, {L'ķ', 0xB6, 0x31}, {L'đ', 0xB9, 0x32}, {L'š', 0xBA, 0x33},
    {L'ž', 0xBC, 0x34}, {L'―', 0xBD, 0x35}, {L'Ķ', 0xA6, 0x36}, {L'·', 0xB7, 0x31},
    {L'ū', 0xBE, 0x7f}, {L'ŋ', 0xBF, 0x39}, {L'Ā', 0xC0, 0x3a}, {L'Ļ', 0xA8, 0x3b},
    {L'ļ', 0xB8, 0x3c}, {L'Į', 0xC7, 0x3d}, {L'Č', 0xC8, 0x3e}, {L'Ę', 0xCA, 0x3f},
    {L'Ė', 0xCC, 0x40}, {L'Á', 0xC1,   65}, {L'Â', 0xC2,   66}, {L'Ã', 0xC3,   67},
    {L'Ä', 0xC4,   68}, {L'Å', 0xC5, 0x47}, {L'Æ', 0xC6, 0x6c}, {L'Ņ', 0xD1, 0x47},
    {L'ā', 0xE0, 0x48}, {L'É', 0xC9,   73}, {L'Ŋ', 0xAF, 0x4a}, {L'Ë', 0xCB, 0x39},
    {L'Ō', 0xD2, 0x4c}, {L'Í', 0xCD, 0x71}, {L'Î', 0xCE,   78}, {L'Ï', 0xCF,   79},
    {L'Ð', 0xD0,   80}, {L'į', 0xE7, 0x51}, {L'č', 0xE8, 0x52}, {L'Ó', 0xD3,   83},
    {L'Ô', 0xD4,   84}, {L'Õ', 0xD5,   85}, {L'Ö', 0xD6,   86}, {L'ę', 0xEA, 0x57},
    {L'Ø', 0xD8,   88}, {L'ė', 0xEC, 0x59}, {L'Ú', 0xDA,   90}, {L'Û', 0xDB,   91},
    {L'Ü', 0xDC,   92}, {L'Ý', 0xDD,   93}, {L'Þ', 0xDE,   94}, {L'ß', 0xDF,   95},
    {L'Š', 0xAA, 0x60}, {L'á', 0xE1, 0x33}, {L'â', 0xE2,   98}, {L'ã', 0xE3,   99},
    {L'ä', 0xE4,  100}, {L'å', 0xE5,  101}, {L'æ', 0xE6, 0x25}, {L'ŧ', 0xBB, 0x67},
    {L'Ũ', 0xD7, 0x68}, {L'é', 0xE9, 0x77}, {L'Ū', 0xAE, 0x6a}, {L'ë', 0xEB, 0x38},
    {L'ņ', 0xF1, 0x6c}, {L'í', 0xED,  109}, {L'î', 0xEE,  110}, {L'ï', 0xEF,  111},
    {L'ð', 0xF0,  112}, {L'ō', 0xF2, 0x71}, {L'Ų', 0xD9, 0x72}, {L'ó', 0xF3, 0x79},
    {L'ô', 0xF4,  116}, {L'õ', 0xF5,  117}, {L'ö', 0xF6,  118}, {L'ũ', 0xF7,  119},
    {L'ø', 0xF8,  120}, {L'ų', 0xF9,  121}, {L'ú', 0xFA,  122}, {L'û', 0xFB,  123},
    {L'ü', 0xFC,  124}, {L'ý', 0xFD, 0x26}, {L'þ', 0xFE, 0x34}, {L'ĸ', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_latin9_array[] = {
    { PAD, 0x80,    0}, { HOP, 0x81,    1}, { BPH, 0x82,    2}, { NBH, 0x83,    3},
    { IND, 0x84,    4}, { NEL, 0x85,    5}, { SSA, 0x86,    6}, { ESA, 0x87,    7},
    { HTS, 0x88,    8}, { HTJ, 0x89,    9}, { LTS, 0x8A,   10}, { PLD, 0x8B,   11},
    { PLU, 0x8C,   12}, {  RI, 0x8D,   13}, { SS2, 0x8E,   14}, { SS3, 0x8F,   15},
    { DCS, 0x90,   16}, { PU1, 0x91,   17}, { PU2, 0x92,   18}, { STS, 0x93,   19},
    { CCH, 0x94,   20}, {  MW, 0x95,   21}, { SPA, 0x96,   22}, { EPA, 0x97,   23},
    { SOS, 0x98,   24}, {SGCI, 0x99,   25}, { SCI, 0x9A,   26}, { CSI, 0x9B,   27},
    {  ST, 0x9C,   28}, { OSC, 0x9D,   29}, {  PM, 0x9E,   30}, { APC, 0x9F,   31},
    {NBSP, 0xA0,   32}, {L'¡', 0xA1,   33}, {L'¢', 0xA2,   34}, {L'£', 0xA3,   35},
    {L'€', 0xA4,   36}, {L'¥', 0xA5,   37}, {L'Š', 0xA6,   38}, {L'§', 0xA7,   39},
    {L'š', 0xA8,   40}, {L'©', 0xA9,   41}, {L'ª', 0xAA,   42}, {L'«', 0xAB,   43},
    {L'¬', 0xAC, 0x24}, { SHY, 0xAD,   45}, {L'®', 0xAE,   46}, {L'¯', 0xAF,   47},
    {L'°', 0xB0,   48}, {L'±', 0xB1,   49}, {L'²', 0xB2,   50}, {L'³', 0xB3,   51},
    {L'Ž', 0xB4,   52}, {L'µ', 0xB5,   53}, {L'¶', 0xB6,   54}, {L'·', 0xB7,   55},
    {L'ž', 0xB8,   56}, {L'¹', 0xB9,   57}, {L'º', 0xBA,   58}, {L'»', 0xBB,   59},
    {L'Œ', 0xBC,   60}, {L'œ', 0xBD,   61}, {L'Ÿ', 0xBE,   62}, {L'¿', 0xBF,   63},
    {L'À', 0xC0,   64}, {L'Á', 0xC1,   65}, {L'Â', 0xC2,   66}, {L'Ã', 0xC3,   67},
    {L'Ä', 0xC4,   68}, {L'Å', 0xC5,   69}, {L'Æ', 0xC6,   70}, {L'Ç', 0xC7,   71},
    {L'È', 0xC8,   72}, {L'É', 0xC9,   73}, {L'Ê', 0xCA,   74}, {L'Ë', 0xCB,   75},
    {L'Ì', 0xCC,   76}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'Ï', 0xCF,   79},
    {L'Ð', 0xD0,   80}, {L'Ñ', 0xD1,   81}, {L'Ò', 0xD2, 0x3c}, {L'Ó', 0xD3, 0x3d},
    {L'Ô', 0xD4,   84}, {L'Õ', 0xD5,   85}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'Ø', 0xD8,   88}, {L'Ù', 0xD9,   89}, {L'Ú', 0xDA,   90}, {L'Û', 0xDB,   91},
    {L'Ü', 0xDC,   92}, {L'Ý', 0xDD,   93}, {L'Þ', 0xDE,   94}, {L'ß', 0xDF,   95},
    {L'à', 0xE0, 0x26}, {L'á', 0xE1, 0x28}, {L'â', 0xE2,   98}, {L'ã', 0xE3,   99},
    {L'ä', 0xE4,  100}, {L'å', 0xE5,  101}, {L'æ', 0xE6,  102}, {L'ç', 0xE7,  103},
    {L'è', 0xE8,  104}, {L'é', 0xE9,  105}, {L'ê', 0xEA,  106}, {L'ë', 0xEB,  107},
    {L'ì', 0xEC,  108}, {L'í', 0xED,  109}, {L'î', 0xEE,  110}, {L'ï', 0xEF,  111},
    {L'ð', 0xF0,  112}, {L'ñ', 0xF1,  113}, {L'ò', 0xF2,  114}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {L'õ', 0xF5,  117}, {L'ö', 0xF6,  118}, {L'÷', 0xF7,  119},
    {L'ø', 0xF8, 0x3e}, {L'ù', 0xF9,  121}, {L'ú', 0xFA,  122}, {L'û', 0xFB,  123},
    {L'ü', 0xFC,  124}, {L'ý', 0xFD, 0x34}, {L'þ', 0xFE, 0x38}, {L'ÿ', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_win1252_array[] = {
    {L'€', 0x80,    0}, {0x81, 0x81,    1}, {L'…', 0x85,    2}, {L'†', 0x86,    3},
    {L'‡', 0x87,    4}, {L'ˆ', 0x88,    5}, {L'‰', 0x89,    6}, {L'Š', 0x8A,    7},
    {L'‹', 0x8B,    8}, {L'Œ', 0x8C,    9}, {L'Ž', 0x8E,   10}, {L'”', 0x94,   11},
    {L'•', 0x95, 0x11}, {0x8D, 0x8D,   13}, {L'˜', 0x98,   14}, {0x8F, 0x8F,   15},
    {0x90, 0x90,   16}, {L'™', 0x99,   17}, {L'ƒ', 0x83,   18}, {L'–', 0x96,   19},
    {L'—', 0x97,   20}, {L'š', 0x9A,   21}, {L'›', 0x9B,   22}, {L'œ', 0x9C,   23},
    {L'‘', 0x91,   24}, {L'’', 0x92,   25}, {L'‚', 0x82,   26}, {L'ž', 0x9E,   27},
    {L'“', 0x93,   28}, {0x9D, 0x9D, 0x0b}, {L'„', 0x84,   30}, {L'Ÿ', 0x9F,   31},
    {NBSP, 0xA0, 0x03}, {L'¡', 0xA1, 0x04}, {L'¢', 0xA2, 0x0c}, {L'£', 0xA3,   35},
    {L'¤', 0xA4,   36}, {L'¥', 0xA5,   37}, {L'¦', 0xA6, 0x02}, {L'§', 0xA7,   39},
    {L'¨', 0xA8,   40}, {L'©', 0xA9,   41}, {L'ª', 0xAA,   42}, {L'«', 0xAB,   43},
    {L'¬', 0xAC, 0x00}, { SHY, 0xAD,   45}, {L'®', 0xAE,   46}, {L'¯', 0xAF,   47},
    {L'°', 0xB0, 0x06}, {L'±', 0xB1,   49}, {L'²', 0xB2,   50}, {L'³', 0xB3,   51},
    {L'´', 0xB4,   52}, {L'µ', 0xB5,   53}, {L'¶', 0xB6,   54}, {L'·', 0xB7,   55},
    {L'¸', 0xB8,   56}, {L'¹', 0xB9, 0x08}, {L'º', 0xBA, 0x16}, {L'»', 0xBB,   59},
    {L'¼', 0xBC,   60}, {L'½', 0xBD,   61}, {L'¾', 0xBE,   62}, {L'¿', 0xBF,   63},
    {L'À', 0xC0,   64}, {L'Á', 0xC1,   65}, {L'Â', 0xC2,   66}, {L'Ã', 0xC3,   67},
    {L'Ä', 0xC4,   68}, {L'Å', 0xC5,   69}, {L'Æ', 0xC6, 0x05}, {L'Ç', 0xC7,   71},
    {L'È', 0xC8,   72}, {L'É', 0xC9,   73}, {L'Ê', 0xCA,   74}, {L'Ë', 0xCB,   75},
    {L'Ì', 0xCC,   76}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'Ï', 0xCF,   79},
    {L'Ð', 0xD0,   80}, {L'Ñ', 0xD1,   81}, {L'Ò', 0xD2, 0x09}, {L'Ó', 0xD3, 0x17},
    {L'Ô', 0xD4,   84}, {L'Õ', 0xD5,   85}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'Ø', 0xD8,   88}, {L'Ù', 0xD9,   89}, {L'Ú', 0xDA,   90}, {L'Û', 0xDB,   91},
    {L'Ü', 0xDC, 0x0e}, {L'Ý', 0xDD,   93}, {L'Þ', 0xDE,   94}, {L'ß', 0xDF,   95},
    {L'à', 0xE0, 0x07}, {L'á', 0xE1, 0x15}, {L'â', 0xE2,   98}, {L'ã', 0xE3,   99},
    {L'ä', 0xE4,  100}, {L'å', 0xE5,  101}, {L'æ', 0xE6,  102}, {L'ç', 0xE7,  103},
    {L'è', 0xE8,  104}, {L'é', 0xE9,  105}, {L'ê', 0xEA,  106}, {L'ë', 0xEB,  107},
    {L'ì', 0xEC,  108}, {L'í', 0xED,  109}, {L'î', 0xEE,  110}, {L'ï', 0xEF,  111},
    {L'ð', 0xF0,  112}, {L'ñ', 0xF1,  113}, {L'ò', 0xF2,  114}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {L'õ', 0xF5,  117}, {L'ö', 0xF6,  118}, {L'÷', 0xF7,  119},
    {L'ø', 0xF8, 0x1f}, {L'ù', 0xF9,  121}, {L'ú', 0xFA,  122}, {L'û', 0xFB,  123},
    {L'ü', 0xFC,  124}, {L'ý', 0xFD, 0x0a}, {L'þ', 0xFE, 0x1b}, {L'ÿ', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_win1250_array[]  = {
    {L'€', 0x80,    0}, {0x81, 0x81,    1}, {L'…', 0x85, 0x25}, {0x83, 0x83, 0x4c},
    {L'†', 0x86, 0x11}, {L'‰', 0x89, 0x16}, {L'Ś', 0x8C, 0x2f}, {L'Ť', 0x8D, 0x51},
    {0x88, 0x88,    8}, {L'Ž', 0x8E,    9}, {L'‘', 0x91, 0x33}, {L'™', 0x99,   11},
    {L'š', 0x9A, 0x32}, {L'ź', 0x9F, 0x52}, {L'ˇ', 0xA1, 0x3f}, {L'Ł', 0xA3, 0x66},
    {0x90, 0x90, 0x40}, {L'Ą', 0xA5, 0x68}, {L'˛', 0xB2,   18}, {L'–', 0x96,   19},
    {L'—', 0x97,   20}, {L'ł', 0xB3,   21}, {L'ą', 0xB9,   22}, {L'ş', 0xBA,   23},
    {0x98, 0x98, 0x0a}, {L'’', 0x92, 0x59}, {L'‚', 0x82, 0x3c}, {L'˝', 0xBD, 0x63},
    {L'“', 0x93,   28}, {L'”', 0x94,   29}, {L'„', 0x84,   30}, {L'ż', 0xBF,   31},
    {NBSP, 0xA0, 0x04}, {L'‡', 0x87,   33}, {L'•', 0x95, 0x0b}, {L'Ŕ', 0xC0,   35},
    {L'¤', 0xA4,   36}, {L'Ă', 0xC3,   37}, {L'¦', 0xA6, 0x02}, {L'§', 0xA7,   39},
    {L'¨', 0xA8,   40}, {L'©', 0xA9,   41}, {L'Ĺ', 0xC5,   42}, {L'«', 0xAB,   43},
    {L'¬', 0xAC, 0x00}, { SHY, 0xAD,   45}, {L'®', 0xAE,   46}, {L'Ć', 0xC6,   47},
    {L'°', 0xB0, 0x05}, {L'±', 0xB1,   49}, {L'Č', 0xC8,   50}, {L'Ę', 0xCA,   51},
    {L'´', 0xB4,   52}, {L'µ', 0xB5,   53}, {L'¶', 0xB6,   54}, {L'·', 0xB7,   55},
    {L'¸', 0xB8,   56}, {L'‹', 0x8B, 0x2a}, {L'›', 0x9B, 0x4f}, {L'»', 0xBB,   59},
    {L'Ě', 0xCC,   60}, {L'Ľ', 0xBC,   61}, {L'ľ', 0xBE,   62}, {L'Ď', 0xCF, 0x45},
    {L'Đ', 0xD0,   64}, {L'Á', 0xC1, 0x0f}, {L'Â', 0xC2, 0x15}, {L'Ń', 0xD1,   67},
    {L'Ä', 0xC4, 0x6a}, {L'Ň', 0xD2,   69}, {L'Ř', 0xD8,   70}, {L'Ç', 0xC7, 0x0e},
    {L'Ů', 0xD9, 0x6c}, {L'É', 0xC9,   73}, {L'Ţ', 0xDE,   74}, {L'Ë', 0xCB,   75},
    {L'ă', 0xE3,   76}, {L'Í', 0xCD,   77}, {L'Î', 0xCE,   78}, {L'ĺ', 0xE5,   79},
    {L'Ő', 0xD5,   80}, {L'ć', 0xE6, 0x6f}, {L'č', 0xE8,   82}, {L'Ó', 0xD3,   83},
    {L'Ô', 0xD4, 0x23}, {L'ŕ', 0xE0,   85}, {L'Ö', 0xD6,   86}, {L'×', 0xD7,   87},
    {L'˘', 0xA2, 0x46}, {L'ę', 0xEA, 0x71}, {L'Ú', 0xDA, 0x06}, {L'ś', 0x9C, 0x12},
    {L'Ü', 0xDC,   92}, {L'Ý', 0xDD, 0x1b}, {L'Ş', 0xAA,   94}, {L'ß', 0xDF, 0x17},
    {L'Š', 0x8A,   96}, {L'á', 0xE1, 0x0c}, {L'â', 0xE2, 0x4a}, {L'ě', 0xEC, 0x78},
    {L'ä', 0xE4, 0x07}, {L'ť', 0x9D,  101}, {L'ď', 0xEF,  102}, {L'ç', 0xE7,  103},
    {L'đ', 0xF0,  104}, {L'é', 0xE9,  105}, {L'ń', 0xF1,  106}, {L'ë', 0xEB,  107},
    {L'ň', 0xF2,  108}, {L'í', 0xED,  109}, {L'î', 0xEE, 0x48}, {L'ő', 0xF5, 0x72},
    {L'Ű', 0xDB,  112}, {L'ř', 0xF8, 0x75}, {L'ů', 0xF9,  114}, {L'ó', 0xF3,  115},
    {L'ô', 0xF4,  116}, {L'ű', 0xFB, 0x7f}, {L'ö', 0xF6,  118}, {L'÷', 0xF7,  119},
    {L'ţ', 0xFE,  120}, {L'Ź', 0x8F,  121}, {L'ú', 0xFA, 0x0d}, {L'Ż', 0xAF,  123},
    {L'ü', 0xFC, 0x1f}, {L'ý', 0xFD, 0x09}, {L'ž', 0x9E,  126}, {L'˙', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_win1253_array[]  = {
    {L'€', 0x80, 0x5a}, {0x81, 0x81,    1}, {L'‚', 0x82, 0x49}, {L'„', 0x84, 0x4d},
    {L'…', 0x85, 0x1b}, {L'†', 0x86, 0x15}, {L'‰', 0x89, 0x16}, {L'‘', 0x91,   71},
    {0x88, 0x88, 0x2a}, {L'“', 0x93, 0x2f}, {0x8A, 0x8A, 0x34}, {L'”', 0x94, 0x4c},
    {0x8C, 0x8C, 0x38}, {0x8D, 0x8D,   13}, {0x8E, 0x8E, 0x3c}, {0x8F, 0x8F, 0x3e},
    {0x90, 0x90, 0x3f}, {L'™', 0x99, 0x40}, {L'ƒ', 0x83, 0x41}, {L'–', 0x96, 0x42},
    {L'—', 0x97, 0x43}, {L'΅', 0xA1, 0x17}, {L'Ά', 0xA2, 0x45}, {L'―', 0xAF, 0x44},
    {0x98, 0x98, 0x07}, {L'’', 0x92, 0x48}, {0x9A, 0x9A, 0x02}, {L'΄', 0xB4, 0x4a},
    {0x9C, 0x9C, 0x09}, {0x9D, 0x9D, 0x0b}, {0x9E, 0x9E, 0x03}, {0x9F, 0x9F, 0x4e},
    {NBSP, 0xA0, 0x05}, {L'‡', 0x87, 0x50}, {L'•', 0x95, 0x11}, {L'£', 0xA3, 0x51},
    {L'¤', 0xA4, 0x52}, {L'¥', 0xA5, 0x53}, {L'¦', 0xA6, 0x04}, {L'§', 0xA7, 0x55},
    {L'¨', 0xA8, 0x56}, {L'©', 0xA9, 0x57}, {L'Έ', 0xB8, 0x58}, {L'«', 0xAB, 0x59},
    {L'¬', 0xAC, 0x00}, { SHY, 0xAD, 0x5b}, {L'®', 0xAE, 0x5c}, {L'Ή', 0xB9, 0x4b},
    {L'°', 0xB0, 0x06}, {L'±', 0xB1, 0x5f}, {L'²', 0xB2, 0x60}, {L'³', 0xB3, 0x61},
    {L'Ί', 0xBA, 0x62}, {L'µ', 0xB5, 0x63}, {L'¶', 0xB6, 0x64}, {L'·', 0xB7, 0x65},
    {L'Ό', 0xBC, 0x66}, {L'‹', 0x8B, 0x67}, {L'›', 0x9B, 0x68}, {L'»', 0xBB, 0x69},
    {L'Ύ', 0xBE, 0x6a}, {L'½', 0xBD, 0x6b}, {L'Ώ', 0xBF, 0x6c}, {L'ΐ', 0xC0, 0x6d},
    {L'Α', 0xC1, 0x6e}, {L'Β', 0xC2, 0x6f}, {L'Γ', 0xC3, 0x70}, {L'Δ', 0xC4, 0x71},
    {L'Ε', 0xC5, 0x46}, {L'Ζ', 0xC6, 0x5e}, {L'Η', 0xC7, 0x4f}, {L'Θ', 0xC8, 0x75},
    {L'Ι', 0xC9, 0x76}, {L'Κ', 0xCA, 0x77}, {L'Λ', 0xCB, 0x54}, {L'Μ', 0xCC, 0x5d},
    {L'Ν', 0xCD, 0x7c}, {L'Ξ', 0xCE, 0x7d}, {L'Ο', 0xCF, 0x7e}, {L'Π', 0xD0, 0x72},
    {L'Ρ', 0xD1,   80}, {L'Σ', 0xD3,   81}, {L'Τ', 0xD4,   82}, {L'Υ', 0xD5,   83},
    {L'Φ', 0xD6, 0x78}, {L'Χ', 0xD7,   85}, {L'Ψ', 0xD8,   86}, {L'Ω', 0xD9,   87},
    {L'Ϊ', 0xDA,   88}, {L'Ϋ', 0xDB,   89}, {L'ά', 0xDC,   90}, {L'έ', 0xDD,   91},
    {L'ή', 0xDE,   92}, {L'ί', 0xDF, 0x7b}, {L'ΰ', 0xE0, 0x73}, {L'α', 0xE1,   95},
    {L'β', 0xE2,   96}, {L'γ', 0xE3,   97}, {L'δ', 0xE4,   98}, {L'ε', 0xE5,   99},
    {L'ζ', 0xE6,  100}, {L'η', 0xE7,  101}, {L'θ', 0xE8,  102}, {L'ι', 0xE9,  103},
    {L'κ', 0xEA,  104}, {L'λ', 0xEB,  105}, {L'μ', 0xEC,  106}, {L'ν', 0xED,  107},
    {L'ξ', 0xEE,  108}, {L'ο', 0xEF,  109}, {L'π', 0xF0,  110}, {L'ρ', 0xF1,  111},
    {L'ς', 0xF2,  112}, {L'σ', 0xF3,  113}, {L'τ', 0xF4, 0x74}, {L'υ', 0xF5,  115},
    {L'φ', 0xF6,  116}, {L'χ', 0xF7,  117}, {L'ψ', 0xF8,  118}, {L'ω', 0xF9,  119},
    {L'ϊ', 0xFA,  120}, {F8F9, 0xAA,  121}, {F8FA, 0xD2,  122}, {L'ϋ', 0xFB, 0x7f},
    {L'ό', 0xFC,  124}, {L'ύ', 0xFD,  125}, {L'ώ', 0xFE,  126}, {F8FB, 0xFF,  127}
};

const struct latin_hash_table_entry unicode_macroman_array[]  = {
    {L'•', 0xA5, 0x01}, {L'™', 0xAA, 0x10}, {L'≠', 0xAD, 0x05}, {L'≤', 0xB2,    3},
    {L'≥', 0xB3,    4}, {L'∂', 0xB6, 0x15}, {L'∆', 0xC6,    6}, {L'«', 0xC7,    7},
    {L'…', 0xC9,    8}, {NBSP, 0xCA,    9}, {L'À', 0xCB,   10}, {L'Ÿ', 0xD9,   11},
    {L'⁄', 0xDA,   12}, {L'€', 0xDB,   13}, {L'›', 0xDD,   14}, {L'∏', 0xB8,   15},
    {L'ﬁ', 0xDE,   16}, {L'∑', 0xB7,   17}, {L'ƒ', 0xC4,   18}, {L'–', 0xD0,   19},
    {L'—', 0xD1,   20}, {L'ﬂ', 0xDF,   21}, {L'‡', 0xE0,   22}, {L'‚', 0xE2,   23},
    {L'‘', 0xD4,   24}, {L'’', 0xD5,   25}, {L'√', 0xC3, 0x17}, {L'„', 0xE3,   27},
    {L'“', 0xD2,   28}, {L'”', 0xD3,   29}, {L'∞', 0xB0, 0x1b}, {L'‰', 0xE4,   31},
    {L'†', 0xA0, 0x09}, {L'¡', 0xC1, 0x16}, {L'¢', 0xA2, 0x00}, {L'£', 0xA3,   35},
    {L'Ê', 0xE6,   36}, {L'¥', 0xB4,   37}, {L'Ω', 0xBD, 0x08}, {L'§', 0xA4,   39},
    {L'¨', 0xAC,   40}, {L'©', 0xA9,   41}, {L'ª', 0xBB,   42}, {L'∫', 0xBA, 0x07},
    {L'¬', 0xC2, 0x0d}, {L'È', 0xE9,   45}, {L'®', 0xA8,   46}, {L'Ó', 0xEE, 0x3e},
    {L'°', 0xA1, 0x1f}, {L'±', 0xB1, 0x38}, {F8FF, 0xF0,   50}, {L'Ò', 0xF1,   51},
    {L'´', 0xAB,   52}, {L'µ', 0xB5,   53}, {L'¶', 0xA6,   54}, {L'·', 0xE1,   55},
    {L'ı', 0xF5, 0x5e}, {L'‹', 0xDC,   57}, {L'º', 0xBC, 0x0e}, {L'»', 0xC8,   59},
    {L'ˆ', 0xF6,   60}, {L'˜', 0xF7,   61}, {L'¯', 0xF8,   62}, {L'¿', 0xC0,   63},
    {L'π', 0xB9, 0x0a}, {L'Á', 0xE7,   65}, {L'Â', 0xE5,   66}, {L'Ã', 0xCC,   67},
    {L'Ä', 0x80, 0x0c}, {L'Å', 0x81,   69}, {L'Æ', 0xAE, 0x3c}, {L'Ç', 0x82, 0x7e},
    {L'≈', 0xC5, 0x2d}, {L'É', 0x83,   73}, {L'◊', 0xD7, 0x24}, {L'Ë', 0xE8,   75},
    {L'Ì', 0xED,   76}, {L'Í', 0xEA,   77}, {L'Î', 0xEB,   78}, {L'Ï', 0xEC,   79},
    {L'˘', 0xF9,   80}, {L'Ñ', 0x84,   81}, {L'Œ', 0xCE, 0x33}, {L'œ', 0xCF, 0x2f},
    {L'Ô', 0xEF,   84}, {L'Õ', 0xCD,   85}, {L'Ö', 0x85,   86}, {L'˙', 0xFA,   87},
    {L'Ø', 0xAF, 0x50}, {L'Ù', 0xF4, 0x57}, {L'Ú', 0xF2, 0x5d}, {L'Û', 0xF3, 0x7d},
    {L'Ü', 0x86, 0x3d}, {L'˚', 0xFB, 0x70}, {L'¸', 0xFC,   94}, {L'ß', 0xA7,   95},
    {L'à', 0x88, 0x02}, {L'á', 0x87,   97}, {L'â', 0x89,   98}, {L'ã', 0x8B,   99},
    {L'ä', 0x8A, 0x03}, {L'å', 0x8C, 0x04}, {L'æ', 0xBE,  102}, {L'ç', 0x8D,  103},
    {L'è', 0x8F,  104}, {L'é', 0x8E,  105}, {L'ê', 0x90,  106}, {L'ë', 0x91,  107},
    {L'ì', 0x93,  108}, {L'í', 0x92,  109}, {L'î', 0x94,  110}, {L'ï', 0x95,  111},
    {L'˝', 0xFD,  112}, {L'ñ', 0x96,  113}, {L'ò', 0x98,  114}, {L'ó', 0x97,  115},
    {L'ô', 0x99,  116}, {L'õ', 0x9B,  117}, {L'ö', 0x9A,  118}, {L'÷', 0xD6,  119},
    {L'ø', 0xBF, 0x0b}, {L'ù', 0x9D,  121}, {L'ú', 0x9C,  122}, {L'û', 0x9E,  123},
    {L'ü', 0x9F,  124}, {L'˛', 0xFE,  125}, {L'ˇ', 0xFF,  126}, {L'ÿ', 0xD8, 0x32}
};

const struct latin_hash_table_entry unicode_macgreek_array[]  = {
    {L'•', 0x96,    0}, {L'Π', 0xA6,   15}, {L'Σ', 0xAA,    2}, {L'≠', 0xAD,    3},
    {L'΄', 0x8B,    4}, {L'΅', 0x87,    5}, {L'°', 0xAE, 0x34}, {L'·', 0xAF,    7},
    {L'≤', 0xB2, 0x35}, {L'Φ', 0xBC, 0x0e}, {L'Ψ', 0xBE, 0x40}, {L'Ω', 0xBF,   11},
    {L'¬', 0xC2, 0x41}, {L'«', 0xC7,   13}, {L'…', 0xC9, 0x3f}, {NBSP, 0xCA, 0x47},
    {L'Υ', 0xCB, 0x7d}, {L'Α', 0xB0,   17}, {L'Β', 0xB5,   18}, {L'Γ', 0xA1, 0x36},
    {L'Δ', 0xA2,   20}, {L'Ε', 0xB6, 0x37}, {L'Ζ', 0xB7,   22}, {L'Η', 0xB8,   23},
    {L'Θ', 0xA3, 0x3c}, {L'Ι', 0xB9, 0x3e}, {L'Κ', 0xBA,   26}, {L'Λ', 0xA4,   27},
    {L'Μ', 0xBB, 0x38}, {L'Ν', 0xC1, 0x3a}, {L'Ξ', 0xA5,   30}, {L'Ο', 0xC3,   31},
    {L'†', 0xA0, 0x01}, {L'Ρ', 0xC4,   33}, {L'™', 0x93, 0x00}, {L'£', 0x92, 0x02},
    {L'Τ', 0xC6,   36}, {L'¥', 0xB4, 0x10}, {L'¦', 0x9B, 0x09}, {L'§', 0xAC, 0x2f},
    {L'¨', 0x8C, 0x0a}, {L'©', 0xA9, 0x0b}, {L'Ϊ', 0xAB,   42}, {L'Ϋ', 0xBD, 0x0d},
    {L'ά', 0xC0, 0x0c}, { SHY, 0x9C, 0x43}, {L'®', 0xA8, 0x45}, {L'Χ', 0xCC, 0x46},
    {L'‰', 0x98, 0x06}, {L'±', 0xB1, 0x4a}, {L'²', 0x82, 0x4b}, {L'³', 0x84, 0x52},
    {L'Ά', 0xCD, 0x4f}, {L'Έ', 0xCE, 0x50}, {L'–', 0xD0, 0x75}, {L'―', 0xD1, 0x54},
    {L'“', 0xD2, 0x6d}, {L'¹', 0x81, 0x55}, {L'”', 0xD3, 0x58}, {L'»', 0xC8, 0x59},
    {L'‘', 0xD4, 0x5a}, {L'½', 0x97, 0x5b}, {L'’', 0xD5, 0x57}, {L'Ή', 0xD7, 0x42},
    {L'Ί', 0xD8, 0x5e}, {L'Ό', 0xD9, 0x63}, {L'Ύ', 0xDA, 0x5d}, {L'έ', 0xDB, 0x66},
    {L'Ä', 0x80, 0x6c}, {L'ή', 0xDC, 0x73}, {L'ί', 0xDD, 0x51}, {L'Ώ', 0xDF, 0x72},
    {L'≈', 0xC5, 0x4e}, {L'É', 0x83, 0x70}, {L'α', 0xE1, 0x78}, {L'β', 0xE2, 0x7a},
    {L'ό', 0xDE,   76}, {L'ύ', 0xE0,   77}, {L'ψ', 0xE3, 0x61}, {L'δ', 0xE4, 0x7e},
    {L'ε', 0xE5,   80}, {L'φ', 0xE6,   81}, {L'γ', 0xE7,   82}, {L'œ', 0xCF,   83},
    {L'η', 0xE8,   84}, {L'ι', 0xE9,   85}, {L'Ö', 0x85,   86}, {L'ξ', 0xEA,   87},
    {L'κ', 0xEB,   88}, {L'λ', 0xEC,   89}, {L'μ', 0xED,   90}, {L'ν', 0xEE,   91},
    {L'Ü', 0x86,   92}, {L'ο', 0xEF, 0x71}, {L'π', 0xF0,   94}, {L'ß', 0xA7,   95},
    {L'à', 0x88, 0x03}, {L'ώ', 0xF1,   97}, {L'â', 0x89,   98}, {L'ρ', 0xF2,   99},
    {L'ä', 0x8A, 0x08}, {L'≥', 0xB3,  101}, {L'σ', 0xF3,  102}, {L'ç', 0x8D,  103},
    {L'è', 0x8F,  104}, {L'é', 0x8E,  105}, {L'ê', 0x90,  106}, {L'ë', 0x91,  107},
    {L'τ', 0xF4,  108}, {L'θ', 0xF5,  109}, {L'î', 0x94,  110}, {L'ï', 0x95,  111},
    {L'ω', 0xF6,  112}, {L'ς', 0xF7,  113}, {L'χ', 0xF8, 0x7f}, {L'υ', 0xF9,  115},
    {L'ô', 0x99,  116}, {L'ζ', 0xFA,  117}, {L'ö', 0x9A,  118}, {L'÷', 0xD6,  119},
    {L'ϊ', 0xFB,  120}, {L'ù', 0x9D,  121}, {L'ϋ', 0xFC,  122}, {L'û', 0x9E,  123},
    {L'ü', 0x9F,  124}, {L'ΐ', 0xFD,  125}, {L'ΰ', 0xFE,  126}, {F8A0, 0xFF,  127}
};

const struct latin_hash_table_entry unicode_macce_array[]  = {
    {L'Ā', 0x81,    0}, {L'ā', 0x82,    1}, {L'ú', 0x9C, 0x10}, {L'™', 0xAA, 0x78},
    {L'Ą', 0x84,    4}, {L'ą', 0x88,    5}, {L'Ć', 0x8C, 0x1c}, {L'ć', 0x8D,    7},
    {L'ģ', 0xAE,    8}, {L'Į', 0xAF,    9}, {L'≤', 0xB2, 0x4e}, {L'Ķ', 0xB5,   11},
    {L'Č', 0x89,   12}, {L'č', 0x8B,   13}, {L'Ď', 0x91,   14}, {L'ď', 0x93,   15},
    {L'∂', 0xB6,   16}, {L'∑', 0xB7,   17}, {L'Ē', 0x94,   18}, {L'ē', 0x95, 0x21},
    {L'√', 0xC3, 0x24}, {L'ń', 0xC4,   21}, {L'Ė', 0x96,   22}, {L'ė', 0x98,   23},
    {L'Ę', 0xA2, 0x31}, {L'ę', 0xAB, 0x32}, {L'Ě', 0x9D, 0x14}, {L'ě', 0x9E,   27},
    {L'∆', 0xC6, 0x25}, {L'«', 0xC7, 0x2d}, {L'»', 0xC8, 0x40}, {NBSP, 0xCA,   31},
    {L'†', 0xA0, 0x1f}, {L'–', 0xD0,   33}, {L'•', 0xA5, 0x03}, {L'£', 0xA3, 0x08},
    {L'—', 0xD1, 0x3f}, {L'“', 0xD2,   37}, {L'…', 0xC9,   38}, {L'§', 0xA4,   39},
    {L'¨', 0xAC,   40}, {L'©', 0xA9,   41}, {L'Ī', 0xB1,   42}, {L'ī', 0xB4, 0x1d},
    {L'¬', 0xC2,   44}, {L'”', 0xD3,   45}, {L'®', 0xA8, 0x09}, {L'į', 0xB0,   47},
    {L'°', 0xA1,   48}, {L'‘', 0xD4,   49}, {L'’', 0xD5,   50}, {L'ŕ', 0xDA,   51},
    {L'‹', 0xDC,   52}, {L'›', 0xDD,   53}, {L'¶', 0xA6, 0x0b}, {L'Ŗ', 0xDF, 0x67},
    {L'Š', 0xE1,   56}, {L'Ĺ', 0xBD, 0x34}, {L'ĺ', 0xBE, 0x35}, {L'Ļ', 0xB9, 0x1e},
    {L'ļ', 0xBA,   60}, {L'Ľ', 0xBB,   61}, {L'ľ', 0xBC,   62}, {L'‚', 0xE2,   63},
    {L'„', 0xE3,   64}, {L'š', 0xE4, 0x4b}, {L'ł', 0xB8,   66}, {L'Ń', 0xC1,   67},
    {L'Ä', 0x80, 0x15}, {L'Ņ', 0xBF,   69}, {L'ņ', 0xC0,   70}, {L'Ň', 0xC5, 0x7f},
    {L'ň', 0xCB,   72}, {L'É', 0x83,   73}, {L'◊', 0xD7,   74}, {L'Á', 0xE7, 0x68},
    {L'Ō', 0xCF,   76}, {L'ō', 0xD8, 0x52}, {L'Ť', 0xE8,   78}, {L'ť', 0xE9,   79},
    {L'Ő', 0xCC,   80}, {L'ő', 0xCE,   81}, {L'Í', 0xEA,   82}, {L'Ó', 0xEE,   83},
    {L'Ŕ', 0xD9, 0x5d}, {L'Õ', 0xCD, 0x33}, {L'Ö', 0x85, 0x37}, {L'ŗ', 0xE0,   87},
    {L'Ř', 0xDB,   88}, {L'ř', 0xDE,   89}, {L'Ś', 0xE5, 0x5e}, {L'ś', 0xE6,   91},
    {L'Ü', 0x86,   92}, {L'Ô', 0xEF, 0x63}, {L'Ú', 0xF2,   94}, {L'ß', 0xA7,   95},
    {L'≠', 0xAD, 0x38}, {L'á', 0x87, 0x41}, {L'ų', 0xF7,   98}, {L'Ý', 0xF8,   99},
    {L'ä', 0x8A, 0x0a}, {L'≥', 0xB3, 0x4f}, {L'ý', 0xF9,  102}, {L'ķ', 0xFA,  103},
    {L'Ł', 0xFC,  104}, {L'é', 0x8E,  105}, {L'Ū', 0xED,  106}, {L'ū', 0xF0,  107},
    {L'ż', 0xFD,  108}, {L'í', 0x92,  109}, {L'Ů', 0xF1,  110}, {L'ů', 0xF3,  111},
    {L'Ű', 0xF4,  112}, {L'ű', 0xF5,  113}, {L'Ų', 0xF6,  114}, {L'ó', 0x97, 0x62},
    {L'ô', 0x99,  116}, {L'õ', 0x9B,  117}, {L'ö', 0x9A,  118}, {L'÷', 0xD6,  119},
    {L'Ģ', 0xFE,  120}, {L'Ź', 0x8F,  121}, {L'ź', 0x90, 0x02}, {L'Ż', 0xFB,  123},
    {L'ü', 0x9F, 0x6c}, {L'Ž', 0xEB, 0x66}, {L'ž', 0xEC,  126}, {L'ˇ', 0xFF,  127}
};

const struct latin_hash_table_entry unicode_ibm850_array[]  = {
    {L'▒', 0xB1, 0x05}, {L'║', 0xBA,    1}, {L'│', 0xB3,    2}, {L'╗', 0xBB,    3},
    {L'┬', 0xC2, 0x15}, {L'─', 0xC4, 0x16}, {L'┼', 0xC5,    6}, {L'ã', 0xC6,    7},
    {L'╩', 0xCA, 0x0f}, {L'╦', 0xCB,    9}, {L'╠', 0xCC,   10}, {L'╬', 0xCE,   11},
    {L'¤', 0xCF, 0x0e}, {L'Ð', 0xD1,   13}, {L'┌', 0xDA,   14}, {L'█', 0xDB,   15},
    {L'┐', 0xBF,   16}, {L'░', 0xB0,   17}, {L'ƒ', 0x9F, 0x00}, {L'▓', 0xB2,   19},
    {L'└', 0xC0,   20}, {L'▄', 0xDC,   21}, {L'▀', 0xDF,   22}, {L'Ô', 0xE2, 0x1e},
    {L'┘', 0xD9,   24}, {L'Ú', 0xE9,   25}, {L'Ý', 0xED,   26}, {L'´', 0xEF,   27},
    {L'├', 0xC3,   28}, {L'±', 0xF1,   29}, {L'‗', 0xF2,   30}, {NBSP, 0xFF,   31},
    {L'■', 0xFE, 0x1f}, {L'¡', 0xAD,   33}, {L'¢', 0xBD,   34}, {L'£', 0x9C,   35},
    {L'┤', 0xB4, 0x0c}, {L'¥', 0xBE,   37}, {L'¦', 0xDD,   38}, {L'§', 0xF5,   39},
    {L'¨', 0xF9,   40}, {L'©', 0xB8,   41}, {L'ª', 0xA6,   42}, {L'«', 0xAE,   43},
    {L'¬', 0xAA, 0x04}, { SHY, 0xF0,   45}, {L'®', 0xA9,   46}, {L'¯', 0xEE,   47},
    {L'°', 0xF8,   48}, {L'ı', 0xD5, 0x1d}, {L'²', 0xFD,   50}, {L'³', 0xFC,   51},
    {L'┴', 0xC1, 0x1b}, {L'µ', 0xE6,   53}, {L'¶', 0xF4,   54}, {L'·', 0xFA,   55},
    {L'¸', 0xF7,   56}, {L'¹', 0xFB,   57}, {L'º', 0xA7,   58}, {L'»', 0xAF,   59},
    {L'¼', 0xAC, 0x06}, {L'½', 0xAB,   61}, {L'¾', 0xF3,   62}, {L'¿', 0xA8,   63},
    {L'À', 0xB7,   64}, {L'Á', 0xB5,   65}, {L'Â', 0xB6,   66}, {L'Ã', 0xC7,   67},
    {L'Ä', 0x8E,   68}, {L'Å', 0x8F,   69}, {L'Æ', 0x92,   70}, {L'Ç', 0x80,   71},
    {L'È', 0xD4,   72}, {L'É', 0x90,   73}, {L'Ê', 0xD2,   74}, {L'Ë', 0xD3,   75},
    {L'Ì', 0xDE,   76}, {L'Í', 0xD6,   77}, {L'Î', 0xD7,   78}, {L'Ï', 0xD8,   79},
    {L'═', 0xCD, 0x0d}, {L'Ñ', 0xA5, 0x01}, {L'Ò', 0xE3,   82}, {L'Ó', 0xE0,   83},
    {L'╔', 0xC9, 0x17}, {L'Õ', 0xE5,   85}, {L'Ö', 0x99,   86}, {L'×', 0x9E, 0x03},
    {L'Ø', 0x9D,   88}, {L'Ù', 0xEB,   89}, {L'╚', 0xC8, 0x19}, {L'Û', 0xEA,   91},
    {L'Ü', 0x9A,   92}, {L'╝', 0xBC, 0x1a}, {L'Þ', 0xE8,   94}, {L'ß', 0xE1,   95},
    {L'à', 0x85, 0x0a}, {L'á', 0xA0,   97}, {L'â', 0x83,   98}, {L'╣', 0xB9, 0x07},
    {L'ä', 0x84,  100}, {L'å', 0x86,  101}, {L'æ', 0x91, 0x09}, {L'ç', 0x87,  103},
    {L'è', 0x8A,  104}, {L'é', 0x82, 0x08}, {L'ê', 0x88,  106}, {L'ë', 0x89,  107},
    {L'ì', 0x8D, 0x0b}, {L'í', 0xA1,  109}, {L'î', 0x8C,  110}, {L'ï', 0x8B,  111},
    {L'ð', 0xD0,  112}, {L'ñ', 0xA4,  113}, {L'ò', 0x95,  114}, {L'ó', 0xA2,  115},
    {L'ô', 0x93,  116}, {L'õ', 0xE4,  117}, {L'ö', 0x94,  118}, {L'÷', 0xF6,  119},
    {L'ø', 0x9B,  120}, {L'ù', 0x97,  121}, {L'ú', 0xA3,  122}, {L'û', 0x96,  123},
    {L'ü', 0x81,  124}, {L'ý', 0xEC,  125}, {L'þ', 0xE7,  126}, {L'ÿ', 0x98,  127}
};

const struct latin_hash_table_entry unicode_ibm852_array[]  = {
    {L'Ť', 0x9B, 0x0f}, {L'ź', 0xAB,    1}, {L'│', 0xB3,   21}, {L'Á', 0xB5, 0x16},
    {L'Ą', 0xA4,   41}, {L'ą', 0xA5,    5}, {L'Ć', 0x8F,    6}, {L'ć', 0x86,    7},
    {L'Â', 0xB6, 0x28}, {L'║', 0xBA,    9}, {L'╗', 0xBB,   10}, {L'ż', 0xBE,   11},
    {L'Č', 0xAC, 0x27}, {L'č', 0x9F,   13}, {L'┬', 0xC2, 0x21}, {L'─', 0xC4, 0x22},
    {L'┐', 0xBF, 0x20}, {L'░', 0xB0, 0x1f}, {L'▒', 0xB1,   18}, {L'▓', 0xB2,   19},
    {L'└', 0xC0,   20}, {L'Ă', 0xC6,   21}, {L'ă', 0xC7,   22}, {L'╚', 0xC8, 0x36},
    {L'Ę', 0xA8, 0x26}, {L'ę', 0xA9,   25}, {L'Ě', 0xB7,   26}, {L'╩', 0xCA, 0x25},
    {L'├', 0xC3,   28}, {L'═', 0xCD,   29}, {L'¤', 0xCF,   30}, {L'đ', 0xD0,   31},
    {L'Đ', 0xD1, 0x78}, {L'Ď', 0xD2,   33}, {L'ď', 0xD4, 0x2e}, {L'Ň', 0xD5, 0x4c},
    {L'┤', 0xB4, 0x1e}, {L'ě', 0xD8,   37}, {L'┘', 0xD9,   38}, {L'┌', 0xDA, 0x4f},
    {L'█', 0xDB, 0x68}, {L'▄', 0xDC,   41}, {L'Ţ', 0xDD,   42}, {L'«', 0xAE,   43},
    {L'¬', 0xAA, 0x0e}, {L'Ů', 0xDE, 0x45}, {L'▀', 0xDF,   46}, {L'ß', 0xE1,   47},
    {L'Ô', 0xE2, 0x35}, {L'ń', 0xE4,   49}, {L'Š', 0xE6,   50}, {L'š', 0xE7,   51},
    {L'┴', 0xC1, 0x40}, {L'Ŕ', 0xE8, 0x59}, {L'Ú', 0xE9,   54}, {L'ý', 0xEC,   55},
    {L'Ý', 0xED, 0x46}, {L'Ĺ', 0x91,   57}, {L'ĺ', 0x92,   58}, {L'»', 0xAF,   59},
    {L'┼', 0xC5,   60}, {L'Ľ', 0x95,   61}, {L'ľ', 0x96,   62}, {L'ţ', 0xEE,   63},
    {L'´', 0xEF,   64}, {L'Ł', 0x9D, 0x03}, {L'ł', 0x88, 0x08}, {L'Ń', 0xE3,   67},
    {L'Ä', 0x8E, 0x31}, { SHY, 0xF0,   69}, {L'˝', 0xF1, 0x52}, {L'Ç', 0x80, 0x23},
    {L'ň', 0xE5,   72}, {L'É', 0x90,   73}, {L'˛', 0xF2,   74}, {L'Ë', 0xD3,   75},
    {L'ˇ', 0xF3,   76}, {L'Í', 0xD6,   77}, {L'Î', 0xD7,   78}, {L'§', 0xF5,   79},
    {L'Ő', 0x8A, 0x1d}, {L'ő', 0x8B, 0x09}, {L'¸', 0xF7,   82}, {L'Ó', 0xE0,   83},
    {L'╔', 0xC9, 0x30}, {L'ŕ', 0xEA,   85}, {L'Ö', 0x99,   86}, {L'×', 0x9E, 0x0a},
    {L'˘', 0xF4, 0x72}, {L'°', 0xF8, 0x6a}, {L'Ś', 0x97, 0x17}, {L'ś', 0x98, 0x4a},
    {L'Ü', 0x9A,   92}, {L'╝', 0xBC, 0x38}, {L'Ş', 0xB8,   94}, {L'ş', 0xAD, 0x2f},
    {L'╠', 0xCC, 0x32}, {L'á', 0xA0, 0x33}, {L'â', 0x83, 0x2a}, {L'╣', 0xB9, 0x3f},
    {L'ä', 0x84, 0x00}, {L'ť', 0x9C,  101}, {L'╦', 0xCB,  102}, {L'ç', 0x87,  103},
    {L'¨', 0xF9,  104}, {L'é', 0x82, 0x1b}, {L'˙', 0xFA, 0x75}, {L'ë', 0x89,  107},
    {L'╬', 0xCE,  108}, {L'í', 0xA1,  109}, {L'î', 0x8C, 0x2d}, {L'ů', 0x85,  111},
    {L'Ű', 0xEB,  112}, {L'ű', 0xFB,  113}, {L'Ř', 0xFC,  114}, {L'ó', 0xA2,  115},
    {L'ô', 0x93,  116}, {L'ř', 0xFD,  117}, {L'ö', 0x94,  118}, {L'÷', 0xF6,  119},
    {L'■', 0xFE, 0x7f}, {L'Ź', 0x8D,  121}, {L'ú', 0xA3, 0x01}, {L'Ż', 0xBD,  123},
    {L'ü', 0x81, 0x0b}, {L'Ž', 0xA6, 0x37}, {L'ž', 0xA7,  126}, {NBSP, 0xFF,  127}
};

static u8 ENCiGetLatinCharFromHashTable(const struct latin_hash_table_entry* table, u16 src) {
    u8 hash = src % 128; // size is passed in as a parameter in encconvert.c

    while (src != table[hash].c16) {
        if (hash == table[hash].next) {
            return '\0';
        }

        hash = table[hash].next;
    }

    return table[hash].cc;
}

ENCResult ENCiConvertStringLatinToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType, const u16* table) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u8 cur = *src;
        u16 c16 = L'\0';

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (cur >= 0x80) { // NOTE: !IS_ASCII(cur) does not work here
            c16 = table[cur - 0x80];
        }
        else {
            c16 = cur;
        }

        if (!c16) {
            UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_MAP_RULE);
        }
        else {
            WRITE_CHAR(c16, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUnicodeToLatin(u8* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType, const struct latin_hash_table_entry* table) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF16_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u16 cur = *src;
        u8 cc = 0x00;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (IS_ASCII(cur)) {
            cc = cur;
        }
        else {
            cc = ENCiGetLatinCharFromHashTable(table, cur);
        }

        if (!cc) {
            UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_MAP_RULE);
        }
        else {
            WRITE_CHAR(cc, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Latin1)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Latin1)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Latin2)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Latin2)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Latin3)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Latin3)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Greek)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Greek)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Latin6)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Latin6)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Latin9)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Latin9)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16_VIA(Win1252, Latin1)
DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Win1252)

// All of these are only convertible from, not to
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Win1250)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Win1253)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Macroman)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Macgreek)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Macce)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Ibm850)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Ibm852)

/* Private conversion functions are also trampolines into the generic
 * extASCII <=> Unicode conversion functions
 */
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Latin1, latin1_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Latin1, unicode_latin1_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Latin2, latin2_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Latin2, unicode_latin2_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Latin3, latin3_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Latin3, unicode_latin3_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Greek, greek_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Greek, unicode_greek_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Latin6, latin6_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Latin6, unicode_latin6_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Latin9, latin9_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Latin9, unicode_latin9_array)
// win1252 -> unicode goes through the latin1 table, since it's a strict superset of it
DEFINE_PRIVATE_TRAMPOLINE_FROM_UTF16(Win1252, unicode_win1252_array)

// All of these are only convertible from, not to (despite their corresponding tables existing?)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Win1250, win1250_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Win1253, win1253_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Macroman, macroman_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Macgreek, macgreek_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Macce, macce_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Ibm850, ibm850_unicode_array)
DEFINE_PRIVATE_TRAMPOLINE_TO_UTF16(Ibm852, ibm852_unicode_array)
