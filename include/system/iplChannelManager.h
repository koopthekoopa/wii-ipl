#ifndef IPL_CHANNEL_MANAGER_H
#define IPL_CHANNEL_MANAGER_H

#include <revolution/types.h>
#include <revolution/arc.h>
#include <revolution/sc.h>

#include <revolution/nwc24.h>

#include <private/es.h>

#include <egg/core.h>

#include "system/iplNandMeta.h"
#include "system/iplNandShared.h"

#define CHANNEL_INFO(primary, second, flags, titleId) \
    { primary, second, 0, 0, flags, ES_TITLE_TYPE(titleId), ES_TITLE_CODE(titleId) }

#define CHANNEL_INFO_NULL \
    { 0, 0, 0, 0, 0, 0, 0 }

#define MAX_CHANNEL_COLUMN  3
#define MAX_CHANNEL_ROW     4
#define MAX_CHANNEL_INDEX   (MAX_CHANNEL_ROW * MAX_CHANNEL_COLUMN)

#define MAX_CHANNEL_PAGE    4

#define MAX_CHANNEL_TOTAL   (MAX_CHANNEL_PAGE * MAX_CHANNEL_INDEX)

#define CHANNEL_INFO_SIZE(p, i) ((p * i) * sizeof(channel::SInfo))
#define MAX_CHANNEL_INFO_SIZE   CHANNEL_INFO_SIZE(MAX_CHANNEL_PAGE, MAX_CHANNEL_INDEX)

namespace ipl {
    namespace channel {
        enum {
            PRIMARY_TYPE_NONE = 0,
            PRIMARY_TYPE_DISK,
            PRIMARY_TYPE_UNUSED,
            PRIMARY_TYPE_CHANNEL,
        };

        enum {
            SECONARY_TYPE_NORMAL = 0,
            SECONARY_TYPE_SYSTEM,
        };
        
        typedef struct SChannelInfo {
            inline void clear() {
                primaryType = 0;
                secondaryType = 0;
                reserved[0] = 0;
                reserved[1] = 0;
                flags = 0;
                titleType = 0;
                titleCode = 0;
            }
            u8          primaryType;    // 0x00
            u8          secondaryType;  // 0x01

            u8          reserved[2];    // 0x02

            s32         flags;          // 0x04

            union {
                struct {
                    ESTitleId32 titleType;  // 0x00
                    ESTitleId32 titleCode;  // 0x04
                };
                //ESTitleId titleId;
            };                          // 0x08
        } SInfo;

        enum {
            NAME_INDEX_TITLE = 0,
            NAME_INDEX_DESCRIPTION,
            NAME_INDEX_MAX,
        };

        namespace {
            enum {
                DISK_BANNERDATA_ICON = 0,
                DISK_BANNERDATA_BANNER,
                DISK_BANNERDATA_SOUND,
                DISK_BANNERDATA_MAX,
            };
        }

        #define META_CHANNEL_NAME_LENGTH    20
        #define META_DISK_IN_MESSAGE_LENGTH 376
        #define META_CURRENT_VERSION        3

        #define META_PAD                    64

        typedef struct SMetaBlockHeader {
            char    magic[4];   // 0x00 (Always "IMET"; "IPL Meta"?)
            u32     headerSize; // 0x04
            u32     version;    // 0x08

            u32     iconSize;   // 0x0C
            u32     bannerSize; // 0x10
            u32     soundSize;  // 0x14

            union {
                u32 flags;
                struct {
                    u32 iconRSOIdx      : 4;    // 0x00:11110000000000000000000000000000
                    u32 bannerRSOIdx    : 4;    // 0x00:00001111000000000000000000000000
                    u32 iconCSIdx       : 4;    // 0x01:00000000111100000000000000000000
                    u32 bannerCSIdx     : 4;    // 0x01:00000000000011110000000000000000
                    u32 unk_15          : 1;    // 0x02:00000000000000001000000000000000
                    u32 unk_14          : 1;    // 0x02:00000000000000000100000000000000
                    u32 unk_13          : 1;    // 0x02:00000000000000000010000000000000
                    u32 unk_12          : 1;    // 0x02:00000000000000000001000000000000
                    u32 unk_11          : 1;    // 0x02:00000000000000000000100000000000
                    u32 unk_10          : 1;    // 0x02:00000000000000000000010000000000
                    u32 unk_09          : 1;    // 0x02:00000000000000000000001000000000
                    u32 unk_08          : 1;    // 0x02:00000000000000000000000100000000
                    u32 unk_07          : 1;    // 0x03:00000000000000000000000010000000
                    u32 unk_06          : 1;    // 0x03:00000000000000000000000001000000
                    u32 unk_05          : 1;    // 0x03:00000000000000000000000000100000
                    u32 unk_04          : 1;    // 0x03:00000000000000000000000000010000
                    u32 unk_03          : 1;    // 0x03:00000000000000000000000000001000
                    u32 unk_02          : 1;    // 0x03:00000000000000000000000000000100
                    u32 unk_01          : 1;    // 0x03:00000000000000000000000000000010
                    u32 unk_00          : 1;    // 0x03:00000000000000000000000000000001
                };
            };                  // 0x18
        } SMetaBlockHeader;

        typedef struct SChanMgrMetaHeader {
            u8                  reserved0[META_PAD];                                            // 0x00
            SMetaBlockHeader    blockHdr;                                                       // 0x40

            u16                 names[SC_LANG_MAX][NAME_INDEX_MAX][META_CHANNEL_NAME_LENGTH+1]; // 0x5C

            u8                  reserved1[588];                                                 // 0x3A4

            NETMD5Sum           MD5Sum;                                                         // 0x4F0
        } SChanMgrMetaHeader;

        enum {
            CHAN_STATE_UNLOADED = 0,
            CHAN_STATE_LOADED_META,
            CHAN_STATE_LOADED,
        };

        typedef struct SChannelEntry {
            u8*                 arcData;                            // 0x00
            SChanMgrMetaHeader* metaHdr;                            // 0x04
            u16                 tmdVersion;                         // 0x08
            u16                 missingTicket;                      // 0x0A

            u32                 headerSize;                         // 0x0C
            int                 headerOffset;                       // 0x10

            int                 ticketIdx;                          // 0x14

            vu8                 loadedBnr;                          // 0x18
            u8                  loadedBnrData[DISK_BANNERDATA_MAX]; // 0x19

            ARCHandle           arc;                                // 0x1C
            SInfo               info;                               // 0x38
            nand::MetaFile*     bnrFile;                            // 0x48

            int                 state;                              // 0x4C

            u8                  rsoExBuf[32];                       // 0x50
        } SEntry;

        typedef struct SChanMgrDiskInMessages {
            u16 messages[SC_LANG_MAX][META_DISK_IN_MESSAGE_LENGTH]; // 0x00
        } SDiskInMessages;

        enum {
            UNLOCK_STATE_INVALID = 0,
            UNLOCK_STATE_1,
            UNLOCK_STATE_2,
            UNLOCK_STATE_3,
            UNLOCK_STATE_4,
        };

        class Manager {
            public:
                Manager(EGG::Heap* heap);
                virtual ~Manager();

                void                initManager();
                void                update();

                void                reserveRefresh();
                void                refreshAsync();

                BOOL                isInitialized() const;

                BOOL                isLoadedPage(int page) const;
                BOOL                isLoaded(int page, int index) const;
                BOOL                isLoadedTmp() const;

                ESTitleId           hasChannel(ESTitleId titleId, int* outPage = NULL, int* outIndex = NULL) const;

                BOOL                isEnableUrlJump();
                BOOL                setupUrlJump(const char* url);
                BOOL                setupChannelJump(ESTitleId titleId, const char* data);

                void*               getDiskThumbnail(bool unk);
                void*               getDiskBanner(bool unk);
                void*               getDiskSound(bool unk);

                nand::MetaFile*     loadThumbnailAsync(EGG::Heap* heap, int page, int index);
                nand::MetaFile*     loadBannerAsync(EGG::Heap* heap, int page, int index);
                nand::MetaFile*     loadSoundAsync(EGG::Heap* heap, int page, int index);

                nand::SharedFile*   loadThumbnailRsoAsync(EGG::Heap* heap, int page, int index);
                nand::SharedFile*   loadBannerRsoAsync(EGG::Heap* heap, int page, int index);

                nand::SharedFile*   loadThumbnailCSAsync(EGG::Heap* heap, int page, int index);
                nand::SharedFile*   loadBannerCSAsync(EGG::Heap* heap, int page, int index);

                void                loadLockedMsgAsync(int page, int index);
                BOOL                isLoadedLockedMsg();

                u16*                getLockedMsg();

                void                moveChannelInfo(int page1, int index1, int page2, int index2);

                u16*                getLockedMsgFromBuf(const SDiskInMessages* diskInMsgs) const;

                BOOL                checkNeedUpdate(int page, int index) const;
                BOOL                isParentalRestricted(int page, int index) const;
                BOOL                isInternetChannel(int page, int index) const;

                void                setDiskChannelName();
                void                getDiskChannelLocation(int* page, int* index);

                int                 getUnlockChannelState(int page, int index) const;
                int                 getUnlockTicket(int page, int index, ESTicketView* ticket) const;

                void                loadLockedTitleAsync(int page, int index, ESTicketView& ticket) const;
                void                clearRsoExBuf(int page, int index);

                void                loadTmpMetaHeader(ESTitleId titleId);
                void                loadTmpMetaHeaderAsync(ESTitleId titleId);

                void                loadMetaHeaderAsync(int page, int index);

                void                makeLoadOrderList(int* list) const;

                ESTitleId           getTitleID(int page, int index) const;
                u16*                getTitleName(int page, int index, int nameIndex) const;

                int                 updateInitState();
                int                 updateWaitSCFlush();
                void                updateDiskState();

                void*               getDiskBannerData(int index, bool unk);

                int                 searchMetaHeader(const u8* buffer);

                BOOL                checkHeaderBase(const u8* buffer, u32* headerSize = NULL);
                BOOL                checkHeaderMD5(u8* buffer);
                BOOL                calcMD5(const u8* sum, const u8* buffer, u32 length) const;

                bool                setDiskBannerInfo(bool useDiskChan);

                void                titleIDtoPageIndex(ESTitleId titleId, int* outPage, int* outIndex) const;

                BOOL                nand_error_handling(int code);

                SEntry*             fn_8133A4E0(ESTitleId titleId);
                u32                 fn_8133A57C(ESTitleId titleId);
                u32                 fn_8133A5B8(ESTitleId titleId);
                BOOL                fn_8133A5F0(ESTitleId titleId);
                BOOL                fn_8133A634(ESTitleId titleId);
                BOOL                fn_8133A678(ESTitleId titleId);
                BOOL                fn_8133A6B8(ESTitleId titleId);
                BOOL                fn_8133A73C(ESTitleId titleId);
                nand::MetaFile*     fn_8133A7A4(EGG::Heap* heap, ESTitleId titleId);
                nand::MetaFile*     fn_8133A85C(EGG::Heap* heap, ESTitleId titleId);
                nand::SharedFile*   fn_8133A924(EGG::Heap* heap, ESTitleId titleId);
                void                fn_8133A9F0();
                void                fn_8133AA50(ESTitleId titleId);

                SEntry&             getChannel(int page, int index) { return mChannels[page][index]; }

                BOOL                isReady()   { return mState == FINISH; }

            private:
                typedef struct MD5Head {
                    u8          magic[4];       // 0x00 (`IMD5`; "IPL MD5"?)
                    u32         length;         // 0x04
                    u8          reserved[8];    // 0x08
                    NETMD5Sum   md5;            // 0x10
                } MD5Head;

                enum {
                    INIT = 0,
                    SC_FLUSH,
                    FINISH,
                };

                EGG::Heap*          mpHeap;                                         // 0x04
                int                 mState;                                         // 0x08

                SEntry              mChannels[MAX_CHANNEL_PAGE][MAX_CHANNEL_INDEX]; // 0x0C
                SEntry              mTmpChannel;                                    // 0x150C

                SChanMgrMetaHeader  mDiskChanMetaHdr;                               // 0x157C

                int                 mBS2State;                                      // 0x1B7C
                bool                mbCanRefresh;                                   // 0x1B80
                bool                unk_0x1B81;
                
                u8*                 mpDiskIconBuf;                                  // 0x1B84
                u8*                 mpDiskBannerBuf;                                // 0x1B88
                u8*                 mpDiskSoundBuf;                                 // 0x1B8C
                bool                mbSetDiskBannerInfo;                            // 0x1B90

                u32                 mPrevNandResult;                                // 0x1B94

                int                 mChJumpPage;                                    // 0x1B98
                int                 mChJumpIndex;                                   // 0x1B9C
                char                mChJumpData[NWC24_MAX_CHJP_SIZE];               // 0x1BA0
                bool                mbLoadedChJump;                                 // 0x1DA0

                nand::MetaFile*     mpLockedMsgFile;                                // 0x1DA4

                static u32          mNumFinished;
                static int          mNumValidChannel;
                static bool         mDiskChannelFixed;

                static int          msCurPage;
                static int          msCurIndex;

                static void         initManagerTask(void* work);

                static void         cbLoadTmpMetaHeader(void* work);

                static void         cbReadTmpMetaHeader(void* work);
                static void         cbReadMetaHeader(void* work);
        };
    }
}

#endif // IPL_CHANNEL_MANAGER_H
