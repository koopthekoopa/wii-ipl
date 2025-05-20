#include "utility/iplESMisc.h"

#include <private/es.h>

#include <revolution/sc.h>

#include <revolution/nand.h>
#include <private/nand.h>

#include <private/os.h>

#include <cstring>

#include "config.h"

extern "C" u32 BS2GetBootType();

#define TMD_FILE    "/title/00000001/00000002/data/tmds.sys"

namespace ipl {
    namespace utility {
        // meh
        #define ES_ERR_REPORT(msg, ...)                                         \
            OSReport("%s::%s: "msg"\n", __FILE__, __FUNCTION__, __VA_ARGS__);   \

        ESError ESMisc::GetTmdView(EGG::Heap* heap, ESTitleId titleId, ESTmdView** outTmdView) {
            ESTmdView*  tmdView;
            u32         tmdViewSize = 0;

            ESError     ret;

            ret = ES_GetTmdView(titleId, NULL, &tmdViewSize);
            if (ret < ES_ERR_OK) {
                OSReport("ESMisc::GetTmdView: ES_GetTmdView1 err %d\n", ret);
                *outTmdView = NULL;
                goto out;
            }

            tmdView = (ESTmdView*)heap->alloc(OSRoundUp32B(tmdViewSize), -BUFFER_HEAP);
            *outTmdView = tmdView;
            memset(tmdView, 0, OSRoundUp32B(tmdViewSize));

            ret = ES_GetTmdView(titleId, *outTmdView, &tmdViewSize);
            if (ret < ES_ERR_OK) {
                OSReport("ESMisc::GetTmdView: ES_GetTmdView2 err %d\n", ret);
                heap->free(*outTmdView);
                *outTmdView = NULL;
                goto out;
            }

out:
            return ret;
        }

        ESError ESMisc::GetTicketViewList(EGG::Heap* heap, ESTitleId titleId, ESTicketView** outTicketViews, u32* outNumTicketViews) {
            ESTicketView*   ticketViews;
            u32             numTicketViews = 0;

            ESError         ret;

            ret = ES_GetTicketViews(titleId, NULL, &numTicketViews);
            if (ret < ES_ERR_OK) {
                OSReport("ESMisc::GetTicketViewList: ES_GetTicketViews1 err %d\n", ret);
                *outTicketViews = NULL;
                return ret;
            }

            if (outNumTicketViews) {
                *outNumTicketViews = numTicketViews;
            }

            if (numTicketViews == 0) {
                return ES_ERR_TICKET_NOT_FOUND;
            }

            ticketViews = (ESTicketView*)heap->alloc(OSRoundUp32B(numTicketViews * sizeof(ESTicketView)), -BUFFER_HEAP);
            *outTicketViews = ticketViews;

            ret = ES_GetTicketViews(titleId, ticketViews, &numTicketViews);
            if (ret < ES_ERR_OK) {
                OSReport("ESMisc::GetTicketViewList: ES_GetTicketViews2 err %d\n", ret);
                heap->free(*outTicketViews);
                *outTicketViews = NULL;
                return ret;
            }

            return ES_ERR_OK;
        }

        ESError ESMisc::GetTicketView(EGG::Heap* heap, ESTitleId titleId, ESTicketView* ticketView, int numTicketViews) {
            u32             inNumTicketViews = 0;
            ESTicketView*   inTicketView = NULL;
           
            ESError         ret;

            ret = GetTicketViewList(heap, titleId, &inTicketView, &inNumTicketViews);
            if (numTicketViews >= inNumTicketViews) {
                OSReport("ESMisc::GetTicketView: Invalid index %d\n", numTicketViews);
                ret = ES_ERR_TICKET_NOT_FOUND;
                goto out;
            }

            if (ret == ES_ERR_OK) {
                memcpy(ticketView, inTicketView + numTicketViews, sizeof(ESTicketView));
            }
out:
            if (inTicketView != NULL) {
                heap->free(inTicketView);
            }
            return ret;
        }

        s32 ESMisc::PrivateContentsExist(ESTitleId titleId) {
            char    path[96] ALIGN32;

            u32     usedBlocks = 0;
            u32     usedINodes = 0;

            s32     ret;

            sprintf(path, "/title/%08x/%08x/content", NANDTitleIdHi(titleId), NANDTitleIdLo(titleId));
            ret = NANDSecretGetUsage(path, &usedBlocks, &usedINodes);
            if (ret != NAND_RESULT_OK || usedINodes <= 2) {
                if (ret != NAND_RESULT_OK && ret != NAND_RESULT_NOEXISTS) {
                    OSReport("ESMisc::PrivateContentsExist: err %d\n", ret);
                }
                return 0;
            }

            return usedINodes - 2;
        }

        BOOL ESMisc::ContentExist(ESTmdView* tmdView, u32 contentIndex, s32* result) {
            u32 numContents;
            u32 contents[512] ALIGN32;

            ESTitleId titleId = tmdView->head.titleId;

            u32 i, cid;

            for (i = 0; i < tmdView->head.numContents; i++) {
                // Find CID of index
                if (contentIndex == tmdView->contents[i].index) {
                    cid = tmdView->contents[i].cid;
                    break;
                }
            }

            // Check if we have overflown.
            if (i == tmdView->head.numContents) {
                *result = 0;
                return FALSE;
            }

            // Get number of contents
            s32 ret = ES_ListTitleContentsOnCard(titleId, NULL, &numContents);
            if (ret != ES_ERR_OK) {
                OSReport("ESMisc::ContentExist: ES_ListTitleContentsOnCard1 err %d\n", ret);
                if (result) {
                    *result = ret;
                }
                return FALSE;
            }

            // Get list of CIDs
            ret = ES_ListTitleContentsOnCard(titleId, contents, &numContents);
            if (ret != ES_ERR_OK) {
                OSReport("ESMisc::ContentExist: ES_ListTitleContentsOnCard2 err %d\n", ret);
                if (result) {
                    *result = ret;
                }
                return FALSE;
            }

            // For each CID
            for (int j = 0; j < numContents; j++) {
                // Compare...
                if (cid == contents[j]) {
                    // We got it!
                    if (result) {
                        *result = 0;
                    }
                    return TRUE;
                }
            }

            // We don't got it...
            if (result) {
                *result = 0;
            }
            return FALSE;
        }

        // DeleteSharedContent did not survive
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: MEMAllocate for TMD err\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_ListSharedContents1 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: MEMAllocate for SHA-1 hash err\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_ListSharedContents2 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_ListTitlesOnCard1 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: MEMAllocate for Title List err\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: MEMAllocate for Title List err\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_ListTitlesOnCard2 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_GetTmd1 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_GetTmd2 err %d\n");
        DECOMP_FORCE_ACTIVE(iplESMisc_cpp, "DeleteSharedContent: ES_DeleteSharedContent err %d\n");

        BOOL ESMisc::IsLastTicketExpired(ESTitleId* titleId) {
            s32             ret;
            NANDFileInfo    file;
            ESTitleId       readTitleId ALIGN32;

            if (BS2GetBootType() != 1) {
                DeleteExpiredFlagFile();
                return FALSE;
            }

            ret = NANDPrivateOpen("/shared2/expired", &file, NAND_ACCESS_READ);
            if (ret == NAND_RESULT_NOEXISTS) {
                return FALSE;
            }

            if (ret != NAND_RESULT_OK) {
                return FALSE;
            }

            s32 read = NANDRead(&file, &readTitleId, OSRoundUp32B(sizeof(readTitleId)));
            NANDClose(&file);
            if (read != (s32)OSRoundUp32B(sizeof(readTitleId))) {
                return FALSE;
            }

            if (titleId) {
                *titleId = readTitleId;
            }
            return TRUE;
        }

        void ESMisc::DeleteExpiredFlagFile() {
            NANDPrivateDelete("/shared2/expired");
        }

        u32 ESMisc::CheckTmdCountryCode(ESTmdView* tmdView) {
            return __OSCheckTmdCountryCode(tmdView);
        }

        BOOL ESMisc::__IsPCEnable() {
            switch (SCGetProductArea()) {
                case SC_PRODUCT_AREA_JPN:
                case SC_PRODUCT_AREA_USA:
                case SC_PRODUCT_AREA_EUR:
                case SC_PRODUCT_AREA_AUS:
                case SC_PRODUCT_AREA_TWN:
                case SC_PRODUCT_AREA_KOR: {
                    return TRUE;
                }
                default: {
                    return FALSE;
                }
            }
        }

        BOOL ESMisc::ChangeUid(ESTitleId titleId) {
            s32 ret = ES_SetUid(titleId);
            if (ret != ES_ERR_OK) {
                OSReport("ES_SetUid failed[%d]: 0x%016llx\n", ret, titleId);
                return FALSE;
            }

            // Reinitialize FS library
            ISFS_CloseLib();
            ISFS_OpenLib();

            return TRUE;
        }

        u32 ESMisc::NumInodesSaveDirRoot(ESTitleId titleId) {
            s32 result = -1;
            bool changedUid = false;

            if (ChangeUid(titleId)) {
                changedUid = true;

                char path[64] ALIGN32;
                snprintf(path, sizeof(path), "/title/%08x/%08x/data", NANDTitleIdHi(titleId), NANDTitleIdLo(titleId));
                
                u32 nodes;
                s32 ret = NANDPrivateReadDir(path, NULL, &nodes);

                if (ret != NAND_RESULT_OK) {
                    ES_ERR_REPORT("NANDReadDir failed: %d", ret);
                    result = ret;
                    goto out;
                }

                result = nodes;
            }
out:
            if (changedUid) {
                ChangeUid(SYSMENU_TITLE_ID);
            }
            return result;
        }

        s32 ESMisc::DeleteTitle(EGG::Heap* heap, ESTitleId titleId) {
            TMDFile tmdFile(heap);

            s32 ret = tmdFile.Open((char*)TMD_FILE);
            if (ret != ES_ERR_OK) {
                ES_ERR_REPORT("Open TMD Backup file failed: %d", ret);
                goto do_proc;
            }

            ret = tmdFile.Backup(titleId);
            if (ret != ES_ERR_OK) {
                ES_ERR_REPORT("Backup TMD failed: %d", ret);
                goto do_proc;
            }
do_proc:
            ret = ES_DeleteTitle(titleId);
            if (ret != ES_ERR_OK) {
                ES_ERR_REPORT("ES_DeleteTitle failed: %d for %016llx", ret, titleId);
            }
            tmdFile.Close();
            return ret;
        }

        s32 ESMisc::DeleteMetaContent(ESTitleId titleId) {
            char metaPath[64]="";
            snprintf(metaPath, sizeof(metaPath), "/meta/%08x/%08x/title.met", NANDTitleIdHi(titleId), NANDTitleIdLo(titleId));
            return NANDPrivateDelete(metaPath);
        }

        BOOL checkForNullTermination(char* str, u32 len) {
            for (u32 i = 0; i < len; i++) {
                if (*str == 0) {
                    return TRUE;
                }
                str++;
            }
            return FALSE;
        }

        TMDFile::TMDFile(EGG::Heap* heap) :
        mpHeap(heap),
        mbFileOpen(FALSE),
        mFileLength(0) {
            memset(&mFile, 0, sizeof(mFile));
        }

        s32 TMDFile::Open(char* fileName) {
            s32 ret;

            if (mbFileOpen) {
                return NAND_RESULT_OK;
            }

            ret = NANDPrivateOpen(fileName, &mFile, NAND_ACCESS_RW);
            if (ret == NAND_RESULT_NOEXISTS) {
                ret = NANDPrivateCreate(fileName, NAND_PERM_ALL_RW, 0);
                if (ret != NAND_RESULT_OK) {
                    ES_ERR_REPORT("NANDCreate %s err %d", fileName, ret);
                    return ret;
                }
                ret = NANDPrivateOpen(fileName, &mFile, NAND_ACCESS_RW);
            }

            if (ret != NAND_RESULT_OK) {
                ES_ERR_REPORT("NANDOpen %s err %d", fileName, ret);
                return ret;
            }

            mbFileOpen = TRUE;
            ret = NANDGetLength(&mFile, &mFileLength);
            if (ret != NAND_RESULT_OK) {
                ES_ERR_REPORT("NANDGetLength %s err %d", fileName, ret);
                return ret;
            }
            return ret;
        }

        s32 TMDFile::Close() {
            s32 ret = ES_ERR_OK;
            if (mbFileOpen) {
                ret = NANDClose(&mFile);
                mbFileOpen = FALSE;
            }
            return ret;
        }

        BOOL TMDFile::Exist(ESTitleId titleId, u32* tmdOffset, u32* tmdSize) {
            u32         offset = 0;
            EntryHead   entry ALIGN32;

            if (!mbFileOpen) {
                return FALSE;
            }

            for (; offset < mFileLength; offset += OSRoundUp32B(entry.tmdSize)) {
                s32 ret = NANDSeek(&mFile, offset, NAND_SEEK_BEG);
                if (ret != offset) {
                    ES_ERR_REPORT("NANDSeek err: %d!=%d", ret, offset);
                    return FALSE;
                }

                u32 readSize = NANDRead(&mFile, &entry, OSRoundUp32B(sizeof(EntryHead)));
                if (readSize != OSRoundUp32B(sizeof(EntryHead))) {
                    ES_ERR_REPORT("NANDRead err: %d!=%d", readSize, OSRoundUp32B(sizeof(EntryHead)));
                    return FALSE;
                }

                offset += OSRoundUp32B(sizeof(EntryHead));
                if (entry.titleId == titleId) {
                    if (tmdOffset) {
                        *tmdOffset = offset;
                    }
                    if (tmdSize) {
                        *tmdSize = entry.tmdSize;
                    }
                    return TRUE;
                }
            }
            return FALSE;
        }

        s32 TMDFile::Backup(ESTitleId titleId) {
            s32         ret = NAND_RESULT_OK;
            u32         entryLen;
            EntryHead*  entry = NULL;

            if (!mbFileOpen) {
                return -1;
            }

            u32 fileLen;
            u32 tmdSize;
            
            // Is the TMD already in the backup database?
            if (!Exist(titleId, NULL, NULL)) {
                // If not, let's back you up!

                // Get file length. (...without NANDGetLength?)
                ret = NANDSeek(&mFile, 0, NAND_SEEK_END);
                if (ret != mFileLength) {
                    ES_ERR_REPORT("NANDSeek err: %d!=%d", ret, mFileLength);
                    goto out;
                }
                ret = NANDTell(&mFile, &fileLen);
                if (ret != NAND_RESULT_OK) {
                    ES_ERR_REPORT("NANDTell err: %d", ret);
                    goto out;
                }

                // Verify the file length.
                if (fileLen != mFileLength || (fileLen & 31)) {
                    ES_ERR_REPORT("Internal error: %d!=%d || 0x%x not 32B", fileLen, mFileLength, fileLen);
                    ret = -1;
                    goto out;
                }

                // The title metadata
                ret = ES_GetTmd(titleId, NULL, &tmdSize);
                if (ret != ES_ERR_OK) {
                    ES_ERR_REPORT("ES_GetTmd err: %d", ret);
                    goto out;
                }

                // Prepare TMD backup entry.
                entryLen = OSRoundUp32B(tmdSize) + OSRoundUp32B(sizeof(EntryHead));
                entry = (EntryHead*)mpHeap->alloc(entryLen, -BUFFER_HEAP);
                memset(entry, 0, entryLen);
                entry->titleId = titleId;
                entry->tmdSize = tmdSize;

                // Export TMD contents to entry
                ret = ES_ExportTitleInit(titleId, 0, 0, NULL, 0, NULL, 0, 2, NULL, entry->getTmdPtr(), tmdSize);
                if (ret != ES_ERR_OK) {
                    ES_ERR_REPORT("ES_ExportTitleInit err: %d", ret);
                    ES_ExportTitleDone();
                    goto out;
                }
                ret = ES_ExportTitleDone();
                if (ret != ES_ERR_OK) {
                    ES_ERR_REPORT("ES_ExportTitleDone err: %d", ret);
                    goto out;
                }

                // Write the entry to the backup file
                ret = NANDWrite(&mFile, entry, entryLen);
                if (ret != entryLen) {
                    ES_ERR_REPORT("NANDWrite err: %d!=%d", ret, entryLen);
                    goto out;
                }

                // We are done!!!
                ret = NAND_RESULT_OK;
                mFileLength += entryLen;
                goto out;
            }
out:
            if (entry != NULL) {
                mpHeap->free(entry);
            }
            return ret;
        }

        s32 TMDFile::Restore(ESTitleId titleId) {
            s32         ret = NAND_RESULT_OK;

            u32     fileLen;
            u32     tmdOffset = 0;
            u32     tmdSize = 0;
            void*   tmdBuffer = NULL;

            if (!mbFileOpen) {
                return -1;
            }

            ret = ES_GetTmdView(titleId, NULL, &tmdSize);

            if (ret != ES_ERR_OK) {
                if (ret != ES_ERR_DONT_EXISTS) {
                    ES_ERR_REPORT("ES_GetTmdView err: %d", ret);
                    goto out;
                }
                tmdSize = 0;

                ret = Exist(titleId, &tmdOffset, &tmdSize);
                if (ret == FALSE) {
                    ret = ES_ERR_NO_TMD_FILE_FOUND;
                    goto out;
                }

                ret = NANDSeek(&mFile, tmdOffset, NAND_SEEK_BEG);
                if (ret != tmdOffset) {
                    ES_ERR_REPORT("NANDSeek err: %d!=%d", ret, tmdOffset);
                    goto out;
                }

                fileLen = OSRoundUp32B(tmdSize);
                tmdBuffer = mpHeap->alloc(fileLen, -BUFFER_HEAP);
                memset(tmdBuffer, 0, fileLen);

                ret = NANDRead(&mFile, tmdBuffer, fileLen);
                if (ret != fileLen) {
                    ES_ERR_REPORT("NANDRead err: %d!=%d", ret, fileLen);
                    goto out;
                }

                ret = ES_ImportTitleInit(tmdBuffer, tmdSize, NULL, 0, NULL, 0, 2, 1);
                if (ret != ES_ERR_OK) {
                    ES_ERR_REPORT("ES_ImportTitleInit err: %d", ret);
                    ES_ImportTitleCancel();
                }

                ret = ES_ImportTitleDone();
                if (ret != ES_ERR_OK) {
                    ES_ERR_REPORT("ES_ImportTitleDone err: %d", ret);
                    goto out;
                }
            }
out:
            if (tmdBuffer != NULL) {
                mpHeap->free(tmdBuffer);
            }
            return ret;
        }
    }
}
