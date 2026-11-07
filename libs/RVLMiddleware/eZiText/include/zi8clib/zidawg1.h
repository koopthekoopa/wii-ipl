#ifndef ZI8_CLIB_DAWG1_H
#define ZI8_CLIB_DAWG1_H

#include <zi8clib/zitypes.h>

// DAWGInfo<0xA> {
//     ziU16   childCount:   [0x0, 0x1] ADD ,
//     ziWChar char:         [0x2, 0x3] ADD ,
//     ziWChar hdrNodecount: [0x4, 0x5] ADD ,
//     ziU32   graphNodeOff: [0x4, 0x5, 0x6] ADD ,
//     ziU32   graphEndOff:  [0x7, 0x8, 0x9] ADD ,
// }
#define ZI8_DAWGINFO_ENTRY_SIZE 0xA
#define ZI8_DAWGINFO_BYTE(TAB, BYTE_I) ((TAB)[BYTE_I])
#define ZI8_DAWGINFO_CHILD_COUNT(TAB) (((ziU16)ZI8_DAWGINFO_BYTE(TAB, 0) << 8) + (ZI8_DAWGINFO_BYTE(TAB, 1)))
#define ZI8_DAWGINFO_CHAR(TAB) (((ziWChar)ZI8_DAWGINFO_BYTE(TAB, 2) << 8) + (ZI8_DAWGINFO_BYTE(TAB, 3)))
#define ZI8_DAWGINFO_HDR_NODECOUNT(TAB) (((ziWChar)ZI8_DAWGINFO_BYTE(TAB, 4) << 8) + (ZI8_DAWGINFO_BYTE(TAB, 5)))
// These two are slightly modified from what I could generate, there's a chance that all of these were handwritten???
#define ZI8_DAWGINFO_GRAPH_NODE_OFF(TAB)                                                                                                             \
    ((ziU32)ZI8_DAWGINFO_BYTE(TAB, 4) << 16) + (((ziU16)ZI8_DAWGINFO_BYTE(TAB, 5) << 8) + (ZI8_DAWGINFO_BYTE(TAB, 6)))
#define ZI8_DAWGINFO_GRAPH_END_OFF(TAB)                                                                                                              \
    ((ziU32)ZI8_DAWGINFO_BYTE(TAB, 7) << 16) + (((ziU16)ZI8_DAWGINFO_BYTE(TAB, 8) << 8) + (ZI8_DAWGINFO_BYTE(TAB, 9)))

// DAWGHdr<0x4> {
//     ziU8    unusedA:      [0x0]  ,
//     ziU8    unusedB:      [0x1]  ,
//     ziU16   charsSize:    [0x2, 0x3] ADD ,
// }
#define ZI8_DAWGHDR_ENTRY_SIZE 0x4
#define ZI8_DAWGHDR_BYTE(TAB, BYTE_I) ((TAB)[BYTE_I])
#define ZI8_DAWGHDR_UNUSED_A(TAB) (ZI8_DAWGHDR_BYTE(TAB, 0))
#define ZI8_DAWGHDR_UNUSED_B(TAB) (ZI8_DAWGHDR_BYTE(TAB, 1))
#define ZI8_DAWGHDR_CHARS_SIZE(TAB) (((ziU16)ZI8_DAWGHDR_BYTE(TAB, 2) << 8) + (ZI8_DAWGHDR_BYTE(TAB, 3)))

ziU8* ZiDAWGGetChild(ziU8* node);
ziU8* ZiDAWGGetSibling(ziU8* node);
ziBool ZiDAWGgetEOWattribute(ziU8* node);
ziU32 ZiDAWGgetCHARattribute(ziDAWGCtx* ctx, ziU8* node ZI_NEED_WORK);
ziU8* ZiDAWGGetGraph(ziDAWGCtx* ctx);
ziU8* ZiDAWGGetGraphInfo(ziDAWGCtx* ctx, ziU8* infoData, ziU16* keys);

#endif  // ZI8_CLIB_DAWG1_H
