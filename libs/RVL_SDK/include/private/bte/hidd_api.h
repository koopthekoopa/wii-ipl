#ifndef BTE_HID_DEVICE_API_H
#define BTE_HID_DEVICE_API_H

#include "bt_types.h"
#include "data_types.h"

#include "hiddefs.h"

#ifdef __cplusplus
	extern "C" {
#endif

typedef UINT8 tHID_CHANNEL;
enum
{
	HID_CHANNEL_INTR,
	HID_CHANNEL_CTRL,
};

typedef struct rep_data
{
	UINT8	rep_type;	// 0x00
	UINT8	rep_id;		// 0x01
} tHID_DEV_REP_DATA; // size 0x02

typedef struct snd_data_params
{
	UINT8	ctrl_ch;	// 0x00
	UINT8	trans_type;	// 0x01
	UINT8	param;		// 0x02
	BT_HDR	*buf;		// 0x04
} tSND_DATA_PARAMS; // size 0x08

typedef struct pwr_md
{
	UINT16	max;		// 0x00
	UINT16	min;		// 0x02
	UINT16	attempt;	// 0x04
	UINT16	timeout;	// 0x06
	UINT8	mode;		// 0x08
} tHID_DEV_PWR_MD; // size 0x0a

typedef struct curr_pm_setting
{
	UINT8	mode;		// 0x00
	UINT16	interval;	// 0x02
} tHID_DEV_CURR_PM_SETTING; // size 0x04

typedef struct
{
	FLOW_SPEC	ctrl_ch;	// 0x00
	FLOW_SPEC	int_ch;		// 0x18
	FLOW_SPEC	hci;		// 0x30
} tQOS_INFO; // size 0x048

typedef union
{
	BD_ADDR				host_bdaddr;	// 0x00
	BT_HDR				*buffer;		// 0x00
	tHID_DEV_REP_DATA	get_rep;		// 0x00
	UINT8				pm_err_code;	// 0x00
	UINT16				pm_interval;	// 0x00
} tHID_DEV_REG_INFO_CBACK_DATA;

typedef void tHID_DEV_REG_INFO_CBACK(UINT8 event, UINT32 data,
                                     tHID_DEV_REG_INFO_CBACK_DATA *pdata);

typedef struct
{
	BD_ADDR					host_addr;	// 0x00
	tQOS_INFO				*qos_info;	// 0x08
	tHID_DEV_REG_INFO_CBACK	*app_cback;	// 0x0C
} tHID_DEV_REG_INFO;	// size 0x010

UINT32 HID_DevSetSDPRecord(tHID_DEV_SDP_INFO *p_sdp_info);
void HID_DevInit(void);
tHID_STATUS HID_DevRegister(tHID_DEV_REG_INFO *p_reg_info);
tHID_STATUS HID_DevDeregister(void);
tHID_STATUS HID_DevConnect(void);
tHID_STATUS HID_DevDisconnect(void);
tHID_STATUS HID_DevHandShake(UINT8 res_code);
tHID_STATUS HID_DevVirtualUnplug(void);
tHID_STATUS HID_DevSendData(tHID_CHANNEL control_ch, UINT8 rep_type,
                            BT_HDR *data_buf);
tHID_STATUS HID_DevSetSecurityLevel(char *serv_name, UINT8 sec_lvl);
tHID_STATUS HID_DevSetPowerMgmtParams(UINT8 conn_substate,
                                      tHID_DEV_PWR_MD pm_params);

#ifdef __cplusplus
	}
#endif

#endif // BTE_HID_DEVICE_API_H
