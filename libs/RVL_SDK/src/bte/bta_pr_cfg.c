#include "bta_pr_int.h"

#include "bta_pr_api.h"

extern signed p_pr_bi_action;

tBTA_PR_CFG const bta_pr_cfg =
{
	&p_pr_bi_action,
	0x01, 0x00, 0x00, 0x00
};

tBTA_PR_CFG *p_bta_pr_cfg = (tBTA_PR_CFG *)&bta_pr_cfg;
