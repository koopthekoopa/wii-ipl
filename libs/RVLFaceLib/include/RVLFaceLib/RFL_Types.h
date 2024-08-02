#ifndef REVOLUTION_FACE_TYPES_H
#define REVOLUTION_FACE_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_NAME_LENGTH 10
#define RFL_CREATOR_LENGTH 10
#define RFL_CREATEID_LENGTH 8

typedef enum {
	RFLErrcode_Success  = 0,

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

	RFLErrcode_Unknown  = 255
} RFLErrcode;

typedef enum {
 	RFLDataSource_Official = 0,
	RFLDataSource_Hidden,
	RFLDataSource_Controller1,
	RFLDataSource_Controller2,
	RFLDataSource_Controller3,
	RFLDataSource_Controller4,
	RFLDataSource_Default,
	RFLDataSource_Middle,
	RFLDataSource_Max
} RFLDataSource;

typedef struct {
	u8	data[24];	// 0x00
} RFLMiddleDB;

typedef enum {
	RFLExp_Normal = 0,
	RFLExp_Smile,
	RFLExp_Anger,
	RFLExp_Sorrow,
	RFLExp_Surprise,
	RFLExp_Blink,
	RFLExp_OpenMouth,
	RFLExp_Max
} RFLExpression;

typedef struct {
	u8	data[RFL_CREATEID_LENGTH];	// 0x00
} RFLCreateID;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FACE_TYPES_H


