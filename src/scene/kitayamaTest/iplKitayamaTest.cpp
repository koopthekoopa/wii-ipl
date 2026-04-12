#include "scene/kitayamaTest/iplKitayamaTest.h"

#include "scene/iplSceneCreator.h"
#include "scene/setting/iplSetting.h"

#include <private/os/OSPlayRecord.h>

#include "iplSystem.h"
#include "utility/iplGraphics.h"

namespace ipl {
	namespace kitayama {
		class NandSDWorker_AutoTest {
		public:
			NandSDWorker_AutoTest();
			~NandSDWorker_AutoTest();
			void start_save_test(void*, void*, int);
			void start_initialize_nand(void*, int);
			void start_app_test(void*, void*, int);
			int process();
			int get_result();

		private:
			u8 unk_0x00[0x289C0];
		};
	}
}

namespace ipl {
	namespace scene {
		KitayamaTest::KitayamaTest(EGG::Heap* heap, int unk) : FaderSceneBase(heap) {
			unk_0x58 = heap;
			unk_0x5C = unk;
			unk_0x68 = 0;
			unk_0x6C = 0;
			unk_0x60 = 0;
		}

		void KitayamaTest::create() {
			OSReport("Kitayamatest scene created.\n");

			unk_0x64 = new (unk_0x58, 4) kitayama::NandSDWorker_AutoTest;

			switch (unk_0x5C) {
				case 0: {
					unk_0x60 = 1;
					break;
				}
				case 1: {
					unk_0x60 = 2;
					break;
				}
				case 2: {
					unk_0x60 = 7;
					break;
				}
			}
		}

		void KitayamaTest::destroy() {
			delete unk_0x64;

			if (unk_0x68 != 0) {
				System::getMem2App()->free((void*)unk_0x68);
			}

			if (unk_0x6C != 0) {
				System::getMem2App()->free((void*)unk_0x6C);
			}

			OSReport("Kitayamatest scene destroyed.\n");
		}

		FaderSceneCommand KitayamaTest::calcNormal() {
			FaderSceneCommand command = FADER_SCN_CONTINUE;
			controller::Interface* controller = System::getMasterController();

			switch (unk_0x60) {
				case 0:
				case 1: {
					if (controller->downTrg(controller::REVO_BTN_A)) {
						unk_0x60 = 2;
					} else if (controller->downTrg(controller::REVO_BTN_B)) {
						unk_0x60 = 7;
					}
					break;
				}

				case 2: {
					s32 result;
					NANDFileInfo bannerInfo;
					NANDFileInfo testInfo;
					u8* buffer;

					ES_SetUid((ESTitleId)0x0001000030303030ULL);
					ISFS_CloseLib();
					ISFS_OpenLib();

					nand::wrapper::Delete("/title/00010000/30303030/data/banner.bin");
					result = nand::wrapper::Create("/title/00010000/30303030/data/banner.bin", 0x3F, 0);
					if (result == 0) {
						result = nand::wrapper::Open("/title/00010000/30303030/data/banner.bin", &bannerInfo, 2);
						if (result != 0) {
							OSReport(" NANDOpen failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xAD, "Terminated.\n");
						}

						buffer = (u8*)unk_0x58->alloc(0xF0A0, 0x20);
						memset(buffer, 0x55, 0xF0A0);
						((u32*)buffer)[0] = 0x5749424E;
						((u32*)buffer)[1] = 0;

						result = nand::wrapper::Write(&bannerInfo, buffer, 0xF0A0);
						if ((u32)result != 0xF0A0) {
							OSReport(" NANDWrite failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xB8, "Terminated.\n");
						}

						result = nand::wrapper::Close(&bannerInfo);
						if (result != 0) {
							OSReport(" NANDClose failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xBE, "Terminated.\n");
						}

						unk_0x58->free(buffer);
					} else if (result == -6) {
						OSReport("banner.bin already exist.\n");
					} else {
						OSReport(" NANDCreate failed: %d\n", result);
						OSPanic("iplKitayamaTest.cpp", 0xC6, "Terminated.\n");
					}

					result = nand::wrapper::Create("/title/00010000/30303030/data/test1.bin", 0x3F, 0);
					if (result == 0) {
						result = nand::wrapper::Open("/title/00010000/30303030/data/test1.bin", &testInfo, 2);
						if (result != 0) {
							OSReport(" NANDOpen failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xD5, "Terminated.\n");
						}

						buffer = (u8*)unk_0x58->alloc(0xF0A0, 0x20);
						memset(buffer, 0x55, 0xF0A0);
						((u32*)buffer)[0] = 0x5749424E;
						((u32*)buffer)[1] = 0;

						result = nand::wrapper::Write(&testInfo, buffer, 0xF0A0);
						if ((u32)result != 0xF0A0) {
							OSReport(" NANDWrite failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xE0, "Terminated.\n");
						}

						result = nand::wrapper::Close(&testInfo);
						if (result != 0) {
							OSReport(" NANDClose failed: %d\n", result);
							OSPanic("iplKitayamaTest.cpp", 0xE6, "Terminated.\n");
						}

						unk_0x58->free(buffer);
					} else if (result == -6) {
						OSReport("test1.bin already exist.\n");
					} else {
						OSReport(" NANDCreate failed: %d\n", result);
						OSPanic("iplKitayamaTest.cpp", 0xEE, "Terminated.\n");
					}

					result = nand::wrapper::CreateDir("/title/00010000/30303030/data/nocopy", 0x3F, 0);
					if (result != 0 && result != -6) {
						OSReport(" NANDCreateDir failed: %d\n", result);
						OSPanic("iplKitayamaTest.cpp", 0xF8, "Terminated.\n");
					}

					result = nand::wrapper::Create("/title/00010000/30303030/data/nocopy/test1.txt", 0x3F, 0);
					if (result != 0 && result != -6) {
						OSReport(" NANDCreate failed: %d\n", result);
						OSPanic("iplKitayamaTest.cpp", 0xFE, "Terminated.\n");
					}

					ES_SetUid(SYSMENU_TITLE_ID);
					ISFS_CloseLib();
					ISFS_OpenLib();

					unk_0x68 = (u32)System::getMem2App()->alloc(0x3EA60, 0x40);
					result = MEMCalcHeapSizeForUnitHeap(0x19620, 0x60, 0x20);
					unk_0x6C = (u32)System::getMem2App()->alloc(result + 0x40000, 0x20);
					unk_0x60 = 3;
					break;
				}

				case 3: {
					unk_0x64->start_save_test((void*)unk_0x68, (void*)unk_0x6C, 0x18);
					unk_0x60 = 4;
					break;
				}

				case 4: {
					if (unk_0x64->process() == 0x51) {
						unk_0x60 = 12;
					} else if (unk_0x64->process() == 0x52) {
						unk_0x60 = 5;
					}
					break;
				}

				case 5: {
					unk_0x64->start_app_test((void*)unk_0x68, (void*)unk_0x6C, 0x18);
					unk_0x60 = 6;
					break;
				}

				case 6: {
					if (unk_0x64->process() == 0x51) {
						unk_0x60 = 12;
					} else if (unk_0x64->process() == 0x52) {
						unk_0x60 = 11;
					}
					break;
				}

				case 7: {
					System::stopReceiveSchedule();
					unk_0x68 = (u32)System::getMem2App()->alloc(0x3EA60, 0x40);
					unk_0x60 = 8;
					break;
				}

				case 8: {
					if (System::isReceiveScheduleStopped()) {
						System::getNandManager()->closeContentsAll();

						if (System::getCdbManager() != NULL) {
							System::getCdbManager()->closeDatabase();
						}

						s32 result = CDBUninit();
						OSReport("CDBERR: %d\n", result);
						__OSStopPlayRecord();
						unk_0x64->start_initialize_nand((void*)unk_0x68, 0x13);
						unk_0x60 = 9;
					} else {
						OSReport("Wait for stop schedule...\n");
					}
					break;
				}

				case 9: {
					if (unk_0x64->process() == 0x51 || unk_0x64->process() == 0x52) {
						unk_0x60 = 10;
					}
					break;
				}

				case 10: {
					int result = unk_0x64->get_result();
					System::getNandManager()->openContentsAll();

					if (unk_0x5C != 0) {
						static_cast<Setting*>(System::getSceneManager()->getScene(SCENE_SETTING))->setInitializeResult(true, result);
						unk_0x60 = 11;
						command = FADER_SCN_NEXT;
					} else if (result == 0) {
						unk_0x60 = 11;
					} else {
						unk_0x60 = 12;
					}
					break;
				}

				case 11:
				case 12: {
					if (controller->downTrg(controller::REVO_BTN_1)) {
						System::getFader()->fadeOut();
						reserveAllSceneDestruction(SCENE_BOARD, NULL);
						command = FADER_SCN_NEXT;
					}

					System::getFader()->fadeOut();
					break;
				}
			}

			return command;
		}

		FaderSceneCommand KitayamaTest::calcFadeout() {
			if (unk_0x5C == 2) {
				return FADER_SCN_NEXT;
			}

			return System::getFader()->getStatus() == EGG::Fader::PREPARE_IN ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
		}

		void KitayamaTest::draw() {
			if (System::onDefaultDrawLayer()) {
				utility::Graphics::setOrtho();
			}
		}

		BOOL KitayamaTest::isResetAcceptable() const {
			return FALSE;
		}
	}  // namespace scene
}  // namespace ipl
