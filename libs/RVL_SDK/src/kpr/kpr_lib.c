#include <revolution/kpr.h>

#include <private/kpr/processes.h>

#include <revolution/kbd.h>
#include <revolution/os.h>
#include <revolution/verdefs.h>

#include <cwchar>

SDKDefineVersion(KPR, "Apr 20 2010", "11:21:44");

typedef struct _KPRDeadKeyMapEntry {
    wchar_t chars[2];  // 0x0
    wchar_t with;      // 0x4
} KPRDeadKeyMapEntry;
typedef struct _KPRRomajiRule {
    u8 findLen;              // 0x0
    u8 findText[4];          // 0x1
    u8 replaceLen;           // 0x5
    wchar_t replaceText[2];  // 0x6
} KPRRomajiRule;

// clang-format off
#define ROMAJI_RULE_GETCHR(TEXT, IDX) ((u8)(TEXT >> ((3 - IDX) * 8)) != ' ' ? (u8)(TEXT >> ((3 - IDX) * 8)) : '\0')
#define ROMAJI_RULE_ROMAJI_TEXTLEN(TEXT)                                                                                                             \
    !ROMAJI_RULE_GETCHR(TEXT, 0) ? 0 : !ROMAJI_RULE_GETCHR(TEXT, 1) ? 1 : !ROMAJI_RULE_GETCHR(TEXT, 2) ? 2 : !ROMAJI_RULE_GETCHR(TEXT, 3) ? 3 : 4
#define ROMAJI_RULE_ROMAJI_TEXT(T) {ROMAJI_RULE_GETCHR(T, 0), ROMAJI_RULE_GETCHR(T, 1), ROMAJI_RULE_GETCHR(T, 2), ROMAJI_RULE_GETCHR(T, 3)}

#define ROMAJI_RULE_HIRA_LEN_INNER(HIRA_A, HIRA_B, ...) HIRA_A == L'\0' ? 0 : HIRA_B == L'\0' ? 1 : 2
#define ROMAJI_RULE_HIRA_LEN(...) ROMAJI_RULE_HIRA_LEN_INNER(__VA_ARGS__, L'\0', L'\0', L'\0')

#define ROMAJI_RULE(ROMAJI, ...)                                                                                                  \
    {ROMAJI_RULE_ROMAJI_TEXTLEN(ROMAJI), ROMAJI_RULE_ROMAJI_TEXT(ROMAJI), ROMAJI_RULE_HIRA_LEN(__VA_ARGS__), {__VA_ARGS__}}

static const KPRRomajiRule kprRmJpRule[]  = {
    ROMAJI_RULE('ltsa', L'っ', L'ぁ'),
    ROMAJI_RULE('ltse', L'っ', L'ぇ'),
    ROMAJI_RULE('ltsi', L'っ', L'ぃ'),
    ROMAJI_RULE('ltso', L'っ', L'ぉ'),
    ROMAJI_RULE('ltsu', L'っ'),

    ROMAJI_RULE('lwha', L'ぅ', L'ぁ'),
    ROMAJI_RULE('lwhe', L'ぅ', L'ぇ'),
    ROMAJI_RULE('lwhi', L'ぅ', L'ぃ'),
    ROMAJI_RULE('lwho', L'ぅ', L'ぉ'),
    ROMAJI_RULE('lwhu', L'ぅ'),

    ROMAJI_RULE('xtsa', L'っ', L'ぁ'),
    ROMAJI_RULE('xtse', L'っ', L'ぇ'),
    ROMAJI_RULE('xtsi', L'っ', L'ぃ'),
    ROMAJI_RULE('xtso', L'っ', L'ぉ'),
    ROMAJI_RULE('xtsu', L'っ', 0),

    ROMAJI_RULE('xwha', L'ぅ', L'ぁ'),
    ROMAJI_RULE('xwhe', L'ぅ', L'ぇ'),
    ROMAJI_RULE('xwhi', L'ぅ', L'ぃ'),
    ROMAJI_RULE('xwho', L'ぅ', L'ぉ'),
    ROMAJI_RULE('xwhu', L'ぅ'),

    ROMAJI_RULE('bya ', L'び', L'ゃ'),
    ROMAJI_RULE('bye ', L'び', L'ぇ'),
    ROMAJI_RULE('byi ', L'び', L'ぃ'),
    ROMAJI_RULE('byo ', L'び', L'ょ'),
    ROMAJI_RULE('byu ', L'び', L'ゅ'),

    ROMAJI_RULE('cha ', L'ち', L'ゃ'),
    ROMAJI_RULE('che ', L'ち', L'ぇ'),
    ROMAJI_RULE('chi ', L'ち'),
    ROMAJI_RULE('cho ', L'ち', L'ょ'),
    ROMAJI_RULE('chu ', L'ち', L'ゅ'),

    ROMAJI_RULE('cya ', L'ち', L'ゃ'),
    ROMAJI_RULE('cye ', L'ち', L'ぇ'),
    ROMAJI_RULE('cyi ', L'ち', L'ぃ'),
    ROMAJI_RULE('cyo ', L'ち', L'ょ'),
    ROMAJI_RULE('cyu ', L'ち', L'ゅ'),

    ROMAJI_RULE('dha ', L'で', L'ゃ'),
    ROMAJI_RULE('dhe ', L'で', L'ぇ'),
    ROMAJI_RULE('dhi ', L'で', L'ぃ'),
    ROMAJI_RULE('dho ', L'で', L'ょ'),
    ROMAJI_RULE('dhu ', L'で', L'ゅ'),

    ROMAJI_RULE('dya ', L'ぢ', L'ゃ'),
    ROMAJI_RULE('dyi ', L'ぢ', L'ぃ'), // Why are these switched???
    ROMAJI_RULE('dye ', L'ぢ', L'ぇ'),
    ROMAJI_RULE('dyo ', L'ぢ', L'ょ'),
    ROMAJI_RULE('dyu ', L'ぢ', L'ゅ'),

    ROMAJI_RULE('fya ', L'ふ', L'ゃ'),
    ROMAJI_RULE('fye ', L'ふ', L'ぇ'),
    ROMAJI_RULE('fyi ', L'ふ', L'ぃ'),
    ROMAJI_RULE('fyo ', L'ふ', L'ょ'),
    ROMAJI_RULE('fyu ', L'ふ', L'ゅ'),

    ROMAJI_RULE('gya ', L'ぎ', L'ゃ'),
    ROMAJI_RULE('gye ', L'ぎ', L'ぇ'),
    ROMAJI_RULE('gyi ', L'ぎ', L'ぃ'),
    ROMAJI_RULE('gyo ', L'ぎ', L'ょ'),
    ROMAJI_RULE('gyu ', L'ぎ', L'ゅ'),

    ROMAJI_RULE('hya ', L'ひ', L'ゃ'),
    ROMAJI_RULE('hye ', L'ひ', L'ぇ'),
    ROMAJI_RULE('hyi ', L'ひ', L'ぃ'),
    ROMAJI_RULE('hyo ', L'ひ', L'ょ'),
    ROMAJI_RULE('hyu ', L'ひ', L'ゅ'),

    ROMAJI_RULE('jya ', L'じ', L'ゃ'),
    ROMAJI_RULE('jye ', L'じ', L'ぇ'),
    ROMAJI_RULE('jyi ', L'じ', L'ぃ'),
    ROMAJI_RULE('jyo ', L'じ', L'ょ'),
    ROMAJI_RULE('jyu ', L'じ', L'ゅ'),

    ROMAJI_RULE('kya ', L'き', L'ゃ'),
    ROMAJI_RULE('kye ', L'き', L'ぇ'),
    ROMAJI_RULE('kyi ', L'き', L'ぃ'),
    ROMAJI_RULE('kyo ', L'き', L'ょ'),
    ROMAJI_RULE('kyu ', L'き', L'ゅ'),

    ROMAJI_RULE('lya ', L'ゃ'),
    ROMAJI_RULE('lyo ', L'ょ'),
    ROMAJI_RULE('lyu ', L'ゅ'),

    ROMAJI_RULE('ltu ', L'っ'),

    ROMAJI_RULE('lwa ', L'ゎ'),
    ROMAJI_RULE('lwe ', L'ぅ', L'ぇ'),
    ROMAJI_RULE('lwi ', L'ぅ', L'ぃ'),
    ROMAJI_RULE('lwu ', L'ぅ'),

    ROMAJI_RULE('mya ', L'み', L'ゃ'),
    ROMAJI_RULE('mye ', L'み', L'ぇ'),
    ROMAJI_RULE('myi ', L'み', L'ぃ'),
    ROMAJI_RULE('myo ', L'み', L'ょ'),
    ROMAJI_RULE('myu ', L'み', L'ゅ'),

    ROMAJI_RULE('nya ', L'に', L'ゃ'),
    ROMAJI_RULE('nye ', L'に', L'ぇ'),
    ROMAJI_RULE('nyi ', L'に', L'ぃ'),
    ROMAJI_RULE('nyo ', L'に', L'ょ'),
    ROMAJI_RULE('nyu ', L'に', L'ゅ'),

    ROMAJI_RULE('pya ', L'ぴ', L'ゃ'),
    ROMAJI_RULE('pye ', L'ぴ', L'ぇ'),
    ROMAJI_RULE('pyi ', L'ぴ', L'ぃ'),
    ROMAJI_RULE('pyo ', L'ぴ', L'ょ'),
    ROMAJI_RULE('pyu ', L'ぴ', L'ゅ'),

    ROMAJI_RULE('qya ', L'く', L'ゃ'),
    ROMAJI_RULE('qye ', L'く', L'ぇ'),
    ROMAJI_RULE('qyi ', L'く', L'ぃ'),
    ROMAJI_RULE('qyo ', L'く', L'ょ'),
    ROMAJI_RULE('qyu ', L'く', L'ゅ'),

    ROMAJI_RULE('rya ', L'り', L'ゃ'),
    ROMAJI_RULE('rye ', L'り', L'ぇ'),
    ROMAJI_RULE('ryi ', L'り', L'ぃ'),
    ROMAJI_RULE('ryo ', L'り', L'ょ'),
    ROMAJI_RULE('ryu ', L'り', L'ゅ'),

    ROMAJI_RULE('sha ', L'し', L'ゃ'),
    ROMAJI_RULE('she ', L'し', L'ぇ'),
    ROMAJI_RULE('shi ', L'し'),
    ROMAJI_RULE('sho ', L'し', L'ょ'),
    ROMAJI_RULE('shu ', L'し', L'ゅ'),

    ROMAJI_RULE('sya ', L'し', L'ゃ'),
    ROMAJI_RULE('sye ', L'し', L'ぇ'),
    ROMAJI_RULE('syi ', L'し', L'ぃ'),
    ROMAJI_RULE('syo ', L'し', L'ょ'),
    ROMAJI_RULE('syu ', L'し', L'ゅ'),

    ROMAJI_RULE('tha ', L'て', L'ゃ'),
    ROMAJI_RULE('the ', L'て', L'ぇ'),
    ROMAJI_RULE('thi ', L'て', L'ぃ'),
    ROMAJI_RULE('tho ', L'て', L'ょ'),
    ROMAJI_RULE('thu ', L'て', L'ゅ'),

    ROMAJI_RULE('tsa ', L'つ', L'ぁ'),
    ROMAJI_RULE('tse ', L'つ', L'ぇ'),
    ROMAJI_RULE('tsi ', L'つ', L'ぃ'),
    ROMAJI_RULE('tso ', L'つ', L'ぉ'),
    ROMAJI_RULE('tsu ', L'つ'),

    ROMAJI_RULE('tya ', L'ち', L'ゃ'),
    ROMAJI_RULE('tye ', L'ち', L'ぇ'),
    ROMAJI_RULE('tyi ', L'ち', L'ぃ'),
    ROMAJI_RULE('tyo ', L'ち', L'ょ'),
    ROMAJI_RULE('tyu ', L'ち', L'ゅ'),

    ROMAJI_RULE('vya ', L'ヴ', L'ゃ'),
    ROMAJI_RULE('vye ', L'ヴ', L'ぇ'),
    ROMAJI_RULE('vyi ', L'ヴ', L'ぃ'),
    ROMAJI_RULE('vyo ', L'ヴ', L'ょ'),
    ROMAJI_RULE('vyu ', L'ヴ', L'ゅ'),

    ROMAJI_RULE('wha ', L'う', L'ぁ'),
    ROMAJI_RULE('whe ', L'う', L'ぇ'),
    ROMAJI_RULE('whi ', L'う', L'ぃ'),
    ROMAJI_RULE('who ', L'う', L'ぉ'),
    ROMAJI_RULE('whu ', L'う'),

    ROMAJI_RULE('xya ', L'ゃ'),
    ROMAJI_RULE('xyo ', L'ょ'),
    ROMAJI_RULE('xyu ', L'ゅ'),
    ROMAJI_RULE('xtu ', L'っ'),

    ROMAJI_RULE('xwa ', L'ゎ'),
    ROMAJI_RULE('xwe ', L'ぅ', L'ぇ'),
    ROMAJI_RULE('xwi ', L'ぅ', L'ぃ'),
    ROMAJI_RULE('xwu ', L'ぅ'),

    ROMAJI_RULE('zya ', L'じ', L'ゃ'),
    ROMAJI_RULE('zye ', L'じ', L'ぇ'),
    ROMAJI_RULE('zyi ', L'じ', L'ぃ'),
    ROMAJI_RULE('zyo ', L'じ', L'ょ'),
    ROMAJI_RULE('zyu ', L'じ', L'ゅ'),

    ROMAJI_RULE('ba  ', L'ば'),
    ROMAJI_RULE('be  ', L'べ'),
    ROMAJI_RULE('bi  ', L'び'),
    ROMAJI_RULE('bo  ', L'ぼ'),
    ROMAJI_RULE('bu  ', L'ぶ'),

    ROMAJI_RULE('ca  ', L'か'),
    ROMAJI_RULE('ce  ', L'せ'),
    ROMAJI_RULE('ci  ', L'し'),
    ROMAJI_RULE('co  ', L'こ'),
    ROMAJI_RULE('cu  ', L'く'),

    ROMAJI_RULE('da  ', L'だ'),
    ROMAJI_RULE('de  ', L'で'),
    ROMAJI_RULE('di  ', L'ぢ'),
    ROMAJI_RULE('do  ', L'ど'),
    ROMAJI_RULE('du  ', L'づ'),

    ROMAJI_RULE('fa  ', L'ふ', L'ぁ'),
    ROMAJI_RULE('fe  ', L'ふ', L'ぇ'),
    ROMAJI_RULE('fi  ', L'ふ', L'ぃ'),
    ROMAJI_RULE('fo  ', L'ふ', L'ぉ'),
    ROMAJI_RULE('fu  ', L'ふ'),

    ROMAJI_RULE('ga  ', L'が'),
    ROMAJI_RULE('ge  ', L'げ'),
    ROMAJI_RULE('gi  ', L'ぎ'),
    ROMAJI_RULE('go  ', L'ご'),
    ROMAJI_RULE('gu  ', L'ぐ'),

    ROMAJI_RULE('ha  ', L'は'),
    ROMAJI_RULE('he  ', L'へ'),
    ROMAJI_RULE('hi  ', L'ひ'),
    ROMAJI_RULE('ho  ', L'ほ'),
    ROMAJI_RULE('hu  ', L'ふ'),

    ROMAJI_RULE('ja  ', L'じ', L'ゃ'),
    ROMAJI_RULE('je  ', L'じ', L'ぇ'),
    ROMAJI_RULE('ji  ', L'じ'),
    ROMAJI_RULE('jo  ', L'じ', L'ょ'),
    ROMAJI_RULE('ju  ', L'じ', L'ゅ'),

    ROMAJI_RULE('ka  ', L'か'),
    ROMAJI_RULE('ke  ', L'け'),
    ROMAJI_RULE('ki  ', L'き'),
    ROMAJI_RULE('ko  ', L'こ'),
    ROMAJI_RULE('ku  ', L'く'),

    ROMAJI_RULE('la  ', L'ぁ'),
    ROMAJI_RULE('le  ', L'ぇ'),
    ROMAJI_RULE('li  ', L'ぃ'),
    ROMAJI_RULE('lo  ', L'ぉ'),
    ROMAJI_RULE('lu  ', L'ぅ'),

    ROMAJI_RULE('ma  ', L'ま'),
    ROMAJI_RULE('me  ', L'め'),
    ROMAJI_RULE('mi  ', L'み'),
    ROMAJI_RULE('mo  ', L'も'),
    ROMAJI_RULE('mu  ', L'む'),

    ROMAJI_RULE('na  ', L'な'),
    ROMAJI_RULE('ne  ', L'ね'),
    ROMAJI_RULE('ni  ', L'に'),
    ROMAJI_RULE('no  ', L'の'),
    ROMAJI_RULE('nu  ', L'ぬ'),

    ROMAJI_RULE('pa  ', L'ぱ'),
    ROMAJI_RULE('pe  ', L'ぺ'),
    ROMAJI_RULE('pi  ', L'ぴ'),
    ROMAJI_RULE('po  ', L'ぽ'),
    ROMAJI_RULE('pu  ', L'ぷ'),

    ROMAJI_RULE('qa  ', L'く', L'ぁ'),
    ROMAJI_RULE('qe  ', L'く', L'ぇ'),
    ROMAJI_RULE('qi  ', L'く', L'ぃ'),
    ROMAJI_RULE('qo  ', L'く', L'ぉ'),
    ROMAJI_RULE('qu  ', L'く'),

    ROMAJI_RULE('ra  ', L'ら'),
    ROMAJI_RULE('re  ', L'れ'),
    ROMAJI_RULE('ri  ', L'り'),
    ROMAJI_RULE('ro  ', L'ろ'),
    ROMAJI_RULE('ru  ', L'る'),

    ROMAJI_RULE('sa  ', L'さ'),
    ROMAJI_RULE('se  ', L'せ'),
    ROMAJI_RULE('si  ', L'し'),
    ROMAJI_RULE('so  ', L'そ'),
    ROMAJI_RULE('su  ', L'す'),

    ROMAJI_RULE('ta  ', L'た'),
    ROMAJI_RULE('te  ', L'て'),
    ROMAJI_RULE('ti  ', L'ち'),
    ROMAJI_RULE('to  ', L'と'),
    ROMAJI_RULE('tu  ', L'つ'),

    ROMAJI_RULE('va  ', L'ヴ', L'ぁ'),
    ROMAJI_RULE('ve  ', L'ヴ', L'ぇ'),
    ROMAJI_RULE('vi  ', L'ヴ', L'ぃ'),
    ROMAJI_RULE('vo  ', L'ヴ', L'ぉ'),
    ROMAJI_RULE('vu  ', L'ヴ'),

    ROMAJI_RULE('wa  ', L'わ'),
    ROMAJI_RULE('we  ', L'う', L'ぇ'),
    ROMAJI_RULE('wi  ', L'う', L'ぃ'),
    ROMAJI_RULE('wo  ', L'を'),
    ROMAJI_RULE('wu  ', L'う'),

    ROMAJI_RULE('xa  ', L'ぁ'),
    ROMAJI_RULE('xe  ', L'ぇ'),
    ROMAJI_RULE('xi  ', L'ぃ'),
    ROMAJI_RULE('xo  ', L'ぉ'),
    ROMAJI_RULE('xu  ', L'ぅ'),

    ROMAJI_RULE('ya  ', L'や'),
    ROMAJI_RULE('ye  ', L'い', L'ぇ'),
    ROMAJI_RULE('yi  ', L'い'),
    ROMAJI_RULE('yo  ', L'よ'),
    ROMAJI_RULE('yu  ', L'ゆ'),

    ROMAJI_RULE('za  ', L'ざ'),
    ROMAJI_RULE('ze  ', L'ぜ'),
    ROMAJI_RULE('zi  ', L'じ'),
    ROMAJI_RULE('zo  ', L'ぞ'),
    ROMAJI_RULE('zu  ', L'ず'),

    ROMAJI_RULE('nn  ', L'ん'),

    ROMAJI_RULE('a   ', L'あ'),
    ROMAJI_RULE('e   ', L'え'),
    ROMAJI_RULE('i   ', L'い'),
    ROMAJI_RULE('o   ', L'お'),
    ROMAJI_RULE('u   ', L'う'),
};
static const wchar_t kprConvertSmallTsu[2] = {L'っ', L'ッ'};
static const wchar_t kprConvertNN[2] = {L'ん', L'ン'};


static const KPRDeadKeyMapEntry kprDeadKeyMap[] = {
    // Grave accent diacritic
    {{L'\u0300', L'\u0300'}, L'`'},
    {{L'\u0300', L'A'}, L'À'},
    {{L'\u0300', L'E'}, L'È'},
    {{L'\u0300', L'I'}, L'Ì'},
    {{L'\u0300', L'O'}, L'Ò'},
    {{L'\u0300', L'U'}, L'Ù'},
    {{L'\u0300', L'a'}, L'à'},
    {{L'\u0300', L'e'}, L'è'},
    {{L'\u0300', L'i'}, L'ì'},
    {{L'\u0300', L'o'}, L'ò'},
    {{L'\u0300', L'u'}, L'ù'},

    // Acute accent diacritic
    {{L'\u0301', L'\u0301'}, L'´'},
    {{L'\u0301', L'A'}, L'Á'},
    {{L'\u0301', L'E'}, L'É'},
    {{L'\u0301', L'I'}, L'Í'},
    {{L'\u0301', L'O'}, L'Ó'},
    {{L'\u0301', L'U'}, L'Ú'},
    {{L'\u0301', L'Y'}, L'Ý'},
    {{L'\u0301', L'a'}, L'á'},
    {{L'\u0301', L'e'}, L'é'},
    {{L'\u0301', L'i'}, L'í'},
    {{L'\u0301', L'o'}, L'ó'},
    {{L'\u0301', L'u'}, L'ú'},
    {{L'\u0301', L'y'}, L'ý'},

    // Circumflex accent diacritic
    {{L'\u0302', L'\u0302'}, L'^'},
    {{L'\u0302', L'A'}, L'Â'},
    {{L'\u0302', L'E'}, L'Ê'},
    {{L'\u0302', L'I'}, L'Î'},
    {{L'\u0302', L'O'}, L'Ô'},
    {{L'\u0302', L'U'}, L'Û'},
    {{L'\u0302', L'a'}, L'â'},
    {{L'\u0302', L'e'}, L'ê'},
    {{L'\u0302', L'i'}, L'î'},
    {{L'\u0302', L'o'}, L'ô'},
    {{L'\u0302', L'u'}, L'û'},

    // Tilde diacritic
    {{L'\u0303', L'\u0303'}, L'~'},
    {{L'\u0303', L'A'}, L'Ã'},
    {{L'\u0303', L'N'}, L'Ñ'},
    {{L'\u0303', L'O'}, L'Õ'},
    {{L'\u0303', L'a'}, L'ã'},
    {{L'\u0303', L'n'}, L'ñ'},
    {{L'\u0303', L'o'}, L'õ'},

    // Diaresis diacritic
    {{L'\u0308', L'\u0308'}, L'¨'},
    {{L'\u0308', L'A'}, L'Ä'},
    {{L'\u0308', L'E'}, L'Ë'},
    {{L'\u0308', L'I'}, L'Ï'},
    {{L'\u0308', L'O'}, L'Ö'},
    {{L'\u0308', L'U'}, L'Ü'},
    {{L'\u0308', L'Y'}, L'Ÿ'},
    {{L'\u0308', L'a'}, L'ä'},
    {{L'\u0308', L'e'}, L'ë'},
    {{L'\u0308', L'i'}, L'ï'},
    {{L'\u0308', L'o'}, L'ö'},
    {{L'\u0308', L'u'}, L'ü'},
    {{L'\u0308', L'y'}, L'ÿ'},

    // Cedilla diacritic
    {{L'\u0327', L'\u0327'}, L'¸'},
    {{L'\u0327', L'C'}, L'Ç'},
    {{L'\u0327', L'c'}, L'ç'},

    // "vertical line above" diacritic
    {{L'\u030D', L'\u030D'}, L'\''},
    {{L'\u030D', L'A'}, L'Á'},
    {{L'\u030D', L'E'}, L'É'},
    {{L'\u030D', L'I'}, L'Í'},
    {{L'\u030D', L'O'}, L'Ó'},
    {{L'\u030D', L'U'}, L'Ú'},
    {{L'\u030D', L'Y'}, L'Ý'},
    {{L'\u030D', L'C'}, L'Ç'},
    {{L'\u030D', L'a'}, L'á'},
    {{L'\u030D', L'e'}, L'é'},
    {{L'\u030D', L'i'}, L'í'},
    {{L'\u030D', L'o'}, L'ó'},
    {{L'\u030D', L'u'}, L'ú'},
    {{L'\u030D', L'y'}, L'ý'},
    {{L'\u030D', L'c'}, L'ç'},

    // "double vertical line above" diacritic
    {{L'\u030E', L'\u030E'}, L'"'},
    {{L'\u030E', L'A'}, L'Ä'},
    {{L'\u030E', L'E'}, L'Ë'},
    {{L'\u030E', L'I'}, L'Ï'},
    {{L'\u030E', L'O'}, L'Ö'},
    {{L'\u030E', L'U'}, L'Ü'},
    {{L'\u030E', L'Y'}, L'Ÿ'},
    {{L'\u030E', L'a'}, L'ä'},
    {{L'\u030E', L'e'}, L'ë'},
    {{L'\u030E', L'i'}, L'ï'},
    {{L'\u030E', L'o'}, L'ö'},
    {{L'\u030E', L'u'}, L'ü'},
    {{L'\u030E', L'y'}, L'ÿ'},

    // Greek Dialyticka Tonos Diacritic
    {{L'\u0344', L'\u0344'}, L'΅'},
    {{L'\u0344', L'ι'}, L'ΐ'},
    {{L'\u0344', L'υ'}, L'ΰ'},

    // Other Greek
    {{L'\u0308', L'Ι'}, L'Ϊ'},
    {{L'\u0308', L'Υ'}, L'Ϋ'},
    {{L'\u0308', L'ι'}, L'ϊ'},
    {{L'\u0308', L'υ'}, L'ϋ'},
    {{L'\u0301', L'Α'}, L'Ά'},
    {{L'\u0301', L'Ε'}, L'Έ'},
    {{L'\u0301', L'Η'}, L'Ή'},
    {{L'\u0301', L'Ι'}, L'Ί'},
    {{L'\u0301', L'Ο'}, L'Ό'},
    {{L'\u0301', L'Υ'}, L'Ύ'},
    {{L'\u0301', L'Ω'}, L'Ώ'},
    {{L'\u0301', L'α'}, L'ά'},
    {{L'\u0301', L'ε'}, L'έ'},
    {{L'\u0301', L'η'}, L'ή'},
    {{L'\u0301', L'ι'}, L'ί'},
    {{L'\u0301', L'ο'}, L'ό'},
    {{L'\u0301', L'υ'}, L'ύ'},
    {{L'\u0301', L'ω'}, L'ώ'},
};
// clang-format on

// Code page 1252 (Windows)
static const wchar_t kprLookupTable1252[] = {
    L'€', 0,    L'‚', L'ƒ', L'„', L'…', L'†', L'‡', L'ˆ', L'‰', L'Š', L'‹', L'Œ', 0, L'Ž', 0,
    0,    L'‘', L'’', L'“', L'”', L'•', L'–', L'—', L'˜', L'™', L'š', L'›', L'œ', 0, L'ž', L'Ÿ',
};

// Code page 437 (IBM DOS)
static const wchar_t kprLookupTable437[] = {
    L'Ç', L'ü', L'é', L'â', L'ä', L'à', L'å', L'ç', L'ê', L'ë', L'è', L'ï', L'î', L'ì', L'Ä', L'Å', L'É', L'æ', L'Æ', L'ô', L'ö', L'ò',
    L'û', L'ù', L'ÿ', L'Ö', L'Ü', L'¢', L'£', L'¥', L'₧', L'ƒ', L'á', L'í', L'ó', L'ú', L'ñ', L'Ñ', L'ª', L'º', L'¿', L'⌐', L'¬', L'½',
    L'¼', L'¡', L'«', L'»', L'░', L'▒', L'▓', L'│', L'┤', L'╡', L'╢', L'╖', L'╕', L'╣', L'║', L'╗', L'╝', L'╜', L'╛', L'┐', L'└', L'┴',
    L'┬', L'├', L'─', L'┼', L'╞', L'╟', L'╚', L'╔', L'╩', L'╦', L'╠', L'═', L'╬', L'╧', L'╨', L'╤', L'╥', L'╙', L'╘', L'╒', L'╓', L'╫',
    L'╪', L'┘', L'┌', L'█', L'▄', L'▌', L'▐', L'▀', L'α', L'ß', L'Γ', L'π', L'Σ', L'σ', L'µ', L'τ', L'Φ', L'Θ', L'Ω', L'δ', L'∞', L'φ',
    L'ε', L'∩', L'≡', L'±', L'≥', L'≤', L'⌠', L'⌡', L'÷', L'≈', L'°', L'∙', L'·', L'√', L'ⁿ', L'²', L'■', L' ',
};

void kprRegister() {
    static u8 once;
    if (once)
        return;

    OSRegisterVersion(GetVersion(KPR));
    once = TRUE;
}

void KPRInitQueue(KPRQueue* queue) {
    kprRegister();

    KPRSetMode(queue, KPR_MODE_ALT_KEYPAD);
}

void KPRClearQueue(KPRQueue* queue) {
    queue->oCount = 0;
    queue->iCount = 0;
    queue->altVal = 0;
}
void KPRSetMode(KPRQueue* queue, KPRMode mode) {
    queue->mode = mode;
    KPRClearQueue(queue);
}

u8 KPRPutChar(KPRQueue* queue, wchar_t ch) {
    BOOL level;
    if (queue->oCount + queue->iCount + 1 >= 5) {
        OSPanic("kpr_lib.c", 215, "KPRPutChar: Overflow");
    }

    level = OSDisableInterrupts();
    if (queue->mode & KPR_MODE_ALT_KEYPAD) {
        if (KPRProcessAltKeypad(queue, ch)) {
            goto RETURN;
        }
    }
    queue->text[queue->oCount + queue->iCount] = ch;

    queue->iCount++;
    if (queue->mode & KPR_MODE_DEADKEY) {
        (*kprProcDeadKeysFP)(queue);
    } else if ((queue->mode & KPR_MODE_JP_ROMAJI_KATAKANA) || (queue->mode & KPR_MODE_JP_ROMAJI_HIRAGANA)) {
        (*kprProcRomajiFP)(queue);
    } else {
        queue->oCount = queue->iCount;
        queue->iCount = 0;
    }
    if (ch == 0xffff) {
        queue->oCount--;
    }

RETURN:
    OSRestoreInterrupts(level);
    return queue->oCount;
}

wchar_t KPRGetChar(KPRQueue* queue) {
    BOOL level;
    wchar_t shiftedItem;  // "Shifted" as in the operation on a queue
    u32 i;

    if (queue->oCount == 0) {
        return L'\0';
    }

    level = OSDisableInterrupts();
    shiftedItem = queue->text[0];
    for (i = 1; i < queue->iCount + queue->oCount; i++) {
        queue->text[i - 1] = queue->text[i];
    }
    queue->oCount--;
    OSRestoreInterrupts(level);
    return shiftedItem;
}

u8 KPRLookAhead(const KPRQueue* queue, wchar_t* outBuf, u32 outBufLen) {
    u8 i;
    BOOL level;

    if (outBuf == NULL || outBufLen == 0) {
        return queue->iCount + queue->oCount;
    }

    level = OSDisableInterrupts();
    for (i = 0; i < queue->iCount + queue->oCount && i < outBufLen; i++) {
        outBuf[i] = queue->text[i];
    }
    if (i < outBufLen) {
        outBuf[i] = L'\0';
    }
    OSRestoreInterrupts(level);
    return queue->iCount + queue->oCount;
}

#define NPD(NUM) (KBD_RESERVED_NPD_OFFSET + L'0' + NUM)

BOOL KPRProcessAltKeypad(KPRQueue* queue, wchar_t ch) {
    u32 chosenCh;
    BOOL useWindowsFlag;
    int i;

    if (queue->altVal != 0) {
        useWindowsFlag = queue->altVal & 0x80000000;
        queue->altVal &= ~0x80000000;
        if (NPD(0) <= ch && ch <= NPD(9)) {
            if (queue->altVal > 0x6666666) {
                return TRUE;
            }
            queue->altVal = useWindowsFlag | (queue->altVal * 10 + (ch - NPD(0)));
            return TRUE;
        }

        chosenCh = queue->altVal;
        if (chosenCh >= 0x80 && chosenCh <= 0xFF) {
            if (useWindowsFlag) {
                if (chosenCh < 0x80 + ARRAY_LENGTH(kprLookupTable1252)) {
                    chosenCh = kprLookupTable1252[chosenCh - 0x80];
                }
            } else {
                chosenCh = kprLookupTable437[chosenCh - 0x80];
            }
        } else if (chosenCh > 0xFF) {
            chosenCh = chosenCh <= 0x6666666 ? (u8)chosenCh : L' ';
        }

        for (i = queue->oCount + queue->iCount; queue->oCount < i; i--) {
            queue->text[i] = queue->text[i - 1];
        }
        queue->text[queue->oCount] = (wchar_t)chosenCh;
        queue->altVal = 0;
        queue->oCount++;
        return ch == L'\0';
    } else {
        if (NPD(0) <= ch && ch <= NPD(9)) {
            if (ch == NPD(0)) {
                queue->altVal = 0x80000000;
            } else {
                queue->altVal = ch - NPD(0);
            }
            return TRUE;
        } else if (ch == L'\0') {
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

BOOL kprIsConsonant(wchar_t ch) {
    if (ch == L'a' || ch == L'e' || ch == L'i' || ch == L'o' || ch == L'u') {
        return FALSE;
    } else {
        return TRUE;
    }
}
void KPRProcessRomaji(KPRQueue* queue) {
    u8 iCount, oCount;
    u8 isKatakana;

    u32 i;
    u8 j;
    u8 ruleFindLen;

    oCount = queue->oCount;
    iCount = queue->iCount;

    isKatakana = (queue->mode & KPR_MODE_JP_ROMAJI_KATAKANA) == KPR_MODE_JP_ROMAJI_KATAKANA;
    if (!(L'a' <= queue->text[oCount + iCount - 1] && queue->text[oCount + iCount - 1] <= L'z')) {
        if (iCount > 1 && queue->text[oCount + iCount - 2] == L'n') {
            queue->text[oCount + iCount - 2] = kprConvertNN[isKatakana];
        }
        queue->oCount += iCount;
        queue->iCount = 0;
        return;
    }

    for (i = 0; i < ARRAY_LENGTH(kprRmJpRule); i++) {
        ruleFindLen = kprRmJpRule[i].findLen;
        if (iCount < ruleFindLen)
            continue;

        for (j = 0; j < ruleFindLen; j++) {
            if (queue->text[oCount + iCount - 1 - j] != (wchar_t)kprRmJpRule[i].findText[ruleFindLen - 1 - j]) {
                break;
            }
        }
        if (j == ruleFindLen)
            break;
    }
    if (i < ARRAY_LENGTH(kprRmJpRule)) {
        if (iCount > ruleFindLen) {
            if (iCount - ruleFindLen == 2) {
                oCount = queue->oCount += 2;
                iCount = queue->iCount -= 2;
            } else if (queue->text[oCount] == queue->text[oCount + 1]) {
                queue->text[oCount] = kprConvertSmallTsu[isKatakana];
            }
        }

        for (j = 0; j < kprRmJpRule[i].replaceLen; j++) {
            if (kprRmJpRule[i].replaceText[j] < L'ァ') {  // First katakana letter
                queue->text[oCount + iCount - ruleFindLen + j] = kprRmJpRule[i].replaceText[j] + isKatakana * 0x60;
            } else {
                queue->text[oCount + iCount - ruleFindLen + j] = kprRmJpRule[i].replaceText[j];
            }
        }
        queue->oCount += iCount - ruleFindLen + j;
        queue->iCount = 0;
        return;
    }

    if (iCount == 2 && queue->text[oCount] == L'n') {
        if (kprIsConsonant(queue->text[oCount + 1]) && queue->text[oCount + 1] != L'y') {
            queue->text[oCount] = kprConvertNN[isKatakana];
            queue->oCount++;
            queue->iCount--;
            return;
        }
    }
    if (iCount == 4) {
        oCount = ++queue->oCount;
        iCount = --queue->iCount;
    }
    if (iCount == 3) {
        if ((queue->text[oCount] == L'l' || queue->text[oCount] == L'x') && queue->text[oCount + 1] == L't' && queue->text[oCount + 2] == L's') {
            return;
        }
        if ((queue->text[oCount] == L'l' || queue->text[oCount] == L'x') && queue->text[oCount + 1] == L'w' && queue->text[oCount + 2] == L'h') {
            return;
        }
        if (queue->text[oCount] == queue->text[oCount + 1]) {
            if (queue->text[oCount + 1] != L'w' && queue->text[oCount + 1] != L'y' && queue->text[oCount + 2] == L'y') {
                return;
            }
            if (queue->text[oCount + 1] == L't' && queue->text[oCount + 2] == L's') {
                return;
            }
            if (queue->text[oCount + 2] == L'h' && wcschr(L"csdtw", queue->text[oCount + 1]) != NULL) {
                return;
            }
            if (queue->text[oCount + 1] == L'l') {
                if (queue->text[oCount + 2] == L't') {
                    return;
                }
                if (queue->text[oCount + 2] == L'w') {
                    return;
                }
            }
            if (queue->text[oCount + 1] == L'x' && (queue->text[oCount + 2] == L't' || queue->text[oCount + 2] == L'w')) {
                return;
            }
        }
        oCount = ++queue->oCount;
        iCount = --queue->iCount;
    }
    if (iCount == 2) {
        if (queue->text[oCount] == queue->text[oCount + 1] || (queue->text[oCount] != L'w' && queue->text[oCount + 1] == L'y') ||
            (queue->text[oCount] == L't' && queue->text[oCount + 1] == L's') ||
            (queue->text[oCount + 1] == L'h' && wcschr(L"csdtw", queue->text[oCount]) != NULL) ||
            (queue->text[oCount] == L'l' && (queue->text[oCount + 1] == L't' || queue->text[oCount + 1] == L'w')) ||
            (queue->text[oCount] == L'x' && (queue->text[oCount + 1] == L't' || queue->text[oCount + 1] == L'w'))) {
            return;
        }
        queue->oCount++;
        queue->iCount--;
    }
}

void KPRProcessDeadKeys(KPRQueue* queue) {
    int i;

    u32 firstCharMatchIdx;
    u32 secondCharMatchIdx;

    if (queue->iCount == 1) {
        for (i = 0; i < ARRAY_LENGTH(kprDeadKeyMap); i++) {
            if (queue->text[queue->oCount] == kprDeadKeyMap[i].chars[0]) {
                return;
            }
        }
        queue->oCount++;
        queue->iCount = 0;
        return;
    }

    secondCharMatchIdx = ARRAY_LENGTH(kprDeadKeyMap);
    for (i = 0; i < ARRAY_LENGTH(kprDeadKeyMap); i++) {
        if (queue->text[queue->oCount] == kprDeadKeyMap[i].chars[0] && queue->text[queue->oCount + 1] == kprDeadKeyMap[i].chars[1]) {
            queue->text[queue->oCount] = kprDeadKeyMap[i].with;
            queue->iCount = 0;
            queue->oCount++;
            return;
        }
        if (queue->text[queue->oCount] == kprDeadKeyMap[i].chars[0] && queue->text[queue->oCount] == kprDeadKeyMap[i].chars[1]) {
            firstCharMatchIdx = i;
        }
        if (queue->text[queue->oCount + 1] == kprDeadKeyMap[i].chars[0] && queue->text[queue->oCount + 1] == kprDeadKeyMap[i].chars[1]) {
            secondCharMatchIdx = i;
        }
    }

    queue->text[queue->oCount] = kprDeadKeyMap[firstCharMatchIdx].with;
    if (secondCharMatchIdx < ARRAY_LENGTH(kprDeadKeyMap)) {
        queue->text[queue->oCount + 1] = kprDeadKeyMap[secondCharMatchIdx].with;
    }
    queue->iCount = 0;
    queue->oCount += 2;
}
