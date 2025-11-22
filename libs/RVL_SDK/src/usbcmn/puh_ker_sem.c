#include <private/usbcmn/puh_ker_sem.h>

#include <revolution/os.h>

#define MAX_PUH_SEM 12

static struct {
    struct {
        OSSemaphore*    sem;    // 0x00
        u32             unk_0x04;
        u32             unk_0x08;
    }   entries[MAX_PUH_SEM];   // 0x00
    u32             unk_0x90;
    OSSemaphore*    unk_0x94;
    u8              unk_0x98[0x0C];
} st_uhs_ker_sem_mng;

static OSSemaphore  st_uhf_ker_sem[MAX_PUH_SEM];

static s32          st_uhs_ker_sem_status;

static int uhf_ker_sem_inline_0() {
    if (st_uhs_ker_sem_status != 1 || st_uhs_ker_sem_mng.unk_0x94 == 0) {
        return -1;
    }
    else {
        OSWaitSemaphore(st_uhs_ker_sem_mng.unk_0x94);
        return 0;
    }
}

static void uhf_ker_sem_inline_1() {
    if (st_uhs_ker_sem_status == 1 && st_uhs_ker_sem_mng.unk_0x94 != 0) {
        OSSignalSemaphore(st_uhs_ker_sem_mng.unk_0x94);
    }
}

s32 uhf_ker_create_sem(u32 param_1, int param_2) {
    int i, k;

    if (param_1 != 0 && param_1 != 1) {
        return -5;
    }
    if (param_2 != 0) {
        return -5;
    }

    if (uhf_ker_sem_inline_0() != 0) {
        return -5;
    }

    if (st_uhs_ker_sem_mng.unk_0x90 == 12) {
        uhf_ker_sem_inline_1();
        return -24;
    }

    for (i = 0; i < MAX_PUH_SEM; i++) {
        if (st_uhs_ker_sem_mng.entries[i].sem == 0) {
            OSSemaphore* sem;

            OSInitSemaphore(&st_uhf_ker_sem[i], 1);
            sem = &st_uhf_ker_sem[i];

            for (k = (int)(1 - param_1); k > 0; k--) {
                OSWaitSemaphore((OSSemaphore*)sem);
            }

            st_uhs_ker_sem_mng.entries[i].sem = sem;
            st_uhs_ker_sem_mng.entries[i].unk_0x04 = param_1;
            st_uhs_ker_sem_mng.entries[i].unk_0x08 = param_2;
            st_uhs_ker_sem_mng.unk_0x90++;

            uhf_ker_sem_inline_1();

            return i + 1;
        }
    }

    uhf_ker_sem_inline_1();

    return -24;
}

s32 uhf_ker_delete_sem(int sem) {
    int i;

    if (sem == 0 || sem > MAX_PUH_SEM) {
        return -5;
    }

    if (uhf_ker_sem_inline_0() != 0) {
        return -5;
    }

    if (st_uhs_ker_sem_mng.entries[sem-1].sem == NULL) {
        uhf_ker_sem_inline_1();
        return -5;
    }

    st_uhs_ker_sem_mng.entries[sem-1].sem = NULL;
    st_uhs_ker_sem_mng.entries[sem-1].unk_0x04 = 0;
    st_uhs_ker_sem_mng.entries[sem-1].unk_0x08 = 0;
    st_uhs_ker_sem_mng.unk_0x90--;

    uhf_ker_sem_inline_1();

    return 0;
}

s32 uhf_ker_get_sem(int sem) {
    if (sem == 0 || sem > MAX_PUH_SEM) {
        return -5;
    }

    if (st_uhs_ker_sem_mng.entries[sem-1].sem == NULL) {
        return -5;
    }

    OSWaitSemaphore(st_uhs_ker_sem_mng.entries[sem-1].sem);

    return 0;
}
