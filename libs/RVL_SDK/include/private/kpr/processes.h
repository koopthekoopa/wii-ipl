#ifndef REVOLUTION_KPR_PROCESSES_H
#define REVOLUTION_KPR_PROCESSES_H

#include <revolution/kpr.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void (*kprProcRomajiFP)(KPRQueue*);
extern void (*kprProcDeadKeysFP)(KPRQueue*);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KPR_PROCESSES_H
