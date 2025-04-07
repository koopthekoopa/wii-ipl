#ifndef RFL_INTERVAL_TYPES_H
#define RFL_INTERVAL_TYPES_H

#include <revolution/types.h>
#include <RVLFaceLib/RFL_Types.h>

#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct RFLiCharInfo {
    union {
        struct {
            u16 type : 3;
            u16 color : 3;
            u16 texture : 4;
            u16 padding : 6;
        };
        u16 rawdata;
    } faceline; // 0x00

    union {
        struct {
            u16 type : 7;
            u16 color : 3;
            u16 flip : 1;
            u16 padding : 5;
        };
        u16 rawdata;
    } hair; // 0x02

    union {
        struct {
            u32 type : 6;
            u32 color : 3;
            u32 scale : 4;
            u32 rotate : 5;
            u32 x : 4;
            u32 y : 5;
            u32 padding : 5;
        };
        u32 rawdata;
    } eye; // 0x04

    union {
        struct {
            u32 type : 5;
            u32 color : 3;
            u32 scale : 4;
            u32 rotate : 5;
            u32 x : 4;
            u32 y : 5;
            u32 padding : 6;
        };
        u32 rawdata;
    } eyebrow; // 0x08

    union {
        struct {
            u16 type : 4;
            u16 scale : 4;
            u16 y : 5;
            u16 padding : 3;
        };
        u16 rawdata;
    } nose; // 0x0C

    union {
        struct {
            u16 type : 5;
            u16 color : 2;
            u16 scale : 4;
            u16 y : 5;
        };
        u16 rawdata;
    } mouth; // 0x0E

    union {
        struct {
            u16 mustache : 2;
            u16 type : 2;
            u16 color : 3;
            u16 scale : 4;
            u16 y : 5;
        };
        u16 rawdata;
    } beard; // 0x10

    union {
        struct {
            u16 type : 4;
            u16 color : 3;
            u16 scale : 4;
            u16 y : 5;
        };
        u16 rawdata;
    } glass; // 0x12

    union {
        struct {
            u16 type : 1;
            u16 scale : 4;
            u16 x : 5;
            u16 y : 5;
            u16 padding : 1;
        };
        u16 rawdata;
    } mole; // 0x14

    struct {
        u8 height;
        u8 build;
    } body; // 0x16

    struct {
        wchar_t name[RFL_NAME_LENGTH + 1];
        wchar_t creator[RFL_CREATOR_LENGTH + 1];

        // 0x44
        u16 sex : 1;
        u16 bmonth : 4;
        u16 bday : 5;
        u16 color : 4;
        u16 favorite : 1;
        u16 localOnly : 1;
    } personal; // 0x18

    RFLCreateID createID;
} RFLiCharInfo;

typedef struct RFLiCharData {
    // 0x00
    u16 padding0 : 1;
    u16 sex : 1;
    u16 birthMonth : 4;
    u16 birthDay : 5;
    u16 favoriteColor : 4;
    u16 favorite : 1;

    wchar_t     name[RFL_NAME_LENGTH];  // 0x02
    u8          height;                 // 0x16
    u8          build;                  // 0x17
    RFLCreateID createID;               // 0x18

    // 0x20
    u16 faceType : 3;
    u16 faceColor : 3;
    u16 faceTex : 4;
    u16 padding2 : 3;
    u16 localonly : 1;
    u16 type : 2;

    // 0x22
    u16 hairType : 7;
    u16 hairColor : 3;
    u16 hairFlip : 1;
    u16 padding3 : 5;

    // 0x24
    u16 eyebrowType : 5;
    u16 eyebrowRotate : 5;
    u16 padding4 : 6;

    // 0x26
    u16 eyebrowColor : 3;
    u16 eyebrowScale : 4;
    u16 eyebrowY : 5;
    u16 eyebrowX : 4;

    // 0x28
    u16 eyeType : 6;
    u16 eyeRotate : 5;
    u16 eyeY : 5;

    // 0x2A
    u16 eyeColor : 3;
    u16 eyeScale : 4;
    u16 eyeX : 4;
    u16 padding5 : 5;

    // 0x2C
    u16 noseType : 4;
    u16 noseScale : 4;
    u16 noseY : 5;
    u16 padding6 : 3;

    // 0x2E
    u16 mouthType : 5;
    u16 mouthColor : 2;
    u16 mouthScale : 4;
    u16 mouthY : 5;

    // 0x30
    u16 glassType : 4;
    u16 glassColor : 3;
    u16 glassScale : 4;
    u16 glassY : 5;

    // 0x32
    u16 mustacheType : 2;
    u16 beardType : 2;
    u16 beardColor : 3;
    u16 beardScale : 4;
    u16 beardY : 5;

    // 0x34
    u16 moleType : 1;
    u16 moleScale : 4;
    u16 moleY : 5;
    u16 moleX : 5;
    u16 padding8 : 1;

    wchar_t creatorName[RFL_CREATOR_LENGTH];    // 0x36
} RFLiCharData;

#ifdef __cplusplus
}
#endif

#endif // RFL_INTERVAL_TYPES_H
