#ifndef BTE_GAP_INT_H
#define BTE_GAP_INT_H

/* Original source:
 * bluedroid <android.googlesource.com/platform/external/bluetooth/bluedroid>
 * stack/gap/gap_int.h
 *
 * NOTE: This file only appears in bluedroid since commit ead3cde.
 */

/******************************************************************************
 *
 *  Copyright (C) 2009-2013 Broadcom Corporation
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

#include "bt_target.h"
#include "bt_types.h"
#include "data_types.h"

#include "btm_api.h"
#include "btm_int.h"
#include "gap_api.h"
#include "gki.h"
#include "l2c_api.h"

#define GAP_MAX_BLOCKS				2

#define GAP_MIN_INQUIRY_LENGTH		BTM_MIN_INQUIRY_LENGTH
#define GAP_MAX_INQUIRY_LENGTH		BTM_MAX_INQUIRY_LENGTH

#define GAP_PER_INQ_MIN_MIN_PERIOD	BTM_PER_INQ_MIN_MIN_PERIOD
#define GAP_PER_INQ_MAX_MIN_PERIOD	BTM_PER_INQ_MAX_MIN_PERIOD

#define GAP_PER_INQ_MIN_MAX_PERIOD	BTM_PER_INQ_MIN_MAX_PERIOD
#define GAP_PER_INQ_MAX_MAX_PERIOD	BTM_PER_INQ_MAX_MAX_PERIOD

#ifdef __cplusplus
	extern "C" {
#endif

typedef UINT8 tGAP_CCB_STATE;
enum
{
	GAP_CCB_STATE_IDLE			= 0,
	GAP_CCB_STATE_LISTENING		= 1,
	GAP_CCB_STATE_CONN_SETUP	= 2,
	GAP_CCB_STATE_CFG_SETUP		= 3,
	GAP_CCB_STATE_CONNECTED		= 4, // was 5
};

typedef UINT8 tGAP_CCB_FLAGS;
enum
{
	GAP_CCB_FLAGS_THEIR_CFG_DONE	= 1 << 1,
	GAP_CCB_FLAGS_OUR_CFG_DONE		= 1 << 2,
};

typedef struct
{
	void			*p_data;				// 0x00
	tGAP_CALLBACK	*gap_cback;				// 0x04
	tGAP_CALLBACK	*gap_inq_rslt_cback;	// 0x08
	UINT16			event;					// 0x0c
	UINT8			index;					// 0x0e
	BOOLEAN			in_use;					// 0x0f
} tGAP_INFO; // size 0x10

typedef struct
{
	tGAP_CALLBACK			*p_cback;	// 0x00
	tBTM_INQ_INFO			*p_cur_inq;	// 0x04
	tGAP_FINDADDR_RESULTS	results;	// 0x08
	BOOLEAN					in_use;		// 0x52
	/* 1 byte padding */
} tGAP_FINDADDR_CB; // size 0x54

typedef struct
{
	tGAP_CCB_STATE		con_state;			// 0x00
	tGAP_CCB_FLAGS		con_flags;			// 0x01
	UINT8				security_flags;		// 0x02
	/* 1 byte padding */
	UINT16				gap_handle;			// 0x04
	UINT16				connection_id;		// 0x06
	BOOLEAN				rem_addr_specified;	// 0x08
	BD_ADDR				rem_dev_address;	// 0x09
	/* 1 byte padding */
	UINT16				psm;				// 0x10
	UINT16				rem_mtu_size;		// 0x12
	BUFFER_Q			rx_queue;			// 0x14
	tGAP_CONN_CALLBACK	*p_callback;		// 0x20
	tL2CAP_CFG_INFO		cfg;				// 0x24
} tGAP_CCB; // size 0x60

typedef struct
{
	tL2CAP_APPL_INFO	reg_info;						// 0x000
	tGAP_CCB			ccb_pool[GAP_MAX_CONNECTIONS];	// 0x028
} tGAP_CONN; // size 0x328

typedef struct
{
	tGAP_INFO			blk[GAP_MAX_BLOCKS];		// 0x000
	tBTM_CMPL_CB		*btm_cback[GAP_MAX_BLOCKS];	// 0x020
	UINT8				trace_level;				// 0x028
	/* 3 bytes padding */
	tGAP_FINDADDR_CB	findaddr_cb;				// 0x02c
	tBTM_INQ_INFO		*cur_inqptr;				// 0x080
	tGAP_CONN			conn;						// 0x084
} tGAP_CB; // size 0x3ac

extern tGAP_CB gap_cb;

UINT16 gap_convert_btm_status(tBTM_STATUS btm_status);
void gap_btm_cback0(void *p1);
void gap_btm_cback1(void *p1);
void gap_conn_init(void);
tGAP_INFO *gap_allocate_cb(void);
void gap_inq_results_cb(tBTM_INQ_RESULTS *p_results);
void gap_free_cb(tGAP_INFO *p_cb);
UINT16 gap_find_local_addr_by_name(tBTM_BD_NAME const devname, BD_ADDR bd_addr);
void gap_find_addr_inq_cb(tBTM_INQUIRY_CMPL *p);

#ifdef __cplusplus
	}
#endif

#endif // BTE_GAP_INT_H
