#include <revolution/os.h>
#include <private/os.h>

void __OSModuleInit() {
    __OSModuleInfoList.tail = NULL;
    __OSModuleInfoList.head = NULL;
    __OSStringTable = NULL;
}
