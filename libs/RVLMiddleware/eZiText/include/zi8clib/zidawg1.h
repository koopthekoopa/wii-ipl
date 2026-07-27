#ifndef ZI8_CLIB_DAWG1_H
#define ZI8_CLIB_DAWG1_H

#include <zi8clib/zitypes.h>

typedef struct {
    ziU8 siblingOffHi;  // 0x0
    ziU8 siblingOffLo;  // 0x1
    ziU8 chHi;          // 0x2
    ziU8 chLo;          // 0x3
    union {
        struct {
            ziU8 baseCountHi;  // 0x4
            ziU8 baseCountLo;  // 0x5
        };
        struct {
            ziU8 ptrAHi;   // 0x4
            ziU8 ptrAMid;  // 0x5
            ziU8 ptrALo;   // 0x6
            ziU8 ptrBHi;   // 0x7
            ziU8 ptrBMid;  // 0x8
            ziU8 ptrBLo;   // 0x9
        };
    };
} ziDAWGGraphInfo;
#define GET_DAWG_GRAPH_INFO_SIBLING_OFF(NODE) (((ziU16)NODE->siblingOffHi << 8) + NODE->siblingOffLo)
#define GET_DAWG_GRAPH_INFO_CHAR(NODE) (((ziU16)NODE->chHi << 8) + NODE->chLo)
#define GET_DAWG_GRAPH_INFO_BASE_COUNT(NODE) (((ziU16)NODE->baseCountHi << 8) + NODE->baseCountLo)

ziU8* ZiDAWGGetChild(ziU8* node);
ziU8* ZiDAWGGetSibling(ziU8* node);
ziBool ZiDAWGgetEOWattribute(ziU8* node);
ziU32 ZiDAWGgetCHARattribute(ziDAWGCtx* ctx, ziU8* node ZI_NEED_WORK);
ziU8* ZiDAWGGetGraph(ziDAWGCtx* ctx);
ziU8* ZiDAWGGetGraphInfo(ziDAWGCtx* ctx, ziDAWGGraphInfo* infoData, ziU16* keys);

#endif  // ZI8_CLIB_DAWG1_H
