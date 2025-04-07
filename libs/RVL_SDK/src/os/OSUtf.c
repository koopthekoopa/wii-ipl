#include <revolution/os.h>

static u16 UcsAnsiTable[32] = {
    0x20AC, 0x0000, 0x201A, 0x0192, 0x201E, 0x2026, 
    0x2020, 0x2021, 0x02C6, 0x2030, 0x0160, 0x2039,
    0x0152, 0x0000, 0x017D, 0x0000, 0x0000, 0x2018,
    0x2019, 0x201C, 0x201D, 0x2022, 0x2013, 0x2014,
    0x02DC, 0x2122, 0x0161, 0x203A, 0x0153, 0x0000,
    0x017E, 0x0178,
};

char* OSUTF8to32(const char* utf8, u32* utf32) {
    u32 u = 0;
    u8 c;
    unsigned len;
    unsigned i;

    c = (u8)*utf8;
    if (c != '\0') {
        ++utf8;
    }
    if ((u32)(c & 0x80) == 0) {
        u = c;
        len = 0;
    }
    else if ((u32)(c & 0xE0) == 0xC0) {
        u = c & 0x1F;
        len = 1;
    }
    else if ((u32)(c & 0xF0) == 0xE0) {
        u = c & 0xF;
        len = 2;
    }
    else if ((u32)(c & 0xF8) == 0xF0) {
        u = c & 7;
        len = 3;
    }
    else {
        return NULL;
    }

    for (i = 0; i < len; i++) {
        u <<= 6;
        c = (u8)*utf8++;

        if ((u32)(c & 0xC0) != 0x80) {
            return NULL;
        }
        u |= (c & 0x3F);
    }

    if (u <= 0x7F) {
        if (len != 0) {
            return NULL;
        }
    }
    else if (u <= 0x7FF) {
        if (len != 1) {
            return NULL;
        }
    }
    else if (u <= 0xFFFF) {
        if (len != 2) {
            return NULL;
        }
    }

    if (u >= 0xD800 && u <= 0xDFFF) {
        return NULL;
    }

    *utf32 = u;
    return (char*)utf8;
}

u16* OSUTF16to32(const u16* utf16, u32* utf32) {
    u16 w1;
    u16 w2;
    u32 u = 0;

    w1 = *utf16;
    if (w1 != 0) {
        ++utf16;
    }

    if (w1 < 0xD800 || 0xDFFF < w1) {
        u = w1;
    }
    else if (w1 <= 0xDBFF) {
        w2 = *utf16++;

        if (0xDC00 <= w2 && w2 <= 0xDFFF) {
            u = ((w1 & 0x03FF) << 10) | (w2 & 0x03FF);
            u += 0x10000;
        }
        else {
            return NULL;
        }
    }
    else {
        return NULL;
    }

    *utf32 = u;
    return (u16*)utf16;
}

u8 OSUTF32toANSI(u32 utf32) {
    int i;

    if (0xFF < utf32) {
        return 0;
    }

    if (utf32 < 0x80 || 0x9F < utf32) {
        return (u8)utf32;
    }

    if (0x0152 <= utf32 && utf32 <= 0x2122) {
        for (i = 0; i <= 0x1F; i++) {
            if (UcsAnsiTable[i] == utf32) {
                return (u8)(0x80 + i);
            }
        }
    }
    return 0;
}

#include <private/SjisUcs.h>

u16 OSUTF32toSJIS(u32 utf32) {
    u16* table;

    if (0x10000 <= utf32) {
        return 0;
    }

    table = UcsSjisTable[(utf32 >> 8) & 0xFF];
    if (table != 0) {
        return table[utf32 & 0xFF];
    }

    return 0;
}
