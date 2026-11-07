#include <revolution/kpr.h>

#include <private/kpr/processes.h>

void (*kprProcRomajiFP)(KPRQueue*);
void (*kprProcDeadKeysFP)(KPRQueue*);

void KPRInitRegionUS() {
    kprProcDeadKeysFP = KPRProcessDeadKeys;
}
void KPRInitRegionEU() {
    kprProcDeadKeysFP = KPRProcessDeadKeys;
}
void KPRInitRegionJP() {
    kprProcRomajiFP = KPRProcessRomaji;
}
