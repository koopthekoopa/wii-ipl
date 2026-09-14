#include <errno.h>
#include <internal/buffer_io.h>
#include <stdio.h>

long _ftell(FILE* file) {
    int buf = 0;
    int pos;

    unsigned char file_kind = file->mode.file_kind;
    if (!(file_kind == file_disk || file_kind == file_console) || file->state.error) {
        errno = EFPOS;
        return -1;
    }

    if (file->state.io_state == neutral) {
        return file->pos;
    }

    pos = file->buffer_pos + (file->buffer_ptr - file->buffer);

    if (file->state.io_state >= rereading) {
        buf = file->state.io_state - reading;
        pos -= buf;
    }

    if (!file->mode.binary_io) {
        int n = file->buffer_ptr - file->buffer - buf;
        unsigned char* p = file->buffer;

        while (n-- != 0) {
            if (*p++ == '\n') {
                pos++;
            }
        }
    }

    return pos;
}

long ftell(FILE* stream) {
    return _ftell(stream);
}

int _fseek(FILE* file, long offset, int whence) {
    if (file->mode.file_kind != file_disk || file->state.error != 0) {
        errno = EFPOS;
        return -1;
    }

    if (file->state.io_state == writing) {
        if (__flush_buffer(file, 0) != 0) {
            file->state.error = 1;
            file->buffer_len = 0;
            errno = EFPOS;
            return -1;
        }
    }

    if (whence == 1) {
        whence = 0;
        offset += _ftell(file);
    }

    if ((whence != 2) && file->mode.io_mode != (io_read | io_write) && (file->state.io_state == reading || file->state.io_state == rereading)) {
        if ((offset >= file->pos) || offset < file->buffer_pos) {
            file->state.io_state = neutral;
        } else {
            file->buffer_ptr = file->buffer + (offset - file->buffer_pos);
            file->buffer_len = file->pos - offset;
            file->state.io_state = reading;
        }
    } else {
        file->state.io_state = neutral;
    }

    if (file->state.io_state == neutral) {
        if (file->pos_proc != 0 && (*file->pos_proc)(file->handle, &offset, whence, file->ref)) {
            file->state.error = 1;
            file->buffer_len = 0;
            errno = EFPOS;
            return -1;
        }

        file->state.eof = 0;
        file->pos = offset;
        file->buffer_len = 0;
    }

    return 0;
}
