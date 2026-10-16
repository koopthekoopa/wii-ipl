#ifndef MSL_SIGNAL_H
#define MSL_SIGNAL_H

#ifdef __cplusplus
extern "C" {
#endif

#define SIGNAL_ACTION_DEFAULT ((__signal_func_ptr)0)
#define SIGNAL_ACTION_IGNORE ((__signal_func_ptr)1)

#define SIGNAL_ABORT 1
#define SIGNAL_UNK2 2
#define SIGNAL_UNK3 3
#define SIGNAL_UNK4 4
#define SIGNAL_UNK5 5
#define SIGNAL_UNK6 6
#define SIGNAL_UNK7 7

typedef void (*__signal_func_ptr)(int);

int raise(int signal);

#ifdef __cplusplus
}
#endif

#endif  // MSL_SIGNAL_H
