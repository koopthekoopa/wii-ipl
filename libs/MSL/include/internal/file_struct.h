#ifndef MSL_INTERNAL_FILE_STRUCT_H
#define MSL_INTERNAL_FILE_STRUCT_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct __file_modes {
    unsigned int open_mode : 2;
    unsigned int io_mode : 3;
    unsigned int buffer_mode : 2;

    unsigned int file_kind : 3;
    unsigned int file_orientation : 2;

    unsigned int binary_io : 1;
} file_modes;

typedef struct __file_states {
	unsigned long   io_state : 3;
	unsigned long   free_buffer : 1;

	unsigned char   eof;
	unsigned char   error;
} file_states;

typedef unsigned long file_handle;
typedef int (*__pos_proc)(unsigned long, long*, int, void*);
typedef int (*__io_proc)(unsigned long, unsigned char*, size_t*, void*);
typedef int (*__close_proc)(unsigned long);

typedef struct _FILE {
    file_handle     handle;
    file_modes      mode;
    file_states     state;

    unsigned char   is_dyn_alloc;

    unsigned char   char_buf;
    unsigned char   char_buf_of;

    unsigned char   unget_buffer[2];
    unsigned short  ungetwc_buffer[2];

    unsigned long   pos;

    unsigned char*  buffer;
    unsigned long   buffer_size;
    unsigned char*  buffer_ptr;
    unsigned long   buffer_len;
    unsigned long   buffer_alignment;
    unsigned long   buffer_len_2;
    unsigned long   buffer_pos;

    __pos_proc      pos_proc;
    __io_proc       read_proc;
    __io_proc       write_proc;
    __close_proc    close_proc;

    void*           ref;
    struct _FILE*   next_file; // 0x4C
} FILE;

extern FILE __files[];

#ifdef __cplusplus
}
#endif

#endif // MSL_INTERNAL_FILE_STRUCT_H
