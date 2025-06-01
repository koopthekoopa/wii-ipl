#include <cstdlib>
#pragma exceptions on

#pragma force_active on

int raise(int);
int exit(int);

int __aborting = 0;
void (*__stdio_exit)() = 0;

void abort() {
    raise(1);
    __aborting = 1;
    exit(1);
}
