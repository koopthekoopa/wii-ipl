#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace layout {
            int ctor() {
                return 1;
            }
            int get_anm(CHANSVm* vm, CHANSVmObjHdr* hdr1, CHANSVmObjHdr* hdr2) {
                BOOL flag = false;
                UINT16 uv3;
                channel::ChannelScriptManager* e = System::getCSManager();
                CHANSVmObjHdr* a = CHANSVmGetArgInteger(vm, 0);
                uv3 = a->value.int_v;
                if (hdr1 != 0 && (a->value.ptr_v < (vmPtr*)(uv3 < 0x10) && e != 0)) {
                    flag = true;
                    ipl::layout::Animator** f = e->getData().unk_0x08;
                    int v = cs::anim::_ctor(vm, hdr2, uv3);
                    if ((f != NULL) && (v == 0)) {
                        flag = false;
                    }
                }
                return flag;
            }
        }  // namespace layout
        namespace util {}
    }  // namespace cs
}  // namespace ipl
