#ifndef PRFILE2_VFMOD_PF_SYSTEM_H
#define PRFILE2_VFMOD_PF_SYSTEM_H

#include <private/vf/PrFILE2/pf_types.h>

typedef struct PF_SYS_DATE {
    pf_u16 sys_year;   // 0x00
    pf_u16 sys_month;  // 0x02
    pf_u16 sys_day;    // 0x04
} PF_SYS_DATE;

typedef struct PF_SYS_TIME {
    pf_u16 sys_hour;  // 0x00
    pf_u16 sys_min;   // 0x02
    pf_u16 sys_sec;   // 0x04
    pf_u16 sys_ms;    // 0x06
} PF_SYS_TIME;

typedef struct PF_SYSTEM_SET {
    pf_u32 flock_count;  // 0x00
} PF_SYSTEM_SET;

extern PF_SYSTEM_SET VFipf_sys_set;

void VFiPFSYS_initializeSYS();
pf_s32 VFiPFSYS_GetCurrentContextID(pf_s32* context_id);
void VFiPFSYS_TimeStamp(PF_SYS_DATE* sdate, PF_SYS_TIME* stime);

#endif  // PRFILE2_VFMOD_PF_SYSTEM_H
