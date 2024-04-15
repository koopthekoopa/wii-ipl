#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

typedef struct {
    // "identifier"
	uint32_t i_magic; // 0x00
	uint8_t i_bit; // 0x04
	uint8_t i_endian; // 0x05
	uint8_t i_version; // 0x06
	uint8_t i_osabi; // 0x07
	uint8_t i_abiversion; // 0x08
	uint8_t i_pad[7]; // 0x09
    
    // header
	uint16_t type;
	uint16_t machine;
	uint32_t version;
	uint32_t entry;
	uint32_t phoff;
	uint32_t shoff;
	uint32_t flags;
	uint16_t ehsize;
	uint16_t phentsize;
	uint16_t phnum;
	uint16_t shentsize;
	uint16_t shnum;
	uint16_t shstrndx;
} PPCElfHead;

typedef struct {
    uint32_t bs1Offset;
    uint32_t pad0[6];
    uint32_t bs2Offset;
    uint32_t pad1[10];
    uint32_t bs1Address;
    uint32_t pad2[6];
    uint32_t bs2Address;
    uint32_t pad3[10];
    uint32_t bs1Size;
    uint32_t pad4[6];
    uint32_t bs2Size;
    uint32_t pad5[10];
    uint32_t unkAddress;        //
    uint32_t unkSize;           // Help
    uint32_t bs1RelatedPerhaps; //
    uint32_t pad6[7];
} BSHead;

static inline uint32_t be32(uint32_t v) {
	return (v >> 24) | ((v >> 8)  & 0x0000FF00) | ((v << 8)  & 0x00FF0000) | (v << 24);
}

static inline uint16_t be16(uint16_t v) {
	return (v >> 8) | (v << 8);
}

static bool gotArg(char* arg0, char* arg1) {
    return strncmp(arg0,arg1,(sizeof(arg1)/sizeof(arg1[0]))) == 0;
}

int main(int argc, char** argv) {
    char* baseFile = NULL;
    char* inBS1FileName = NULL;
    size_t inBS1Size = 0x00000400;
    char* inBS2FileName = NULL;
    size_t inBS2Size = 0;
    char* outFileName = NULL;
    bool stripBss = false;
    
    uint8_t* bs1ImgData;
    uint8_t* bs2ImgData;
    
    if (argc <= 1) {
        printf("%s -b <base file> -bs1 <bs1 elf> (-bs1_size <bs1 size>) -bs2 <bs2 elf> (-bs2_size <bs2 size>) (-s) -img <output>\n",argv[0]);
    }
    
    for (int i = 1; i < argc; i++) {
        if (gotArg(argv[i],"-b")) {
            baseFile = argv[i + 1];
        }
        else if (gotArg(argv[i],"-bs1")) {
            inBS1FileName = argv[i + 1];
        }
        else if (gotArg(argv[i],"-bs1_size")) {
            inBS1Size = (size_t)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i],"-bs2")) {
            inBS2FileName = argv[i + 1];
        }
        else if (gotArg(argv[i],"-bs2_size")) {
            inBS2Size = (size_t)strtol(argv[i + 1], NULL, 16);
        }
        else if (gotArg(argv[i],"-img")) {
            outFileName = argv[i + 1];
        }
        else if (gotArg(argv[i],"-s")) {
            stripBss = true;
        }
    }
    
    if (!inBS1FileName || !inBS2FileName || !outFileName) {
        printf("missing some required args!\n");
        return -1;
    }
    
    
}


