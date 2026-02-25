#ifndef BTE_BTU_H
#define BTE_BTU_H

/* Original source:
 * bluedroid <android.googlesource.com/platform/external/bluetooth/bluedroid>
 * stack/include/btu.h
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

#include "bt_types.h"
#include "data_types.h"

#include "gki.h"

#define BTU_HCI_RCV_MBOX				TASK_MBOX_0

#define BTU_MAX_REG_TIMER				2
#define BTU_MAX_REG_EVENT				6

#define BTU_DEFAULT_DATA_SIZE			0x2a0

#ifdef __cplusplus
	extern "C" {
#endif

enum
{
	BTU_TTYPE_BTM_DEV_CTL			= 1,
	BTU_TTYPE_L2CAP_LINK			= 2,
	BTU_TTYPE_L2CAP_CHNL			= 3,
	BTU_TTYPE_L2CAP_HOLD			= 4,
	BTU_TTYPE_SDP					= 5,
	BTU_TTYPE_BTM_ACL				= 9,
	BTU_TTYPE_BTM_RMT_NAME			= 10,
	BTU_TTYPE_RFCOMM_MFC			= 11,
	BTU_TTYPE_RFCOMM_PORT			= 12,
	BTU_TTYPE_BTU_CMD_CMPL			= 60,
	BTU_TTYPE_HID_HOST_REPAGE_TO	= 66,
	BTU_TTYPE_73					= 73,
};

typedef void tBTU_TIMER_CALLBACK(TIMER_LIST_ENT *p_tle);
typedef void tBTU_EVENT_CALLBACK(BT_HDR *p_hdr);

typedef struct
{
	TIMER_LIST_ENT		*p_tle;		// 0x00
	tBTU_TIMER_CALLBACK	*timer_cb;	// 0x04
} tBTU_TIMER_REG; // size 0x08

typedef struct
{
	UINT16				event_range;	// 0x00
	/* 2 bytes padding */
	tBTU_EVENT_CALLBACK	*event_cb;		// 0x04
} tBTU_EVENT_REG; // size 0x08

typedef struct
{
	tBTU_TIMER_REG	timer_reg[BTU_MAX_REG_TIMER];	// 0x00
	tBTU_EVENT_REG	event_reg[BTU_MAX_REG_EVENT];	// 0x10
	TIMER_LIST_Q	timer_queue;					// 0x40
	TIMER_LIST_ENT	cmd_cmpl_timer;					// 0x4c
	BUFFER_Q		cmd_xmit_q;						// 0x64
	BUFFER_Q		cmd_cmpl_q;						// 0x70
	UINT16			hcit_acl_data_size;				// 0x7c
	UINT16			hcit_acl_pkt_size;				// 0x7e
	UINT16			controller_cmd_window;			// 0x80
	BOOLEAN			reset_complete;					// 0x82
	/* 1 byte padding */
} tBTU_CB; // size 0x84

extern tBTU_CB btu_cb;

extern BD_ADDR const BT_BD_ANY;

void btu_hcif_send_cmd(BT_HDR *p_msg);
void btu_start_timer(TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout);
void btu_stop_timer(TIMER_LIST_ENT *p_tle);
void btu_task_msg_handler(void);
void btu_task_init(void);

// ---

void btu_hcif_process_event(BT_HDR *p_msg);
void btu_hcif_send_cmd(BT_HDR *p_buf);
void btu_hcif_send_host_rdy_for_data(void);
/**/
void btu_hcif_cmd_timeout(void);

void btu_init_core(void);
void BTE_Init(void);
UINT16 BTU_AclPktSize(void);

#ifdef __cplusplus
	}
#endif

#endif // BTE_BTU_H
