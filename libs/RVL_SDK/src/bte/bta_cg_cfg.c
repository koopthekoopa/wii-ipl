#include "bta_cg_int.h"

#include "bta_cg_api.h"

extern signed bta_cg_action;

tBTA_CG_CFG const bta_cg_cfg =
{
	&bta_cg_action,
	0x03, 0x00, 0x00, 0x00
};

tBTA_CG_CFG *p_bta_cg_cfg = (tBTA_CG_CFG *)&bta_cg_cfg;
