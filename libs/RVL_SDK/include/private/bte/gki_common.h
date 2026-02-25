#ifndef BTE_GKI_COMMON_H
#define BTE_GKI_COMMON_H

/* Original source:
 * bluedroid <android.googlesource.com/platform/external/bluetooth/bluedroid>
 * gki/common/gki_common.h
 */

/******************************************************************************
 *
 *  Copyright (C) 1999-2012 Broadcom Corporation
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at:
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 ******************************************************************************/

/* Includes changes by muff1n1634 and for this repository (KoopTheKoopa) */

#include "data_types.h"
#include "gki_target.h"

#include "gki.h"

#define ALIGN_POOL(pl_size)	(((pl_size) + 3) / sizeof(UINT32) * sizeof(UINT32))
#define BUFFER_PADDING_SIZE	(sizeof(BUFFER_HDR_T) + sizeof(UINT32))
#define MAX_USER_BUF_SIZE   (0xffff - BUFFER_PADDING_SIZE)

// are you supposed to read this in little endian?
#define MAGIC_NO			0xddbaddba

#ifdef __cplusplus
	extern "C" {
#endif

enum
{
	GKI_ERROR_BUF_SIZE_ZERO			= 0xfff6,
	GKI_ERROR_BUF_SIZE_TOOBIG		= 0xfff7,
	GKI_ERROR_DELETE_POOL_BAD_QID	= 0xfff8,
	GKI_ERROR_ENQUEUE_BUF_LINKED	= 0xfff9,
	GKI_ERROR_SEND_MSG_BUF_LINKED	= 0xfffa,
	GKI_ERROR_SEND_MSG_BAD_DEST		= 0xfffb,
	GKI_ERROR_FREEBUF_BUF_LINKED	= 0xfffc,
	GKI_ERROR_FREEBUF_BAD_QID		= 0xfffd,
	GKI_ERROR_BUF_CORRUPTED			= 0xffff,
};

enum
{
	TASK_DEAD	= 0,
	TASK_READY	= 1 << 0,
};

typedef UINT8 BUFFER_STATUS;
enum
{
	BUF_STATUS_FREE,
	BUF_STATUS_UNLINKED,
	BUF_STATUS_QUEUED,
};

typedef struct _buffer_hdr
{
	struct _buffer_hdr	*p_next;	// 0x00
	UINT8				q_id;		// 0x04
	UINT8				task_id;	// 0x05
	BUFFER_STATUS		status;		// 0x06
	UINT8				type;		// 0x07
} BUFFER_HDR_T; // size 0x08

typedef struct _free_queue
{
	BUFFER_HDR_T	*p_first;	// 0x00
	BUFFER_HDR_T	*p_last;	// 0x04
	UINT16			size;		// 0x08
	UINT16			total;		// 0x0a
	UINT16			cur_cnt;	// 0x0c
	UINT16			max_cnt;	// 0x0e
} FREE_QUEUE_T; // size 0x10

typedef struct
{
	UINT8			bufpool0[(ALIGN_POOL(GKI_BUF0_SIZE) + BUFFER_PADDING_SIZE) * GKI_BUF0_MAX];	// 0x00000
	UINT8			bufpool1[(ALIGN_POOL(GKI_BUF1_SIZE) + BUFFER_PADDING_SIZE) * GKI_BUF1_MAX];	// 0x00e40
	UINT8			bufpool2[(ALIGN_POOL(GKI_BUF2_SIZE) + BUFFER_PADDING_SIZE) * GKI_BUF2_MAX];	// 0x01c78
	UINT8			bufpool3[(ALIGN_POOL(GKI_BUF3_SIZE) + BUFFER_PADDING_SIZE) * GKI_BUF3_MAX];	// 0x09298
	UINT8			bufpool4[(ALIGN_POOL(GKI_BUF4_SIZE) + BUFFER_PADDING_SIZE) * GKI_BUF4_MAX];	// 0x166f0
	UINT8			*OSStack[GKI_MAX_TASKS];													// 0x2875c
	UINT16			OSStackSize[GKI_MAX_TASKS];													// 0x2877c
	INT8			*OSTName[GKI_MAX_TASKS];													// 0x2878c
	UINT8			OSRdyTbl[GKI_MAX_TASKS];													// 0x287ac
	UINT16			OSWaitEvt[GKI_MAX_TASKS];													// 0x287b4
	UINT16			OSWaitForEvt[GKI_MAX_TASKS];												// 0x287c4
	UINT32			OSTicks;																	// 0x287d4
	UINT32			OSIdleCnt;																	// 0x287d8
	INT16			OSDisableNesting;															// 0x287dc
	INT16			OSLockNesting;																// 0x287de
	INT16			OSIntNesting;																// 0x287e0
	/* 2 bytes padding */
	INT32			OSTicksTilExp;																// 0x287e4
	INT32			OSNumOrigTicks;																// 0x287e8
	INT32			OSWaitTmr[GKI_MAX_TASKS];													// 0x287ec
	INT32			OSTaskTmr0[GKI_MAX_TASKS];													// 0x2880c
	INT32			OSTaskTmr0R[GKI_MAX_TASKS];													// 0x2882c
	INT32			OSTaskTmr1[GKI_MAX_TASKS];													// 0x2884c
	INT32			OSTaskTmr1R[GKI_MAX_TASKS];													// 0x2886c
	BUFFER_HDR_T	*OSTaskQFirst[GKI_MAX_TASKS][NUM_TASK_MBOX];								// 0x2888c
	BUFFER_HDR_T	*OSTaskQLast[GKI_MAX_TASKS][NUM_TASK_MBOX];									// 0x2890c
	FREE_QUEUE_T	freeq[GKI_NUM_TOTAL_BUF_POOLS];												// 0x2898c
	UINT8			*pool_start[GKI_NUM_TOTAL_BUF_POOLS];										// 0x28a1c
	UINT8			*pool_end[GKI_NUM_TOTAL_BUF_POOLS];											// 0x28a40
	UINT16			pool_size[GKI_NUM_TOTAL_BUF_POOLS];											// 0x28a64
	/* 2 bytes padding */
	void			*p_user_mempool;															// 0x28a78
	UINT16			pool_access_mask;															// 0x28a7c
	UINT8			pool_list[GKI_NUM_TOTAL_BUF_POOLS];											// 0x28a7e
	UINT8			curr_total_no_of_pools;														// 0x28a87
	BOOLEAN			timer_nesting;																// 0x28a88
	/* 3 bytes padding */
} tGKI_COM_CB; // size 0x28a8c

#ifdef __cplusplus
	}
#endif

#endif // BTE_GKI_COMMON_H
