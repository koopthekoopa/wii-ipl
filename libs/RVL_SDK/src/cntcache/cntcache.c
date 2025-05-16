#include <revolution/verdefs.h>

#include <revolution/os.h>

#include <revolution/nand.h>
#include <private/nand.h>

#include <private/es.h>

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

SDKDefineVersion(CNTCACHE, "Apr 20 2010", "14:15:28");

OSMutex _CNTCACHEMutex;

int     _CNTCACHEUnused816997A8;
int     _CNTCACHEUnused816997A4;

BOOL    _CNTCACHEInitialized;

void CNTCACHEClear();
BOOL _CNTCACHEIsTitleRemovable(ESTitleId titleId);

void CNTCACHEInit(int unk0, int unk1) {
    if (_CNTCACHEInitialized == FALSE) {
        BOOL old;

        OSRegisterVersion(GetVersion(CNTCACHE));

        OSInitMutex(&_CNTCACHEMutex);
        ES_InitLib();

        old = OSDisableInterrupts();
        _CNTCACHEInitialized = TRUE;
        OSRestoreInterrupts(old);
    }
    CNTCACHEClear();

    _CNTCACHEUnused816997A4 = unk0;
    _CNTCACHEUnused816997A8 = unk1;
}

void _CNTCACHEDeleteTitle() {
    char* tok = strtok(NULL, " \n");
    while (tok != NULL) {
        ESTitleId titleId;

        errno = 0;
        titleId = strtoull(tok, NULL, 16);
    
        if (errno == 0 && NANDTitleIdHi(titleId) != 0x00000001) {
            BOOL result = _CNTCACHEIsTitleRemovable(titleId);
            if (result == TRUE) {
                ES_DeleteTitle(titleId);
            }
            else if (result == FALSE) {
                ES_DeleteTitleContent(titleId);
            }
        }
        tok = strtok(NULL, " \n");
    }
}

static int GetSavePath(ESTitleId titleId) {
    char    nandPath[64] ALIGN32;

    s32 ret;
    u32 usedBlocks = 1;
    u32 usedINodes = 1;

    snprintf(nandPath, (int)sizeof(nandPath), "/title/%08x/%08x/data", NANDTitleIdHi(titleId), NANDTitleIdLo(titleId));
    ret = NANDSecretGetUsage(nandPath, &usedBlocks, &usedINodes);

    if (ret == NAND_RESULT_NOEXISTS) {
        ret = 2;
    }
    else if (ret >= NAND_RESULT_OK) {
        if (usedINodes == 1 && usedBlocks == 0) {
            ret = 1;
        }
        else {
            ret = 0;
        }
    }
    return ret;
}

static int GetTmdView(ESTitleId titleId, ESTmdView* tmdView) {
    s32 ret;
    u32* tmdSize = NULL;

    ret = ES_GetTmdView(titleId, NULL, tmdSize);
    if (ret != ES_ERR_OK) {
        return ret;
    }
    if (*tmdSize > OSRoundUp32B(sizeof(ESTmdView))) {
        ret = -1024;
        goto out;
    }
    ret = ES_GetTmdView(titleId, tmdView, tmdSize);
out:
    return ret;
}

int _CNTCACHEIsTitleRemovable(ESTitleId titleId) {    
    ESTmdView   tmd ALIGN32;
    s32         ret = -1;

    ret = GetSavePath(titleId);
    if (ret == 1) {
        ret = GetTmdView(titleId, &tmd);
        if (ret != ES_ERR_OK) {
            return ret;
        }

        if (tmd.head.titleVersion >> 8 == 0) {
            ret = 1;
        }
        else {
            ret = 0;
        }
        goto out;
    }

out:
    return ret;
}
