#ifndef IPL_SCENE_NAND_SD_CARD_MANAGER_H
#define IPL_SCENE_NAND_SD_CARD_MANAGER_H

#include <revolution/types.h>

#include "scene/saveDataEdit/iplSaveDataBox.h"

#include "system/iplNandSDWorker.h"

namespace ipl {
    namespace scene {
        class NandSDCardManager {
        public:
            enum Mode {
                NAND_MANAGER_MODE_SAVES = 0,
                NAND_MANAGER_MODE_APPS = 1,
            };

            NandSDCardManager(Mode);
            ~NandSDCardManager();

            void calc();
            void cmdGetWiiBanner(SavedataBox*, int, bool isWiiNotSD);

            void cmdSDMount();
            void cmdSDFormat();

            void cmdExistSDSave(u32);
            void cmdExistNandSave(u32);

            void cmdListNand();
            void cmdListSD();

            void cmdGetNandFree();
            void cmdGetSDFree();

            void cmdDelNandSave(SavedataBox*);
            void cmdDelSDSave(SavedataBox*);

            void cmdCopySaveNandToSD(ESTitleId);
            void cmdCopySaveSDToNand(u32);

            void cmdMoveSaveNandToSD(SavedataBox*);
            void cmdMoveSaveSDToNand(SavedataBox*);

            void cmdTerminate();
            void cmdCleanQueue();

            bool isWorking();

            int getAsyncResult();

            NandSDWorker* getWorker() { return pWorker; }

            inline int getNandBlocksFree() { return mNandBlocksFree; }
            inline int getSDBlocksFree() { return mSDBlocksFree; }

            inline bool isSDWriteProtected() { return pWorker->is_sd_write_protected() == TRUE; }

            inline int getUnk0x00000() { return unk_0x00000; }

            inline int sdWorkerReadyMaybe() { return unk_0xe8774 == 0 && unk_0xe8674 == 0; }

        private:
            u32 unk_0x00000;                     // 0x00000
            Mode mMode;                          // 0x00004
            NandSDWorker* pWorker;               // 0x00008
            void* unk_0x0000c;                   // 0x0000c
            void* unk_0x00010;                   // 0x00010
            undefined4 unk_0x00014;              // 0x00014
            undefined4 unk_0x00018;              // 0x00018
            nw4r::ut::List unk_0x0001c;          // 0x0001c
            nw4r::ut::List unk_0x00028;          // 0x00028
            undefined4 unk_0x00034;              // 0x00034
            u8 mThumbnailArr[15][0x628];         // 0x00038
            WiiBannerFileInfo mFileInfoArr[15];  // 0x05c90
            u32 unk_0xe85e0;                     // 0xe85e0
            u32 unk_0xe85e4;                     // 0xe85e4
            u32 unk_0xe85e8;                     // 0xe85e8
            u32 unk_0xe85ec;                     // 0xe85ec
            u8 unk_0xe85f0[0x80];                // 0xe85f0
            u32 unk_0xe8670;                     // 0xe8670
            u32 unk_0xe8674;                     // 0xe8674
            u32 unk_0xe8678;                     // 0xe8678
            u32 unk_0xe867c;                     // 0xe867c
            u8 unk_0xe8680[0xf0];                // 0xe8680
            undefined4 unk_0xe8770;              // 0xe8770
            undefined4 unk_0xe8774;              // 0xe8774
            undefined4 unk_0xe8778;              // 0xe8778
            undefined4 unk_0xe877c;              // 0xe877c
            int mNandBlocksFree;                 // 0xe8780
            int mSDBlocksFree;                   // 0xe8784
            u8 unk_0xe8788[0x20];                // 0xe8788
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NAND_SD_CARD_MANAGER_H
