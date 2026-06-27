#include "iplwww/www_arcreader.h"

#include "iplwww/www_browser.h"
#include "iplwww/www_print.h"

#include <revolution/cx.h>
#include <string.h>

namespace www {
    namespace arcreader {
        static u32 sStatus;

        void AddProtocol() {
            if ((*WWWAddProtocol)(sProtocolName) == 0) {
                ext_ead::www::print::IPLWWWReport(3, " - %s protocol added successfully \n", sProtocolName);
            } else {
                ext_ead::www::print::IPLWWWReport(3, " - %s protocol added failed- \n", sProtocolName);
            }
        }
        bool ReadRequest(const WWWProtocolData* protocolData, ArcContainer* container) {
            u32 chunkSize;
            bool ret = 0;
            u32 fileSize;
            const char* path;
            const u8* fileData;

            sStatus = 0;
            ext_ead::www::print::IPLWWWReport(3, " Read: %s\n", protocolData->filePath);
            if (strcmp(protocolData->protocolName, sProtocolName) == 0) {
                ret = true;

                // Strip the protocol base folder (marc/) and remove any leading
                // slashes to get just the subpath
                path = protocolData->filePath + strlen(sProtocolName) + 1;
                while (*path == '/')
                    path++;
                ext_ead::www::print::IPLWWWReport(3, " filename: %s\n", path);

                fileData = (const u8*)container->find(path, &fileSize);
                if (fileData != NULL) {
                    for (; fileSize != 0; fileSize -= chunkSize) {
                        chunkSize = 0x7fff;
                        if (fileSize <= 0x7fff) {
                            chunkSize = fileSize;
                        }
                        sStatus = (*WWWProtocolWrite)(protocolData->wwwInternal, fileData, chunkSize);
                        if (sStatus != 0) {
                            (*WWWProtocolFailed)(protocolData->wwwInternal);
                            sStatus = 1;
                            return true;
                        }
                        fileData += chunkSize;
                        // sStatus = 0;
                    }
                    sStatus = (*WWWProtocolFinished)(protocolData->wwwInternal);
                    return true;
                } else {
                    (*WWWProtocolFailed)(protocolData->wwwInternal);
                    sStatus = 1;
                }
            }
            return ret;
        }
        ArcContainer::ArcContainer(void* scratchSpace) {
            pScratch = scratchSpace;
            for (int i = 0; i < ARRAY_LENGTH(mFlags); i++) {
                mFlags[i] = false;
            }
        }
        void ArcContainer::RegisterArcFile(const void* data) {
            int i;
            for (i = 0; i < ARRAY_LENGTH(mFlags); i++) {
                if (mFlags[i])
                    continue;
                if (ARCInitHandle((void*)data, this->mHandles + i) != 0) {
                    mFlags[i] = true;
                }
                break;
            }
            if (i == 4 || !mFlags[i]) {
                OSPanic("www_arcreader.cpp", 0x8e, " the file cannot registered\n");
            }
        }

        void* ArcContainer::find(const char* path, u32* fileSize) {
            int i;
            ARCFileInfo fileInfo;
            void* filePtr;
            u32 uncompressedSize;

            filePtr = NULL;
            *fileSize = 0;

            for (i = 0; i < (int)ARRAY_LENGTH(mFlags); i++) {
                if (!mFlags[i])
                    continue;
                if (ARCOpen(&mHandles[i], path, &fileInfo) == 0)
                    continue;

                filePtr = ARCGetStartAddrInMem(&fileInfo);
                *fileSize = ARCGetLength(&fileInfo);
                ARCClose(&fileInfo);
            }

            if (filePtr != NULL) {
                const char* lz77Hdr = (const char*)filePtr;
                if (lz77Hdr[0] == 'L' && lz77Hdr[1] == 'Z' && lz77Hdr[2] == '7' && lz77Hdr[3] == '7') {
                    uncompressedSize = CXGetUncompressedSize((const u8*)filePtr + 4);
                    CXUncompressLZ((const u8*)filePtr + 4, pScratch);
                    *fileSize = uncompressedSize;
                    return pScratch;
                }
            }

            return filePtr;
        }
    }  // namespace arcreader
}  // namespace www
