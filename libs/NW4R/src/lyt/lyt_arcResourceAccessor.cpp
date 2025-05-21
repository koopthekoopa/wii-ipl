#include <nw4r/lyt/arcResourceAccessor.h>

#include <cstring>

namespace {
    s32 FindNameResource(ARCHandle* pArcHandle, const char* resName) NO_INLINE {
        s32 entryNum = -1;
    
        ARCDir dir;
        BOOL bSuccess = ARCOpenDir(pArcHandle, ".", &dir);
    
        ARCDirEntry dirEntry;

        while (ARCReadDir(&dir, &dirEntry)) {
            if (dirEntry.isDir) {
                bSuccess = ARCChangeDir(pArcHandle, dirEntry.name);
                entryNum = FindNameResource(pArcHandle, resName);
                bSuccess = ARCChangeDir(pArcHandle, "..");
    
                if (entryNum != -1) {
                    break;
                }
            }
            else if (stricmp(resName, dirEntry.name) == 0) {
                entryNum = dirEntry.entryNum;
                break;
            }
        }
    
        bSuccess = ARCCloseDir(&dir);
        return entryNum;
    }

    void* GetResourceSub(ARCHandle* pArcHandle, const char* resRootDir, u32 resType, const char* name, u32* pSize) {
        s32 entryNum = -1;
    
        if (ARCConvertPathToEntrynum(pArcHandle, resRootDir) != -1 && ARCChangeDir(pArcHandle, resRootDir)) {
            if (!resType) {
                entryNum = FindNameResource(pArcHandle, name);
            }
            else {
                char resTypeStr[5];
                resTypeStr[0] = resType >> 24;
                resTypeStr[1] = resType >> 16;
                resTypeStr[2] = resType >> 8;
                resTypeStr[3] = resType;
                resTypeStr[4] = '\0';
    
                if (ARCConvertPathToEntrynum(pArcHandle, resTypeStr) != -1 && ARCChangeDir(pArcHandle, resTypeStr)) {
                    entryNum = ARCConvertPathToEntrynum(pArcHandle, name);
                    BOOL bSuccess = ARCChangeDir(pArcHandle, "..");
                }
            }
    
            BOOL bSuccess = ARCChangeDir(pArcHandle, "..");
        }
    
        if (entryNum != -1) {
            ARCFileInfo arcFileInfo;
            BOOL bSuccess = ARCFastOpen(pArcHandle, entryNum, &arcFileInfo);
    
            void* resPtr = ARCGetStartAddrInMem(&arcFileInfo);
    
            if (pSize) {
               *pSize = ARCGetLength(&arcFileInfo);
            }
    
            ARCClose(&arcFileInfo);
    
            return resPtr;
        }
    
        return NULL;
    }
}

namespace nw4r {
    namespace lyt {
        ut::Font* detail::FindFont(FontRefLinkList* pFontRefList, const char* name) {
            for (FontRefLinkList::Iterator it = pFontRefList->GetBeginIter(); it != pFontRefList->GetEndIter(); it++) {
                if (strcmp(name, it->GetFontName()) == 0) {
                    return it->GetFont();
                }
            }
            return NULL;
        }

        FontRefLink::FontRefLink() :
        mpFont(NULL) {}

        void FontRefLink::Set(const char* name, ut::Font* pFont) {
            strcpy(mFontName, name);
            mpFont = pFont;
        }

        ArcResourceAccessor::ArcResourceAccessor():
        mArcBuf(NULL) {}

        bool ArcResourceAccessor::Attach(void* archiveStart, const char* resourceRootDirectory) {
            BOOL bSuccess = ARCInitHandle(archiveStart, &mArcHandle);

            if (!bSuccess) {
                return false;
            }

            mArcBuf = archiveStart;

            strncpy(mResRootDir, resourceRootDirectory, ARRSIZE(mResRootDir) - 1);
            mResRootDir[ARRSIZE(mResRootDir) - 1] = '\0';

            return true;
        }

        bool ArcResourceLink::Set(void* archiveStart, const char* resRootDirectory) {
            BOOL bSuccess = ARCInitHandle(archiveStart, &mArcHandle);

            if (!bSuccess) {
                return false;
            }

            strncpy(mResRootDir, resRootDirectory, ARRSIZE(mResRootDir) - 1);
            mResRootDir[ARRSIZE(mResRootDir) - 1] = '\0';

            return true;
        }

        MultiArcResourceAccessor::MultiArcResourceAccessor() {}

        MultiArcResourceAccessor::~MultiArcResourceAccessor() {
            DetachAll();
        }

        void MultiArcResourceAccessor::Attach(ArcResourceLink* pLink) {
            mArcList.PushBack(pLink);
        }

        void* MultiArcResourceAccessor::GetResource(u32 resType, const char* name, u32* pSize) {
            for (ArcResourceLinkList::Iterator it = mArcList.GetBeginIter(); it != mArcList.GetEndIter(); it++) {
                ARCHandle* pArcHandle = it->GetArcHandle();
                if (void* resPtr = GetResourceSub(pArcHandle, it->GetResRootDir(), resType, name, pSize)) {
                    return resPtr;
                }
            }
            return NULL;
        }

        void MultiArcResourceAccessor::RegistFont(FontRefLink* pLink) {
            mFontList.PushBack(pLink);
        }

        ut::Font* MultiArcResourceAccessor::GetFont(const char* name) {
            return detail::FindFont(&mFontList, name);
        }
    }
}
