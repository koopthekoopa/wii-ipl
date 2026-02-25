#ifndef BTE_BTA_PRM_INT_H
#define BTE_BTA_PRM_INT_H

#include "bt_types.h"
#include "data_types.h"

#include "bta_prm_api.h"
#include "bta_sys.h"

#define BTA_PRM_MAX_PATCH_SIZE	250

#ifdef __cplusplus
	extern "C" {
#endif

enum
{
	BTA_PRM_API_ENABLE_EVT = BTA_SYS_EVT_START(BTA_ID_PRM),
	BTA_PRM_INT_OPEN_EVT,
	BTA_PRM_INT_READ_EVT,
	BTA_PRM_INT_WRITE_EVT,
	BTA_PRM_INT_CLOSE_EVT,
	BTA_PRM_INT_5_EVT,
};

typedef UINT8 tBTA_PRM_STATE;
enum
{
	BTA_PRM_STATE_1	= 1,
	BTA_PRM_STATE_2	= 2,
	BTA_PRM_STATE_3	= 3,
};

typedef UINT16 tBTA_PRM_STATUS;
enum
{
	BTA_PRM_STATUS_0	= 0,
	BTA_PRM_STATUS_1	= 1,
	BTA_PRM_STATUS_4	= 4,
};

typedef struct
{
	BT_HDR			hdr;		// 0x00
	tBTA_PRM_CBACK	*p_cback;	// 0x08
	char			*p_name;	// 0x0c
	UINT8			fs_app_id;	// 0x10
	/* 3 bytes padding */
} tBTA_PRM_API_ENABLE; // size 0x14

typedef struct
{
	BT_HDR	hdr;		// 0x00
	UINT32	file_size;	// 0x08
	int		fd;			// 0x0c
	UINT16	status;		// 0x10
	/* 2 bytes padding */
} tBTA_PRM_OPEN_EVT; // size 0x14

typedef struct
{
	BT_HDR	hdr;		// 0x00
	int		fd;			// 0x08
	UINT16	num_read;	// 0x0c
	UINT16	status;		// 0x0e
} tBTA_PRM_READ_EVT; // size 0x10

/* TODO: did they reuse tBTA_PRM_API_ENABLE for start_evt by duplicating the
 * type or by typedefing it?
 */
typedef struct
{
	BT_HDR			hdr;		// 0x00
	tBTA_PRM_CBACK	*p_cback;	// 0x08
	char			*p_name;	// 0x0c
	UINT8			fs_app_id;	// 0x10
	/* 3 bytes padding */
} tBTA_PRM_START_EVT; // size 0x14

typedef union
{
	BT_HDR				hdr;		// size 0x08
	tBTA_PRM_OPEN_EVT	open_evt;	// size 0x14
	tBTA_PRM_READ_EVT	read_evt;	// size 0x10
	tBTA_PRM_API_ENABLE	start_evt;	// size 0x14
} tBTA_PRM_DATA; // size 0x14

typedef struct
{
	tBTA_PRM_CBACK	*p_cback;							// 0x000
	UINT32			file_length;						// 0x004
	UINT32			read_length;						// 0x008
	int				fd;									// 0x00c
	UINT8			patch_data[BTA_PRM_MAX_PATCH_SIZE];	// 0x010
	tBTA_PRM_STATE	state;								// 0x10a
	UINT8			app_id;								// 0x10b
	BOOLEAN			internal_patch;						// 0x10c
	/* 3 bytes padding */
} tBTA_PRM_CB; // size 0x110

extern tBTA_PRM_CB bta_prm_cb;

BOOLEAN bta_prm_hdl_event(BT_HDR *p_msg);

#ifdef __cplusplus
	}
#endif

#endif // BTE_BTA_PRM_INT_H
