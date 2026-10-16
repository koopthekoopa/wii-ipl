#include "internal/file_struct.h"

int fwide(FILE* file, int file_mode) {
    int orientation;
    int res;

    if (file == NULL || file->mode.file_kind == file_closed) {
        return 0;
    }

    orientation = file->mode.file_orientation;

    switch (orientation) {
        case file_unoriented:
            if (file_mode > 0) {
                file->mode.file_orientation = file_wide_oriented;
            } else if (file_mode < 0) {
                file->mode.file_orientation = file_char_oriented;
            }

            res = file_mode;
            break;

        case file_wide_oriented:
            res = 1;
            break;

        case file_char_oriented:
            res = -1;
            break;
    }

    return res;
}