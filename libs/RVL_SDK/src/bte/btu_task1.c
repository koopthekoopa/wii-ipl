#include "btu.h"

/* Original source:
 * bluedroid <android.googlesource.com/platform/external/bluetooth/bluedroid>
 * stack/btu/btu_task.c
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

#include <stddef.h>

#include <decomp.h>

#include "bt_types.h"
#include "data_types.h"

#include "bta_sys.h"
#include "bte.h"
#include "btm_int.h"
#include "gki.h"
#include "hidh_int.h"
#include "l2c_int.h"
#include "rfc_int.h"
#include "sdp_int.h"

#include <revolution/types.h>

#define IS_BTE
#include <revolution.h>

#if !defined(NDEBUG)
# define BTU_TASK_TRACE(msg_)		\
	do								\
	{								\
		if (btu_dbg_flag == TRUE)	\
			OSReport(msg_);			\
	} while (FALSE)
#else
# define BTU_TASK_TRACE(msg_)
#endif

tBTU_CB btu_cb;

static char btu_count = 1;
static int execute_btu = 1;

static int _btu_last_timer_tick;
static int _btu_g_count;
#if !defined(NDEBUG)
static BOOL btu_dbg_flag;
#endif

#if !defined(NDEBUG)
void btu_enable_dbg(int enable)
{
	btu_dbg_flag = enable;
}
#endif

void btu_task_init(void)
{
	btu_count = 1;
	execute_btu = 1;
	_btu_g_count = 0;
	_btu_last_timer_tick = 0;

	btu_init_core();
	BTE_InitStack();
	bta_sys_init();
}

void btu_task_msg_handler(void)
{
	TIMER_LIST_ENT *r30;
	BT_HDR *r29;
	unsigned char r28;
	unsigned short r27;
	unsigned char r26;

	OSTime sp10;
	signed (*sp0c)(TIMER_LIST_ENT *);
	unsigned short sp0a;
	unsigned char sp09;
	char sp08;

	sp09 = 0;
	sp08 = 1;
	sp10 = OSGetTime();

	++_btu_g_count;

	GKI_disable();

	if (execute_btu)
	{
		execute_btu = 0;
		sp08 = btu_count;
		btu_count = 1;
	}
	else
	{
		++btu_count;

		GKI_enable();
		return;
	}

	GKI_enable();

	r27 = 0x05;

	if ((unsigned)_btu_g_count > (unsigned)_btu_last_timer_tick + 500)
	{
		r27 |= 0x30;
		_btu_last_timer_tick = _btu_g_count;
	}

	while (sp09 == 0)
	{
		sp09 = 1;

		if (r27 & (1 << 0))
		{
			while ((r29 = GKI_read_mbox(0)))
			{
				sp09 = 0;

				BTU_TASK_TRACE("BTU Task got msg in MBOX0\n");

				switch (r29->event & 0xff00)
				{
				case 0x1100:
					l2c_rcv_acl_data(r29);
					break;

				case 0x1900:
					l2c_link_segments_xmitted(r29);
					break;

				case 0x1200:
					btm_route_sco_data(r29);
					break;

				case 0x1000:
					btu_hcif_process_event(r29);
					GKI_freebuf(r29);
					break;

				case 0x1600:
					btu_hcif_send_cmd(r29);
					break;

				default:
					r28 = 0;
					sp0a = r29->event & 0xff00;
					r26 = 0;

					for (; r26 == 0 && r28 < BTU_MAX_REG_EVENT; ++r28)
					{
						if (!btu_cb.event_reg[r28].event_cb)
							continue;

						if (sp0a != btu_cb.event_reg[r28].event_range)
							continue;

						if (btu_cb.event_reg[r28].event_cb)
						{
							(*btu_cb.event_reg[r28].event_cb)(r29);
							r26 = 1;
						}
					}

					if (r26 == 0)
						GKI_freebuf(r29);
				}
			}
		}

		if (r27 & (1 << 4))
		{
			GKI_update_timer_list(&btu_cb.timer_queue, 1);
			r27 &= ~(1 << 4);

			while (btu_cb.timer_queue.p_first
			       && btu_cb.timer_queue.p_first->ticks == 0)
			{
				sp09 = 0;

				r30 = btu_cb.timer_queue.p_first;
				GKI_remove_from_timer_list(&btu_cb.timer_queue, r30);

				switch (r30->event)
				{
				case 1:
					btm_dev_timeout(r30);
					break;

				case 9:
					btm_acl_timeout(r30);
					break;

				case 2:
				case 3:
				case 4:
					l2c_process_timeout(r30);
					break;

				case 5:
					sdp_conn_timeout((tCONN_CB *)r30->param);
					break;

				case 10:
					btm_inq_rmt_name_failed();
					break;

				case 8:
					btm_discovery_timeout();
					break;

				case 11:
				case 12:
					rfcomm_process_timeout(r30);
					break;

				case 60:
					btu_hcif_cmd_timeout();
					break;

				case 66:
					hidh_proc_repage_timeout(r30);
					break;

				case 22:
					sp0c = (signed (*)(TIMER_LIST_ENT *p_tle))r30->param;

					(*sp0c)(r30);
					break;

				default:
					r28 = 0;
					r26 = 0;

					for (; r26 == 0 && r28 < BTU_MAX_REG_TIMER; ++r28)
					{
						if (!btu_cb.timer_reg[r28].timer_cb)
							continue;

						if (btu_cb.timer_reg[r28].p_tle != r30)
							continue;

						(*btu_cb.timer_reg[r28].timer_cb)(r30);
						r26 = 1;
					}
				}
			}
		}

		if (r27 & (1 << 2))
		{
			while ((r29 = GKI_read_mbox(2)))
			{
				BTU_TASK_TRACE("BTU Task got msg in MBOX2\n");

				sp09 = 0;

				bta_sys_event(r29);
			}
		}

		if (r27 & (1 << 5))
		{
			r27 &= ~(1 << 5);
			bta_sys_timer_update();
		}

		if (r27 & (1 << 15))
			break;
	}

	execute_btu = 1;
}

void btu_start_timer(TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout)
{
	GKI_remove_from_timer_list(&btu_cb.timer_queue, p_tle);

	p_tle->event = type;
	p_tle->ticks = timeout;

	GKI_add_to_timer_list(&btu_cb.timer_queue, p_tle);
}

void btu_stop_timer(TIMER_LIST_ENT *p_tle)
{
	GKI_remove_from_timer_list(&btu_cb.timer_queue, p_tle);
}

void btu_register_timer(TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout,
                        tBTU_TIMER_CALLBACK *timer_cb)
{
	INT8 i = 0;
	INT8 first = -1;

	for (; i < BTU_MAX_REG_TIMER; ++i)
	{
		if (!btu_cb.timer_reg[i].p_tle && first < 0)
			first = i;

		if (btu_cb.timer_reg[i].p_tle == p_tle)
		{
			btu_cb.timer_reg[i].timer_cb = timer_cb;
			btu_start_timer(p_tle, type, timeout);

			first = -1;
			break;
		}
	}

	if (first >= 0 && first < BTU_MAX_REG_TIMER)
	{
		btu_cb.timer_reg[first].timer_cb = timer_cb;
		btu_cb.timer_reg[first].p_tle = p_tle;
		btu_start_timer(p_tle, type, timeout);
	}
}

void btu_deregister_timer(TIMER_LIST_ENT *p_tle)
{
	UINT8 i = 0;

	for (; i < BTU_MAX_REG_TIMER; ++i)
	{
		if (btu_cb.timer_reg[i].p_tle == p_tle)
		{
			btu_stop_timer(p_tle);
			btu_cb.timer_reg[i].timer_cb = NULL;
			btu_cb.timer_reg[i].p_tle = NULL;

			break;
		}
	}
}

void btu_register_event_range(UINT16 start, tBTU_EVENT_CALLBACK *event_cb)
{
	INT8 i = 0;
	INT8 first = -1;

	for (; i < BTU_MAX_REG_EVENT; ++i)
	{
		if (!btu_cb.event_reg[i].event_cb && first < 0)
			first = i;

		if (btu_cb.event_reg[i].event_range == start)
		{
			btu_cb.event_reg[i].event_cb = event_cb;

			if (!event_cb)
				btu_cb.event_reg[i].event_range = 0;

			first = -1;
		}
	}

	if (event_cb && first >= 0 && first < BTU_MAX_REG_EVENT)
	{
		btu_cb.event_reg[first].event_range = start;
		btu_cb.event_reg[first].event_cb = event_cb;

		if (!event_cb)
		{
			// NOTE: never reached, as event_cb must be both non-null and null
			btu_cb.event_reg[first].event_range = 0;
		}
	}
}

void btu_deregister_event_range(UINT16 range)
{
	btu_register_event_range(range, NULL);
}
