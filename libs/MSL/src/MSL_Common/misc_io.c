#include <internal/abort_exit.h>
#include <internal/ansi_files.h>

void __stdio_atexit(void) {
    __stdio_exit = __close_all;
}
