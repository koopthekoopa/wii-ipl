#include <internal/file_struct.h>
#include <malloc.h>
#include <stdio.h>

void __prep_buffer(FILE* file) {
    file->buffer_ptr = file->buffer;
    file->buffer_len = file->buffer_size;
    file->buffer_len -= file->pos & file->buffer_alignment;
    file->buffer_pos = file->pos;
}

int __flush_buffer(FILE* pFile, size_t* pFlushed) {
    size_t len;
    int res;

    len = pFile->buffer_ptr - pFile->buffer;

    if (len != 0) {
        pFile->buffer_len = len;

        res = (*pFile->write_proc)(pFile->handle, pFile->buffer, (size_t*)&pFile->buffer_len, pFile->ref);

        if (pFlushed != 0) {
            *pFlushed = pFile->buffer_len;
        }

        if (res != 0) {
            return res;
        }

        pFile->pos += pFile->buffer_len;
    }

    __prep_buffer(pFile);
    return 0;
}

int setvbuf(FILE* stream, char* buffer, int mode, size_t size) {
    unsigned int file_kind = stream->mode.file_kind;

    if (mode == _IONBF) {
        fflush(stream);
    }

    if (stream->state.io_state != neutral || file_kind == file_closed) {
        return -1;
    }

    if (mode != _IONBF && mode != _IOLBF && mode != _IOFBF) {
        return -1;
    }

    if (stream->buffer != NULL && stream->state.free_buffer) {
        free(stream->buffer);
    }

    stream->mode.buffer_mode = mode;
    stream->state.free_buffer = 0;
    stream->buffer = &stream->char_buf;
    stream->buffer_ptr = &stream->char_buf;
    stream->buffer_size = 1;
    stream->buffer_len = 0;
    stream->buffer_alignment = 0;

    if (mode == _IONBF || size < 1) {
        *stream->buffer_ptr = 0;
        return 0;
    }

    if (buffer == NULL) {
        buffer = (char*)malloc(size);
        if (buffer == NULL) {
            return -1;
        }
        stream->state.free_buffer = 1;
    }

    stream->buffer = (unsigned char*)buffer;
    stream->buffer_ptr = (unsigned char*)buffer;
    stream->buffer_size = size;
    stream->buffer_alignment = 0;
    return 0;
}
