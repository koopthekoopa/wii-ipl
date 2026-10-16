#ifndef MSL_FLOAT_H
#define MSL_FLOAT_H

#ifdef __cplusplus
extern "C" {
#endif  // ifdef __cplusplus

#define FLT_MANT_DIG 24
#define FLT_DIG 6
#define FLT_MIN_EXP (-125)
#define FLT_MIN_10_EXP (-37)
#define FLT_MAX_EXP 128
#define FLT_MAX_10_EXP 38

#define FLT_MAX 0x1.fffffeP127F
#define FLT_EPSILON 0x1.000000P-23F
#define FLT_MIN 0x1.000000P-126F

#define DBL_MANT_DIG 53
#define DBL_DIG 15
#define DBL_MIN_EXP (-1021)
#define DBL_MIN_10_EXP (-308)
#define DBL_MAX_EXP 1024
#define DBL_MAX_10_EXP 308

#define DBL_MAX 0x1.fffffffffffffP1023
#define DBL_EPSILON 0x1.0000000000000P-52
#define DBL_MIN 0x1.0000000000000P-1022

#define LDBL_MANT_DIG 53
#define LDBL_DIG 15
#define LDBL_MIN_EXP (-1021)
#define LDBL_MIN_10_EXP (-308)
#define LDBL_MAX_EXP 1024
#define LDBL_MAX_10_EXP 308

#define LDBL_MAX 0x1.fffffffffffffP1023L
#define LDBL_EPSILON 0x1.0000000000000P-52L
#define LDBL_MIN 0x1.0000000000000P-1022L

// For printf, strtold
#define TARGET_FLOAT_BITS 64
#define TARGET_FLOAT_MAX_EXP LDBL_MAX_EXP
#define TARGET_FLOAT_MANT_DIG LDBL_MANT_DIG
#define TARGET_FLOAT_IMPLICIT_J_BIT 1
#define TARGET_FLOAT_MANT_BITS (TARGET_FLOAT_MANT_DIG - TARGET_FLOAT_IMPLICIT_J_BIT)
#define TARGET_FLOAT_EXP_BITS (TARGET_FLOAT_BITS - TARGET_FLOAT_MANT_BITS - 1)

#ifdef __cplusplus
};
#endif  // ifdef __cplusplus

#endif
