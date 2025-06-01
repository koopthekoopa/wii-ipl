#ifndef MSL_STDIO_H
#define MSL_STDIO_H

#include <stddef.h>
#include <stdarg.h>

#include <internal/file_struct.h>

#ifdef __cplusplus
extern "C" {
#endif

int     setvbuf(FILE* stream, char* buffer, int mode, size_t size);

int     fclose(FILE* stream);
int     fflush(FILE* stream);
long    ftell(FILE* stream);

int     sscanf(const char* s, const char* format, ...);

int     printf(const char* format, ...);
int     fprintf(FILE* stream, const char* format, ...);
int     vprintf(const char* format, va_list arg);

int     sprintf(char* s, const char* format, ...);
int     snprintf(char* s, size_t n, const char* format, ...);

int     vsprintf(char* s, const char* format, va_list arg);
int     vsnprintf(char* s, size_t n, const char* format, va_list arg);

#define stdout  (&__files[1])

#ifdef __cplusplus
}
#endif

#endif // MSL_STDIO_H
