#include "BS2/BS2Update.h"
#include "BS2/BS2.h"

#include <revolution.h>

static BS2UpdateEntry Entries[BS2_ENTRY_COUNT]         ADDRESS(BS2_UPDATE_ADDRESS);
static BS2UpdateEntry EntriesToImport[BS2_ENTRY_COUNT] ADDRESS(BS2_UPDATE_IMPORT_ADDRESS);


