#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace anim {
            BOOL start(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                ipl::layout::Animator* anim;
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        anim->initFrame();
                        anim->restart();
                        ret = TRUE;
                    }
                }
                return ret;
            }

            BOOL restart(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        anim->restart();
                        ret = TRUE;
                    }
                }
                return ret;
            }

            BOOL stop(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        anim->stop();
                        ret = TRUE;
                    }
                }
                return ret;
            }

            BOOL is_playing(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetInteger(vm, hdr2, anim->isPlaying()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL init_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    f32 frame = static_cast<f32>(arg->value.float_v);
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        if (frame >= 0.0f) {
                            anim->initAnmFrame(frame);
                            ret = TRUE;
                        }
                    }
                }
                return ret;
            }

            BOOL set_max_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        f32 val = static_cast<f32>(arg->value.float_v);
                        f32 minFrame = anim->getMinFrame();
                        if (val >= 0.0f && minFrame < val) {
                            anim->setMaxFrame(val);
                            ret = TRUE;
                        }
                    }
                }
                return ret;
            }

            BOOL set_min_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        f32 val = static_cast<f32>(arg->value.float_v);
                        f32 maxFrame = anim->getMaxFrame();
                        if (val >= 0.0f && val < maxFrame) {
                            anim->setMinFrame(val);
                            ret = TRUE;
                        }
                    }
                }
                return ret;
            }

            BOOL set_current_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    f32 val = static_cast<f32>(arg->value.float_v);
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        anim->setCurrentFrame(val);
                        ret = TRUE;
                    }
                }
                return ret;
            }

            BOOL set_type(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgInteger(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    s32 type = arg->value.int_v;
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        if (type >= 0 && type < 4) {
                            anim->setAnmType(type);
                            ret = TRUE;
                        }
                    }
                }
                return ret;
            }

            BOOL set_delta(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
                if (util::is_valid_datap(hdr) && arg != NULL) {
                    f32 val = static_cast<f32>(arg->value.float_v);
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        anim->setSpeed(val);
                        ret = TRUE;
                    }
                }
                return ret;
            }

            BOOL get_max_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetFloat(vm, hdr2, anim->getMaxFrame()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL get_min_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetFloat(vm, hdr2, anim->getMinFrame()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL get_current_frame(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetFloat(vm, hdr2, anim->getCurrentFrame()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL get_type(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetInteger(vm, hdr2, anim->getAnmType()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL get_delta(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL ret = FALSE;
                if (util::is_valid_datap(hdr)) {
                    ipl::layout::Animator* anim = *static_cast<ipl::layout::Animator**>(*hdr->value.ptr_v);
                    if (anim != NULL) {
                        ret = CHANSVmSetFloat(vm, hdr2, anim->getSpeed()) == CHANS_VM_OK;
                    }
                }
                return ret;
            }

            BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj, u32 anim) {
                BOOL ret = FALSE;
                u32* data = static_cast<u32*>(CHANSVmNewObjData(VmInst, VmObj, sizeof(u32)));
                if (data != NULL) {
                    *data = anim;
                    VmObj->type = CHANS_VM_TYPE_OBJECT;
                    CHANSVmNativeClass* ncls = CHANSVmFindNativeClass(VmInst, "Anim");
                    VmObj->parentCls = ncls;
                    ret = ncls != NULL;
                }
                return ret;
            }

            const CHANSVmMethodList cMethodList[] = {
                {"start", start},
                {"restart", restart},
                {"stop", stop},
                {"isPlaying", is_playing},
                {"initFrame", init_frame},
                {"setMaxFrame", set_max_frame},
                {"setMinFrame", set_min_frame},
                {"setCurrentFrame", set_current_frame},
                {"setType", set_type},
                {"setDelta", set_delta},
                {"getMaxFrame", get_max_frame},
                {"getMinFrame", get_min_frame},
                {"getCurrentFrame", get_current_frame},
                {"getType", get_type},
                {"getDelta", get_delta},
            };

            const CHANSVmPropertyList cPropertyList[] = {
                {"*TYPE_FORWARD", util::get_int<0>, NULL},
                {"*TYPE_BACKWARD", util::get_int<1>, NULL},
                {"*TYPE_LOOP", util::get_int<2>, NULL},
                {"*TYPE_ALTERNATE", util::get_int<3>, NULL},
            };

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "Anim", NULL, NULL);
                if (cls != NULL) {
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, CHANSVmMethodCount(cMethodList)) == CHANS_VM_OK;
                    result =
                        result & (CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, CHANSVmPropertyCount(cPropertyList)) == CHANS_VM_OK);
                }
                return result;
            }
        }  // namespace anim
    }  // namespace cs
}  // namespace ipl
