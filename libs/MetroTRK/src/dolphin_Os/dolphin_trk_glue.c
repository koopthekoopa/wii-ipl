#include <TRK_Hollywood_Revolution.h>

DBCommTable gDBCommTable = {};

u8 TRK_Use_BBA;

void EnableEXI2Interrupts() { 
    if (TRK_Use_BBA == FALSE && gDBCommTable.init_interrupts_func != NULL) {
        gDBCommTable.init_interrupts_func();
    }
}
