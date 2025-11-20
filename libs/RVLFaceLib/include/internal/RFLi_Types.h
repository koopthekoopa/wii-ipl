#ifndef RFLi_TYPES_H
#define RFLi_TYPES_H

#include <RFL_Types.h>

#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLi_MASKRSL_32 = 32,
    RFLi_MASKRSL_64 = 64,
    RFLi_MASKRSL_128 = 128,
    RFLi_MASKRSL_256 = 256,
} RFLi_MASKRSL;

typedef enum {
    RFL_ORIGIN_CENTER = 0,
    RFL_ORIGIN_LEFT,
    RFL_ORIGIN_RIGHT,
} RFLi_ORIGIN;

typedef enum {
    RFLi_SEX_MALE = 0,
    RFLi_SEX_FEMALE,
} RFLi_SEX;

typedef enum {
    RFLi_AGE_CHILD = 0,
    RFLi_AGE_ADULT,
    RFLi_AGE_ELDER,
} RFLi_AGE;

typedef enum {
    RFLi_RACE_BLACK = 0,
    RFLi_RACE_WHITE,
    RFLi_RACE_ASIAN,
    RFLi_RACE_ALL,
} RFLi_RACE;

typedef enum {
    RFLiFileBrokenType_DBNotFound = 0,
    RFLiFileBrokenType_DBBroken,
    RFLiFileBrokenType_ResBroken,
    RFLiFileBrokenType_Corrupt,

    RFLiFileBrokenType_Max,
} RFLiFileBrokenType;

typedef enum {
    RFLiOpenType_Multi = 0,
    RFLiOpenType_Single,

    RFLiOpenType_Opened,
} RFLiOpenType;

typedef enum {
    RFLiPartsTex_Eye = 0,
    RFLiPartsTex_Eyebrow,
    RFLiPartsTex_Mouth,
    RFLiPartsTex_Mustache,
    RFLiPartsTex_Mole,

    RFLiPartsTex_Max,
} RFLiPartsTex;

typedef enum {
    RFLiPartsShpTex_Face = 0,
    RFLiPartsShpTex_Cap ,
    RFLiPartsShpTex_Noseline,
    RFLiPartsShpTex_Glass,

    RFLiPartsShpTex_Max,
} RFLiPartsShpTex;

typedef enum {
    RFLiPartsShp_Nose = 0,
    RFLiPartsShp_Forehead,
    RFLiPartsShp_Faceline,
    RFLiPartsShp_Hair,
    RFLiPartsShp_Cap,
    RFLiPartsShp_Beard,
    RFLiPartsShp_Noseline,
    RFLiPartsShp_Mask,
    RFLiPartsShp_Glass,

    RFLiPartsShp_Max,
} RFLiPartsShp;

typedef struct {
    union {
        struct {
            u16 type : 3;       // 0x00
            u16 color : 3;      // 0x00
            u16 texture : 4;    // 0x00
            u16 padding : 6;    // 0x00
        };
        u16 rawdata;            // 0x00
    } faceline;             // 0x00
    union {
        struct {
            u16 type : 7;       // 0x00
            u16 color : 3;      // 0x00
            u16 flip : 1;       // 0x00
            u16 padding : 5;    // 0x00
        };
        u16 rawdata;            // 0x00
    } hair;                 // 0x02
    union {
        struct {
            u32 type : 6;       // 0x00
            u32 color : 3;      // 0x00
            u32 scale : 4;      // 0x00
            u32 rotate : 5;     // 0x00
            u32 x : 4;          // 0x00
            u32 y : 5;          // 0x00
            u32 padding : 5;    // 0x00
        };
        u32 rawdata;            // 0x00
    } eye;                  // 0x04
    union {
        struct {
            u32 type : 5;       // 0x00
            u32 color : 3;      // 0x00
            u32 scale : 4;      // 0x00
            u32 rotate : 5;     // 0x00
            u32 x : 4;          // 0x00
            u32 y : 5;          // 0x00
            u32 padding : 6;    // 0x00
        };
        u32 rawdata;            // 0x00
    } eyebrow;              // 0x08
    union {
        struct {
            u16 type : 4;       // 0x00
            u16 scale : 4;      // 0x00
            u16 y : 5;          // 0x00
            u16 padding : 3;    // 0x00
        };
        u16 rawdata;            // 0x00
    } nose;                 // 0x0C
    union {
        struct {
            u16 type : 5;       // 0x00
            u16 color : 2;      // 0x00
            u16 scale : 4;      // 0x00
            u16 y : 5;          // 0x00
        };
        u16 rawdata;            // 0x00
    } mouth;                // 0x0E
    union {
        struct {
            u16 mustache : 2;   // 0x00
            u16 type : 2;       // 0x00
            u16 color : 3;      // 0x00
            u16 scale : 4;      // 0x00
            u16 y : 5;          // 0x00
        };
        u16 rawdata;            // 0x00
    } beard;                // 0x10
    union {
        struct {
            u16 type : 4;       // 0x00
            u16 color : 3;      // 0x00
            u16 scale : 4;      // 0x00
            u16 y : 5;          // 0x00
        };
        u16 rawdata;            // 0x00
    } glass;                // 0x12
    union {
        struct {
            u16 type : 1;       // 0x00
            u16 scale : 4;      // 0x00
            u16 x : 5;          // 0x00
            u16 y : 5;          // 0x00
            u16 padding : 1;    // 0x00
        };
        u16 rawdata;            // 0x00
    } mole;                 // 0x14
    struct {
        u8 height;              // 0x00
        u8 build;               // 0x01
    } body;                 // 0x16
    struct {
        u16 name[RFL_NAME_LENGTH+1];    // 0x00
        u16 creator[RFL_NAME_LENGTH+1]; // 0x16
        u16 sex : 1;                    // 0x2C
        u16 birth_month : 4;            // 0x2C
        u16 birth_day : 5;              // 0x2C
        u16 favoriteColor : 4;          // 0x2C
        u16 favorite : 1;               // 0x2C
        u16 localonly : 1;              // 0x2C
    } personal;             // 0x18
    RFLCreateID createID;   // 0x46
} RFLiCharInfo;

typedef struct {
    u16 padding0 : 1;                   // 0x00
    u16 sex : 1;                        // 0x00

    u16 birth_month : 4;                // 0x00
    u16 birth_day : 5;                  // 0x00

    u16 favoriteColor : 4;              // 0x00
    u16 favorite : 1;                   // 0x00

    u16 name[RFL_NAME_LENGTH];          // 0x02

    u8  height;                         // 0x16
    u8  build;                          // 0x17

    u8  createID[RFL_CREATE_ID_LENGTH]; // 0x18

    u16 faceType : 3;                   // 0x20
    u16 faceColor : 3;                  // 0x20
    u16 faceTex : 4;                    // 0x20
    u16 padding2 : 3;                   // 0x20

    u16 localonly : 1;                  // 0x20
    u16 type : 2;                       // 0x20

    u16 hairType : 7;                   // 0x22
    u16 hairColor : 3;                  // 0x22
    u16 hairFlip : 1;                   // 0x22
    u16 padding3 : 5;                   // 0x22

    u16 eyebrowType : 5;                // 0x24
    u16 eyebrowRotate : 5;              // 0x24
    u16 padding4 : 6;                   // 0x24

    u16 eyebrowColor : 3;               // 0x26
    u16 eyebrowScale : 4;               // 0x26
    u16 eyebrowY : 5;                   // 0x26
    u16 eyebrowX : 4;                   // 0x26
    u16 eyeType : 6;                    // 0x28
    u16 eyeRotate : 5;                  // 0x28
    u16 eyeY : 5;                       // 0x28
    u16 eyeColor : 3;                   // 0x2A
    u16 eyeScale : 4;                   // 0x2A
    u16 eyeX : 4;                       // 0x2A
    u16 padding5 : 5;                   // 0x2A

    u16 noseType : 4;                   // 0x2C
    u16 noseScale : 4;                  // 0x2C
    u16 noseY : 5;                      // 0x2C
    u16 padding6 : 3;                   // 0x2C

    u16 mouthType : 5;                  // 0x2E
    u16 mouthColor : 2;                 // 0x2E
    u16 mouthScale : 4;                 // 0x2E
    u16 mouthY : 5;                     // 0x2E

    u16 glassType : 4;                  // 0x30
    u16 glassColor : 3;                 // 0x30
    u16 glassScale : 4;                 // 0x30
    u16 glassY : 5;                     // 0x30

    u16 mustacheType : 2;               // 0x32

    u16 beardType : 2;                  // 0x32
    u16 beardColor : 3;                 // 0x32
    u16 beardScale : 4;                 // 0x32
    u16 beardY : 5;                     // 0x32

    u16 moleType : 1;                   // 0x34
    u16 moleScale : 4;                  // 0x34
    u16 moleY : 5;                      // 0x34
    u16 moleX : 5;                      // 0x34
    u16 padding8 : 1;                   // 0x34

    u16 creatorName[RFL_NAME_LENGTH];   // 0x36
} RFLiCharData;

typedef struct {
    RFLiCharData    rawdata;    // 0x00
    u16             crc;        // 0x4A
} RFLiStoreData;

typedef struct {
    u16 padding0 : 1;                   // 0x00
    u16 sex : 1;                        // 0x00

    u16 birth_padding : 9;              // 0x00

    u16 favoriteColor : 4;              // 0x00
    u16 favorite : 1;                   // 0x00

    u16 name[RFL_NAME_LENGTH];          // 0x02

    u8  height;                         // 0x16
    u8  build;                          // 0x17

    u8  createID[RFL_CREATE_ID_LENGTH]; // 0x18

    u16 faceType : 3;                   // 0x20
    u16 faceColor : 3;                  // 0x20
    u16 faceTex : 4;                    // 0x20
    u16 padding2 : 3;                   // 0x20

    u16 localonly : 1;                  // 0x20
    u16 type : 2;                       // 0x20

    u16 hairType : 7;                   // 0x22
    u16 hairColor : 3;                  // 0x22
    u16 hairFlip : 1;                   // 0x22
    u16 padding3 : 5;                   // 0x22

    u16 eyebrowType : 5;                // 0x24
    u16 eyebrowRotate : 5;              // 0x24
    u16 padding4 : 6;                   // 0x24
    u16 eyebrowColor : 3;               // 0x26
    u16 eyebrowScale : 4;               // 0x26
    u16 eyebrowY : 5;                   // 0x26
    u16 eyebrowX : 4;                   // 0x26

    u16 eyeType : 6;                    // 0x28
    u16 eyeRotate : 5;                  // 0x28
    u16 eyeY : 5;                       // 0x28
    u16 eyeColor : 3;                   // 0x2A
    u16 eyeScale : 4;                   // 0x2A
    u16 eyeX : 4;                       // 0x2A
    u16 padding5 : 5;                   // 0x2A

    u16 noseType : 4;                   // 0x2C
    u16 noseScale : 4;                  // 0x2C
    u16 noseY : 5;                      // 0x2C
    u16 padding6 : 3;                   // 0x2C

    u16 mouthType : 5;                  // 0x2E
    u16 mouthColor : 2;                 // 0x2E
    u16 mouthScale : 4;                 // 0x2E
    u16 mouthY : 5;                     // 0x2E

    u16 glassType : 3;                  // 0x30
    u16 glassColor : 3;                 // 0x30
    u16 glassScale : 4;                 // 0x30
    u16 glassY : 5;                     // 0x30
    u16 padding7 : 1;                   // 0x30

    u16 mustacheType : 2;               // 0x32

    u16 beardType : 2;                  // 0x32
    u16 beardColor : 3;                 // 0x32
    u16 beardScale : 4;                 // 0x32
    u16 beardY : 5;                     // 0x32

    u16 moleType : 1;                   // 0x34
    u16 moleScale : 4;                  // 0x34

    u16 moleY : 5;                      // 0x34
    u16 moleX : 5;                      // 0x34
    u16 padding8 : 1;                   // 0x34

    u8  padding9[10];                   // 0x36
} RFLiHiddenCharData;

#ifdef __cplusplus
}
#endif

#endif // RFLi_TYPES_H
