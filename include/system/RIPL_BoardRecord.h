#ifndef IPL_MESSAGE_BOARD_H
#define IPL_MESSAGE_BOARD_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u32 unk[0x4A];
    s32 type;
    u32 dataOffset;
    s32 dataSize;
} RBRSomeData;

extern const char*  RBRFileType_Txt;
extern const char*  RBRFileType_Odh;
extern const char*  RBRFileType_Dat;
extern const char*  RBRFileType_Log;

extern u8*          RBRGetPicture(u32* rbrData, s32* dataSize);
extern void         RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom);

#ifdef __cplusplus
}
#endif

#endif // IPL_MESSAGE_BOARD_H


