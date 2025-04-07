#include <revolution/os.h>
#include <private/os.h>

#include <revolution/vi.h>
#include <private/vi.h>

#include <revolution/nand.h>

#include <revolution/ai.h>

#include <revolution/esp.h>

#include <string.h>

typedef struct __OSExpireAIFadeStruct {
	s16         aiBuffer[2][288];   // 0x00
	s32         aiIndex;            // 0x480
	s16*        aiSrcIndex;         // 0x484

	u32         frames;             // 0x488

	s16         auxL;               // 0x48C
	s16         auxR;               // 0x48E

	AIDCallback gameAIDCallback;    // 0x490
} __OSExpireAIFadeStruct;

OSAlarm                 __OSExpireAlarm;
OSTime                  __OSExpireTime;
OSThread*               __OSExpireThread;
BOOL                    __OSExpireSetExpiredFlag;

__OSExpireAIFadeStruct* __OSExpireAIFade = NULL;

void    __OSPlayTimeRebootCallback(OSAlarm* alarm, OSContext* context);
void*   __OSPlayTimeRebootThread(void* args);

void __OSPlayTimeRebootCallback(OSAlarm* alarm, OSContext* context) {
    void* arenaHi;
	u32 memSize;
	OSThread* thread;
	void* stack;
        
    for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
        OSSuspendThread(thread);
    }

    memSize = OSRoundUp32B(sizeof(OSThread)) + 0x1000;
    arenaHi = *(void**)OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM2_END);
    arenaHi = (void*)((u32)arenaHi - memSize);

    thread  = (OSThread*)arenaHi;
    arenaHi = (void*)((u32)arenaHi + OSRoundUp32B(sizeof(OSThread)));
    stack   = arenaHi;

    if (!OSCreateThread(thread, __OSPlayTimeRebootThread, NULL, (void*)((u32)stack + 0x1000), 0x1000, 0, 0)) {
        __OSHotResetForError();
    }

    OSResumeThread(thread);
}

void __OSPlayTimeFadeLastAIDCallback() {
    if (__OSExpireAIFade->gameAIDCallback) {
        __OSExpireAIFade->gameAIDCallback();
    }

    // First frame: Get AI buffer
	if (__OSExpireAIFade->frames == 0) {
	    __OSExpireAIFade->aiSrcIndex = (s16*)OSPhysicalToCached(AIGetDMAStartAddr());
	}

    // Second Frame: Setup fade with AI buffer
	if (__OSExpireAIFade->frames == 1) {
        DCInvalidateRange(__OSExpireAIFade->aiSrcIndex, 4);
    	__OSExpireAIFade->auxL = (s16)(*__OSExpireAIFade->aiSrcIndex++);
        __OSExpireAIFade->auxR = (s16)(*__OSExpireAIFade->aiSrcIndex);
	}

    // The rest of the frames: Fading out the audio.
	if (__OSExpireAIFade->frames >= 1) {
		s16* buffer = __OSExpireAIFade->aiBuffer[__OSExpireAIFade->aiIndex];
        s16* dest = buffer;
        u32 bytes = AIGetDMALength();
        f32 delta = 0.995f;

        int i = bytes;
        while (i) {
            *dest++ = __OSExpireAIFade->auxL;
            *dest++ = __OSExpireAIFade->auxR;

            __OSExpireAIFade->auxL  *= delta;
            __OSExpireAIFade->auxR *= delta;

            i -= 4;
        }

        DCFlushRange(buffer, bytes);
        AIInitDMA((u32)buffer, bytes);
        __OSExpireAIFade->aiIndex++;
        __OSExpireAIFade->aiIndex &= 1;
	}

	__OSExpireAIFade->frames++;
}

BOOL __OSWriteExpiredFlag() {
    s32 ret = NAND_RESULT_OK;
    NANDFileInfo nInfo;
    BOOL openNInfo = FALSE;
    u8 titleId[32] ALIGN32;

    ret = NANDPrivateCreate("/shared2/expired", NAND_PERM_ALL_RW, 0);

    if (ret != NAND_RESULT_OK && ret != NAND_RESULT_EXISTS) {
        goto close;
    }

    ret = NANDPrivateOpen("/shared2/expired", &nInfo, 2);

    if (ret != NAND_RESULT_OK) {
        goto close;
    }

    openNInfo = TRUE;

    ret = ESP_InitLib();
    if (ret != ES_ERR_OK) {
        goto close;
    }

    memset(titleId, 0, 32);
    ret = ESP_GetTitleId((ESTitleId*)titleId);

    if (ret != ES_ERR_OK) {
        goto close;
    }

    ret = NANDWrite(&nInfo, titleId, 32);
    if (ret < NAND_RESULT_OK) {
        goto close;
    }
    else if (ret != 32) {
        ret = NAND_RESULT_INVALID;
        goto close;
    }
    else {
        ret = NAND_RESULT_OK;
    }

close:
    if (openNInfo) {
        NANDClose(&nInfo);
    }

    return ret == NAND_RESULT_OK ? TRUE : FALSE;
}

BOOL __OSWriteExpiredFlagIfSet() {
    if (__OSExpireSetExpiredFlag) {
        return __OSWriteExpiredFlag();
    }
    return FALSE;
}

void* __OSPlayTimeRebootThread(void* args) {
    BOOL enabled;
    u32 frames, fadeShift = 1;
    __OSExpireAIFadeStruct aiFade ALIGN32;

    // Setup sound fade out
    __OSExpireAIFade = &aiFade;
    memset(__OSExpireAIFade, 0, sizeof(__OSExpireAIFadeStruct));
    __OSExpireAIFade->gameAIDCallback = AIRegisterDMACallback(__OSPlayTimeFadeLastAIDCallback);

    // Force fade out video
	for (frames = 0; frames < 20; frames++) {
		fadeShift = (frames / 5) + 1;
		if (fadeShift > 7) {
			fadeShift = 7;
        }

		VIWaitForRetrace(); 
		__OSSetVIForceDimming(TRUE, fadeShift, fadeShift);
	}

    // Done fading out!

	AIRegisterDMACallback(NULL);

	VISetBlack(TRUE);
	VIFlush();

	enabled = OSDisableInterrupts();

    // Write expired flag
    __OSWriteExpiredFlagIfSet();
    OSRestoreInterrupts(enabled);

    // Aaaand back to the System Menu you go!
    OSReturnToMenu();
    return NULL;
}

void __OSPlayTimeAlarmExpired(OSAlarm* alarm, OSContext* context) {
	void *arenaHi;
	u32 memSize;
	OSThread *thread;
	void *stack;

    if (__OSExpireThread != NULL) {
        for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
            if (thread != __OSExpireThread) {
                OSSuspendThread(thread);
            }
        }

        OSCreateAlarm(&__OSExpireAlarm);
        OSSetAlarm(&__OSExpireAlarm,  OSSecondsToTicks((OSTime)240), __OSPlayTimeRebootCallback);
    
        while (__OSExpireThread->suspend > 0) {
            OSResumeThread(__OSExpireThread);
        }
    }
    else {
        for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
            OSSuspendThread(thread);
        }

        memSize = OSRoundUp32B(sizeof(OSThread)) + 0x1000;
        arenaHi = *(void**)OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM2_END);
        arenaHi = (void*)((u32)arenaHi - memSize);

        thread  = (OSThread*)arenaHi;
        arenaHi = (void*)((u32)arenaHi + OSRoundUp32B(sizeof(OSThread)));
        stack   = arenaHi;

        if (!OSCreateThread(thread, __OSPlayTimeRebootThread, NULL, (void*)((u32)stack + 0x1000), 0x1000, 0, 0)) {
            __OSHotResetForError();
        }

        OSResumeThread(thread);
    }
}

s32 __OSPlayTimeGetConsumption(ESTicketView *ticket, ESLpEntry *lpEntry, u32 *entries) {
	s32 ret = ESP_GetConsumption(ticket->ticketId, NULL, entries);
    
    if (ret > ES_ERR_OK) {
        goto getout;
    }

	if (ret != ES_ERR_OK) {
        ret = ret;
		goto getout;
	}

	if (*entries != 0) {
       	ret = ESP_GetConsumption(ticket->ticketId, lpEntry, entries);
    	
        if (ret != ES_ERR_OK) {
            ret = ret;
    		return ret;
    	}
	}

getout:
	return ret;
}

s32 __OSGetPlayTime(ESTicketView *ticket, OSPlayTimeType *type, u32 *playTime) {
	s32 ret;
	u32 i, numCc = 0, seenOther = 0;

	ESTicketView    ticketAligned ALIGN32;
    ESLpEntry       lpEntry[8] ALIGN32;

	if ((u32)ticket & 31) {
		memcpy(&ticketAligned, ticket, sizeof(ESTicketView));
		ticket = &ticketAligned;
	}

	ret = __OSPlayTimeGetConsumption(ticket, lpEntry, &numCc);
	if (ret != ES_ERR_OK) {
		goto getout;
    }

	for (i = 0; i < 8; i++) {
		if (ticket->limits[i].code == OS_PLAYTIME_TIME_LIMIT) {
			*type = OS_PLAYTIME_TIME_LIMIT;
			
            if (numCc == 0) {
				*playTime = ticket->limits[i].limit;
                goto getout;
			}
			if (lpEntry[i].limit >= ticket->limits[i].limit) {
                *playTime = 0;
                goto getout;
            }
            *playTime = ticket->limits[i].limit - lpEntry[i].limit;
            goto getout;
		}
		else if (ticket->limits[i].code != OS_PLAYTIME_PERMANENT) {
			seenOther = i + 1;
		}
	}

	if (!seenOther) {
		*type = OS_PLAYTIME_PERMANENT;
		*playTime = 0xFFFFFFFF;
	}
	else {
		seenOther--;

		if (ticket->limits[seenOther].code == OS_PLAYTIME_LAUNCH_LIMIT) {
			*type = OS_PLAYTIME_LAUNCH_LIMIT;
			*playTime = ticket->limits[seenOther].limit;
    
			if (numCc > 0) {
				*playTime -= lpEntry[seenOther].limit;
            }
		}
		else {
			*type = OS_PLAYTIME_UNKNOWN;
		}
	}

getout:
	return ret;
}

s32 __OSGetPlayTimeCurrent(OSPlayTimeType* type, u32* playTime) {
    s32 ret;
    ESTicketView ticket ALIGN32;

    ret = ESP_DiGetTicketView(NULL, &ticket);

    if (ret == ES_ERR_INVALID_ARGUMENTS) {
        goto out;
    }
    if (ret != ES_ERR_OK) {
        ret = ret;
        goto out;
    }

    ret = __OSGetPlayTime(&ticket, type, playTime);

out:
    return ret;
}

void __OSInitPlayTime() {
    s32 ret;
    u32 limit;
    OSPlayTimeType type;

    __OSExpireTime = 0;
    __OSExpireThread = NULL;
    __OSExpireSetExpiredFlag = TRUE;

    ret = ESP_InitLib();

    if (ret != ES_ERR_OK) {
        ret = ret;
        goto out;
    }

    ret = __OSGetPlayTimeCurrent(&type, &limit);

    if (ret != ES_ERR_OK) {
        if (ret != ES_ERR_INVALID_ARGUMENTS) {
            ret = ret;
        }
        goto out;
    }

    if (type == OS_PLAYTIME_PERMANENT) {
        goto out;
    }
    else if (type == OS_PLAYTIME_TIME_LIMIT) {
        OSAssertMsg(limit != 0, "Expired", 775);

        OSCreateAlarm(&__OSExpireAlarm);
        OSSetAlarm(&__OSExpireAlarm, OSSecondsToTicks((OSTime)limit + 1), __OSPlayTimeAlarmExpired);
        __OSExpireTime = __OSExpireAlarm.fire;
        OSReport("PlayTime: %d seconds left\n", limit);
    }

out:
    ESP_CloseLib();
}
