#ifndef PRFILE2_VFMOD_PF_TYPES_H
#define PRFILE2_VFMOD_PF_TYPES_H

#include <stddef.h>

#define PF_IPL_BUILD

typedef signed char pf_s8;
typedef signed short pf_s16;
typedef signed long pf_s32;
typedef unsigned char pf_u8;
typedef unsigned short pf_u16;
typedef unsigned long pf_u32;

typedef char pf_ch8;
typedef int pf_int32;

typedef volatile pf_u8 pf_vu8;
typedef volatile pf_u16 pf_vu16;
typedef volatile pf_u32 pf_vu32;
typedef volatile pf_s8 pf_vs8;
typedef volatile pf_s16 pf_vs16;
typedef volatile pf_s32 pf_vs32;

typedef pf_u32 /* ? */ pf_bool;

#define PF_TRUE 1
#define PF_FALSE 0

#define PF_NULL 0

// clang-format off
#define PF_SWAP_16(x) ((pf_u16)((((x) >>  8) & 0x00FF    ) |  (((x) << 8) & 0xFF00  )                                                  ))
#define PF_SWAP_32(x) ((pf_u32)((((x) << 24) & 0xFF000000) | ((((x) << 8) & 0xFF0000) | ((((x) >> 24) & 0xFF) | (((x) >> 8) & 0xFF00)))))
// clang-format on

typedef struct PF_VOLUME PF_VOLUME;

enum {
    PF_ERR_0 = 0,
    PF_ERR_1,
    PF_ERR_2,
    PF_ERR_3,
    PF_ERR_4,
    PF_ERR_5,
    PF_ERR_6,
    PF_ERR_7,
    PF_ERR_8,
    PF_ERR_9,
    PF_ERR_10,
    PF_ERR_11,
    PF_ERR_12,
    PF_ERR_13,
    PF_ERR_14,
    PF_ERR_15,
    PF_ERR_16,
    PF_ERR_17,
    PF_ERR_18,
    PF_ERR_19,
    PF_ERR_20,
    PF_ERR_21,
    PF_ERR_22,
    PF_ERR_23,
    PF_ERR_24,
    PF_ERR_25,
    PF_ERR_26,
    PF_ERR_27,
    PF_ERR_28,
    PF_ERR_29,
    PF_ERR_30,
    PF_ERR_31,
    PF_ERR_32,
    PF_ERR_33,
    PF_ERR_34,
    PF_ERR_35,
    PF_ERR_36,
    PF_ERR_37,
    PF_ERR_38,
    PF_ERR_39,
    PF_ERR_40,
    PF_ERR_41,
    PF_ERR_42,
    PF_ERR_43,
    PF_ERR_44,
    PF_ERR_45,
    PF_ERR_46,
    PF_ERR_47,
    PF_ERR_48,
    PF_ERR_49,
    PF_ERR_50,
    PF_ERR_51,
    PF_ERR_52,
    PF_ERR_53,
    PF_ERR_54,
    PF_ERR_55,
    PF_ERR_56,
    PF_ERR_57,
    PF_ERR_58,
    PF_ERR_59,
    PF_ERR_60,
    PF_ERR_61,
    PF_ERR_62,
    PF_ERR_63,
    PF_ERR_64,
    PF_ERR_65,
    PF_ERR_66,
    PF_ERR_67,
    PF_ERR_68,
    PF_ERR_69,
    PF_ERR_70,
    PF_ERR_71,
    PF_ERR_72,
    PF_ERR_73,
    PF_ERR_74,
    PF_ERR_75,
    PF_ERR_76,
    PF_ERR_77,
    PF_ERR_78,
    PF_ERR_79,
    PF_ERR_80,
    PF_ERR_81,
    PF_ERR_82,
    PF_ERR_83,
    PF_ERR_84,
    PF_ERR_85,
    PF_ERR_86,
    PF_ERR_87,
    PF_ERR_88,
    PF_ERR_89,
    PF_ERR_90,
    PF_ERR_91,
    PF_ERR_92,
    PF_ERR_93,
    PF_ERR_94,
    PF_ERR_95,
    PF_ERR_96,
    PF_ERR_97,
    PF_ERR_98,
    PF_ERR_99,
    PF_ERR_100,
    PF_ERR_0x1000 = 0x1000,
    PF_ERR_N1 = -1,
};

#endif  // PRFILE2_VFMOD_PF_TYPES_H
