#include "iplwww/www_surface.h"

#include "iplwww/www_print.h"
#include "iplwww/www_trasition.h"

#include <new>
#include <string.h>

namespace ext_ead {
    namespace www {
        namespace surface {
            IPL_WWW_REPORT_REDEFINE_MESSAGE(true);
        }
    }  // namespace www
}  // namespace ext_ead

typedef struct FontFileData {
    const char* name;  // 0x00
    u32 unk_0x04;      // 0x04
    void* start;       // 0x08
    void* end;         // 0x0C
} FontFileData;
FontFileData WWW_FONT_FILE_DATA_TABLE__[2] = {{"DirectUniversal"}};

namespace ext_ead {
    namespace www {
        namespace Heap {
            MEMiHeapHead* hMem1;
            MEMiHeapHead* hMem2;
            void* wwwalloc_;
            void (*wwwfree_)(void*);
            int (*wwwavail_)();

            u32 hFreeSize1;
            u32 hFreeSize2;
        }  // namespace Heap

        SurfaceManager* SurfaceManager::Instance_ = NULL;

        void* Heap::allocMem1(u32 size, int align) {
            return MEMAllocFromExpHeapEx(hMem1, size, align);
        }
        void Heap::freeMem1(void* block) {
            return MEMFreeToExpHeap(hMem1, block);
        }

        void* Heap::allocMem2(u32 size, int align) {
            return MEMAllocFromExpHeapEx(hMem2, size, align);
        }
        void Heap::freeMem2(void* block) {
            return MEMFreeToExpHeap(hMem2, block);
        }

        void Heap::reportHeap() {
            if (hFreeSize1 != MEMGetTotalFreeSizeForExpHeap(hMem1) || hFreeSize2 != MEMGetTotalFreeSizeForExpHeap(hMem2)) {
                OSReport(" ++++++++++++++++++++++++++++++++++\n");
                if (hFreeSize1 != MEMGetTotalFreeSizeForExpHeap(hMem1)) {
                    OSReport(" ++++ MEM1 Heap Free: %08x\n", MEMGetTotalFreeSizeForExpHeap(hMem1));
                }
                if (hFreeSize2 != MEMGetTotalFreeSizeForExpHeap(hMem2)) {
                    OSReport(" ++++ MEM2 Heap Free: %08x\n", MEMGetTotalFreeSizeForExpHeap(hMem2));
                }
                OSReport(" ++++++++++++++++++++++++++++++++++\n");
                hFreeSize1 = MEMGetTotalFreeSizeForExpHeap(hMem1);
                hFreeSize2 = MEMGetTotalFreeSizeForExpHeap(hMem2);
            }
        }
        void Heap::reportLeaHeap() {
            if (wwwavail_ != NULL) {
                OSReport(" ++++++++++++++++++++++++++++++++++\n");
                OSReport(" ++++ Lea Heap Free: %08x\n", (*wwwavail_)());
                OSReport(" ++++++++++++++++++++++++++++++++++\n");
            }
        }

        void Heap::init(void* mem1Buf, u32 mem1BufSize, void* mem2Buf, u32 mem2BufSize) {
            hMem1 = MEMCreateExpHeapEx(mem1Buf, mem1BufSize, 4);
            hMem2 = MEMCreateExpHeapEx(mem2Buf, mem2BufSize, 4);
            wwwalloc_ = 0;
            wwwfree_ = 0;
            wwwavail_ = 0;
        }
        void SurfaceManager::CreateManager(int surfaceW, int surfaceH, int browserW, int browserH, void* mem1Buf, u32 mem1BufSize, void* mem2Buf,
                                           u32 mem2BufSize, void* libBuf, const char* arcPath) {
            int iVar1;
            undefined4 uVar2;

            if (Instance_ == NULL) {
                Heap::init(mem1Buf, mem1BufSize, mem2Buf, mem2BufSize);
                Instance_ = (SurfaceManager*)Heap::allocMem1(sizeof(SurfaceManager), 4);
                new (Instance_) SurfaceManager();

                if (libBuf != NULL) {
                    Instance_->pLibBuf = (RSOObjectHeader*)libBuf;
                }
                if (arcPath != NULL) {
                    u32 arcPathLen = strlen(arcPath);
                    Instance_->pArcPath = (char*)Heap::allocMem1(arcPathLen + 1, 4);
                    strcpy(Instance_->pArcPath, arcPath);
                }
                Instance_->InitInstance_(surfaceW, surfaceH, browserW, browserH);
            }
            return;
        }

        void Heap::destroy() {
            MEMDestroyExpHeap(Heap::hMem1);
            MEMDestroyExpHeap(Heap::hMem2);
        }
        void SurfaceManager::DisposeManager() {
            if (Instance_ != NULL) {
                Heap::freeMem1(Instance_->pArcPath);
                Instance_->DisposeInstance_();
                Instance_->UnresolveRsoModule();
                Instance_->~SurfaceManager();

                Heap::freeMem1(Instance_);
                Instance_ = NULL;

                Heap::destroy();
            }
        }
        void SurfaceManager::ResolveRsoModule() {
            int i;
            RSOExportFuncTable* symRef;
            print::TickTimer tt;
            RSOObjectHeader* rso;

            rso = (RSOObjectHeader*)pLibBuf;
            if (rso->bssSize != NULL) {
                pBss = Heap::allocMem1(rso->bssSize, 0x20);
                memset(pBss, 0, rso->bssSize);
            }

            tt.reset();
            RSOLinkList(rso, pBss);
            tt.report("RSOLinkList");
            if (RSOIsImportSymbolResolvedAll(rso))
                OSReport("moduleD's ImportSymbol is resolved all.\n");

            tt.reset();
            if (rso->prolog != NULL) {
                ((void (*)())rso->prolog)();
            }
            tt.report("RSO_prolog");

            tt.reset();
            for (i = 0; i < ARRAY_LENGTH(rsoSymbolList); i++) {
                symRef = &rsoSymbolList[i];
                *symRef->symbol_ptr = (u32)RSOFindExportSymbolAddr(rso, symRef->symbol_name);
            }
            tt.report("ResolveModule_www");
        }
        void SurfaceManager::UnresolveRsoModule() {
            RSOObjectHeader* rso = (RSOObjectHeader*)pLibBuf;
            if (pLibBuf != NULL) {
                if (rso->epilog != NULL) {
                    ((void (*)())rso->epilog)();
                }
                for (u32 i = 0; i < ARRAY_LENGTH(rsoSymbolList); i++) {
                    *rsoSymbolList[i].symbol_ptr = (u32)::unresolved_www;
                }
                RSOUnLinkList(rso);
                Heap::freeMem1(pBss);
            }
            return;
        }

        SurfaceManager::SurfaceManager()
            : mWidth(0x260), mHeight(0x1c8), unk_0x0c(0), pBrowserThread(NULL), pOperaThreadStack(NULL), pBss(NULL), pLibBuf(NULL), pArcPath(NULL) {
            OSInitMutex(&mMutex);
        }
        SurfaceManager::~SurfaceManager() {
        }
        void SurfaceManager::InitInstance_(int surfaceW, int surfaceH, int browserW, int browserH) {
            mWidth = surfaceW;
            mHeight = surfaceH;
            pOperaThreadStack = Heap::allocMem1(0x20000, 0x20);
            memset(pOperaThreadStack, 0, 0x20000);
            print::IPLWWWReport(3, "www_surface: OperaThreadStack: ptr:%p\n", this->pOperaThreadStack);

            pBrowserThread = (BrowserThread*)Heap::allocMem1(0x6a8, 4);
            new (pBrowserThread) BrowserThread();

            pBrowserThread->CreateThread(browserW, browserH, this->pOperaThreadStack, 0x20000, 0x14);
            return;
        }
        void SurfaceManager::RegisterArcFile(void* fileBuf) {
            if (Instance_ == NULL)
                return;
            Instance_->pBrowserThread->RegisterArcFile(fileBuf);
        }
        void SurfaceManager::RegisterIniFile(void* fileBuf, u32 fileLen) {
            if (Instance_ == NULL)
                return;
            Instance_->pBrowserThread->RegisterIniFile(fileBuf, fileLen);
        }
        void SurfaceManager::RegisterFontFile(int fontIdx, void* fileBuf, u32 fileLen) {
            WWW_FONT_FILE_DATA_TABLE__[fontIdx].start = fileBuf;
            WWW_FONT_FILE_DATA_TABLE__[fontIdx].end = (u8*)fileBuf + fileLen + 1;
        }

        void SurfaceManager::StartThread() {
            if (Instance_ == NULL)
                return;
            Instance_->pBrowserThread->Resume();
        }
        void SurfaceManager::StopThreadAsync() {
            if (pBrowserThread)
                pBrowserThread->StopThread();
        }
        bool SurfaceManager::IsThreadStopped() {
            if (pBrowserThread)
                return pBrowserThread->IsThreadStopped();
            else
                return true;
        }
        void SurfaceManager::DisposeInstance_() {
            if (pBrowserThread != NULL) {
                pBrowserThread->StopThread();
                pBrowserThread->~BrowserThread();
                Heap::freeMem1(pBrowserThread);
                pBrowserThread = NULL;
            }
            if (pOperaThreadStack != NULL) {
                Heap::freeMem1(pOperaThreadStack);
                pOperaThreadStack = NULL;
            }
        }
    }  // namespace www
}  // namespace ext_ead
