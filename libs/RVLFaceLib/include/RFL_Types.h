#ifndef RFL_TYPES_H
#define RFL_TYPES_H

#include <revolution/types.h>

#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_NAME_LENGTH         10
#define RFL_CREATE_ID_LENGTH    8

typedef void (*RFLSimpleCB)();
typedef void (*RFLSimpleCBArg)(u32);

typedef enum {
    RFLErrcode_Success = 0,

    RFLErrcode_NotAvailable,
    RFLErrcode_NANDCommandfail,
    RFLErrcode_Loadfail,
    RFLErrcode_Savefail,
    RFLErrcode_Fatal,
    RFLErrcode_Busy,
    RFLErrcode_Broken,
    RFLErrcode_Exist,
    RFLErrcode_DBFull,
    RFLErrcode_DBNodata,
    RFLErrcode_Controllerfail,
    RFLErrcode_NWC24Fail,
    RFLErrcode_MaxFiles,
    RFLErrcode_MaxBlocks,
    RFLErrcode_WrongParam,
    RFLErrcode_NoFriends,
    RFLErrcode_Isolation,

    RFLErrcode_Unknown = 255,
} RFLErrcode;

typedef enum {
    RFLResolution_64   = 64,
    RFLResolution_128  = 128,
    RFLResolution_256  = 256,
    RFLResolution_64M  = 64 | 32,
    RFLResolution_128M = 128 | 64 | 32,
    RFLResolution_256M = 256 | 128 | 64 | 32,
} RFLResolution;

typedef enum {
    RFLDataSource_Official = 0,
    RFLDataSource_Hidden,
    RFLDataSource_Controller1,
    RFLDataSource_Controller2,
    RFLDataSource_Controller3,
    RFLDataSource_Controller4,
    RFLDataSource_Default,
    RFLDataSource_Middle,

    RFLDataSource_Max,
} RFLDataSource;

typedef enum {
    RFLExp_Normal = 0,
    RFLExp_Smile,
    RFLExp_Anger,
    RFLExp_Sorrow,
    RFLExp_Surprise,
    RFLExp_Blink,
    RFLExp_OpenMouth,
    RFLExp_Max,
} RFLExpression;

typedef enum {
    RFLFavoriteColor_Red = 0,
    RFLFavoriteColor_Orange,
    RFLFavoriteColor_Yellow,
    RFLFavoriteColor_YellowGreen,
    RFLFavoriteColor_Green,
    RFLFavoriteColor_Blue,
    RFLFavoriteColor_SkyBlue,
    RFLFavoriteColor_Pink,
    RFLFavoriteColor_Purple,
    RFLFavoriteColor_Brown,
    RFLFavoriteColor_White,
    RFLFavoriteColor_Black,

    RFLFavoriteColor_Max,
} RFLFavoriteColor;

typedef enum {
    RFLSex_Male = 0,
    RFLSex_Female,

    RFLSex_All,
} RFLSex;

typedef enum {
    RFLAge_Child = 0,
    RFLAge_Adult,
    RFLAge_Elder,

    RFLAge_All,
} RFLAge;

typedef enum {
    RFLRace_Black = 0,
    RFLRace_White = 1,
    RFLRace_Asian = 2,

    RFLRace_All = 3,
} RFLRace;

typedef struct {
    u8  data[RFL_CREATE_ID_LENGTH];
} RFLCreateID;

typedef struct {
    u8  data[74];
} RFLCharData;

typedef struct {
    u8  data[76];
} RFLStoreData;

typedef struct {
    u16         name[RFL_NAME_LENGTH+1];    // 0x00
    u16         creator[RFL_NAME_LENGTH+1]; // 0x16

    RFLCreateID createID;                   // 0x2C

    u32         gender : 1;                 // 0x34

    u32         birth_month : 4;            // 0x34
    u32         birth_day : 5;              // 0x34

    u32         favoriteColor : 4;          // 0x34
    u32         favorite : 1;               // 0x34

    u32         height : 7;                 // 0x34
    u32         build : 7;                  // 0x34

    u32         reserved : 3;               // 0x34

    GXColor     skinColor;                  // 0x38
} RFLAdditionalInfo;

#ifdef __cplusplus
}
#endif

#endif // RFL_TYPES_H
