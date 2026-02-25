#ifndef BTE_GOEP_INT_H
#define BTE_GOEP_INT_H

#include "data_types.h"

#ifdef __cplusplus
	extern "C" {
#endif

typedef struct
{
	UINT8	trace_level; // 0x00
} tGOEP_CB; // size 0x01

extern tGOEP_CB goep_cb;

#ifdef __cplusplus
	}
#endif

#endif // BTE_GOEP_INT_H
