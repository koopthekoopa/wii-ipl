#include <ctype.h>
#include <internal/ansi_files.h>
#include <internal/buffer_io.h>
#include <internal/ctype.h>
#include <malloc.h>
#include <stdio.h>
#include <string.h>

int fclose(FILE* file) {
    int flush_res, close_res;

    if (file == NULL) {
        return -1;
    }

    if (file->mode.file_kind == file_closed) {
        return 0;
    }

    flush_res = fflush(file);
    close_res = (*file->close_proc)(file->handle);
    file->mode.file_kind = file_closed;
    file->handle = 0;

    if (file->state.free_buffer) {
        free(file->buffer);
    }

    return flush_res || close_res ? -1 : 0;
}

int fflush(FILE* file) {
    long pos;

    if (file == NULL) {
        return __flush_all();
    }

    if (file->state.error || file->mode.file_kind == file_closed) {
        return -1;
    }

    if (file->mode.io_mode == io_read) {
        return 0;
    }

    if (file->state.io_state >= rereading) {
        file->state.io_state = reading;
    }

    if (file->state.io_state == reading) {
        file->buffer_len = 0;
    }

    if (file->state.io_state != writing) {
        file->state.io_state = neutral;
        return 0;
    }

    if (file->mode.file_kind != file_disk) {
        pos = 0;
    } else {
        pos = ftell(file);
    }

    if (__flush_buffer(file, 0)) {
        file->state.error = 1;
        file->buffer_len = 0;
        return -1;
    }

    file->state.io_state = neutral;
    file->pos = pos;
    file->buffer_len = 0;
    return 0;
}

int __msl_strnicmp(const char* str1, const char* str2, int n) {
    char c1, c2;
    int i;

    for (i = 0; i < n; i++) {
        c1 = tolower(*str1++);
        c2 = tolower(*str2++);
        if (c1 < c2) {
            return -1;
        }

        if (c1 > c2) {
            return 1;
        }

        if (!c1) {
            return 0;
        }
    }

    return 0;
}

char* __msl_itoa(int value, char* buffer, int radix) {
    int negative = 0;
    int count = 0;
    unsigned int uvalue;
    char tmp;
    int digit;

    if (value < 0) {
        value = -value;
        negative = 1;
    }

    uvalue = value;

    do {
        digit = (int)(uvalue % radix);
        if (digit > 9) {
            buffer[count] = (char)(digit + 'A' - 10);
            count++;
        } else {
            buffer[count] = (char)(digit + '0');
            count++;
        }
        uvalue /= radix;
    } while (uvalue != 0);

    if (negative) {
        buffer[count] = '-';
        count++;
    }
    buffer[count] = '\0';

    {
        int i = 0;
        int j = strlen(buffer) - 1;

        while (i < j) {
            tmp = buffer[i];
            buffer[i] = buffer[j];
            buffer[j] = tmp;
            i++;
            j--;
        }
    }

    return buffer;
}
