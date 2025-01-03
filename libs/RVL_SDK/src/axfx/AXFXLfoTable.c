#include <revolution/types.h>

static s32 __SinTableFixedPoint[128] = {
    0,        411733,   823219,   1234208,  1644454,  2053710,  2461728,
    2868264,  3273072,  3675908,  4076531,  4474698,  4870168,  5262706,
    5652074,  6038037,  6420363,  6798821,  7173184,  7543226,  7908725,
    8269460,  8625213,  8975771,  9320922,  9660459,  9994176,  10321874,
    10643354, 10958422, 11266890, 11568571, 11863283, 12150850, 12431098,
    12703857, 12968963, 13226258, 13475586, 13716797, 13949746, 14174291,
    14390299, 14597637, 14796184, 14985817, 15166424, 15337895, 15500126,
    15653022, 15796488, 15930440, 16054795, 16169479, 16274424, 16369565,
    16454847, 16530216, 16595628, 16651044, 16696429, 16731757, 16757007,
    16772163, 16777216, 16772163, 16757007, 16731757, 16696429, 16651043,
    16595628, 16530216, 16454846, 16369565, 16274424, 16169479, 16054794,
    15930439, 15796488, 15653022, 15500126, 15337894, 15166424, 14985817,
    14796183, 14597638, 14390298, 14174290, 13949744, 13716797, 13475586,
    13226257, 12968964, 12703856, 12431096, 12150848, 11863283, 11568570,
    11266888, 10958422, 10643353, 10321872, 9994173,  9660458,  9320921,
    8975768,  8625213,  8269458,  7908723,  7543227,  7173183,  6798819,
    6420360,  6038037,  5652073,  5262704,  4870169,  4474697,  4076529,
    3675906,  3273072,  2868263,  2461726,  2053710,  1644454,  1234206,
    823215,   411733
};

s32* __AXFXGetLfoSinTable() {
    return __SinTableFixedPoint;
}
