#include <cstdlib>
#include <signal.h>

#pragma force_active on

int exit(int);

int __aborting = 0;
void (*__stdio_exit)() = 0;

void abort() {
    raise(SIGNAL_ABORT);
    __aborting = 1;
    exit(1);
}
