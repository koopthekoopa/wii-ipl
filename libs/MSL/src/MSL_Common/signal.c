#include <signal.h>

int exit(int);

__signal_func_ptr signal_funcs[8];

int raise(int sig) {
    __signal_func_ptr signal_func;

    if (sig < SIGNAL_ABORT || sig > SIGNAL_UNK7) {
        return -1;
    }

    signal_func = signal_funcs[sig - 1];

    if (signal_func != SIGNAL_ACTION_IGNORE) {
        signal_funcs[sig - 1] = SIGNAL_ACTION_DEFAULT;
    }

    if (signal_func == SIGNAL_ACTION_IGNORE || (signal_func == SIGNAL_ACTION_DEFAULT && sig == SIGNAL_ABORT)) {
        return 0;
    }

    if (signal_func == SIGNAL_ACTION_DEFAULT) {
        exit(0);
    }

    (*signal_func)(sig);
    return 0;
}
