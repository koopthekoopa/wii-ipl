#include "scene/memoryCard/iplGCSaveData.h"

#include "system/iplNand.h"
#include "iplMath.h"


namespace ipl {
namespace scene {

static const MemoryBase::AnmName scAnmName[5] = {
    { "it_ObjCubeEdit_b_SaveDataIn.brk",       "G_Data"      },
    { "it_ObjCubeEdit_b_SaveDataOut.brk",      "G_Data"      },
    { "it_ObjCubeEdit_b_SaveDataFoucs.brk",    "G_Data"      },
    { "it_ObjCubeEdit_b_SaveDataFoucsOut.brk", "G_Data"      },
    { "it_ObjCubeEdit_b_SaveDataFlash.brk",    "G_DataFlash" }
};

    GCSaveData::GCSaveData(EGG::Heap* heap, ipl::nand::LayoutFile* param_3, const char* p4, const char* p5, ipl::math::VEC3 param_6)
    : MemoryBase()
    {
      mField_0x38 = 0;
      mpLayout = new layout::Object(heap, param_3, p4, p5);

      add_animation(scAnmName, 5);
      mpLayout->finishBinding();

      mpEvent = new MemoryBaseEvent(this);

      // mpPaneManager = new gui::PaneManager(mpEvent);
      // mpPaneManager->bindLayout(mpLayout->getLayout());
      // mpPaneManager->init(0);
    }

    GCSaveData::~GCSaveData() {}
} // namespace scene
} // namespace ipl

// int * GCSaveData::GCSaveData
//                 (int *param_1, EGGHeap *param_2, iplnandLayoutFile *param_3, char *param_4,
//                 char *param_5, undefined4 *param_6)


// {
//   ipllayoutObject *this;
//   ipllayoutObject *piVar1;
//   undefined4 *puVar2;
//   int *piVar3;
//   nw4rlytPane *pnVar4;
//   undefined4 uVar5;
//   undefined4 uVar6;
//   int iVar7;
//   int *piVar8;
  
//   *param_1 = (int)&MemoryBase::__vtable;
//   param_1[1] = 0;
//   param_1[2] = 0;
//   nw4r::ut::List_Init(param_1 + 4, 8);
//   nw4r::ut::List_Init(param_1 + 7, 0xc);
//   nw4r::ut::List_Init(param_1 + 10, 0x1c);
//   param_1[0xe] = 0;
//   *param_1 = (int)&__vtable;
//   this = (ipllayoutObject *)new[](ulong)(0x580);
//   piVar1 = (ipllayoutObject *)0x0;
//   if (this != (ipllayoutObject *)0x0) {
//     piVar1 = layout::Object::Object(this, param_2, param_3, param_4, param_5);
//   }
//   param_1[1] = (int)piVar1;
//   (**(code **)(*param_1 + 0x30))(param_1, &scAnmName, 5);
//   layout::Object::finishBinding((ipllayoutObject *)param_1[1]);
//   puVar2 = (undefined4 *)new[](ulong)(0x10);
//   if (puVar2 != (undefined4 *)0x0) {
//     puVar2[2] = 0;
//     *puVar2 = &MemoryBaseEvent::__vtable;
//     puVar2[3] = param_1;
//   }
//   param_1[0xd] = (int)puVar2;
//   piVar3 = (int *)new[](ulong)(0x34);
//   if (piVar3 != (int *)0x0) {
//     iVar7 = param_1[1];
//     piVar8 = (int *)param_1[0xd];
//     *piVar3 = (int)&::gui::Manager::__vtable;
//     piVar3[1] = (int)piVar8;
//     piVar3[5] = 0;
//     if (piVar8 != (int *)0x0) {
//       (**(code **)(*piVar8 + 0xc))(piVar8, piVar3);
//     }
//     nw4r::ut::List_Init(piVar3 + 2, 8);
//     *piVar3 = (int)&::gui::PaneManager::__vtable;
//     piVar3[9] = iVar7 + 0x298;
//     nw4r::ut::List_Init(piVar3 + 6, 8);
//     *piVar3 = (int)&gui::PaneManager::__vtable;
//     piVar3[0xb] = 0;
//     *(undefined1 *)(piVar3 + 0xc) = 1;
//   }
//   param_1[3] = (int)piVar3;
//   (**(code **)(*piVar3 + 0x44))(piVar3, param_1[1] + 4);
//   (**(code **)(*(int *)param_1[3] + 0x34))((int *)param_1[3], 0);
//   pnVar4 = (nw4rlytPane *)
//            (**(code **)(**(int **)(param_1[1] + 0x14) + 0x3c))
//                      (*(int **)(param_1[1] + 0x14), lbl_81696CA8, 1);
//   gui::PaneManager::setTriggerTarget((iplguiPaneManager *)param_1[3], pnVar4, true);
//   uVar5 = (**(code **)(*param_1 + 0x34))(param_1, 3);
//   uVar6 = (**(code **)(*param_1 + 0x34))(param_1, 2);
//   (**(code **)(*param_1 + 0x20))(param_1, lbl_81696CA8, uVar6, uVar5, 0);
//   setTranslate((int)param_1, param_6);
//   return param_1;
// }
