#include <revolution/dvd.h>

#include <string.h>

BOOL DVDCompareDiskID(const DVDDiskID* id1, const DVDDiskID* id2) {
    if (id1->gameName[0] != 0 && id2->gameName[0] != 0
    && strncmp(id1->gameName, id2->gameName, 4) != 0) {
        return FALSE;
    }

    if (id1->company[0] == 0 || id2->company[0] == 0
    || strncmp(id1->company, id2->company, 2) != 0) {
        return FALSE;
    }

    if (id1->diskNumber != 0xFF && id2->diskNumber != 0xFF
    && id1->diskNumber != id2->diskNumber) {
        return FALSE;
    }

    if (id1->gameVersion != 0xFF && id2->gameVersion != 0xFF
    && id1->gameVersion != id2->gameVersion) {
        return FALSE;
    }

    return TRUE;
}
