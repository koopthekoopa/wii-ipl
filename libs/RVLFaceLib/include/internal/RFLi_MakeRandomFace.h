#ifndef RFLi_MAKE_RANDOM_FACE_H
#define RFLi_MAKE_RANDOM_FACE_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

void    RFLi_MakeRandomFace(RFLiCharInfo* pCharInfo, RFLSex argSex, RFLAge argAge, RFLRace argRace);

u32     RFLi_GetRandU32(u32 max);

u8      RFLi_GetFacelineType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetHairType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetEyeType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetEyebrowType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetNoseType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetMouthType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetFaceTexType(RFLi_SEX sex, RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetGlassType(RFLi_AGE age);
u8      RFLi_GetFaceColor(RFLi_SEX sex, RFLi_RACE race);
u8      RFLi_GetHairColor(RFLi_AGE age, RFLi_RACE race);
u8      RFLi_GetEyeColor(RFLi_RACE race);

#ifdef __cplusplus
}
#endif

#endif // RFLi_MAKE_RANDOM_FACE_H
