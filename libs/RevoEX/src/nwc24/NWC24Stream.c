#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <revolution/os.h>

NWC24Err NWC24FStreamInit(NWC24FileStream* stream, NWC24File* file, u32 baseOffset, u32 areaSize, char* buffer, u32 size) {
    NWC24Err err;

    stream->baseOffset = baseOffset;
    stream->file = file;
    stream->areaSize = areaSize;
    stream->buffer = buffer;
    stream->length = size;
    stream->currentOffset = 0;
    stream->realOffset = OSRoundDown32B(baseOffset);

    err = NWC24FSeek(file, stream->realOffset, NWC24_SEEK_BEG);
    if (err != NWC24_OK) {
        return err;
    }

    err = NWC24FRead(stream->buffer, NWC24FStreamGetSize(stream), stream->file);
    return err;
}

char NWC24FStreamGetc(NWC24FileStream* stream) {
    NWC24Err err;
    u32 offset;
    char ch;

    if (stream->currentOffset >= stream->areaSize) {
        return 0;
    }

    offset = stream->currentOffset + stream->baseOffset;

    if (stream->realOffset > offset || stream->realOffset + stream->length <= offset) {
        stream->realOffset = OSRoundDown32B(offset);
        err = NWC24FSeek(stream->file, stream->realOffset, NWC24_SEEK_BEG);

        switch (err) {
            case NWC24_OK: {
                err = NWC24FRead(stream->buffer, NWC24FStreamGetSize(stream), stream->file);
                break;
            }
            default: {
                break;
            }
        }
        if (err != NWC24_OK) {
            return 0;
        }
    }

    ch = stream->buffer[offset - stream->realOffset];
    stream->currentOffset++;

    return ch;
}

u32 NWC24FStreamGetSize(NWC24FileStream* stream) {
    u32 size = stream->length;
    u32 limit = (stream->baseOffset + stream->areaSize) - stream->realOffset;
    if (size > limit) {
        size = OSRoundUp32B(limit);
    }
    return size;
}

NWC24Err NWC24FStreamSeek(NWC24FileStream* stream, u32 pos) {
    if (pos < stream->areaSize) {
        stream->currentOffset = pos;
        return NWC24_OK;
    }

    return NWC24_ERR_OVERFLOW;
}

NWC24Err NWC24FStreamGetPtr(NWC24FileStream* stream, char** buffer, u32 length) {
    NWC24Err err;
    u32 offset;
    u32 index;

    if (stream->currentOffset + length > stream->areaSize) {
        return NWC24_ERR_OVERFLOW;
    }

    offset = stream->currentOffset + stream->baseOffset;

    if (offset < stream->realOffset || length + (offset - stream->realOffset) >= stream->length) {
        stream->realOffset = OSRoundDown32B(offset);
        err = NWC24FSeek(stream->file, stream->realOffset, NWC24_SEEK_BEG);

        switch (err) {
            case NWC24_OK: {
                err = NWC24FRead(stream->buffer, NWC24FStreamGetSize(stream), stream->file);
                break;
            }
            default: {
                break;
            }
        }
        if (err != NWC24_OK) {
            return err;
        }
    }

    index = offset - stream->realOffset;
    if (length + index >= stream->length) {
        return NWC24_ERR_OVERFLOW;
    }
    *buffer = &stream->buffer[index];
    return NWC24_OK;
}
