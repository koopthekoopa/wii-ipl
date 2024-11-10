/**
 * elf2bs tool for making nandloaders and ipls. credits to elf2dol. (https://github.com/devkitPro/gamecube-tools/tree/master/elftool)
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

typedef struct Elf32_Hdr {
	unsigned char   e_ident[16];
	uint16_t		e_type;
	uint16_t		e_machine;
	uint32_t		e_version;
    
	uint32_t		e_entry;
	uint32_t		e_phoff;
	uint32_t		e_shoff;
    
	uint32_t		e_flags;
    
	uint16_t		e_ehsize;
    
	uint16_t		e_phentsize;
	uint16_t		e_phnum;
    
	uint16_t		e_shentsize;
	uint16_t		e_shnum;
    
	uint16_t		e_shstrndx;
} Elf32_Hdr;

typedef struct Elf32_Phdr {
	uint32_t	    p_type;

	uint32_t	    p_offset;

	uint32_t	    p_vaddr;
	uint32_t	    p_paddr;

	uint32_t	    p_filesz;
	uint32_t	    p_memsz;

	uint32_t	    p_flags;

	uint32_t	    p_align;
} Elf32_Phdr;

typedef struct BSHead {
    uint32_t        bs1Offset;
    uint32_t        pad0[6];
    uint32_t        bs2Offset;
    uint32_t        pad1[10];
    
    uint32_t        bs1Address;
    uint32_t        pad2[6];
    uint32_t        bs2Address;
    uint32_t        pad3[10];
    
    uint32_t        bs1Size;
    uint32_t        pad4[6];
    uint32_t        bs2Size;
    uint32_t        pad5[10];
    
    uint32_t        stubAddress;
    uint32_t        stubSize;
    
    uint32_t        entryPoint;
    
    uint32_t        pad6[7];
} BSHead;

static inline uint32_t swap32(uint32_t v) {
    return (v >> 24) | ((v >> 8)  & 0x0000FF00) | ((v << 8)  & 0x00FF0000) | (v << 24);
}

static inline uint16_t swap16(uint16_t v) {
    return (v >> 8) | (v << 8);
}

#define EI_CLASS	4
#define EI_DATA	    5
#define EI_VERSION	6
#define EI_PAD		7
#define EI_NIDENT	16

#define ELFCLASS32	1
#define ELFDATA2MSB	2
#define EV_CURRENT	1

#define ET_EXEC		2
#define EM_PPC		20

uint8_t* ReadBootStage(char* fileName, size_t imageSize, int baseAddress) {
    FILE *file;
    Elf32_Hdr header;
    Elf32_Phdr* prgHeaders;
    uint8_t* returnImageData;
    size_t prgHeadCount, prgHeadOffset;

    file = fopen(fileName, "rb");
        
    if (!file) {
        printf("error opening input file %s\n", fileName);
        return NULL;
    }
    
    // Read the ELF header
    if (fread(&header, sizeof(Elf32_Hdr), 1, file) != 1) {
        printf("error reading input files %s\n", fileName);
        return NULL;
    }
        
    prgHeadCount = (size_t)swap16(header.e_phnum);
    prgHeadOffset = (int)swap32(header.e_phoff);
    
    // Verify ELF header
    if (memcmp(&header.e_ident[0], "\177ELF", 4) ||
        header.e_ident[EI_CLASS] != ELFCLASS32 ||
        header.e_ident[EI_VERSION] != EV_CURRENT ||
        swap32(header.e_version) != EV_CURRENT ||
        swap16(header.e_type) != ET_EXEC) {
        
        printf("this file is not an elf file! %s\n", fileName);
        return NULL;
    }

    if (swap16(header.e_machine) != EM_PPC ||
        header.e_ident[EI_DATA] != ELFDATA2MSB) {
        printf("this file is not a PowerPC elf file! %s\n", fileName);
        return NULL;
    }

    if (prgHeadCount == 0 || prgHeadOffset == 0) {
        printf("no program headers found on file %s\n", fileName);
        return NULL;
    }

    if (swap16(header.e_phentsize) != sizeof(Elf32_Phdr)) {
        printf("invalid header size on file %s\n", fileName);
        printf("is %d but supposed to be %d\n", swap16(header.e_phentsize), (int)sizeof(Elf32_Phdr));
        return NULL;
    }
        
    prgHeaders = malloc(prgHeadCount * sizeof(Elf32_Phdr));

    // Read the program headers
    if(fseek(file, prgHeadOffset, SEEK_SET) < 0) {
        printf("seek error on file %s\n", fileName);
        return NULL;
    }

    if (fread(prgHeaders, sizeof(Elf32_Phdr), prgHeadCount, file) != prgHeadCount) {
        printf("error reading program headers on file %s\n", fileName);
        return NULL;
    }

    // Write the sections to the boot stage memory
    returnImageData = malloc(imageSize);

    for (int i = 0; i < (int)prgHeadCount; i++) {
        if (swap32(prgHeaders[i].p_memsz) && (swap32(prgHeaders[i].p_filesz) <= swap32(prgHeaders[i].p_memsz))) {
            fseek(file, swap32(prgHeaders[i].p_offset), SEEK_SET);
            fread(&returnImageData[swap32(prgHeaders[i].p_vaddr) - baseAddress], swap32(prgHeaders[i].p_filesz), 1, file);
        }
    }

    fclose(file);

    return returnImageData;
}

static bool gotArg(char* arg0, char* arg1) {
    return strncmp(arg0, arg1, strlen(arg1) + 1) == 0;
}

int main(int argc, char** argv) {
    char* inBS1FileName = NULL;
    size_t inBS1Size = 0x00000400;
    int inBS1Address = 0x80003400;

    char* inBS2FileName = NULL;
    size_t inBS2Size = 0;
    int inBS2Address = 0x81330000;

    char* inBaseFileName = NULL;
    char* outFileName = NULL;
    
    uint8_t *BS1ImgData, *BS2ImgData;
    
    // Intro
    if (argc <= 1) {
        printf("%s args:\n-b <base file>\n-bs1 <bs1 elf>\n-bs1_size <bs1 size>\n-bs1_addr <bs1 address>\n-bs2 <bs2 elf>\n-bs2_size <bs2 size>\n-bs2_addr <bs2 address>\n-output <output file>\n", argv[0]);
        return -1;
    }
    
    for (int i = 1; i < argc; i++) {
        if (gotArg(argv[i], "-b")) {
            inBaseFileName = argv[i + 1];
        }
        else if (gotArg(argv[i], "-bs1")) {
            inBS1FileName = argv[i + 1];
        }
        else if (gotArg(argv[i], "-bs1_size")) {
            inBS1Size = (size_t)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i], "-bs1_size")) {
            inBS1Size = (size_t)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i], "-bs1_addr")) {
            inBS1Address = (int)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i], "-bs2")) {
            inBS2FileName = argv[i + 1];
        }
        else if (gotArg(argv[i], "-bs2_size")) {
            inBS2Size = (size_t)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i], "-bs2_addr")) {
            inBS2Address = (int)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i], "-output")) {
            outFileName = argv[i + 1];
        }
    }
    
    if (!inBS1FileName || !inBS2FileName || !outFileName) {
        printf("missing some required args!\n");
        return -1;
    }
    
    // Read the Boot Stage ELF files.
    BS1ImgData = ReadBootStage(inBS1FileName, inBS1Size, inBS1Address);
    BS2ImgData = ReadBootStage(inBS2FileName, inBS2Size, inBS2Address);

    if (!BS1ImgData || !BS2ImgData) {
        return -1;
    }

    // Write the Boot Stage file!
    {
        /*
            There is this weird 32 bytes long header at the start of BS2 for the Wii Menu.
            Don't know what these are used for and how they are calculated but,
            I don't really care as it is never used in neither the Wii Menu or the System.
            So why not grab this unknown header from the base Wii Menu executable.
        */

        BSHead bsHeader;
        FILE* bsOutputFile;
        
        bool useUnknownHeader = inBaseFileName != NULL;
        int unknownHeaderSize = useUnknownHeader ? 32 : 0;

        memset(&bsHeader, 0, sizeof(BSHead));

        bsHeader.bs1Offset = swap32(sizeof(BSHead));              // it is always after the header
        bsHeader.bs2Offset = swap32(sizeof(BSHead) + inBS1Size);  // it is always after BS1

        bsHeader.bs1Address = swap32(inBS1Address);
        bsHeader.bs2Address = swap32(inBS2Address - unknownHeaderSize);

        bsHeader.bs1Size = swap32(inBS1Size);
        bsHeader.bs2Size = swap32(inBS2Size);

        bsHeader.stubAddress = swap32(0x81340000);
        bsHeader.stubSize = swap32(0x00010000);

        bsHeader.entryPoint = swap32(inBS1Address - 0x80000000);

        bsOutputFile = fopen(outFileName, "wb");

        fwrite(&bsHeader, sizeof(BSHead), 1, bsOutputFile);
        
        // BS1
        fwrite(BS1ImgData, inBS1Size, 1, bsOutputFile);
        
        // Unknown header
        if (useUnknownHeader) {
            BSHead baseHeader;
            FILE* baseFile = fopen(inBaseFileName, "rb");
            uint8_t unknownHeaderData[unknownHeaderSize];

            fread(&baseHeader, sizeof(BSHead), 1, baseFile);
            fseek(baseFile, swap32(baseHeader.bs2Offset), SEEK_SET);
            fread(unknownHeaderData, unknownHeaderSize, 1, baseFile);

            fwrite(unknownHeaderData, unknownHeaderSize, 1, bsOutputFile);

            fclose(baseFile);
        }

        // BS2
        fwrite(BS2ImgData, inBS2Size - unknownHeaderSize, 1, bsOutputFile);

        // Finish up
        fclose(bsOutputFile);

        free(BS1ImgData);
        free(BS2ImgData);
    }

    return 0;
}


