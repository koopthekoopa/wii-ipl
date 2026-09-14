#ifndef MSL_INTERNAL_BUFFER_IO_H
#define MSL_INTERNAL_BUFFER_IO_H

#include <internal/file_struct.h>
#include <stddef.h>

void __prep_buffer(FILE* file);
int __flush_buffer(FILE* pFile, size_t* pos);

#endif  // MSL_INTERNAL_BUFFER_IO_H
