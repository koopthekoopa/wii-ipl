#include <decomp.h>

#include <trk/MetroTRK.h>

static int IsTRKConnected;

DSError GetTRKConnected() {
    return IsTRKConnected;
}
