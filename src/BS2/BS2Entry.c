#include <revolution.h>

#include "BS2/BS2.h"

extern void mainmenu();

// Print "NDEV Boot Program" information. (Including Video type)
static void PrintBootProgramInfo() {
    OSReport("\n--- NDEV BOOT PROGRAM v%X.%02X (SYSTEM MENU: ", BS2_MAJOR_VERSION, BS2_MINOR_VERSION);
    switch (VIGetTvFormat()) {
        case VI_NTSC: {
            OSReport("NTSC");
            break;
        }
        case VI_PAL: {
            OSReport("PAL");
            break;
        }
        case VI_MPAL: {
            OSReport("MPAL");
            break;
        }
    }
    OSReport(") ---\n");
}

void BS2Entry() {
    // Wait for Video.
    VIWaitForRetrace();
    VIWaitForRetrace();

    PrintBootProgramInfo();

    // Jump to the main menu code!
    mainmenu();
}
