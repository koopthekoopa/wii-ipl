#include "utility/iplCSFlags.h"
#include "utility/iplUtility.h"

#include <revolution/nand.h>
#include <private/nand.h>

#include <revolution/sc.h>

#include <cstring>

#define FLAG_FILE_PATH  "/shared2/sys/flags.dat"

namespace ipl {
    namespace utility {
        s32 CSFlags::CreateFlagsFile() {
            u32 dummy;
            bool createFile = false;

            s32 result = NANDPrivateGetType(FLAG_FILE_PATH, (u8*)&dummy);
    
            if (result == NAND_RESULT_NOEXISTS) {
                createFile = true;
            }
            else if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::CreateFlagsFile: the flag file is bad status: %d\n", result);

                result = NANDPrivateDelete(FLAG_FILE_PATH);
                if (result != NAND_RESULT_OK) {
                    OSReport("CSFlags::CreateFlagsFile: delete flag file failed.\n");
                    return result;
                }

                createFile = true;
            }

            if (createFile) {
                NANDFileInfo    file;
                CSFlagsData     data ALIGN32;

                // Create file

                OSReport("CSFlags::CreateFlagsFile: create flags.dat.\n");

                result = NANDPrivateCreate(FLAG_FILE_PATH, NAND_PERM_USER | NAND_PERM_GROUP_READ | NAND_PERM_BOTH_READ /*??*/, 0);
                if (result != NAND_RESULT_OK) {
                    OSReport("CSFlags::CreateFlagsFile: create a file failed: %d\n", result);
                    return result;
                }

                // Open file

                result = NANDPrivateOpen(FLAG_FILE_PATH, &file, NAND_ACCESS_WRITE);
                if (result != NAND_RESULT_OK) {
                    OSReport("CSFlags::CreateFlagsFile: open a file failed: %d\n", result);
                    return result;
                }

                // Write blank contents

                memset(&data, 0, sizeof(data));

                result = NANDWrite(&file, &data, sizeof(data));
                if (result != sizeof(data)) {
                    OSReport("CSFlags::CreateFlagsFile: write data failed: %d\n", result);
                    NANDClose(&file);
                    return result;
                }

                // Close file

                result = NANDClose(&file);
                if (result != NAND_RESULT_OK) {
                    OSReport("CSFlags::CreateFlagsFile: close a file failed: %d\n", result);
                    return result;
                }
            }

            return result;
        }

        s32 CSFlags::ReadFlags(CSFlagsData* outData) {
            NANDFileInfo    file;
            CSFlagsData     data ALIGN32;

            // Opne file

            s32 result = NANDPrivateOpen(FLAG_FILE_PATH, &file, NAND_ACCESS_READ);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::ReadFlags: open a file failed: %d\n", result);
                return result;
            }

            // Read contents

            result = NANDRead(&file, &data, sizeof(data));
            if (result != sizeof(data)) {
                OSReport("CSFlags::ReadFlags: read data failed: %d\n", result);
                NANDClose(&file);
                return result;
            }

            // Close file

            result = NANDClose(&file);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::ReadFlags: close a file failed: %d\n", result);
                return result;
            }

            // Copy read contents to output

            memcpy(outData, &data, sizeof(data));

            return result;
        }

        s32 CSFlags::WriteFlags(CSFlagsData* inData) {
            NANDFileInfo    file;
            CSFlagsData     data ALIGN32;

            // Opne file

            s32 result = NANDPrivateOpen(FLAG_FILE_PATH, &file, NAND_ACCESS_WRITE);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::WriteFlags: open a file failed: %d\n", result);
                return result;
            }

            // Write contents
            
            memcpy(&data, inData, sizeof(data));
            result = NANDWrite(&file, &data, sizeof(data));
            if (result != sizeof(data)) {
                OSReport("CSFlags::WriteFlags: write data failed: %d\n", result);
                NANDClose(&file);
                return result;
            }

            // Close file

            result = NANDClose(&file);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::WriteFlags: close a file failed: %d\n", result);
                return result;
            }

            return result;
        }

        s32 CSFlags::UpdateFlagsFile() {
            CSFlagsData data;

            // Create file

            s32 result = CreateFlagsFile();
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::UpdateFlagsFile: flag file is bad status: %d\n", result);
                return result;
            }

            // Read flags

            result = ReadFlags(&data);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::UpdateFlagsFile: failed to read the flag: %d\n", result);
                return result;
            }

            // Set flags

            SetEULAFlag(&data);

            // Write flags

            result = WriteFlags(&data);
            if (result != NAND_RESULT_OK) {
                OSReport("CSFlags::UpdateFlagsFile: failed to write the flag: %d\n", result);
                return result;
            }
            
            // Finished.

            return result;
        }

        void CSFlags::SetEULAFlag(CSFlagsData* data) {
            if (SCGetEULA()) {
                utility::setBit(&data->flags, CSFlagsData::FLAG_SYSCONF_EULA);
            }
            else {
                utility::clearBit(&data->flags, CSFlagsData::FLAG_SYSCONF_EULA);
            }
        }
    }
}
