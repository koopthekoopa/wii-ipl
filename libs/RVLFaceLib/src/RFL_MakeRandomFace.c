#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <internal/RFLi_FaceConfig.h>
#include <internal/RFLi_FaceConfig/offsets.h>

#include <revolution/os.h>

#include <wchar.h>

#define DEFAULT_NAME    L"no name"

#define ARRAY_SIZE(x) (sizeof((x)) / sizeof((x)[0]))

void RFLi_MakeRandomFace_Core(RFLiCharInfo* pCharInfo, RFLi_SEX argSex, RFLi_AGE argAge, RFLi_RACE argRace);

void RFLi_MakeRandomFace(RFLiCharInfo* pCharInfo, RFLSex argSex, RFLAge argAge, RFLRace argRace) {
    RFLi_SEX sex;
    RFLi_AGE age;
    RFLi_RACE race;
    u32 rand;

    // Random sex
    if (argSex == RFLSex_All) {
        if (RFLi_GetRandU32(RFLSex_All) == RFLSex_Male) {
            sex = RFLi_SEX_MALE;
        }
        else {
            sex = RFLi_SEX_FEMALE;
        }
    }
    else {
        sex = (RFLi_SEX)argSex;
    }

    // Random age
    if (argAge == RFLAge_All) {
        rand = RFLi_GetRandU32(10);
        if (rand < 4) {
            age = RFLi_AGE_CHILD;
        }
        else if (rand < 8) {
            age = RFLi_AGE_ADULT;
        }
        else {
            age = RFLi_AGE_ELDER;
        }
    }
    else {
        age = (RFLi_AGE)argAge;
    }

    // Random race
    switch (argRace) {
        case RFLRace_Black: {
            race = RFLi_RACE_BLACK;
            break;
        }
        case RFLRace_White: {
            race = RFLi_RACE_WHITE;
            break;
        }
        case RFLRace_Asian: {
            race = RFLi_RACE_ASIAN;
            break;
        }
        case RFLRace_All: {
            rand = RFLi_GetRandU32(10);
            if (rand < 4) {
                race = RFLi_RACE_ASIAN;
            }
            else if (rand < 8) {
                race = RFLi_RACE_WHITE;
            }
            else {
                race = RFLi_RACE_BLACK;
            }
            break;
        }
        default: {
            break;
        }
    }

    // The rest
    RFLi_MakeRandomFace_Core(pCharInfo, sex, age, race);
}

void RFLi_MakeRandomFace_Core(RFLiCharInfo* pCharInfo, RFLi_SEX argSex, RFLi_AGE argAge, RFLi_RACE argRace) {
    RFLi_SEX sex = (int)argSex;
    RFLi_AGE age = (int)argAge;
    RFLi_RACE race = (int)argRace;
    u8 yOffset = 0;
    int i;

    if (sex == RFLSex_Female) {
        yOffset += RFLi_GetRandU32(3);
    }
    if (age == RFLAge_Child) {
        yOffset += RFLi_GetRandU32(3);
    }

    pCharInfo->faceline.type = RFLi_GetFacelineType(sex, age, race);
    pCharInfo->faceline.color = RFLi_GetFaceColor(sex, race);
    pCharInfo->faceline.texture = RFLi_GetFaceTexType(sex, age, race);

    pCharInfo->hair.type = RFLi_GetHairType(sex, age, race);
    pCharInfo->hair.color = RFLi_GetHairColor(age, race);
    pCharInfo->hair.flip = RFLi_GetRandU32(TRUE + 1);

    pCharInfo->eye.type = RFLi_GetEyeType(sex, age, race);
    pCharInfo->eye.color = RFLi_GetEyeColor(race);
    pCharInfo->eye.scale = 4;

    if (sex == RFLSex_Male) {
        pCharInfo->eye.rotate = 4;
        pCharInfo->eye.rotate += (RFLi_EYE_ROT_OFFSET[2] - RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type]);
    }
    else {
        pCharInfo->eye.rotate = 3;
        pCharInfo->eye.rotate += (RFLi_EYE_ROT_OFFSET[4] - RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type]);
    }
    pCharInfo->eye.x = 2;
    pCharInfo->eye.y = yOffset + 12;

    pCharInfo->eyebrow.type = RFLi_GetEyebrowType(sex, age, race);
    pCharInfo->eyebrow.color = pCharInfo->hair.color;
    pCharInfo->eyebrow.scale = 4;
    pCharInfo->eyebrow.rotate = 6;
    pCharInfo->eyebrow.x = 2;
    if (race == RFLRace_Asian) {
        pCharInfo->eyebrow.y = yOffset + 9;
        pCharInfo->eyebrow.rotate += (RFLi_EYEBROW_ROT_OFFSET[6] - RFLi_EYEBROW_ROT_OFFSET[pCharInfo->eyebrow.type]);
    }
    else {
        pCharInfo->eyebrow.y = yOffset + 10;
        pCharInfo->eyebrow.rotate += (RFLi_EYEBROW_ROT_OFFSET[0] - RFLi_EYEBROW_ROT_OFFSET[pCharInfo->eyebrow.type]);
    }

    pCharInfo->nose.type = RFLi_GetNoseType(sex, age, race);
    if (sex == RFLSex_Male) {
        pCharInfo->nose.scale = 4;
    }
    else {
        pCharInfo->nose.scale = 3;
    }
    pCharInfo->nose.y = yOffset + 9;

    pCharInfo->mouth.type = RFLi_GetMouthType(sex, age, race);
    if (sex == RFLSex_Male) {
        pCharInfo->mouth.color = 0;
    }
    else {
        pCharInfo->mouth.color = RFLi_GetRandU32(RFLi_MOUTH_COLOR_MAX + 1);
    }
    pCharInfo->mouth.scale = 4;
    pCharInfo->mouth.y = yOffset + 13;

    if (sex == RFLSex_Male && (age == RFLAge_Adult || age == RFLAge_Elder) && RFLi_GetRandU32(10) < 2) {
        u32 r = RFLi_GetRandU32(3);

        if (r == 0) {
            pCharInfo->beard.mustache = 0;
            pCharInfo->beard.type = RFLi_GetRandU32(RFLi_BEARD_TYPE_MAX) + 1;
        }
        else if (r == 1) {
            pCharInfo->beard.mustache = RFLi_GetRandU32(RFLi_BEARD_MUSTACHE_MAX) + 1;
            pCharInfo->beard.type = 0;
        }
        else if (r == 2) {
            pCharInfo->beard.mustache = RFLi_GetRandU32(RFLi_BEARD_MUSTACHE_MAX) + 1;
            pCharInfo->beard.type = RFLi_GetRandU32(RFLi_BEARD_TYPE_MAX) + 1;
        }

        pCharInfo->beard.color = pCharInfo->hair.color;
        pCharInfo->beard.scale = 4;
        pCharInfo->beard.y = 10;
    }
    else {
        pCharInfo->beard.mustache = 0;
        pCharInfo->beard.type = 0;
        pCharInfo->beard.color = 0;
        pCharInfo->beard.scale = 0;
        pCharInfo->beard.y = 0;
    }

    pCharInfo->glass.type = RFLi_GetGlassType(age);
    pCharInfo->glass.color = 0;
    pCharInfo->glass.scale = 4;
    pCharInfo->glass.y = yOffset + 10;

    pCharInfo->mole.type = 0;
    pCharInfo->mole.scale = 4;
    pCharInfo->mole.x = RFLi_GetRandU32(RFLi_MOLE_X_MAX + 1);
    pCharInfo->mole.y = RFLi_GetRandU32(RFLi_MOLE_Y_MAX + 1);

    pCharInfo->body.height = RFLi_HEIGHT_MAX / 2;
    pCharInfo->body.build = RFLi_BUILD_MAX / 2;

    for (i = 0; i < RFL_NAME_LENGTH + 1; i++) {
        pCharInfo->personal.name[i] = 0;
    }
    wcsncpy(pCharInfo->personal.name, (wchar_t*)DEFAULT_NAME, ARRAY_SIZE(DEFAULT_NAME)-1);

    for (i = 0; i < RFL_NAME_LENGTH + 1; i++) {
        pCharInfo->personal.creator[i] = 0;
    }

    pCharInfo->personal.sex = sex;
    pCharInfo->personal.birth_month = 0;
    pCharInfo->personal.birth_day = 0;
    pCharInfo->personal.favoriteColor = RFLi_GetRandU32(RFLFavoriteColor_Max);
    pCharInfo->personal.favorite = FALSE;
    pCharInfo->personal.localonly = FALSE;
}

u8 RFLi_GetFacelineType(RFLi_SEX sex, RFLi_AGE age,  RFLi_RACE race) {
    static const u8 facelineTypeTable[RFLSex_All * RFLAge_All * RFLRace_All][10] = {
        /*  Male,  Child, Black */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /*  Male,  Child, White */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /*  Male,  Child, Asian */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /*  Male,  Adult, Black */ {0, 0, 1, 2, 2, 3, 4, 5, 6, 7},
        /*  Male,  Adult, White */ {0, 1, 2, 2, 3, 4, 5, 6, 6, 7},
        /*  Male,  Adult, Asian */ {0, 0, 1, 2, 2, 3, 4, 5, 6, 7},
        /*  Male,  Elder, Black */ {0, 0, 1, 2, 2, 3, 4, 5, 6, 7},
        /*  Male,  Elder, White */ {0, 1, 2, 2, 3, 4, 5, 6, 7, 7},
        /*  Male,  Elder, Asian */ {0, 0, 1, 2, 2, 3, 4, 5, 6, 7},

        /* Female, Child, Black */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /* Female, Child, White */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /* Female, Child, Asian */ {0, 0, 0, 1, 1, 1, 2, 3, 4, 5},
        /* Female, Adult, Black */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5},
        /* Female, Adult, White */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5},
        /* Female, Adult, Asian */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5},
        /* Female, Elder, Black */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5},
        /* Female, Elder, White */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5},
        /* Female, Elder, Asian */ {0, 0, 0, 1, 1, 2, 2, 3, 4, 5}
    };

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 302);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 303);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 304);

    return facelineTypeTable[(sex*9) + (age*3) + race] [RFLi_GetRandU32(ARRAY_SIZE(facelineTypeTable[0]))];
}

u8 RFLi_GetHairType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    u8 hair_parts[RFLSex_All * RFLAge_All * RFLRace_All][72] = {
        /*  Male,  Child, Black */ {13, 23, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43, 44, 45, 47, 48, 49, 50, 51, 52, 54, 56, 57, 64, 66,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, White */ {13, 23, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43, 44, 45, 47, 48, 49, 50, 51, 52, 54, 56, 57, 64, 66,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, Asian */ {13, 23, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43, 44, 45, 47, 48, 49, 50, 51, 52, 54, 56, 57, 64, 66,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Black */ {13, 23, 30, 31, 32, 33, 34, 36, 37, 38, 40, 42, 43, 44, 45, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 58, 59, 60, 64, 65, 66, 67, 68, 70,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, White */ {13, 23, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 43, 44, 45, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 58, 59, 60, 64, 65, 66, 67, 68, 70,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Asian */ {13, 23, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 43, 44, 45, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 58, 59, 60, 64, 65, 66, 67, 68, 70,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Elder, Black */ {13, 23, 30, 36, 37, 41, 45, 47, 51, 53, 54, 55, 58, 59, 65, 67,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Elder, White */ {13, 23, 30, 36, 37, 39, 41, 45, 47, 51, 53, 54, 55, 58, 59, 65, 67,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Elder, Asian */ {13, 23, 30, 36, 37, 39, 41, 45, 47, 51, 53, 54, 55, 58, 59, 65, 67,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},

        /* Female, Child, Black */ { 0,  1,  2,  3,  4,  5,  6,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 46, 50, 61, 62, 63, 64, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, White */ { 0,  1,  2,  3,  4,  5,  6,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 46, 50, 61, 62, 63, 64, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, Asian */ { 0,  1,  2,  3,  4,  5,  6,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 46, 50, 61, 62, 63, 64, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 29, 42, 50, 58, 60, 62, 63, 64, 69, 71,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 29, 50, 58, 60, 62, 63, 64, 69, 71,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 29, 50, 58, 60, 62, 63, 64, 69, 71,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Black */ { 0,  1,  2,  3,  4,  5,  6, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 58, 62, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, White */ { 0,  1,  2,  3,  4,  5,  6, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 58, 62, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Asian */ { 0,  1,  2,  3,  4,  5,  6, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 58, 62, 69,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0}
    };

    u8 hair_parts_num[RFLSex_All * RFLAge_All * RFLRace_All] = { 26, 26, 26, 34, 34, 34, 16, 17, 17, 33, 33, 33, 37, 36, 36, 22, 22, 22 };
    u8 index = (sex * 9) + (age * 3) + race;

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 337);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 338);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 339);

    return hair_parts[index][RFLi_GetRandU32(hair_parts_num[index])];
}

u8 RFLi_GetEyeType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    u8 eye_parts[RFLSex_All * RFLAge_All * RFLRace_All][48] = {
        /*  Male,  Child, Black */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 15, 16, 18, 27, 29, 32, 34, 36, 38, 39, 41, 43, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, White */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 15, 16, 18, 27, 29, 32, 34, 36, 38, 39, 41, 43, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, Asian */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 15, 16, 18, 26, 27, 29, 32, 34, 36, 38, 39, 41, 43, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Black */ { 2,  3,  5,  6,  7,  8,  9, 11, 12, 13, 15, 16, 17, 18, 21, 22, 27, 29, 31, 32, 34, 36, 37, 38, 39, 41, 43, 44, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, White */ { 2,  3,  5,  6,  7,  8,  9, 11, 12, 13, 15, 16, 17, 18, 21, 22, 27, 29, 31, 32, 34, 36, 37, 38, 39, 41, 43, 44, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Asian */ { 2,  3,  5,  6,  7,  8,  9, 11, 12, 13, 15, 16, 18, 21, 22, 26, 27, 29, 31, 32, 34, 36, 37, 38, 39, 41, 43, 44, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Elder, Black */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 17, 18, 21, 22, 31, 32, 34, 36, 37, 39, 41, 44,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male   Elder, White */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 17, 18, 21, 22, 31, 32, 34, 36, 37, 39, 41, 44,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Elder, Asian */ { 2,  3,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 18, 21, 22, 26, 31, 32, 34, 36, 37, 39, 41, 44,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},

        /* Female, Child, Black */ { 0,  1,  2,  4,  5,  7,  8,  9, 10, 11, 12, 13, 15, 16, 18, 19, 23, 24, 25, 27, 28, 29, 32, 33, 34, 35, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, White */ { 0,  1,  2,  4,  5,  7,  8,  9, 10, 11, 12, 13, 15, 16, 18, 19, 23, 24, 25, 27, 28, 29, 32, 33, 34, 35, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, Asian */ { 0,  1,  2,  4,  5,  7,  8,  9, 10, 11, 12, 13, 15, 16, 18, 19, 23, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Black */ { 0,  1,  2,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 27, 28, 29, 30, 32, 33, 34, 35, 37, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, White */ { 0,  1,  2,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 27, 28, 29, 30, 32, 33, 34, 35, 37, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Asian */ { 0,  1,  2,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 15, 16, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 37, 38, 39, 40, 41, 42, 45, 46, 47,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Black */ { 1,  2,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 17, 18, 21, 32, 34, 37, 39, 41,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, White */ { 1,  2,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 17, 18, 21, 32, 34, 37, 39, 41,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Asian */ { 1,  2,  5,  7,  8,  9, 11, 12, 13, 14, 15, 16, 18, 21, 26, 32, 34, 37, 39, 41,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0}
    };

    u8 eye_parts_num[RFLSex_All * RFLAge_All * RFLRace_All] = { 22, 22, 23, 29, 29, 29, 24, 24, 24, 34, 34, 35, 40, 40, 40, 20, 20, 20 };
    u8 index = (sex * 9) + (age * 3) + race;

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 372);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 373);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 374);

    return eye_parts[index][RFLi_GetRandU32(eye_parts_num[index])];
}

u8 RFLi_GetEyebrowType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    static const u8 eyebrow_parts[RFLSex_All * RFLAge_All * RFLRace_All][24] = {
        /*  Male,  Child, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 17, 18, 20,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 17, 18, 20,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 17, 18, 20,  0,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,  0},
        /*  Male,  Adult, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,  0},
        /*  Male,  Adult, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,  0},
        /*  Male,  Elder, Black */ { 0,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22,  0,  0,  0},
        /*  Male,  Elder, White */ { 0,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22,  0,  0,  0},
        /*  Male,  Elder, Asian */ { 0,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22,  0,  0,  0},

        /* Female, Child, Black */ { 0,  1,  3,  7,  8,  9, 10, 11, 13,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, White */ { 0,  1,  3,  7,  8,  9, 10, 11, 13,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Child, Asian */ { 0,  1,  3,  7,  8,  9, 10, 11, 13,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Black */ { 0,  1,  3,  7,  8,  9, 10, 11, 13, 15, 19,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, White */ { 0,  1,  3,  7,  8,  9, 10, 11, 13, 15, 19,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Asian */ { 0,  1,  3,  7,  8,  9, 10, 11, 13, 15, 19,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Black */ { 0,  3,  7,  8,  9, 10, 11, 13, 15,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, White */ { 0,  3,  7,  8,  9, 10, 11, 13, 15,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
        /* Female, Elder, Asian */ { 0,  3,  7,  8,  9, 10, 11, 13, 15,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0},
    };

    u8 eyebrow_parts_num[RFLSex_All * RFLAge_All * RFLRace_All] = { 18, 18, 18, 23, 23, 23, 21, 21, 21, 9, 9, 9, 11, 11, 11, 9, 9, 9 };
    u8 index = (sex * 9) + (age * 3) + race;

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 407);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 408);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 409);

    return eyebrow_parts[index][RFLi_GetRandU32(eyebrow_parts_num[index])];
}

u8 RFLi_GetNoseType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    u8 nose_parts[RFLSex_All * RFLAge_All * RFLRace_All][12] = {
        /*  Male,  Child, Black */ { 0,  1,  2,  3,  4,  5,  7,  8, 10,  0,  0,  0},
        /*  Male,  Child, White */ { 0,  1,  2,  3,  4,  5,  7,  8, 10,  0,  0,  0},
        /*  Male,  Child, Asian */ { 0,  1,  2,  3,  4,  5,  7,  8, 10,  0,  0,  0},
        /*  Male,  Adult, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11},
        /*  Male,  Adult, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11},
        /*  Male,  Adult, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8, 10, 11,  0},
        /*  Male,  Elder, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11},
        /*  Male,  Elder, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11},
        /*  Male,  Elder, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8, 10, 11,  0},

        /* Female, Child, Black */ { 0,  1,  3,  4,  8, 10,  0,  0,  0,  0,  0,  0},
        /* Female, Child, White */ { 0,  1,  3,  4,  8, 10,  0,  0,  0,  0,  0,  0},
        /* Female, Child, Asian */ { 0,  1,  3,  4,  8, 10,  0,  0,  0,  0,  0,  0},
        /* Female, Adult, Black */ { 0,  1,  3,  4,  6,  8,  9, 10, 11,  0,  0,  0},
        /* Female, Adult, White */ { 0,  1,  3,  4,  6,  8,  9, 10, 11,  0,  0,  0},
        /* Female, Adult, Asian */ { 0,  1,  3,  4,  6,  8, 10, 11,  0,  0,  0,  0},
        /* Female, Elder, Black */ { 0,  1,  3,  4,  6,  8,  9, 10, 11,  0,  0,  0},
        /* Female, Elder, White */ { 0,  1,  3,  4,  6,  8,  9, 10, 11,  0,  0,  0},
        /* Female, Elder, Asian */ { 0,  1,  3,  4,  6,  8, 10, 11,  0,  0,  0,  0}
    };

    u8 nose_parts_num[RFLSex_All * RFLAge_All * RFLRace_All] = { 9, 9, 9, 12, 12, 11, 12, 12, 11, 6, 6, 6, 9, 9, 8, 9, 9, 8 };
    u8 index = (sex * 9) + (age * 3) + race;

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 442);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 443);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 444);

    return nose_parts[index][RFLi_GetRandU32(nose_parts_num[index])];
}

u8 RFLi_GetMouthType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    u8 mouth_parts[RFLSex_All * RFLAge_All * RFLRace_All][24] = {
        /*  Male,  Child, Black */ { 0,  2,  3,  6,  7,  8,  9, 10, 12, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0,  0,  0,  0},
        /*  Male,  Child, White */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0,  0},
        /*  Male,  Child, Asian */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0,  0},
        /*  Male,  Adult, Black */ { 0,  2,  3,  6,  7,  8,  9, 10, 12, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0,  0,  0},
        /*  Male,  Adult, White */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0},
        /*  Male,  Adult, Asian */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0},
        /*  Male,  Elder, Black */ { 0,  2,  3,  6,  7,  8,  9, 10, 12, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0,  0,  0},
        /*  Male,  Elder, White */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0},
        /*  Male,  Elder, Asian */ { 0,  2,  3,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,  0,  0,  0},

        /* Female, Child, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0,  0},
        /* Female, Child, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0},
        /* Female, Child, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0},
        /* Female, Adult, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0,  0},
        /* Female, Adult, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0},
        /* Female, Adult, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0},
        /* Female, Elder, Black */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 14, 15, 16, 17, 18, 19, 21, 22, 23,  0,  0,  0,  0},
        /* Female, Elder, White */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23,  0,  0,  0},
        /* Female, Elder, Asian */ { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23,  0,  0,  0}
    };

    u8 mouth_parts_num[RFLSex_All * RFLAge_All * RFLRace_All] = { 17, 19, 19, 19, 21, 21, 19, 21, 21, 19, 20, 20, 19, 20, 20, 20, 21, 21 };
    u8 index = (sex * 9) + (age * 3) + race;

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 477);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 478);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 479);

    return mouth_parts[index][RFLi_GetRandU32(mouth_parts_num[index])];
}

u8 RFLi_GetFaceTexType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race) {
    static const u8 faceTexTypeTable[RFLSex_All * RFLAge_All * RFLRace_All][20] = {
        /*  Male,  Child, Black */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  3},
        /*  Male,  Child, White */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  3,  3,  3,  8,  8},
        /*  Male,  Child, Asian */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  3},
        /*  Male,  Adult, Black */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  4,  5,  6,  7,  8,  9, 10},
        /*  Male,  Adult, White */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  4,  5,  6,  7,  8,  9, 10},
        /*  Male,  Adult, Asian */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  4,  5,  6,  7,  9, 10},
        /*  Male,  Elder, Black */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11},
        /*  Male,  Elder, White */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11},
        /*  Male,  Elder, Asian */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11},

        /* Female, Child, Black */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  3,  4,  4},
        /* Female, Child, White */ { 0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  3,  3,  4,  4},
        /* Female, Child, Asian */ { 0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  3,  3,  4,  4},
        /* Female, Adult, Black */ { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  3,  4,  4,  8,  8},
        /* Female, Adult, White */ { 0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  4,  4,  8,  8},
        /* Female, Adult, Asian */ { 0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  4,  4},
        /* Female, Elder, Black */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11},
        /* Female, Elder, White */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11},
        /* Female, Elder, Asian */ {10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11}
    };

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 508);
    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 509);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 510);

    return faceTexTypeTable[(sex * 9) + (age * 3) + race] [RFLi_GetRandU32(ARRAY_SIZE(faceTexTypeTable[0]))];
}

u8 RFLi_GetGlassType(RFLi_AGE age) {
    u32 rand = RFLi_GetRandU32(100);

    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 520);

    switch (age) {
        case RFLAge_Child: {
            if (rand < 90) {
                return 0;
            }
            if (rand < 94) {
                return 1;
            }
            if (rand < 96) {
                return 2;
            }
            return 3;
        }
        case RFLAge_Adult: {
            if (rand < 83) {
                return 0;
            }
            if (rand < 86) {
                return 1;
            }
            if (rand < 90) {
                return 2;
            }
            if (rand < 93) {
                return 3;
            }
            if (rand < 94) {
                return 4;
            }
            if (rand < 96) {
                return 5;
            }
            if (rand < 98) {
                return 6;
            }
            return 7;
        }
        case RFLAge_Elder: {
            if (rand < 78) {
                return 0;
            }
            if (rand < 83) {
                return 1;
            }
            if (rand < 93) {
                return 3;
            }
            if (rand < 98) {
                return 6;
            }
            return 7;
        }
        default: {
            return 0;
        }
    }
}

u8 RFLi_GetFaceColor(RFLi_SEX sex, RFLi_RACE race) {
    static const u8 faceColorTable[RFLSex_All * RFLRace_All][10] = {
        /*  Male,  Black */ { 2, 2, 4, 4, 4, 4, 5, 5, 5, 5 },
        /*  Male,  White */ { 0, 0, 0, 0, 1, 1, 2, 3, 3, 3 },
        /*  Male,  Asian */ { 0, 0, 1, 1, 1, 1, 1, 1, 1, 2 },

        /* Female, Black */ { 2, 2, 4, 4, 4, 4, 5, 5, 5, 5 },
        /* Female, White */ { 0, 0, 0, 0, 0, 0, 0, 0, 1, 3 },
        /* Female, Asian */ { 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 }
    };

    RFLi_ASSERTLINE_RANGE(sex, RFLSex_Male, RFLSex_All, 563);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 564);

    return faceColorTable[(sex * 3) + race] [RFLi_GetRandU32(ARRAY_SIZE(faceColorTable[0]))];
}

u8 RFLi_GetHairColor(RFLi_AGE age, RFLi_RACE race) {
    static const u8 hairColorTable[RFLAge_All * RFLRace_All][20] = {
        /* Black, Child */ {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        /* Black, Adult */ {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        /* Black, Elder */ {0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4},
        /* White, Child */ {2, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7},
        /* White, Adult */ {2, 3, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7},
        /* White, Elder */ {2, 3, 3, 4, 4, 4, 4, 4, 4, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7},
        /* Asian, Child */ {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1},
        /* Asian, Adult */ {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 3, 3, 3, 3},
        /* Asian, Elder */ {4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4}
    };

    RFLi_ASSERTLINE_RANGE(age, RFLAge_Child, RFLAge_All, 584);
    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 585);

    return hairColorTable[(race * 4 - race) + age] [RFLi_GetRandU32(ARRAY_SIZE(hairColorTable[0]))];
}

u8 RFLi_GetEyeColor(RFLi_RACE race) {
    static const u8 eyeColorTable[RFLRace_All][10] = {
        /* Black */ {0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
        /* White */ {0, 1, 1, 2, 3, 3, 4, 4, 4, 5},
        /* Asian */ {0, 0, 0, 0, 0, 0, 0, 0, 0, 1}
    };

    RFLi_ASSERTLINE_RANGE(race, RFLRace_Black, RFLAge_All, 599);

    return eyeColorTable[race][RFLi_GetRandU32(ARRAY_SIZE(eyeColorTable[0]))];
}

u32 RFLi_GetRandU32(u32 max) {
    return OSGetTick() % max;
}
