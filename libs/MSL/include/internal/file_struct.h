#ifndef MSL_INTERNAL_FILE_STRUCT_H
#define MSL_INTERNAL_FILE_STRUCT_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

enum file_kinds {
    file_closed,
    file_disk,
    file_console,
    file_unavailable
};

enum open_modes {
    must_exist,
    create_if_needed,
    create_or_truncate
};

enum file_orientation {
    file_unoriented,
    file_char_oriented,
    file_wide_oriented
};

enum io_states {
    neutral,
    writing,
    reading,
    rereading
};

enum io_modes {
    io_read = 1,
    io_write = 2,
    io_append = 4
};

enum buffer_modes {
    buffer_none,
    buffer_full,
    buffer_line
};

typedef struct __file_modes {
    unsigned int open_mode : 2;         // 0x00:11000000 00000000 00000000 00000000
    unsigned int io_mode : 3;           // 0x00:00111000 00000000 00000000 00000000
    unsigned int buffer_mode : 2;       // 0x00:00000110 00000000 00000000 00000000

    unsigned int file_kind : 3;         // 0x00:00000001 10000000 00000000 00000000
    unsigned int file_orientation : 2;  // 0x00:00000000 01100000 00000000 00000000

    unsigned int binary_io : 1;         // 0x00:00000000 00010000 00000000 00000000
} file_modes;

typedef struct __file_states {
    unsigned long io_state : 3;     // 0x00:11100000 00000000 00000000 00000000
    unsigned long free_buffer : 1;  // 0x00:00010000 00000000 00000000 00000000

    unsigned char eof;    // 0x04
    unsigned char error;  // 0x05
} file_states;

typedef unsigned long file_handle;
typedef int (*__pos_proc)(unsigned long, long*, int, void*);
typedef int (*__io_proc)(unsigned long, unsigned char*, size_t*, void*);
typedef int (*__close_proc)(unsigned long);

typedef struct _FILE {
    file_handle handle;  // 0x00
    file_modes mode;     // 0x04
    file_states state;   // 0x08

    unsigned char is_dyn_alloc; // 0x10

    unsigned char char_buf;     // 0x11
    unsigned char char_buf_of;  // 0x12

    unsigned char unget_buffer[2];    // 0x13
    unsigned short ungetwc_buffer[2]; // 0x16

    unsigned long pos;  // 0x1C

    unsigned char* buffer;           // 0x20
    unsigned long buffer_size;       // 0x24
    unsigned char* buffer_ptr;       // 0x28
    unsigned long buffer_len;        // 0x2C
    unsigned long buffer_alignment;  // 0x30
    unsigned long buffer_len_2;      // 0x34
    unsigned long buffer_pos;        // 0x38

    __pos_proc pos_proc;      // 0x3C
    __io_proc read_proc;      // 0x40
    __io_proc write_proc;     // 0x44
    __close_proc close_proc;  // 0x48

    void* ref;                // 0x4C
    struct _FILE* next_file;  // 0x50
} FILE;

extern FILE __files[];

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_FILE_STRUCT_H
