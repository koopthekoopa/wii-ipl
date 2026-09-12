#include <zi8clib/zi8cinfo.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zierror.h>

// #define ZI8_ERR_KEY_ERR_BASE 330
// #define ZI8_ERR_SIGNATURE_UNK_A (ZI8_ERR_SIGNATURE_BASE + 0)
// #define ZI8_ERR_SIGNATURE_UNK_B (ZI8_ERR_SIGNATURE_BASE + 1)
// #define ZI8_ERR_SIGNATURE_UNK_C (ZI8_ERR_SIGNATURE_BASE + 2)

const ziU8 zi8CangjieCodes[] = {
    0x01, 0x02, 0x03, 0x05, 0x06, 0x07, 0x09, 0x0A, 0x0B, 0x0D, 0x0E, 0x0F, 0x11,
    0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x19, 0x1A, 0x1B, 0x1D, 0x1E, 0x1F,
};

ziU8 Zi8GetCJInfo(ziU8* cangjieData, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziS32 i, j;
    ziS32 value;
    ziS32 part;
    ziS32 count;

    ZI_WORK;

    ZI_WORK->handleCangjie = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 0x02;
    if (!ZI_WORK->handleCangjie) {
        Zi8LogError(2300, ZI_WORK);
        return 0;
    }
    if (maxInfoBufSize < 6) {
        Zi8LogError(ZI8_ERR_BUFFER_TOO_SMALL, ZI_WORK);
        return 0;
    }

    count = cangjieData[0] & 7;
    value = cangjieData[0] | (cangjieData[1] << 8) | (cangjieData[2] << 16) | (cangjieData[3] << 24);
    value >>= 3;
    for (i = 0; i < count; i++) {
        part = value & 0x1F;
        value >>= 5;
        for (j = 0; j < 25; j++) {
            if (zi8CangjieCodes[j] == part)
                break;
        }
        if (j >= 25) {
            Zi8LogError(ZI8_ERR_CH_INFO_CJ_INVALID_CHAR, ZI_WORK);
            return 0;
        }
        charInfoBuffer[i] = j + 'A';
    }

    charInfoBuffer[i] = L'\0';
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return i;
}

ziU8 Zi8GetPInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziU16 initial, final, tone;
    ziU8 infoLen = 0;

    if (maxInfoBufSize < 8) {
        Zi8LogError(ZI8_ERR_BUFFER_TOO_SMALL, ZI_WORK);
        return 0;
    }
    if (ch == L'\0') {
        Zi8LogError(ZI8_ERR_CH_INFO_PY_PHONETIC_NULL, ZI_WORK);
        return 0;
    }

    initial = (ch >> PINYIN_INITIAL_SHIFT) & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT);
    final = (ch >> PINYIN_FINAL_SHIFT) & (PINYIN_FINAL_MASK >> PINYIN_FINAL_SHIFT);
    tone = ch & (PINYIN_TONE_MASK >> PINYIN_TONE_SHIFT);
    if (initial != INITIAL_NONE) {
        switch (initial) {
            case INITIAL_B:
                charInfoBuffer[infoLen] = PINYIN_CHAR('b');
                break;
            case INITIAL_P:
                charInfoBuffer[infoLen] = PINYIN_CHAR('p');
                break;
            case INITIAL_D:
                charInfoBuffer[infoLen] = PINYIN_CHAR('d');
                break;
            case INITIAL_T:
                charInfoBuffer[infoLen] = PINYIN_CHAR('t');
                break;
            case INITIAL_G:
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case INITIAL_K:
                charInfoBuffer[infoLen] = PINYIN_CHAR('k');
                break;
            case INITIAL_J:
                charInfoBuffer[infoLen] = PINYIN_CHAR('j');
                break;
            case INITIAL_Q:
                charInfoBuffer[infoLen] = PINYIN_CHAR('q');
                break;
            case INITIAL_Z:
                charInfoBuffer[infoLen] = PINYIN_CHAR('z');
                break;
            case INITIAL_C:
                charInfoBuffer[infoLen] = PINYIN_CHAR('c');
                break;
            case INITIAL_X:
                charInfoBuffer[infoLen] = PINYIN_CHAR('x');
                break;
            case INITIAL_M:
                charInfoBuffer[infoLen] = PINYIN_CHAR('m');
                break;
            case INITIAL_F:
                charInfoBuffer[infoLen] = PINYIN_CHAR('f');
                break;
            case INITIAL_N:
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case INITIAL_L:
                charInfoBuffer[infoLen] = PINYIN_CHAR('l');
                break;
            case INITIAL_H:
                charInfoBuffer[infoLen] = PINYIN_CHAR('h');
                break;
            case INITIAL_S:
                charInfoBuffer[infoLen] = PINYIN_CHAR('s');
                break;
            case INITIAL_R:
                charInfoBuffer[infoLen] = PINYIN_CHAR('r');
                break;
            case INITIAL_W:
                charInfoBuffer[infoLen] = PINYIN_CHAR('w');
                break;
            case INITIAL_Y:
                charInfoBuffer[infoLen] = PINYIN_CHAR('y');
                break;

            case INITIAL_ZH:
                charInfoBuffer[infoLen++] = PINYIN_CHAR('z');
                charInfoBuffer[infoLen] = PINYIN_CHAR('h');
                break;
            case INITIAL_CH:
                charInfoBuffer[infoLen++] = PINYIN_CHAR('c');
                charInfoBuffer[infoLen] = PINYIN_CHAR('h');
                break;
            case INITIAL_SH:
                charInfoBuffer[infoLen++] = PINYIN_CHAR('s');
                charInfoBuffer[infoLen] = PINYIN_CHAR('h');
                break;

            default:
                Zi8LogError(ZI8_ERR_CH_INFO_PY_PHONETIC_BAD_INITIAL, ZI_WORK);
                return 0;
        }
        infoLen++;
    }
    if (final != 0) {
        switch (final) {
            case PINYIN_FINAL(0b00, 0b0001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('o');
                break;
            case PINYIN_FINAL(0b00, 0b0010):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b00, 0b0011):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b00, 0b0100):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen] = PINYIN_CHAR('a');
                break;
            case PINYIN_FINAL(0b00, 0b1000):
                charInfoBuffer[infoLen] = PINYIN_CHAR('i');
                break;
            case PINYIN_FINAL(0b00, 0b1001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen] = PINYIN_CHAR('e');
                break;
            case PINYIN_FINAL(0b00, 0b1011):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen] = PINYIN_CHAR('u');
                break;
            case PINYIN_FINAL(0b00, 0b1100):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b00, 0b1101):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b00, 0b1111):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('i');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('o');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;

            case PINYIN_FINAL(0b01, 0b0000):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b01, 0b0001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b01, 0b0011):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('i');
                break;
            case PINYIN_FINAL(0b01, 0b0111):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen] = PINYIN_CHAR('a');
                break;
            case PINYIN_FINAL(0b01, 0b1000):
                charInfoBuffer[infoLen] = PINYIN_CHAR('u');
                break;
            case PINYIN_FINAL(0b01, 0b1100):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b01, 0b1101):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen] = PINYIN_CHAR('i');
                break;
            case PINYIN_FINAL(0b01, 0b1110):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                charInfoBuffer[infoLen] = PINYIN_CHAR('o');
                break;
            case PINYIN_FINAL(0b01, 0b1111):
                if (initial == INITIAL_N || initial == INITIAL_L) {
                    charInfoBuffer[infoLen++] = PINYIN_CHAR('v');
                    charInfoBuffer[infoLen] = PINYIN_CHAR('e');
                } else {
                    charInfoBuffer[infoLen++] = PINYIN_CHAR('u');
                    charInfoBuffer[infoLen] = PINYIN_CHAR('e');
                }
                break;

            case PINYIN_FINAL(0b10, 0b0000):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b10, 0b0001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b10, 0b0011):
                charInfoBuffer[infoLen] = PINYIN_CHAR('a');
                break;
            case PINYIN_FINAL(0b10, 0b0101):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('i');
                break;
            case PINYIN_FINAL(0b10, 0b0110):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('o');
                break;
            case PINYIN_FINAL(0b10, 0b1000):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('o');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b10, 0b1010):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('o');
                charInfoBuffer[infoLen] = PINYIN_CHAR('u');
                break;
            case PINYIN_FINAL(0b10, 0b1011):
                charInfoBuffer[infoLen] = PINYIN_CHAR('o');
                break;
            case PINYIN_FINAL(0b11, 0b0000):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('e');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;
            case PINYIN_FINAL(0b11, 0b0001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('e');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('n');
                charInfoBuffer[infoLen] = PINYIN_CHAR('g');
                break;
            case PINYIN_FINAL(0b11, 0b0011):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('e');
                charInfoBuffer[infoLen] = PINYIN_CHAR('r');
                break;
            case PINYIN_FINAL(0b11, 0b0100):
                charInfoBuffer[infoLen] = PINYIN_CHAR('e');
                break;
            case PINYIN_FINAL(0b11, 0b0101):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('e');
                charInfoBuffer[infoLen] = PINYIN_CHAR('i');
                break;
            case PINYIN_FINAL(0b11, 0b1000):
                charInfoBuffer[infoLen] = PINYIN_CHAR('v');
                break;
            case PINYIN_FINAL(0b11, 0b1001):
                charInfoBuffer[infoLen++] = PINYIN_CHAR('v');
                charInfoBuffer[infoLen++] = PINYIN_CHAR('a');
                charInfoBuffer[infoLen] = PINYIN_CHAR('n');
                break;

            default:
                Zi8LogError(ZI8_ERR_CH_INFO_PY_PHONETIC_BAD_FINAL, ZI_WORK);
                return 0;
        }
        infoLen++;
    }
    switch (tone) {
        case 1:
            charInfoBuffer[infoLen++] = PINYIN_TONE(1);
            break;
        case 2:
            charInfoBuffer[infoLen++] = PINYIN_TONE(2);
            break;
        case 3:
            charInfoBuffer[infoLen++] = PINYIN_TONE(3);
            break;
        case 4:
            charInfoBuffer[infoLen++] = PINYIN_TONE(4);
            break;
        case 5:
            charInfoBuffer[infoLen++] = PINYIN_TONE(5);
            break;
    }
    charInfoBuffer[infoLen] = L'\0';
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return infoLen;
}
ziU8 Zi8GetZInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziU16 initial, final, tone;
    ziU8 infoLen = 0;

    if (maxInfoBufSize < 5) {
        Zi8LogError(ZI8_ERR_BUFFER_TOO_SMALL, ZI_WORK);
        return 0;
    }
    if (ch == 0) {
        Zi8LogError(ZI8_ERR_CH_INFO_ZY_PHONETIC_NULL, ZI_WORK);
        return 0;
    }

    initial = (ch >> PINYIN_INITIAL_SHIFT) & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT);
    final = (ch >> PINYIN_FINAL_SHIFT) & (PINYIN_FINAL_MASK >> PINYIN_FINAL_SHIFT);
    tone = ch & (PINYIN_TONE_MASK >> PINYIN_TONE_SHIFT);
    switch (initial) {
        case INITIAL_B:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_B);
            break;
        case INITIAL_CH:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_CH);
            break;
        case INITIAL_C:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_C);
            break;
        case INITIAL_D:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_D);
            break;
        case INITIAL_F:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_F);
            break;
        case INITIAL_G:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_G);
            break;
        case INITIAL_H:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_H);
            break;
        case INITIAL_J:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_J);
            break;
        case INITIAL_K:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_K);
            break;
        case INITIAL_L:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_L);
            break;
        case INITIAL_M:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_M);
            break;
        case INITIAL_N:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_N);
            break;
        case INITIAL_P:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_P);
            break;
        case INITIAL_Q:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_Q);
            break;
        case INITIAL_R:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_R);
            break;
        case INITIAL_SH:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_SH);
            break;
        case INITIAL_S:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_S);
            break;
        case INITIAL_T:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_T);
            break;
        case INITIAL_X:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_X);
            break;
        case INITIAL_ZH:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_ZH);
            break;
        case INITIAL_Z:
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_INITIAL_Z);
            break;

        case INITIAL_NONE:
            break;

        default:
            Zi8LogError(ZI8_ERR_CH_INFO_ZY_PHONETIC_BAD_INITIAL, ZI_WORK);
            return 0;
    }

    switch (final) {
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_NONE):
            if (initial != INITIAL_M && initial != INITIAL_N)
                return 0;
            break;

        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_A):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_A);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_MEDIAL):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_O):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_O);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_AU):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AU);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_EH):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EH);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_OU):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_OU);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_AN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_EN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_ANG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ANG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_ENG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ENG);
            break;

        case PINYIN_FINAL(BPMF_MEDIAL_IU, BPMF_RIME_ENG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ENG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_IU, BPMF_RIME_MEDIAL):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_MEDIAL):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_EH):
        case PINYIN_FINAL(BPMF_MEDIAL_IU, BPMF_RIME_EH):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EH);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_IU, BPMF_RIME_AN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_AN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_IU, BPMF_RIME_EN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_EN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_A):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_A);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_O):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_O);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_AI):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AI);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_EI):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EI);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_ANG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ANG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_ENG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ENG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_A):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_A);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_O):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_O);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_E):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_E);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_ER):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ER);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_AI):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AI);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_AI):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AI);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_EI):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EI);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_AU):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AU);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_OU):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_OU);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_AN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_AN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_EN):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_EN);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_ANG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ANG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_ENG):
            charInfoBuffer[infoLen++] = BPMF_CHAR(BPMF_CHAR_RIME_ENG);
            break;
        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_MEDIAL):
            break;

        default:
            Zi8LogError(ZI8_ERR_CH_INFO_ZY_PHONETIC_BAD_FINAL, ZI_WORK);
            return 0;
    }

    switch (tone) {
        case 1:
            charInfoBuffer[infoLen++] = PINYIN_TONE(1);
            break;
        case 2:
            charInfoBuffer[infoLen++] = PINYIN_TONE(2);
            break;
        case 3:
            charInfoBuffer[infoLen++] = PINYIN_TONE(3);
            break;
        case 4:
            charInfoBuffer[infoLen++] = PINYIN_TONE(4);
            break;
        case 5:
            charInfoBuffer[infoLen++] = PINYIN_TONE(5);
            break;
    }
    charInfoBuffer[infoLen] = L'\0';
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return infoLen;
}

ziWChar zi8StrokeCode(ziU32 stroke ZI_NEED_WORK) {
    switch (stroke) {
        case 0x0:
            return ZI8_STROKE_CODE_x0;
        case 0x1:
            return ZI8_STROKE_CODE_x1;
        case 0x2:
            return ZI8_STROKE_CODE_x2;
        case 0x3:
            return ZI8_STROKE_CODE_x3;
        case 0x4:
            return ZI8_STROKE_CODE_x4;
        case 0x5:
            return ZI8_STROKE_CODE_x5;
        case 0x6:
            return ZI8_STROKE_CODE_x6;
        case 0x7:
            return ZI8_STROKE_CODE_x7;
        case 0x8:
            return ZI8_STROKE_CODE_x8;
        case 0xB:
            return ZI8_STROKE_CODE_xB;
    }
    Zi8LogError(ZI8_ERR_KEY_ERR_STROKE, ZI_WORK);
    return L'\0';
}
ziU8 Zi8GetSInfo(Table0Entry* chInfo, ziU8* extendedInfo, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziS32 i;
    ziS32 count;

    ziU8 offset;

    offset = 0;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (maxInfoBufSize <= 23) {
        Zi8ReplaceLastError(ZI8_ERR_BUFFER_TOO_SMALL, ZI_WORK);
        return 0;
    }

    for (i = 0; i < 4; i++) {
        if (i != 0) {
            charInfoBuffer[offset] = zi8StrokeCode((chInfo->maskBytes[i] & 0xF0) >> 4, ZI_WORK);
            if (charInfoBuffer[offset++] == L'\0') {
            GOT_BLANK_STROKE:
                charInfoBuffer[--offset] = L'\0';
                return offset;
            }
        }

        charInfoBuffer[offset] = zi8StrokeCode(chInfo->maskBytes[i] & 0x0F, ZI_WORK);
        if (charInfoBuffer[offset++] == L'\0')
            goto GOT_BLANK_STROKE;
    }

    charInfoBuffer[offset] = zi8StrokeCode(extendedInfo[0] & 0x0F, ZI_WORK);
    if (charInfoBuffer[offset++] == L'\0')
        goto GOT_BLANK_STROKE;

    count = (*extendedInfo++ & 0x70) >> 4;
    for (i = 0; i < count; i++) {
        charInfoBuffer[offset] = zi8StrokeCode((extendedInfo[i] & 0xF0) >> 4, ZI_WORK);
        if (charInfoBuffer[offset++] == L'\0')
            goto GOT_BLANK_STROKE;

        charInfoBuffer[offset] = zi8StrokeCode(extendedInfo[i] & 0x0F, ZI_WORK);
        if (charInfoBuffer[offset++] == L'\0')
            goto GOT_BLANK_STROKE;
    }

    charInfoBuffer[offset] = L'\0';
    return offset;
}

// Pinyin pad layout
// %------+------+------%
// | .,?ˉ | ABCˊ | DEFˇ |
// %------+------+------%
// | GHIˋ | JKL• | MNO  |
// %------+------+------%
// | PQRS | TUV  | WXYZ |
// %------+------+------%
ziU16 Zi81KeyPYinfo(ziWChar ch ZI_NEED_WORK) {
    switch (ch) {
        case PINYIN_CHAR('a'):
            return PAD_KEY(2);
        case PINYIN_CHAR('b'):
            return PAD_KEY(2);
        case PINYIN_CHAR('c'):
            return PAD_KEY(2);

        case PINYIN_CHAR('d'):
            return PAD_KEY(3);
        case PINYIN_CHAR('e'):
            return PAD_KEY(3);
        case PINYIN_CHAR('f'):
            return PAD_KEY(3);

        case PINYIN_CHAR('g'):
            return PAD_KEY(4);
        case PINYIN_CHAR('h'):
            return PAD_KEY(4);
        case PINYIN_CHAR('i'):
            return PAD_KEY(4);

        case PINYIN_CHAR('j'):
            return PAD_KEY(5);
        case PINYIN_CHAR('k'):
            return PAD_KEY(5);
        case PINYIN_CHAR('l'):
            return PAD_KEY(5);

        case PINYIN_CHAR('m'):
            return PAD_KEY(6);
        case PINYIN_CHAR('n'):
            return PAD_KEY(6);
        case PINYIN_CHAR('o'):
            return PAD_KEY(6);

        case PINYIN_CHAR('p'):
            return PAD_KEY(7);
        case PINYIN_CHAR('q'):
            return PAD_KEY(7);
        case PINYIN_CHAR('r'):
            return PAD_KEY(7);
        case PINYIN_CHAR('s'):
            return PAD_KEY(7);

        case PINYIN_CHAR('t'):
            return PAD_KEY(8);
        case PINYIN_CHAR('u'):
            return PAD_KEY(8);
        case PINYIN_CHAR('v'):
            return PAD_KEY(8);

        case PINYIN_CHAR('w'):
            return PAD_KEY(9);
        case PINYIN_CHAR('x'):
            return PAD_KEY(9);
        case PINYIN_CHAR('y'):
            return PAD_KEY(9);
        case PINYIN_CHAR('z'):
            return PAD_KEY(9);

        case PINYIN_TONE(1):
            return PAD_KEY(1);
        case PINYIN_TONE(2):
            return PAD_KEY(2);
        case PINYIN_TONE(3):
            return PAD_KEY(3);
        case PINYIN_TONE(4):
            return PAD_KEY(4);
        case PINYIN_TONE(5):
            return PAD_KEY(5);

        default:
            Zi8LogError(ZI8_ERR_KEY_ERR_PINYIN, ZI_WORK);
            break;
    }
    return ch;
}

// Bopomofo pad layout (there's no fullwidth acute accent or caron)
// %－－－－－－－+－－－－－－－+－－－－－－－%
// |　ㄅㄆㄇㄈ￣　|　ㄉㄊㄋㄌ②　|　ㄍㄎㄏ③　　|
// %－－－－－－－+－－－－－－－+－－－－－－－%
// |　ㄐㄑㄒ｀　　|　ㄓㄔㄕㄖ・　|　ㄗㄘㄙ　　　|
// %－－－－－－－+－－－－－－－+－－－－－－－%
// |　ㄚㄛㄜㄝ　　|　ㄞㄟㄠㄡ　　|　ㄢㄣㄤㄥㄦ　|
// %－－－－－－－+－－－－－－－+－－－－－－－%
// |　　　　　　　|　ㄧㄨㄩ　　　|　　　　　　　|
// %－－－－－－－+－－－－－－－+－－－－－－－%
ziU16 Zi81KeyZYinfo(ziWChar ch ZI_NEED_WORK) {
    switch (ch) {
        case BPMF_CHAR(BPMF_CHAR_INITIAL_B):
            return PAD_KEY(1);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_P):
            return PAD_KEY(1);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_M):
            return PAD_KEY(1);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_F):
            return PAD_KEY(1);

        case BPMF_CHAR(BPMF_CHAR_INITIAL_D):
            return PAD_KEY(2);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_T):
            return PAD_KEY(2);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_N):
            return PAD_KEY(2);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_L):
            return PAD_KEY(2);

        case BPMF_CHAR(BPMF_CHAR_INITIAL_G):
            return PAD_KEY(3);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_K):
            return PAD_KEY(3);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_H):
            return PAD_KEY(3);

        case BPMF_CHAR(BPMF_CHAR_INITIAL_J):
            return PAD_KEY(4);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_Q):
            return PAD_KEY(4);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_X):
            return PAD_KEY(4);

        case BPMF_CHAR(BPMF_CHAR_INITIAL_ZH):
            return PAD_KEY(5);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_CH):
            return PAD_KEY(5);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_SH):
            return PAD_KEY(5);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_R):
            return PAD_KEY(5);

        case BPMF_CHAR(BPMF_CHAR_INITIAL_Z):
            return PAD_KEY(6);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_C):
            return PAD_KEY(6);
        case BPMF_CHAR(BPMF_CHAR_INITIAL_S):
            return PAD_KEY(6);

        case BPMF_CHAR(BPMF_CHAR_RIME_A):
            return PAD_KEY(7);
        case BPMF_CHAR(BPMF_CHAR_RIME_O):
            return PAD_KEY(7);
        case BPMF_CHAR(BPMF_CHAR_RIME_E):
            return PAD_KEY(7);
        case BPMF_CHAR(BPMF_CHAR_RIME_EH):
            return PAD_KEY(7);

        case BPMF_CHAR(BPMF_CHAR_RIME_AI):
            return PAD_KEY(8);
        case BPMF_CHAR(BPMF_CHAR_RIME_EI):
            return PAD_KEY(8);
        case BPMF_CHAR(BPMF_CHAR_RIME_AU):
            return PAD_KEY(8);
        case BPMF_CHAR(BPMF_CHAR_RIME_OU):
            return PAD_KEY(8);

        case BPMF_CHAR(BPMF_CHAR_RIME_AN):
            return PAD_KEY(9);
        case BPMF_CHAR(BPMF_CHAR_RIME_EN):
            return PAD_KEY(9);
        case BPMF_CHAR(BPMF_CHAR_RIME_ANG):
            return PAD_KEY(9);
        case BPMF_CHAR(BPMF_CHAR_RIME_ENG):
            return PAD_KEY(9);
        case BPMF_CHAR(BPMF_CHAR_RIME_ER):
            return PAD_KEY(9);

        case BPMF_CHAR(BPMF_CHAR_MEDIAL_I):
            return PAD_KEY(10);
        case BPMF_CHAR(BPMF_CHAR_MEDIAL_U):
            return PAD_KEY(10);
        case BPMF_CHAR(BPMF_CHAR_MEDIAL_IU):
            return PAD_KEY(10);

        case PINYIN_TONE(1):
            return PAD_KEY(1);
        case PINYIN_TONE(2):
            return PAD_KEY(2);
        case PINYIN_TONE(3):
            return PAD_KEY(3);
        case PINYIN_TONE(4):
            return PAD_KEY(4);
        case PINYIN_TONE(5):
            return PAD_KEY(5);

        default:
            Zi8LogError(ZI8_ERR_KEY_ERR_ZHUYIN, ZI_WORK);
            break;
    }
    return ch;
}

ziU8 Zi8GetCharInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode ZI_NEED_WORK) {
    return Zi8GetCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, 0, 0, ZI_WORK);
}

ziU8 ZiCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK) {
    TableEntry* tableData;
    ziU8* table34Data;
    Table5Entry* table5Data;

    ziU16 ord;
    ziU8 isOkToFinish;

    ziU8 chEntryBuf[12];
    Table0Entry* chEntry = (Table0Entry*)chEntryBuf;
    ziU8 scratchDataLen;

    ziU16 tableCount;
    ziWChar code;

    ziU16 i;
    ziS32 j;
    ziU16 table5Rem;

    ziU8 chHi, chLo;

    table34Data = 0;
    if (charInfoBuffer == ZI8_NULL || maxInfoBufSize == 0) {
        Zi8LogError(300, ZI_WORK);
        return 0;
    }
    if ((hetMode & 0x80) != 0) {
        hetMode &= 0x7F;
        if (Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 4) {
            tableCount = Zi8GetTableCount(ZI8_LANG_ZH, 0x19, ZI_WORK);
            tableData = (TableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x19, ZI_WORK);
        } else {
            tableCount = 0;
            tableData = 0;
        }
        if (hetMode == CHAR_INFO_HET_PY_KB) {
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
        } else {
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
        }
        if (hetMode == CHAR_INFO_HET_PY_KB || hetMode == CHAR_INFO_HET_ZY_KB) {
            if (tableCount <= Zi8GetTableCount(ZI8_LANG_ZH, 8, ZI_WORK)) {
                chHi = (ch >> 8) & 0xFF;
                chLo = ch;
                for (i = 0; i < tableCount;) {
                    if (chHi == tableData->tables->t19.chHi && chLo == tableData->tables->t19.chLo) {
                        ord = GET_TABLE19_ENTRY_TABLE34_IDX(&tableData->tables->t19);
                        code = table34Data[ord] + (ziU16)((ziU16)table34Data[ord + 1] << 8) + (tableData->tables->t19.codeOffs & 0xFFFF);

                        if (hetMode == CHAR_INFO_HET_PY_KB) {
                            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
                        } else {
                            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
                        }
                    FINISH:
                        if (hetMode == CHAR_INFO_HET_WBH) {
                            for (j = 0; j < scratchDataLen; j++) {
                                switch (charInfoBuffer[j]) {
                                    case ZI8_STROKE_CODE_x4:
                                    case ZI8_STROKE_CODE_x5:
                                    case ZI8_STROKE_CODE_x6:
                                    case ZI8_STROKE_CODE_x7:
                                        charInfoBuffer[j] = ZI8_STROKE_CODE_PARTIAL_4;
                                        break;
                                }
                            }
                        }
                        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
                        return scratchDataLen;
                    }
                    i++;
                    tableData += 4;
                }
            }
        }
    }

    ord = Zi8Uni2Ptr(ch, chEntry, ZI_WORK);
    if (ord == 0xFFFF) {
        scratchDataLen = 0;
        goto FINISH;
    }
    tableData = (TableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    tableData += GET_TABLE0_ENTRY_TABLE1_OFFS(chEntry);
    ZI_WORK->handleCangjie = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 2;
    if (ZI_WORK->handleCangjie != 0 && hetMode != CHAR_INFO_HET_CJ_A && hetMode != CHAR_INFO_HET_CJ_SIMP_B && hetMode != CHAR_INFO_HET_CJ_B &&
        hetMode != CHAR_INFO_HET_CJ_SIMP_A) {
        switch (tableData->raw[0] & 7) {
            case 2:
                tableData += 2;
                break;
            case 3:
            case 4:
                tableData += 3;
                break;
            case 5:
                tableData += 4;
                break;
            default:
                tableData += 1;
                break;
        }
    }
    switch (hetMode) {
        case CHAR_INFO_HET_CJ_A:
        case CHAR_INFO_HET_CJ_B:
        case CHAR_INFO_HET_CJ_SIMP_A:
        case CHAR_INFO_HET_CJ_SIMP_B:
            scratchDataLen = Zi8GetCJInfo(tableData->raw, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            if ((hetMode == CHAR_INFO_HET_CJ_SIMP_A || hetMode == CHAR_INFO_HET_CJ_SIMP_B) && scratchDataLen > 2) {
                charInfoBuffer[1] = charInfoBuffer[scratchDataLen - 1];
                charInfoBuffer[2] = L'\0';
                scratchDataLen = 2;
            }
            break;

        case CHAR_INFO_HET_STROKE_A:
        case CHAR_INFO_HET_STROKE_B:
        case CHAR_INFO_HET_WBH:
            scratchDataLen = Zi8GetSInfo(chEntry, tableData->raw, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;

        case CHAR_INFO_HET_PY_KB:
        case CHAR_INFO_HET_PY_PAD:
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
            code = Zi8GetPCode(table34Data, chEntry);
            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;

        case CHAR_INFO_HET_ZY_KB:
        case CHAR_INFO_HET_ZY_PAD:
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
            code = Zi8GetPCode(table34Data, chEntry);
            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;

        default:
            scratchDataLen = 0;
            break;
    }
    if (elementCount == 0 || (chEntry->maskBytes[0] & 0x80) == 0 || (hetMode != CHAR_INFO_HET_PY_PAD && hetMode != CHAR_INFO_HET_ZY_PAD))
        goto FINISH;
    table5Data = (Table5Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 5, ZI_WORK);
    table5Rem = Zi8GetTableCount(ZI8_LANG_ZH, 5, ZI_WORK);
    for (; table5Rem != 0;) {
        if (ord == GET_TABLE5_ENTRY_ORD(table5Data))
            break;
        table5Rem--;
        table5Data++;
    }

    while (1) {
        if (scratchDataLen >= elementCount) {
            isOkToFinish = 1;
            for (i = 0; i < scratchDataLen; i++) {
                if (i == elementCount)
                    break;
                if (hetMode == CHAR_INFO_HET_PY_PAD) {
                    if (elements[i] != Zi81KeyPYinfo(charInfoBuffer[i], ZI_WORK)) {
                        isOkToFinish = 0;
                        break;
                    }
                } else {
                    if (elements[i] != Zi81KeyZYinfo(charInfoBuffer[i], ZI_WORK)) {
                        isOkToFinish = 0;
                        break;
                    }
                }
            }
            if (isOkToFinish)
                goto FINISH;
        }
        if (table5Rem == 0)
            goto FINISH;
        if (ord != GET_TABLE5_ENTRY_ORD(table5Data))
            goto FINISH;

        code = GET_TABLE5_ENTRY_TABLE34_IDX(table5Data);
        code = table34Data[code] + ((ziU16)table34Data[code + 1] << 8) + GET_TABLE5_ENTRY_TONE(table5Data);
        table5Rem--;
        table5Data++;

        if (hetMode == CHAR_INFO_HET_PY_PAD) {
            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
        } else {
            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
        }
    }
}

ziU8 Zi8GetCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK) {
    ziU8 oldUnk_x18;
    ziU8 output;

    ZI_WORK;

    oldUnk_x18 = ZI_WORK->unk_0x18;
    output = ZiCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, elements, elementCount, ZI_WORK);
    if (output == 0) {
        if ((oldUnk_x18 & 0x80) || (oldUnk_x18 & 0x40) || (oldUnk_x18 & 0x01)) {
            ZI_WORK->unk_0x18 = 0b00000110;
        } else {
            ZI_WORK->unk_0x18 = 0b00000001;
        }
        output = ZiCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, elements, elementCount, ZI_WORK);
        ZI_WORK->unk_0x18 = oldUnk_x18;
    }
    return output;
}
