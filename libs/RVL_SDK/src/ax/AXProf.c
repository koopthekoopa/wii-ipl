#include <revolution/ax.h>

static AXPROFILE*   __AXProfile;

static u32          __AXMaxProfiles;
static u32          __AXCurrentProfile;

static BOOL         __AXProfileInitialized;

AXPROFILE* __AXGetCurrentProfile() {
    if (__AXProfileInitialized) {
        AXPROFILE* profile = &__AXProfile[__AXCurrentProfile];

        __AXCurrentProfile++;
        __AXCurrentProfile %= __AXMaxProfiles; // Prevent overflow

        return profile;
    }

    return NULL;
}
