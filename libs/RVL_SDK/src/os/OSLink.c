#include <private/os.h>
#include <revolution/os.h>

void __OSModuleInit() {
    __OSModuleInfoList.tail = NULL;
    __OSModuleInfoList.head = NULL;
    __OSStringTable = NULL;
}
