#include <revolution/sc.h>
#include <private/sc.h>

#include <revolution/os.h>

#include <string.h>

#define XOR_PRDINFO_KEY 0x73B5DBFA

typedef struct SCAreaAndID {
    s8      area;       // 0x00
    char    name[4];    // 0x01
} SCAreaAndID;

static SCAreaAndID ProductAreaAndStringTbl[] = {
    {SC_PRODUCT_AREA_JPN,       "JPN"},
    {SC_PRODUCT_AREA_USA,       "USA"},
    {SC_PRODUCT_AREA_EUR,       "EUR"},
    {SC_PRODUCT_AREA_AUS,       "AUS"},
    {SC_PRODUCT_AREA_BRA,       "BRA"},
    {SC_PRODUCT_AREA_TWN,       "TWN"},
    {SC_PRODUCT_AREA_TWN,       "ROC"},
    {SC_PRODUCT_AREA_KOR,       "KOR"},
    {SC_PRODUCT_AREA_HKG,       "HKG"},
    {SC_PRODUCT_AREA_ASI,       "ASI"},
    {SC_PRODUCT_AREA_LTN,       "LTN"},
    {SC_PRODUCT_AREA_SAF,       "SAF"},
    {SC_PRODUCT_AREA_CHN,       "CHN"},
    {SC_PRODUCT_AREA_UNKNOWN,   ""}
};

typedef struct SCVideoModeAndID {
    s8      videoMode;  // 0x00
    char    name[5];    // 0x01
} SCVideoModeAndID;

static SCVideoModeAndID ProductVideoModeAndStringTbl[] = {
    {SC_PRODUCT_VIDEO_NTSC,     "NTSC"},
    {SC_PRODUCT_VIDEO_PAL,      "PAL"},
    {SC_PRODUCT_VIDEO_MPAL,     "MPAL"},
    {SC_PRODUCT_VIDEO_UNKNOWN,  ""},
};

typedef struct SCGameRegionAndID {
    s8      gameRegion; // 0x00
    char    name[3];    // 0x01
} SCGameRegionAndID;

static SCGameRegionAndID ProductGameRegionAndStringTbl[] = {
    {SC_PRODUCT_GAME_REGION_JP,         "JP"},
    {SC_PRODUCT_GAME_REGION_US,         "US"},
    {SC_PRODUCT_GAME_REGION_EU,         "EU"},
    {SC_PRODUCT_GAME_REGION_KR,         "KR"},
    {SC_PRODUCT_GAME_REGION_CN,         "CN"},
    {SC_PRODUCT_GAME_REGION_UNKNOWN,    ""},
};

BOOL __SCF1(const char* type, char* buf, u32 sz) {
    u8 ptext;
    BOOL found = FALSE;
    u32 i;
    const u8* settings = (const u8*)OSPhysicalToCached(SC_CONFIG_FILE_PHYS_ADDRESS);
    u32 key = XOR_PRDINFO_KEY;
    u32 typeOfs = 0;
    u32 bufOfs = 0;

    for (i = 0; i < SC_CONFIG_FILE_LENGTH; i++, key = key >> 31 | key << 1) {
        ptext = settings[i];

        if (ptext != 0x00) {
            ptext ^= key;
            if (type[typeOfs] == 0x00 && ptext == '=') {
                found = TRUE;
                break;
            }

            if (((ptext ^ type[typeOfs]) & 0xDF) == 0) {
                typeOfs++;
            }
            else {
                typeOfs = 0;
            }
        }
    }

    if (found) {
        for (i++; i < SC_CONFIG_FILE_LENGTH && bufOfs < sz; i++) {
            key = key >> 31 | key << 1;
            ptext = settings[i];

            if (ptext != 0x00) {
                ptext ^= key;
                if (ptext == '\r' || ptext == '\n') {
                    ptext = 0x00;
                }
            }

            buf[bufOfs++] = ptext;

            if (ptext == 0x00) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL SCGetProductAreaString(char* buf, u32 sz) {
    return __SCF1("AREA", buf, sz);
}

s8 SCGetProductArea() {
    s8 area;
    char name[4];
    SCAreaAndID* iter = ProductAreaAndStringTbl;

    if (SCGetProductAreaString(name, sizeof(name))) {
        for (; (area = iter->area) != -1; iter++) {
            if (!strcmp(iter->name, name)) {
                return area;
            }
        }
    }

    return SC_PRODUCT_AREA_UNKNOWN;
}

char* SCGetProductCode() {
    static char buf[6];
    return __SCF1("CODE", buf, sizeof(buf)) ? buf : NULL;
}

BOOL SCGetProductSNString(char* buf, u32 sz) {
    return __SCF1("SERNO", buf, sz);
}

BOOL SCGetProductVideoModeString(char* buf, u32 sz) {
    return __SCF1("VIDEO", buf, sz);
}

s8 SCGetProductVideoMode() {
    s8 area;
    char name[5];
    SCVideoModeAndID* iter = ProductVideoModeAndStringTbl;

    if (SCGetProductVideoModeString(name, sizeof(name))) {
        for (; (area = iter->videoMode) != -1; iter++) {
            if (!strcmp(iter->name, name)) {
                return area;
            }
        }
    }

    return SC_PRODUCT_AREA_UNKNOWN;
}

BOOL SCGetProductGameRegionString(char* buf, u32 sz) {
    return __SCF1("GAME", buf, sz);
}

s8 SCGetProductGameRegion() {
    s8 area;
    char name[3];
    SCGameRegionAndID* iter = ProductGameRegionAndStringTbl;

    if (SCGetProductGameRegionString(name, sizeof(name))) {
        for (; (area = iter->gameRegion) != -1; iter++) {
            if (!strcmp(iter->name, name)) {
                return area;
            }
        }
    }

    return SC_PRODUCT_AREA_UNKNOWN;
}
