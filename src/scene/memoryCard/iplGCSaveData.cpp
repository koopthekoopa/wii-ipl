#include "scene/memoryCard/iplGCSaveData.h"
#include "layout/GUIManager.h"

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

      mpPaneManager = new gui::PaneManager(mpEvent, NULL, NULL);
      mpPaneManager->createLayoutScene(*mpLayout->getNW4RLyt());
      mpPaneManager->init();

      nw4r::lyt::Pane* pane = mpLayout->FindPaneByName("B_Data_00");
      gui::PaneComponent* comp = mpPaneManager->getPaneComponentByPane(pane);
      if (comp != NULL) {
        comp->setTriggerTarget(true); // Calls Component::setTriggerTarget(bool) at vtable offset 0x54
      }

      int anim3 = do_animation(3);
      int anim2 = do_animation(2);
      add_anmbutton("B_Data_00", anim2, anim3, 0);
    }

    GCSaveData::~GCSaveData() {}
} // namespace scene
} // namespace ipl
