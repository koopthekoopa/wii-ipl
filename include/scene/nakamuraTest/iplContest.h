#ifndef IPL_SCENE_CONTEST_H
#define IPL_SCENE_CONTEST_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/ncd.h>

void IPLContestInitialize(void*, NCDProxyProfile*);
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
