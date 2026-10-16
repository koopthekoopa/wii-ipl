#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#include <internal/ansi_files.h>
#include <internal/console_io.h>
#include <internal/file_struct.h>

console_buff stdin_buff;
console_buff stdout_buff;
console_buff stderr_buff;

FILE __files[4] = {
    {0,
     {must_exist, 1, 1, file_console, file_unoriented, 0},
     {neutral, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stdin_buff,
     sizeof(stdin_buff),
     stdin_buff,
     0,
     0,
     0,
     0,
     0,
     __read_console,
     __write_console,
     __close_console,
     0,
     &__files[1]},
    {1,
     {must_exist, 2, 1, file_console, file_unoriented, 0},
     {neutral, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stdout_buff,
     sizeof(stdout_buff),
     stdout_buff,
     0,
     0,
     0,
     0,
     0,
     __read_console,
     __write_console,
     __close_console,
     0,
     &__files[2]},
    {2,
     {must_exist, 2, 0, file_console, file_unoriented, 0},
     {neutral, 0, 0, 0},
     0,
     0,
     0,
     {0, 0},
     {0, 0},
     0,
     stderr_buff,
     sizeof(stderr_buff),
     stderr_buff,
     0,
     0,
     0,
     0,
     0,
     __read_console,
     __write_console,
     __close_console,
     0,
     &__files[3]},
};

void __close_all() {
    FILE* p = __files;
    FILE* plast;

    while (p) {
        if (p->mode.file_kind != file_closed) {
            fclose(p);
        }

        plast = p;
        p = p->next_file;
        if (plast->is_dyn_alloc) {
            free(plast);
        } else {
            plast->mode.file_kind = file_unavailable;
            if (p != NULL && p->is_dyn_alloc) {
                plast->next_file = NULL;
            }
        }
    }
}

int __flush_all() {
    int retval = 0;
    FILE* stream = __files;

    while (stream) {
        if (stream->mode.file_kind != file_closed) {
            if (fflush(stream)) {
                retval = -1;
            }
        }
        stream = stream->next_file;
    }

    return retval;
}
