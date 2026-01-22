#ifndef REVOLUTION_CX_H
#define REVOLUTION_CX_H

#include <revolution/types.h>

#define CX_COMPRESSION_TYPE_LZ          0x10    /* Lempel Ziv encoded */
#define CX_COMPRESSION_TYPE_HUFFMAN     0x20    /* Huffman encoded */
#define CX_COMPRESSION_TYPE_RUN_LENGTH  0x30    /* Runlength encoded */

#define CX_COMPRESSION_TYPE_MASK        0xF0

static inline int CXGetCompressionType(const void* data) {
    return *(u8*)data & CX_COMPRESSION_TYPE_MASK;
}

#include <revolution/cx/CXUncompression.h>
#include <revolution/cx/CXSecureUncompression.h>
#include <revolution/cx/CXStreamingUncompression.h>

#endif  // REVOLUTION_CX_H
