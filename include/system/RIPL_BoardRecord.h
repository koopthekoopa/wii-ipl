#ifndef IPL_SYSTEM_RIPL_BOARDRECORD_H
#define IPL_SYSTEM_RIPL_BOARDRECORD_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct RBRUnkStruct {
    u32 unkpad[0x4A];
    s32 type;
    u32 imgOffset;
    s32 unk;
} RBRUnkStruct;

extern u32 RBRFileType_Txt;
extern u32 RBRFileType_Odh;
extern u32 RBRFileType_Dat;
extern u32 RBRFileType_Log;

extern u8* RBRGetPicture(u32* rbrData, s32* unkData);
extern void RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom);

#ifdef __cplusplus
}
#endif

#endif // IPL_SYSTEM_RIPL_BOARDRECORD_H


