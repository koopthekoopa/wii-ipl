#ifndef IPL_SCENE_CONTEST_H
#define IPL_SCENE_CONTEST_H

#include <revolution/ncd.h>

#ifdef __cplusplus
extern "C" {
#endif

void IPLContestInitialize(void* heapBuf, NCDProxyProfile* proxy);
void IPLContestStart();
int IPLContestProcess();
void IPLContestShutdown();

int IPLContestGetResult();

int IPLContestGetErrorCode(int conntype);
int IPLGetNATSupportCode(int conntype);

#ifdef __cplusplus
}
#endif

#endif  // IPL_SCENE_CONTEST_H
