#ifndef MSL_INTERNAL_ANSI_FILES_H
#define MSL_INTERNAL_ANSI_FILES_H

typedef unsigned char console_buff[0x100];

extern console_buff stdin_buff;
extern console_buff stdout_buff;
extern console_buff stderr_buff;

void __close_all(void);
int __flush_all(void);

#endif  // MSL_INTERNAL_ANSI_FILES_H
