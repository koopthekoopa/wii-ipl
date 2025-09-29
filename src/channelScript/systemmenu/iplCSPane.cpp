#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace pane {
            CHANSVmDefineMethod(show) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    nw4r::lyt::Pane* pane = *static_cast<nw4r::lyt::Pane**>(*VmParentObj->value.ptr_v);
                    if (pane != NULL) {
                        result = TRUE;
                        pane->SetVisible(true);
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(hide) {
                BOOL result = FALSE;
                if (util::is_valid_datap(VmParentObj)) {
                    nw4r::lyt::Pane* pane = *static_cast<nw4r::lyt::Pane**>(*VmParentObj->value.ptr_v);
                    if (pane != NULL) {
                        result = TRUE;
                        pane->SetVisible(false);
                    }
                }
                return result;
            }
        }
    }
}
