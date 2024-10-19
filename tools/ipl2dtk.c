// Converts BS2 image to DOL that can be used for DTK.
// Currently only Wii IPL executables are supported.

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

typedef struct rom_copy_info {
    uint32_t address;
    uint32_t asdfghjkl; // same as `address`
    uint32_t size;
} rom_copy_info;

typedef struct bss_init_info {
    uint32_t address;
    uint32_t size;
} bss_init_info;

typedef struct DOLSection {
    uint32_t offset;
    uint32_t address;
    uint32_t size;
    uint8_t* data;
} DOLSection;

typedef struct BSSInfo {
    uint32_t address;
    uint32_t size;
} BSSInfo;

typedef struct BootStageSection {
    uint32_t offset;
    uint32_t address;
    uint32_t size;
    uint8_t* data;
} BootStageSection;

static inline uint32_t swap32(uint32_t v) {
    return (v >> 24) | ((v >> 8)  & 0x0000FF00) | ((v << 8)  & 0x00FF0000) | (v << 24);
}

static inline uint16_t swap16(uint16_t v) {
    return (v >> 8) | (v << 8);
}

#define BOOTSTAGE_COUNT 2

#define TEXT_COUNT      2
#define DATA_COUNT      8
#define BSS_COUNT       3

#define textSec 0
#define dataSec 1

int linkOrder[TEXT_COUNT + DATA_COUNT] = {
    textSec,
    dataSec,
    dataSec,
    textSec,
    dataSec,
    dataSec,
    dataSec,
    dataSec,
    dataSec,
    dataSec
};

// The addresses are all the same in every Wii IPL version.
#define ROM_COPY_ADDR   0x364
#define BSS_INIT_ADDR   0x3E8

BootStageSection        bs[BOOTSTAGE_COUNT];
DOLSection              text[TEXT_COUNT];
DOLSection              data[DATA_COUNT];
BSSInfo                 bss;
uint32_t                entryPoint;

rom_copy_info rci[TEXT_COUNT + DATA_COUNT];
bss_init_info bii[BSS_COUNT];

#define addr_to_u32(x) x / 4

int compareBSS(const void* a, const void* b) {
    return swap32(((bss_init_info*)a)->address) - swap32(((bss_init_info*)b)->address);
}

void BSReadSections(FILE* file) {
    uint32_t header[0x40];

    fseek(file, 0, SEEK_SET);
    fread(header, sizeof(header), 1, file);

    // Read BootStage header

    bs[0].offset = swap32(header[0x00]);
    bs[0].address = swap32(header[addr_to_u32(0x48)]);
    bs[0].size = swap32(header[addr_to_u32(0x90)]);

    bs[1].offset = swap32(header[addr_to_u32(0x1C)]) + 0x20;
    bs[1].address = swap32(header[addr_to_u32(0x64)]) + 0x20;
    bs[1].size = swap32(header[addr_to_u32(0xAC)]);

    fseek(file, bs[0].offset + bs[0].size - 4, SEEK_SET);
    fread(&entryPoint, 4, 1, file);
    entryPoint = swap32(entryPoint);

    // Read ROM info

    fseek(file, bs[1].offset + ROM_COPY_ADDR, SEEK_SET);
    fread(rci, sizeof(rci), 1, file);

    // Read BSS Info

    fseek(file, bs[1].offset + BSS_INIT_ADDR, SEEK_SET);
    fread(bii, sizeof(bii), 1, file);

    // HACK: Re-order the BSS init info to fix relocation detecting
    qsort(bii, BSS_COUNT, sizeof(bss_init_info), compareBSS);

    // HACK: Change the size for BSS addresses that are far away to fix "alignment errors"
    if (swap32(bii[0].address) == 0x81080000) {
        bii[0].size = swap32(swap32(rci[0].address) - swap32(bii[0].address));
    }

    bss.address = swap32(bii[0].address);
    bss.size = swap32(bii[BSS_COUNT - 1].address) - swap32(bii[0].address) + swap32(bii[BSS_COUNT - 1].size);

    // Get sections info

    int txtI = 0, datI = 0;
    for (int i = 0; i < sizeof(rci) / sizeof(rom_copy_info); i++) {
        switch (linkOrder[i]) {
            case textSec: {
                text[txtI].address = swap32(rci[i].address);
                text[txtI].size = swap32(rci[i].size);
                txtI++;
                break;
            }
            case dataSec: {
                data[datI].address = swap32(rci[i].address);
                data[datI].size = swap32(rci[i].size);
                datI++;
                break;
            }
        }
    }

    // Read text sections
    for (int i = 0; i < TEXT_COUNT; i++) {
        text[i].data = malloc(text[i].size);
        fseek(file, bs[1].offset + (text[i].address - bs[1].address), SEEK_SET);
        fread(text[i].data, text[i].size, 1, file);
    }

    // Read data sections
    for (int i = 0; i < DATA_COUNT; i++) {
        if (data[i].address == 0) continue;

        data[i].data = malloc(data[i].size);
        fseek(file, bs[1].offset + (data[i].address - bs[1].address), SEEK_SET);
        fread(data[i].data, data[i].size, 1, file);
    }
}

void BSWriteDol(FILE* input, FILE* output) {
    uint32_t header[0x40];
    memset(header, 0, sizeof(header));

    // Leave header blank for now
    fseek(output, 0x00, SEEK_SET);
    fwrite(header, sizeof(header), 1, output);

    // Section data
    for (int i = 0; i < TEXT_COUNT; i++) {
        text[i].offset = ftell(output);
        fwrite(text[i].data, text[i].size, 1, output);
        fwrite(header, ftell(output) % 0x20, 1, output);
    }

    for (int i = 0; i < DATA_COUNT; i++) {
        data[i].offset = ftell(output);
        fwrite(data[i].data, data[i].size, 1, output);
        fwrite(header, ftell(output) % 0x20, 1, output);
    }

    // Now prepare for writing the header.

    // Section offset
    for (int i = 0; i < TEXT_COUNT; i++) {
        header[0x00 + i] = text[i].offset;
    }
    for (int i = 0; i < DATA_COUNT; i++) {
        header[addr_to_u32(0x1C) + i] = data[i].offset;
    }

    // Section address
    for (int i = 0; i < TEXT_COUNT; i++) {
        header[addr_to_u32(0x48) + i] = text[i].address;
    }
    for (int i = 0; i < DATA_COUNT; i++) {
        header[addr_to_u32(0x64) + i] = data[i].address;
    }

    // Section size
    for (int i = 0; i < TEXT_COUNT; i++) {
        header[addr_to_u32(0x90) + i] = text[i].size;
    }
    for (int i = 0; i < DATA_COUNT; i++) {
        header[addr_to_u32(0xAC) + i] = data[i].size;
    }

    // Other info
    header[addr_to_u32(0xD8)] = bss.address;
    header[addr_to_u32(0xDC)] = bss.size;
    header[addr_to_u32(0xE0)] = entryPoint;

    // Fix up header
    for (int i = 0; i < sizeof(header) / 4; i++) {
        header[i] = swap32(header[i]);
    }

    // Write to the header
    fseek(output, 0x00, SEEK_SET);
    fwrite(header, sizeof(header), 1, output);

    // Update hacked BSS init info
    fseek(output, text[0].offset + BSS_INIT_ADDR, SEEK_SET);
    fwrite(bii, sizeof(bii), 1, output);
}

int main(int argc, char** argv) {
    FILE* inputFile = fopen(argv[1], "rb");
    FILE* outputFile = fopen(argv[2], "wb");

    BSReadSections(inputFile);
    BSWriteDol(inputFile, outputFile);

    fclose(inputFile);
    fclose(outputFile);

    return 0;
}


