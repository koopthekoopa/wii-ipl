#ifndef MSL_INTERNAL_CONSOLE_IO_H
#define MSL_INTERNAL_CONSOLE_IO_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

int __read_console(unsigned long, unsigned char*, size_t*, void*);
int __write_console(unsigned long, unsigned char*, size_t*, void*);
int __close_console(unsigned long);

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_CONSOLE_IO_H
