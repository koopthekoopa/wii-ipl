#include "bta_pbc_int.h"

#include "bta_pbc_api.h"

tBTA_PBC_CFG const bta_pbc_cfg =
{
	0x00, 0x00, 0x00, 0x00,
	"PBAP PCE",
	0x00, 0x00, 0x07, 0xd0
};

tBTA_PBC_CFG *p_bta_pbc_cfg = (tBTA_PBC_CFG *)&bta_pbc_cfg;
