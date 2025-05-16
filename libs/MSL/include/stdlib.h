#ifndef MSL_STDLIB_H
#define MSL_STDLIB_H

#ifdef __cplusplus
extern "C" {
#endif

long int                strtol(const char* str, char** endptr, int base);
unsigned long long int  strtoull(const char* str, char** endptr, int base);

int         atoi(const char * str);

#ifdef __cplusplus
}
#endif

#endif // MSL_STDLIB_H
