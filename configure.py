#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import argparse
import sys
from pathlib import Path
from typing import Any, Dict, List

from tools.project import (
    Object,
    ProgressCategory,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

VERSION_CONFIG   = 0
VERSION_ARGUMENT = 1
VERSION_CONTENT  = 2

DEFAULT_VERSION = 0 # 43U
VERSION_INFO = [
    # Config name
    [
        "43U",
        "43E",
        "43J",
        "43K",
    ],
    # Argument name
    [
        "4.3U",
        "4.3E",
        "4.3J",
        "4.3K",
    ],
    # Content index of the executable
    [
        8,  # 4.3U
        8,  # 4.3E
        8,  # 4.3J
        6,  # 4.3K
    ],
]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    choices=["configure", "progress"],
    default="configure",
    help="script mode (default: configure)",
    nargs="?",
)
parser.add_argument(
    "-v",
    "--version",
    choices=VERSION_INFO[VERSION_CONFIG] + VERSION_INFO[VERSION_ARGUMENT],
    type=str.upper,
    default=VERSION_INFO[VERSION_ARGUMENT][DEFAULT_VERSION],
    help="version to build",
)
parser.add_argument(
    "--build-dir",
    metavar="DIR",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--binutils",
    metavar="BINARY",
    type=Path,
    help="path to binutils (optional)",
)
parser.add_argument(
    "--compilers",
    metavar="DIR",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        metavar="BINARY",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--dtk",
    metavar="BINARY | DIR",
    type=Path,
    help="path to decomp-toolkit binary or source (optional)",
)
parser.add_argument(
    "--objdiff",
    metavar="BINARY | DIR",
    type=Path,
    help="path to objdiff-cli binary or source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    metavar="EXE",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--bstool",
    metavar="EXE",
    type=Path,
    help="path to bstool binary (optional)",
)
parser.add_argument(
    "--verbose",
    action="store_true",
    help="print verbose output",
)
parser.add_argument(
    "--non-matching",
    dest="non_matching",
    action="store_true",
    help="builds equivalent (but non-matching) or modded objects",
)
parser.add_argument(
    "--no-progress",
    dest="progress",
    action="store_false",
    help="disable progress calculation",
)
args = parser.parse_args()

config = ProjectConfig()
try:
    version_num = VERSION_INFO[VERSION_ARGUMENT].index(args.version)
except ValueError:
    version_num = VERSION_INFO[VERSION_CONFIG].index(args.version)
config.version = str(VERSION_INFO[VERSION_CONFIG][version_num])

# Apply arguments
config.build_dir = args.build_dir
config.dtk_path = args.dtk
config.objdiff_path = args.objdiff
config.binutils_path = args.binutils
config.compilers_path = args.compilers
config.generate_map = args.map
config.non_matching = args.non_matching
config.sjiswrap_path = args.sjiswrap
config.bstool_path = args.bstool
config.progress = args.progress
if not is_windows():
    config.wrapper = args.wrapper
# Don't build asm unless we're --non-matching
if not config.non_matching:
    config.asm_dir = None

# Tool versions
config.binutils_tag = "2.42-1"
config.compilers_tag = "20240706"
config.dtk_tag = "v1.3.0"
config.objdiff_tag = "v2.5.0"
config.sjiswrap_tag = "v1.2.0"
config.wibo_tag = "0.6.16"
config.bstool_tag = "v1.0.1"

# Project
config.wad_path = Path("orig") / config.version / "base.wad"
config.app_name = "0000000" + str(VERSION_INFO[VERSION_CONTENT][version_num]) + ".app"
config.app_path = Path("build") / config.version / Path("base") / config.app_name
config.dol_path = Path("build") / config.version / Path("base") / "main.dol"
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("config") / config.version / "build.sha1"
config.asflags = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym BUILD_VERSION={version_num}",
    f"--defsym VERSION_{config.version}",
]
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
]
if args.debug:
    config.ldflags.append("-g")  # Or -gdwarf-2 for Wii linkers
if args.map:
    config.ldflags.append("-mapunused")
    # config.ldflags.append("-listclosure") # For Wii linkers

# Use for any additional files that should cause a re-configure when modified
config.reconfig_deps = []

# Optional numeric ID for decomp.me preset
# Can be overridden in libraries or objects
config.scratch_preset_id = None

config.progress_all = False
config.progress_use_fancy = True
config.progress_code_fancy_frac = 288   # Maxumum amount on System Memory + Maxumum amount on SD Card
config.progress_code_fancy_item = "Channels"
config.progress_data_fancy_frac = 4096  # Amount of Wii blocks avaiable (apparenty)
config.progress_data_fancy_item = "Blocks"

# Base flags
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI off",
    "-ipa file",
    "-fp_contract on",
    "-str reuse",
    "-enc SJIS",
    "-i include",
    "-i include/decomp",
    "-i libs/Runtime/include",
    "-i libs/MSL/include",
    "-i libs/RVL_SDK/include",
    "-i libs/RevoEX/include",
    "-i libs/NW4R/include",
    "-i libs/RVLFaceLib/include",
    "-i libs/EGG/include",
    f"-i build/{config.version}/include",
    f"-DBUILD_VERSION={version_num}",
    f"-DVERSION_{config.version}",
]

# Debug flags
if args.debug:
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")

# Main IPL flags
cflags_ipl = [
    *cflags_base,
    "-gccinc",
    "-fp_contract off",
    "-Cpp_exceptions off",
    "-O4,s",
]

# Common SDK flags
cflags_sdk = [
    *cflags_base,
    "-fp_contract off",
    "-Cpp_exceptions off",
    "-O4,p",
]

# Common SDK flags (with exceptions on)
cflags_sdk_except = [
    *cflags_base,
    "-fp_contract off",
    "-Cpp_exceptions on",
    "-O4,p",
]

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-fp_contract off",
    "-gccinc",
    "-Cpp_exceptions off",
    "-O4,p",
]

config.linker_version = "GC/3.0a5.2"

# Helper function for IPL
def IPLSection(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_ipl,
        "progress_category": "main",
        "objects": objects,
    }

# Helper function for Zi Corp libraries
def ZI8Lib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk_except,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/eZiText/src",
    }


# Helper function for ATOK library
def ATOKLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/ATOKDict/src",
    }

# Helper function for RVLFaceLib libraries
def RVLFaceLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "RVLFaceLib",
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "rvlfacelib",
        "objects": objects,
        "src_dir": "libs/RVLFaceLib/src",
    }

# Helper function for TMC_JPEG libraries
def TMCJpegLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "TMC_JPEG",
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/TMC_JPEG/src",
    }

# Helper function for NW4R libraries
def NW4RLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "nw4r",
        "objects": objects,
        "src_dir": "libs/NW4R/src",
    }

# Helper function for EGG libraries
def EGGLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "EGG",
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "egg",
        "objects": objects,
        "src_dir": "libs/EGG/src",
    }

# Helper function for RVL_SDK libraries
def RVLSDKLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "rvlsdk",
        "objects": objects,
        "src_dir": "libs/RVL_SDK/src",
    }

# Helper function for RevoEX libraries
def RevoEXLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_sdk,
        "progress_category": "revoex",
        "objects": objects,
        "src_dir": "libs/RevoEX/src",
    }

# Helper function for Runtime libraries
def RuntimeLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a5.2",
        "cflags": cflags_runtime,
        "progress_category": "mw",
        "objects": objects,
        "src_dir": "libs/Runtime/src",
    }

Matching = True                   # Object matches and should be linked
NonMatching = False               # Object does not match and should not be linked
Equivalent = config.non_matching  # Object should be linked when configured with --non-Equivalent

def EquivalentFor(*versions):
    return config.version in versions

config.warn_missing_config = True
config.warn_missing_source = False
config.libs = [
    # Main
    IPLSection("system",
        [
            Object(Matching,    "system/enc_dummy.c"),
            Object(NonMatching, "system/rvl_dec.c"),
            Object(Matching,    "system/RIPL_BoardRecord.c"),
            Object(NonMatching, "system/iplSystem.cpp"),
            Object(NonMatching, "system/iplController.cpp"),
            Object(NonMatching, "system/iplChannelManager.cpp"),
            Object(NonMatching, "system/iplChannelScriptManager.cpp"),
            Object(Equivalent,  "system/iplNand.cpp"),
            Object(NonMatching, "system/iplNandShared.cpp"),
            Object(Matching,    "system/iplNandMeta.cpp"),
            Object(NonMatching, "system/iplNandManager.cpp"),
            Object(Matching,    "system/iplNandWall.cpp"),
            Object(Matching,    "system/iplFramework.cpp"),
            Object(NonMatching, "system/iplException.cpp"),
            Object(Matching,    "system/iplMessage.cpp"),
            Object(Matching,    "system/iplMessageManager.cpp"),
            Object(Matching,    "system/iplNigaoeManager.cpp"),
            Object(Matching,    "system/iplNigaoe.cpp"),
            Object(NonMatching, "system/iplCdbManager.cpp"),
            Object(NonMatching, "system/iplCdbWrapper.cpp"),
            Object(NonMatching, "system/iplPlayTimeLog.cpp"),
            Object(NonMatching, "system/iplNwc24Manager.cpp"),
            Object(Matching,    "system/iplPointer.cpp"),
            Object(Matching,    "system/iplPointerCore.cpp"),
            Object(NonMatching, "system/iplDialogWindow.cpp"),
            Object(NonMatching, "system/iplHomeButtonMenu.cpp"),
            Object(NonMatching, "system/iplNandSDWorker.cpp"),
            Object(NonMatching, "system/iplKeyboard.cpp"),
            Object(Matching,    "system/iplErrorHandler.cpp"),
            Object(NonMatching, "system/iplResetHandler.cpp"),
            Object(Matching,    "system/iplWarningHandler.cpp"),
            Object(NonMatching, "system/iplSocketSetting.cpp"),
            Object(NonMatching, "system/iplPostmanManager.cpp"),
            Object(NonMatching, "system/iplSaveDataManager.cpp"),
            Object(Matching,    "system/iplChannelRsoThread.cpp"),
            Object(NonMatching, "system/RsoSystem.cpp"),
            Object(NonMatching, "system/iplCdbBackup.cpp"),
            Object(NonMatching, "system/odh.cpp"),
            Object(NonMatching, "system/iplSDVFWorker.cpp"),
            Object(Matching,    "system/iplNandWrapper.cpp"),
            Object(Matching,    "system/main.cpp"),
            Object(NonMatching, "system/iplBS2Manager.cpp"),
            Object(NonMatching, "system/TVRC.cpp"),
            Object(NonMatching, "system/iplTVRCManager.cpp"),
            Object(Matching,    "system/_DATA_.c"),
        ]
    ),
    IPLSection("utility",
        [
            Object(Matching,    "utility/iplTree.cpp"),
            Object(Matching,    "utility/iplFrameController.cpp"),
            Object(NonMatching, "utility/iplGraphics.cpp"),
            Object(Matching,    "utility/iplCapture.cpp"),
            Object(NonMatching, "utility/iplUtility.cpp"),
            Object(Matching,    "utility/iplThread.cpp"),
            Object(Matching,    "utility/iplMessageBase.cpp"),
            Object(NonMatching, "utility/iplJpegDecoder.cpp"),
            Object(NonMatching, "utility/iplESMisc.cpp"),
            Object(NonMatching, "utility/iplCSFlags.cpp"),
        ]
    ),
    IPLSection("layout",
        [
            Object(Matching,    "layout/GUIManager.cpp"),
            Object(Matching,    "layout/iplLayout.cpp"),
            Object(Matching,    "layout/iplGuiManager.cpp"),
        ]
    ),
    IPLSection("sound",
        [
            Object(NonMatching, "sound/iplSound.cpp"),
        ]
    ),
    IPLSection("iplwww",
        [
            Object(NonMatching, "iplwww/www_browser.cpp"),
            Object(Matching,    "iplwww/www_message.cpp"),
            Object(NonMatching, "iplwww/www_surface.cpp"),
            Object(Matching,    "iplwww/www_thread.cpp"),
            Object(Matching,    "iplwww/www_print.cpp"),
            Object(NonMatching, "iplwww/www_window.cpp"),
            Object(NonMatching, "iplwww/www_transition.cpp"),
            Object(NonMatching, "iplwww/www_wiisetting.cpp"),
            Object(NonMatching, "iplwww/www_arcreader.cpp"),
        ]
    ),
    IPLSection("homebutton",
        [
            Object(NonMatching, "homebutton/HBMBase.cpp"),
            Object(NonMatching, "homebutton/HBMAnmController.cpp"),
            Object(NonMatching, "homebutton/HBMController.cpp"),
            Object(Matching,    "homebutton/HBMFrameController.cpp"),
            Object(NonMatching, "homebutton/HBMGUIManager.cpp"),
            Object(NonMatching, "homebutton/HBMRemoteSpk.cpp"),
        ]
    ),
    IPLSection("BS2",
        [
            Object(Matching,    "BS2/BootStart.c"),
            Object(Matching,    "BS2/BS2Entry.c"),
            Object(NonMatching, "BS2/BS2.c"),
            Object(Matching,    "BS2/BS2Init.c"),
            Object(NonMatching, "BS2/BS2Mach.c"),
            Object(NonMatching, "BS2/BS2Update.c"),
            Object(NonMatching, "BS2/BS2ParentalControl.c"),
            Object(NonMatching, "BS2/BringUp.c"),
            Object(NonMatching, "BS2/BS2Reset.c"),
            Object(NonMatching, "BS2/BS2Fatal.c"),
        ]
    ),
    IPLSection("address",
        [
            Object(NonMatching, "scene/address/iplAddress.cpp"),
            Object(NonMatching, "scene/address/iplAddressAddSel.cpp"),
            Object(NonMatching, "scene/address/iplAddressEdit.cpp"),
        ]
    ),
    IPLSection("backMenu",
        [
            Object(Matching,    "scene/backMenu/iplBackMenu.cpp"),
            Object(Matching,    "scene/backMenu/_DATA_.c"),
        ]
    ),
    IPLSection("board",
        [
            Object(NonMatching, "scene/board/iplBoard.cpp"),
            Object(NonMatching, "scene/board/iplBoardObject.cpp"),
            Object(NonMatching, "scene/board/iplBoardSD.cpp"),
        ]
    ),
    IPLSection("button",
        [
            Object(NonMatching, "scene/button/iplUrlProcessor.cpp"),
            Object(NonMatching, "scene/button/iplLetterButton.cpp"),
            Object(NonMatching, "scene/button/iplButton.cpp"),
            Object(NonMatching, "scene/button/iplArrow.cpp"),
        ]
    ),
    IPLSection("calendar",
        [
            Object(NonMatching, "scene/calendar/iplCalendar.cpp"),
            Object(NonMatching, "scene/calendar/iplDate.cpp"),
        ]
    ),
    IPLSection("channelEdit",
        [
            Object(NonMatching, "scene/channelEdit/iplChannelEdit.cpp"),
            Object(NonMatching, "scene/channelEdit/iplChanAppBase.cpp"),
            Object(NonMatching, "scene/channelEdit/iplChanAppBox.cpp"),
            Object(NonMatching, "scene/channelEdit/iplChanAppEdit.cpp"),
            Object(NonMatching, "scene/channelEdit/iplAnmController.cpp"),
            Object(NonMatching, "scene/channelEdit/iplNandSDCardManager.cpp"),
            Object(NonMatching, "scene/channelEdit/iplThumbnail.cpp"),
        ]
    ),
    IPLSection("channelSelect",
        [
            Object(NonMatching, "scene/channelSelect/iplChannelSelect.cpp"),
            Object(NonMatching, "scene/channelSelect/iplClock.cpp"),
            Object(NonMatching, "scene/channelSelect/iplChannelObj.cpp"),
        ]
    ),
    IPLSection("channelTitle",
        [
            Object(NonMatching, "scene/channelTitle/iplChannelTitle.cpp"),
        ]
    ),
    IPLSection("faceSelect",
        [
            Object(NonMatching, "scene/faceSelect/iplFaceSelect.cpp"),
        ]
    ),
    IPLSection("health",
        [
            Object(Equivalent,  "scene/health/iplHealth.cpp"),
        ]
    ),
    IPLSection("kitayamaTest",
        [
            Object(NonMatching, "scene/kitayamaTest/iplKitayamaTest.cpp"),
            Object(NonMatching, "scene/kitayamaTest/nandsdworker_autotest.cpp"),
        ]
    ),
    IPLSection("letterWriter",
        [
            Object(NonMatching, "scene/letterWriter/iplLetterWriter.cpp"),
        ]
    ),
    IPLSection("limitOver",
        [
            Object(NonMatching, "scene/limitOver/iplLimitOver.cpp"),
        ]
    ),
    IPLSection("mailAddSel",
        [
            Object(NonMatching, "scene/mailAddSel/iplMailAddressSelect.cpp"),
        ]
    ),
    IPLSection("memory",
        [
            Object(NonMatching, "scene/memory/iplMemory.cpp"),
        ]
    ),
    IPLSection("saveDataEdit",
        [
            Object(NonMatching, "scene/saveDataEdit/iplSaveDataBase.cpp"),
            Object(NonMatching, "scene/saveDataEdit/iplSaveDataBox.cpp"),
            Object(NonMatching, "scene/saveDataEdit/iplSaveDataEdit.cpp"),
            Object(NonMatching, "scene/saveDataEdit/iplWiiBannerFileInfo.cpp"),
        ]
    ),
    IPLSection("memoryCard",
        [
            Object(NonMatching, "scene/memoryCard/iplMemoryCard.cpp"),
            Object(NonMatching, "scene/memoryCard/iplMemoryCardBase.cpp"),
            Object(NonMatching, "scene/memoryCard/iplMemoryCardManager.cpp"),
            Object(NonMatching, "scene/memoryCard/iplGCSaveData.cpp"),
            Object(NonMatching, "scene/memoryCard/iplGCWindow.cpp"),
            Object(NonMatching, "scene/memoryCard/iplGCTextBalloon.cpp"),
            Object(NonMatching, "scene/memoryCard/CardSequence.cpp"),
        ]
    ),
    IPLSection("nakamuraTest",
        [
            Object(NonMatching, "scene/nakamuraTest/iplContest.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/NATify.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/darray.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/gsAvailable.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/nonport.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/gsSHA1.c"),
            Object(NonMatching, "scene/nakamuraTest/gamespy/natneg.c"),
            Object(NonMatching, "scene/nakamuraTest/iplNakamuraTest.cpp"),
            Object(NonMatching, "scene/nakamuraTest/iplNetSetup.cpp"),
        ]
    ),
    IPLSection("parentalDialog",
        [
            Object(NonMatching, "scene/parentalDialog/iplParentalDialog.cpp"),
        ]
    ),
    IPLSection("sceneMisc",
        [
            Object(Matching,    "scene/sceneMisc/iplReboot.cpp"),
            Object(NonMatching, "scene/sceneMisc/iplRootScene.cpp"),
        ]
    ),
    IPLSection("sdChannelSelect",
        [
            Object(NonMatching, "scene/sdChannelSelect/iplSDChannelSelect.cpp"),
            Object(NonMatching, "scene/sdChannelSelect/iplSDChannelObj.cpp"),
        ]
    ),
    IPLSection("sdChannelTitle",
        [
            Object(NonMatching, "scene/sdChannelTitle/iplSDChannelTitle.cpp"),
        ]
    ),
    IPLSection("sdChannelButton",
        [
            Object(NonMatching, "scene/sdChannelButton/iplSDButton.cpp"),
            Object(NonMatching, "scene/sdChannelButton/iplSDArrow.cpp"),
            Object(NonMatching, "scene/sdChannelButton/iplSDMenuButton.cpp"),
        ]
    ),
    IPLSection("sdChannelMemory",
        [
            Object(NonMatching, "scene/sdChannelMemory/iplSDMemory.cpp"),
        ]
    ),
    IPLSection("setting",
        [
            Object(NonMatching, "scene/setting/iplSetting.cpp"),
            Object(NonMatching, "scene/setting/iplSensitivity.cpp"),
            Object(NonMatching, "scene/setting/iplNCDSetting.cpp"),
            Object(NonMatching, "scene/setting/iplParental.cpp"),
            Object(NonMatching, "scene/setting/iplAPScanThread.cpp"),
            Object(NonMatching, "scene/setting/iplUsbAP.cpp"),
            Object(NonMatching, "scene/setting/iplUsbAPThread.cpp"),
            Object(NonMatching, "scene/setting/iplAOSSThread.cpp"),
            Object(NonMatching, "scene/setting/iplAOSS.cpp"),
            Object(NonMatching, "scene/setting/iplRakuRakuThread.cpp"),
            Object(NonMatching, "scene/setting/iplATERM.cpp"),
            Object(Matching,    "scene/setting/iplSettingBg.cpp"),
            Object(NonMatching, "scene/setting/iplSettingButton.cpp"),
            Object(NonMatching, "scene/setting/iplSettingSelect.cpp"),
        ]
    ),
    IPLSection("sceneSystem",
        [
            Object(Matching,    "scene/sceneSystem/iplSceneBase.cpp"),
            Object(NonMatching, "scene/sceneSystem/iplSceneCreator.cpp"),
            Object(NonMatching, "scene/sceneSystem/iplSceneManager.cpp"),
            Object(Matching,    "scene/sceneSystem/iplFaderSceneBase.cpp"),
        ]
    ),
    IPLSection("textWriter",
        [
            Object(NonMatching, "scene/textWriter/iplTextWriter.cpp"),
        ]
    ),
    IPLSection("bannerSound",
        [
            Object(NonMatching, "bannerSound/AudioWavePlayer.cpp"),
            Object(NonMatching, "bannerSound/AxAdpcmPlayer.cpp"),
            Object(NonMatching, "bannerSound/BannerSoundPlayer.cpp"),
            Object(NonMatching, "bannerSound/AudioWaveUtility.cpp"),
        ]
    ),
    IPLSection("keyboard",
        [
            Object(NonMatching, "keyboard/pckeyboard.cpp"),
            Object(NonMatching, "keyboard/cellphone.cpp"),
            Object(NonMatching, "keyboard/inputform.cpp"),
            Object(NonMatching, "keyboard/candidatebox.cpp"),
            Object(NonMatching, "keyboard/toolbar.cpp"),
            Object(NonMatching, "keyboard/predictlang.cpp"),
            Object(NonMatching, "keyboard/signwindow.cpp"),
            Object(NonMatching, "keyboard/stringbase.cpp"),
            Object(NonMatching, "keyboard/atokstring.cpp"), # for 4.3J
            Object(NonMatching, "keyboard/zistring.cpp"),   # for 4.3U and 4.3E
            Object(NonMatching, "keyboard/textdrawer.cpp"),
            Object(NonMatching, "keyboard/nw4rmanager.cpp"),
            Object(NonMatching, "keyboard/manager.cpp"),
            Object(NonMatching, "keyboard/util.cpp"),
            Object(NonMatching, "keyboard/cp_data.cpp"),
            Object(NonMatching, "keyboard/sw_data.cpp"),
            Object(NonMatching, "keyboard/pk_data.cpp"),
            Object(NonMatching, "keyboard/langindependent_data.cpp"),
            Object(NonMatching, "keyboard/textinputbase.cpp"),
            Object(NonMatching, "keyboard/MyTiManager.cpp"),
            Object(NonMatching, "keyboard/MyTiInputForm.cpp"),
            Object(NonMatching, "keyboard/MyTiLetter.cpp"),
            Object(NonMatching, "keyboard/MyBg.cpp"),
            Object(NonMatching, "keyboard/debug.cpp"),
            Object(NonMatching, "keyboard/GUIManager.cpp"),
            Object(NonMatching, "keyboard/HKBManager.cpp"),
            Object(NonMatching, "keyboard/HWKeyboard.cpp"),
            Object(NonMatching, "keyboard/layout.cpp"),
            Object(NonMatching, "keyboard/MyHangulStream.cpp"), # for 4.3K
        ]
    ),
    IPLSection("channelScript",
        [
            Object(NonMatching, "channelScript/CHANSVm.c"),
            Object(NonMatching, "channelScript/systemmenu/VmSystemMenu.c"),
            Object(NonMatching, "channelScript/systemmenu/iplCSSystem.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSLayout.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSPane.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSMaterial.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSTexture.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSSavedata.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSVector.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSGX.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSUtil.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSMtx.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSTextWriter.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSFont.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSRect.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSColor.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSColorS10.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSSize.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSAnim.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSSound.cpp"),
            Object(NonMatching, "channelScript/systemmenu/iplCSImage.cpp"),
        ]
    ),
    # ATOKDictionary (for 4.3J only)
    ATOKLib("ATOKDict",
        [
            Object(NonMatching, "atok.c"),
            Object(NonMatching, "atok_eng.c"),
            Object(NonMatching, "MonPE/ApLib.c"),
            Object(NonMatching, "MonPE/ApAICore.c"),
            Object(NonMatching, "MonPE/ApAIDic.c"),
            Object(NonMatching, "MonPE/ApCore.c"),
            Object(NonMatching, "MonPE/ApDic.c"),
            Object(NonMatching, "MonPE/ApJACNorm.c"),
        ]
    ),
    # eZiText (for 4.3U and 4.3E only)
    ZI8Lib("eZiText",
        [
            Object(NonMatching, "zi8ezt.c"),
            Object(NonMatching, "zi8address.c"),
            Object(NonMatching, "zi8convert.c"),
            Object(NonMatching, "zi8letter.c"),
            Object(NonMatching, "zi8alpha.c"),
            Object(NonMatching, "zi8alt.c"),
            Object(NonMatching, "zi8cand.c"),
            Object(NonMatching, "zi8cinfo.c"),
            Object(NonMatching, "zi8copy.c"),
            Object(NonMatching, "zi8dawg.c"),
            Object(NonMatching, "zi8getcand.c"),
            Object(NonMatching, "zi8init.c"),
            Object(NonMatching, "zi8is.c"),
            Object(NonMatching, "zi8match.c"),
            Object(NonMatching, "zi8utils.c"),
            Object(NonMatching, "zi8pud2.c"),
            Object(NonMatching, "zi8punct.c"),
            Object(NonMatching, "zi8uwd.c"),
            Object(NonMatching, "zi8dawg2.c"),
            Object(NonMatching, "zi8candkorea.c"),
            Object(Matching,    "zi8error.c"),
            Object(NonMatching, "zi8keymatch.c"),
            Object(NonMatching, "zi8oemdata.c"),
            Object(NonMatching, "zi8prepare.c"),
        ]
    ),
    # RevoEX
    RevoEXLib("cdb",
        [
            Object(NonMatching, "cdb/cdb.c"),
            Object(NonMatching, "cdb/CDBConv.c"),
            Object(NonMatching, "cdb/CDBDatabase.c"),
            Object(NonMatching, "cdb/CDBFileSystemUtils.c"),
            Object(NonMatching, "cdb/CDBFileSystem.c"),
            Object(NonMatching, "cdb/CDBFileSystemVF.c"),
            Object(NonMatching, "cdb/CDBFileSystemSD.c"),
            Object(NonMatching, "cdb/CDBRecord.c"),
            Object(NonMatching, "cdb/CDBRecordFile.c"),
            Object(NonMatching, "cdb/CDBRecordKey.c"),
            Object(NonMatching, "cdb/CDBIntArray.c"),
            Object(NonMatching, "cdb/CDBSystem.c"),
            Object(NonMatching, "cdb/CDBAttr.c"),
            Object(NonMatching, "cdb/CDBFBridge.c"),
            Object(NonMatching, "cdb/CDBFBridgeVF.c"),
            Object(NonMatching, "cdb/CDBFBridgeSD.c"),
            Object(NonMatching, "cdb/CDBCrypt.c"),
        ]
    ),
    RevoEXLib("ncd",
        [
            Object(NonMatching, "ncd/ncdsystem.c"),
            Object(NonMatching, "ncd/ncdsleep.c"),
        ]
    ),
    RevoEXLib("net",
        [
            Object(NonMatching, "net/nettime.c"),
            Object(Matching,    "net/crc.c"),
            Object(NonMatching, "net/md5.c"),
            Object(NonMatching, "net/sha1.c"),
            Object(NonMatching, "net/hmac.c"),
            Object(NonMatching, "net/neterrorcode.c"),
            Object(Matching,    "net/NETVersion.c"),
            Object(NonMatching, "net/aes.c"),
            Object(Matching,    "net/wireless_macaddr.c"),
        ]
    ),
    RevoEXLib("nhttp",
        [
            Object(NonMatching, "nhttp/NHTTP_bgnend.c"),
            Object(NonMatching, "nhttp/NHTTP_control.c"),
            Object(NonMatching, "nhttp/NHTTP_list.c"),
            Object(NonMatching, "nhttp/NHTTP_os_RVL.c"),
            Object(NonMatching, "nhttp/NHTTP_recvbuf.c"),
            Object(NonMatching, "nhttp/NHTTP_request.c"),
            Object(NonMatching, "nhttp/NHTTP_response.c"),
            Object(NonMatching, "nhttp/NHTTP_socket_RVL.c"),
            Object(NonMatching, "nhttp/NHTTP_stdlib_RVL.c"),
            Object(NonMatching, "nhttp/NHTTP_thread.c"),
            Object(NonMatching, "nhttp/d_nhttp_private.c"),
            Object(NonMatching, "nhttp/d_nhttp.c"),
            Object(NonMatching, "nhttp/d_nhttp_common.c"),
        ]
    ),
    RevoEXLib("nwc24",
        [
            Object(NonMatching, "nwc24/NWC24StdAPI.c"),
            Object(NonMatching, "nwc24/NWC24FileAPI.c"),
            Object(NonMatching, "nwc24/NWC24Config.c"),
            Object(NonMatching, "nwc24/NWC24Utils.c"),
            Object(NonMatching, "nwc24/NWC24Manage.c"),
            Object(NonMatching, "nwc24/NWC24MsgObj.c"),
            Object(NonMatching, "nwc24/NWC24MBoxCtrl.c"),
            Object(NonMatching, "nwc24/NWC24Mime.c"),
            Object(NonMatching, "nwc24/NWC24Stream.c"),
            Object(NonMatching, "nwc24/NWC24Parser.c"),
            Object(NonMatching, "nwc24/NWC24MsgCommit.c"),
            Object(NonMatching, "nwc24/NWC24MsgRead.c"),
            Object(NonMatching, "nwc24/NWC24Schedule.c"),
            Object(NonMatching, "nwc24/NWC24DateParser.c"),
            Object(NonMatching, "nwc24/NWC24FriendList.c"),
            Object(NonMatching, "nwc24/NWC24SecretFList.c"),
            Object(NonMatching, "nwc24/NWC24UserId.c"),
            Object(NonMatching, "nwc24/NWC24Time.c"),
            Object(NonMatching, "nwc24/NWC24Ipc.c"),
            Object(NonMatching, "nwc24/NWC24Download.c"),
            Object(NonMatching, "nwc24/NWC24CHJump.c"),
            Object(NonMatching, "nwc24/NWC24System.c"),
        ]
    ),
    RevoEXLib("so",
        [
            Object(NonMatching, "so/SOCommon.c"),
            Object(NonMatching, "so/SOBasic.c"),
            Object(NonMatching, "so/SOInformation.c"),
            Object(NonMatching, "so/SOOption.c"),
        ]
    ),
    RevoEXLib("ssl",
        [
            Object(NonMatching, "ssl/ssl_api.c"),
            Object(NonMatching, "ssl/ssl_mutex.c"),
        ]
    ),
    RevoEXLib("vf",
        [
            Object(NonMatching, "vf/pf_clib.c"),
            Object(NonMatching, "vf/pf_code.c"),
            Object(NonMatching, "vf/pf_service.c"),
            Object(NonMatching, "vf/pf_str.c"),
            Object(NonMatching, "vf/pf_w_clib.c"),
            Object(NonMatching, "vf/pf_driver.c"),
            Object(NonMatching, "vf/pdm_bpb.c"),
            Object(NonMatching, "vf/pdm_disk.c"),
            Object(NonMatching, "vf/pdm_partition.c"),
            Object(NonMatching, "vf/pdm_mbr.c"),
            Object(NonMatching, "vf/pdm_dskmng.c"),
            Object(NonMatching, "vf/pf_cache.c"),
            Object(NonMatching, "vf/pf_cluster.c"),
            Object(NonMatching, "vf/pf_dir.c"),
            Object(NonMatching, "vf/pf_entry.c"),
            Object(NonMatching, "vf/pf_entry_iterator.c"),
            Object(NonMatching, "vf/pf_fat.c"),
            Object(NonMatching, "vf/pf_fat12.c"),
            Object(NonMatching, "vf/pf_fat16.c"),
            Object(NonMatching, "vf/pf_fat32.c"),
            Object(NonMatching, "vf/pf_fatfs.c"),
            Object(NonMatching, "vf/pf_file.c"),
            Object(NonMatching, "vf/pf_path.c"),
            Object(NonMatching, "vf/pf_sector.c"),
            Object(NonMatching, "vf/pf_volume.c"),
            Object(NonMatching, "vf/pf_cp932.c"),
            Object(NonMatching, "vf/pf_attach.c"),
            Object(NonMatching, "vf/pf_chdir.c"),
            Object(NonMatching, "vf/pf_create.c"),
            Object(NonMatching, "vf/pf_detach.c"),
            Object(NonMatching, "vf/pf_errnum.c"),
            Object(NonMatching, "vf/pf_fclose.c"),
            Object(NonMatching, "vf/pf_finfo.c"),
            Object(NonMatching, "vf/pf_fopen.c"),
            Object(NonMatching, "vf/pf_format.c"),
            Object(NonMatching, "vf/pf_fread.c"),
            Object(NonMatching, "vf/pf_fseek.c"),
            Object(NonMatching, "vf/pf_fsfirst.c"),
            Object(NonMatching, "vf/pf_fsnext.c"),
            Object(NonMatching, "vf/pf_fwrite.c"),
            Object(NonMatching, "vf/pf_getdev.c"),
            Object(NonMatching, "vf/pf_init_prfile2.c"),
            Object(NonMatching, "vf/pf_mkdir.c"),
            Object(NonMatching, "vf/pf_remove.c"),
            Object(NonMatching, "vf/pf_rmdir.c"),
            Object(NonMatching, "vf/pf_sync.c"),
            Object(NonMatching, "vf/pf_unmount.c"),
            Object(NonMatching, "vf/pf_filelock.c"),
            Object(NonMatching, "vf/pf_system.c"),
            Object(NonMatching, "vf/d_vf.c"),
            Object(NonMatching, "vf/d_vf_sys.c"),
            Object(NonMatching, "vf/d_hash.c"),
            Object(NonMatching, "vf/d_time.c"),
            Object(NonMatching, "vf/d_common.c"),
            Object(NonMatching, "vf/nand_drv.c"),
            Object(NonMatching, "vf/sd_drv.c"),
        ]
    ),
    RevoEXLib("wd",
        [
            Object(NonMatching, "wd/wd_misc.c"),
            Object(NonMatching, "wd/wd_request.c"),
            Object(NonMatching, "wd/wd_init.c"),
            Object(NonMatching, "wd/WDScan.c"),
        ]
    ),
    # RVLFaceLib
    RVLFaceLib(
        [
            Object(NonMatching, "RFL_System.c"),
            Object(NonMatching, "RFL_NANDLoader.c"),
            Object(NonMatching, "RFL_NANDAccess.c"),
            Object(NonMatching, "RFL_Model.c"),
            Object(NonMatching, "RFL_MakeTex.c"),
            Object(NonMatching, "RFL_Icon.c"),
            Object(NonMatching, "RFL_HiddenDatabase.c"),
            Object(NonMatching, "RFL_Database.c"),
            Object(NonMatching, "RFL_Controller.c"),
            Object(NonMatching, "RFL_MiddleDatabase.c"),
            Object(NonMatching, "RFL_MakeRandomFace.c"),
            Object(NonMatching, "RFL_DefaultDatabase.c"),
            Object(NonMatching, "RFL_DataUtility.c"),
            Object(NonMatching, "RFL_NWC24.c"),
            Object(NonMatching, "RFL_Format.c"),
        ]
    ),
    # TMC_JPEG
    TMCJpegLib(
        [
            Object(NonMatching, "decapi.c"),
        ]
    ),
    # NW4R
    NW4RLib("snd",
        [
            Object(NonMatching, "snd/snd_AxManager.cpp"),
            Object(NonMatching, "snd/snd_AxVoice.cpp"),
            Object(NonMatching, "snd/snd_AxfxImpl.cpp"),
            Object(NonMatching, "snd/snd_Bank.cpp"),
            Object(NonMatching, "snd/snd_BankFile.cpp"),
            Object(NonMatching, "snd/snd_BasicSound.cpp"),
            Object(NonMatching, "snd/snd_Channel.cpp"),
            Object(NonMatching, "snd/snd_DisposeCallbackManager.cpp"),
            Object(NonMatching, "snd/snd_DvdSoundArchive.cpp"),
            Object(NonMatching, "snd/snd_EnvGenerator.cpp"),
            Object(NonMatching, "snd/snd_ExternalSoundPlayer.cpp"),
            Object(NonMatching, "snd/snd_FrameHeap.cpp"),
            Object(NonMatching, "snd/snd_FxChorus.cpp"),
            Object(NonMatching, "snd/snd_FxDelay.cpp"),
            Object(NonMatching, "snd/snd_FxReverbHi.cpp"),
            Object(NonMatching, "snd/snd_FxReverbHiDpl2.cpp"),
            Object(NonMatching, "snd/snd_FxReverbStd.cpp"),
            Object(NonMatching, "snd/snd_InstancePool.cpp"),
            Object(NonMatching, "snd/snd_Lfo.cpp"),
            Object(NonMatching, "snd/snd_McsSoundArchive.cpp"),
            Object(NonMatching, "snd/snd_MemorySoundArchive.cpp"),
            Object(NonMatching, "snd/snd_MidiSeqPlayer.cpp"),
            Object(NonMatching, "snd/snd_MidiSeqTrack.cpp"),
            Object(NonMatching, "snd/snd_MmlParser.cpp"),
            Object(NonMatching, "snd/snd_MmlSeqTrack.cpp"),
            Object(NonMatching, "snd/snd_MmlSeqTrackAllocator.cpp"),
            Object(NonMatching, "snd/snd_NandSoundArchive.cpp"),
            Object(NonMatching, "snd/snd_RemoteSpeaker.cpp"),
            Object(NonMatching, "snd/snd_RemoteSpeakerManager.cpp"),
            Object(NonMatching, "snd/snd_SeqFile.cpp"),
            Object(NonMatching, "snd/snd_SeqPlayer.cpp"),
            Object(NonMatching, "snd/snd_SeqSound.cpp"),
            Object(NonMatching, "snd/snd_SeqSoundHandle.cpp"),
            Object(NonMatching, "snd/snd_SeqTrack.cpp"),
            Object(NonMatching, "snd/snd_SoundArchive.cpp"),
            Object(NonMatching, "snd/snd_SoundArchiveLoader.cpp"),
            Object(NonMatching, "snd/snd_SoundArchivePlayer.cpp"),
            Object(NonMatching, "snd/snd_SoundHandle.cpp"),
            Object(NonMatching, "snd/snd_SoundHeap.cpp"),
            Object(NonMatching, "snd/snd_SoundPlayer.cpp"),
            Object(NonMatching, "snd/snd_SoundStartable.cpp"),
            Object(NonMatching, "snd/snd_SoundSystem.cpp"),
            Object(NonMatching, "snd/snd_SoundThread.cpp"),
            Object(NonMatching, "snd/snd_StrmChannel.cpp"),
            Object(NonMatching, "snd/snd_StrmFile.cpp"),
            Object(NonMatching, "snd/snd_StrmPlayer.cpp"),
            Object(NonMatching, "snd/snd_StrmSound.cpp"),
            Object(NonMatching, "snd/snd_StrmSoundHandle.cpp"),
            Object(NonMatching, "snd/snd_TaskManager.cpp"),
            Object(NonMatching, "snd/snd_TaskThread.cpp"),
            Object(NonMatching, "snd/snd_Util.cpp"),
            Object(NonMatching, "snd/snd_WaveFile.cpp"),
            Object(NonMatching, "snd/snd_WavePlayer.cpp"),
            Object(NonMatching, "snd/snd_WaveSound.cpp"),
            Object(NonMatching, "snd/snd_WaveSoundHandle.cpp"),
            Object(NonMatching, "snd/snd_WsdFile.cpp"),
            Object(NonMatching, "snd/snd_WsdPlayer.cpp"),
            Object(NonMatching, "snd/snd_WsdTrack.cpp"),
        ]
    ),
    NW4RLib("ut",
        [
            Object(Matching,    "ut/ut_list.cpp"),
            Object(Matching,    "ut/ut_LinkList.cpp"),
            Object(NonMatching, "ut/ut_binaryFileFormat.cpp"),
            Object(NonMatching, "ut/ut_CharStrmReader.cpp"),
            Object(NonMatching, "ut/ut_TagProcessorBase.cpp"),
            Object(NonMatching, "ut/ut_IOStream.cpp"),
            Object(NonMatching, "ut/ut_FileStream.cpp"),
            Object(NonMatching, "ut/ut_DvdFileStream.cpp"),
            Object(NonMatching, "ut/ut_DvdLockedFileStream.cpp"),
            Object(NonMatching, "ut/ut_NandFileStream.cpp"),
            Object(NonMatching, "ut/ut_Font.cpp"),
            Object(NonMatching, "ut/ut_ResFontBase.cpp"),
            Object(NonMatching, "ut/ut_ResFont.cpp"),
            Object(NonMatching, "ut/ut_ArchiveFontBase.cpp"),
            Object(NonMatching, "ut/ut_ArchiveFont.cpp"),
            Object(NonMatching, "ut/ut_CharWriter.cpp"),
            Object(NonMatching, "ut/ut_TextWriterBase.cpp"),
        ]
    ),
    NW4RLib("db",
        [
            Object(NonMatching, "db/db_directPrint.cpp"),
            Object(NonMatching, "db/db_console.cpp"),
            Object(NonMatching, "db/db_exception.cpp"),
        ]
    ),
    NW4RLib("math",
        [
            Object(Matching,    "math/math_arithmetic.cpp"),
            Object(Equivalent,  "math/math_triangular.cpp"),
            Object(Matching,    "math/math_types.cpp"),
        ]
    ),
    NW4RLib("lyt",
        [
            Object(NonMatching, "lyt/lyt_pane.cpp"),
            Object(NonMatching, "lyt/lyt_group.cpp"),
            Object(NonMatching, "lyt/lyt_layout.cpp"),
            Object(NonMatching, "lyt/lyt_picture.cpp"),
            Object(NonMatching, "lyt/lyt_textbox.cpp"),
            Object(NonMatching, "lyt/lyt_window.cpp"),
            Object(NonMatching, "lyt/lyt_bounding.cpp"),
            Object(NonMatching, "lyt/lyt_material.cpp"),
            Object(NonMatching, "lyt/lyt_drawinfo.cpp"),
            Object(NonMatching, "lyt/lyt_animation.cpp"),
            Object(NonMatching, "lyt/lyt_resourceAccessor.cpp"),
            Object(NonMatching, "lyt/lyt_arcResourceAccessor.cpp"),
            Object(NonMatching, "lyt/lyt_common.cpp"),
        ]
    ),
    # RVL_SDK (alot here)
    RVLSDKLib("base",
        [
            Object(Matching,    "base/PPCArch.c"),
        ]
    ),
    RVLSDKLib("os",
        [
            Object(NonMatching, "os/OS.c"),
            Object(Matching,    "os/OSAlarm.c"),
            Object(NonMatching, "os/OSAlloc.c"),
            Object(NonMatching, "os/OSArena.c"),
            Object(NonMatching, "os/OSAudioSystem.c"),
            Object(NonMatching, "os/OSCache.c"),
            Object(NonMatching, "os/OSContext.c"),
            Object(NonMatching, "os/OSError.c"),
            Object(NonMatching, "os/OSExec.c"),
            Object(NonMatching, "os/OSFont.c"),
            Object(NonMatching, "os/OSInterrupt.c"),
            Object(NonMatching, "os/OSLink.c"),
            Object(NonMatching, "os/OSMessage.c"),
            Object(NonMatching, "os/OSMemory.c"),
            Object(NonMatching, "os/OSMutex.c"),
            Object(NonMatching, "os/OSReset.c"),
            Object(NonMatching, "os/OSRtc.c"),
            Object(NonMatching, "os/OSSemaphore.c"),
            Object(NonMatching, "os/OSSync.c"),
            Object(NonMatching, "os/OSThread.c"),
            Object(NonMatching, "os/OSTime.c"),
            Object(NonMatching, "os/OSUtf.c"),
            Object(NonMatching, "os/OSIpc.c"),
            Object(NonMatching, "os/OSStateTM.c"),
            Object(NonMatching, "os/time.dolphin.c"),
            Object(NonMatching, "os/OSPlayRecord.c"),
            Object(NonMatching, "os/OSStateFlags.c"),
            Object(NonMatching, "os/OSNet.c"),
            Object(NonMatching, "os/OSNandbootInfo.c"),
            Object(NonMatching, "os/OSPlayTime.c"),
            Object(Matching,    "os/__ppc_eabi_init.cpp"),
        ]
    ),
    RVLSDKLib("exi",
        [
            Object(NonMatching, "exi/EXIBios.c"),
            Object(NonMatching, "exi/EXIUart.c"),
            Object(NonMatching, "exi/EXICommon.c"),
        ]
    ),
    RVLSDKLib("si",
        [
            Object(NonMatching, "si/SIBios.c"),
            Object(NonMatching, "si/SISamplingRate.c"),
        ]
    ),
    RVLSDKLib("db",
        [
            Object(NonMatching, "db/db.c"),
        ]
    ),
    RVLSDKLib("vi",
        [
            Object(NonMatching, "vi/vi.c"),
            Object(NonMatching, "vi/i2c.c"),
            Object(NonMatching, "vi/vi3in1.c"),
        ]
    ),
    RVLSDKLib("mtx",
        [
            Object(NonMatching, "mtx/mtx.c"),
            Object(NonMatching, "mtx/mtxvec.c"),
            Object(NonMatching, "mtx/mtx44.c"),
            Object(NonMatching, "mtx/vec.c"),
        ]
    ),
    RVLSDKLib("gx",
        [
            Object(NonMatching, "gx/GXInit.c"),
            Object(NonMatching, "gx/GXFifo.c"),
            Object(NonMatching, "gx/GXAttr.c"),
            Object(NonMatching, "gx/GXMisc.c"),
            Object(NonMatching, "gx/GXGeometry.c"),
            Object(NonMatching, "gx/GXFrameBuf.c"),
            Object(NonMatching, "gx/GXLight.c"),
            Object(NonMatching, "gx/GXTexture.c"),
            Object(NonMatching, "gx/GXBump.c"),
            Object(NonMatching, "gx/GXTev.c"),
            Object(NonMatching, "gx/GXPixel.c"),
            Object(NonMatching, "gx/GXDisplayList.c"),
            Object(NonMatching, "gx/GXTransform.c"),
            Object(NonMatching, "gx/GXPerf.c"),
        ]
    ),
    RVLSDKLib("dvd",
        [
            Object(NonMatching, "dvd/dvdfs.c"),
            Object(NonMatching, "dvd/dvd.c"),
            Object(NonMatching, "dvd/dvdqueue.c"),
            Object(NonMatching, "dvd/dvderror.c"),
            Object(NonMatching, "dvd/dvdidutils.c"),
            Object(NonMatching, "dvd/dvdFatal.c"),
            Object(NonMatching, "dvd/dvd_broadway.c"),
        ]
    ),
    RVLSDKLib("ai",
        [
            Object(NonMatching, "ai/ai.c"),
        ]
    ),
    RVLSDKLib("ax",
        [
            Object(Matching,    "ax/AX.c"),
            Object(NonMatching, "ax/AXAlloc.c"),
            Object(NonMatching, "ax/AXAux.c"),
            Object(NonMatching, "ax/AXCL.c"),
            Object(NonMatching, "ax/AXOut.c"),
            Object(NonMatching, "ax/AXSPB.c"), # Technically equilavent but for some reason it makes the Wii Menu unusable, leaving it NonMatching
            Object(NonMatching, "ax/AXVPB.c"),
            Object(Matching,    "ax/AXProf.c"),
            Object(Matching,    "ax/DSPCode.c"),
        ]
    ),
    RVLSDKLib("axfx",
        [
            Object(NonMatching, "axfx/AXFXReverbHi.c"),
            Object(NonMatching, "axfx/AXFXReverbHiDpl2.c"),
            Object(NonMatching, "axfx/AXFXReverbHiExp.c"),
            Object(NonMatching, "axfx/AXFXReverbHiExpDpl2.c"),
            Object(NonMatching, "axfx/AXFXDelay.c"),
            Object(NonMatching, "axfx/AXFXReverbStd.c"),
            Object(NonMatching, "axfx/AXFXReverbStdExp.c"),
            Object(NonMatching, "axfx/AXFXChorus.c"),
            Object(NonMatching, "axfx/AXFXChorusExp.c"),
            Object(Matching,    "axfx/AXFXLfoTable.c"),
            Object(Matching,    "axfx/AXFXSrcCoef.c"),
            Object(NonMatching, "axfx/AXFXHooks.c"),
        ]
    ),
    RVLSDKLib("mem",
        [
            Object(NonMatching, "mem/mem_heapCommon.c"),
            Object(NonMatching, "mem/mem_expHeap.c"),
            Object(NonMatching, "mem/mem_frameHeap.c"),
            Object(NonMatching, "mem/mem_unitHeap.c"),
            Object(NonMatching, "mem/mem_allocator.c"),
            Object(NonMatching, "mem/mem_list.c"),
        ]
    ),
    RVLSDKLib("cx",
        [
            Object(NonMatching, "cx/CXStreamingUncompression.c"),
            Object(NonMatching, "cx/CXUncompression.c"),
            Object(NonMatching, "cx/CXSecureUncompression.c"),
        ]
    ),
    RVLSDKLib("dsp",
        [
            Object(NonMatching, "dsp/dsp.c"),
            Object(Matching,    "dsp/dsp_debug.c"),
            Object(NonMatching, "dsp/dsp_task.c"),
        ]
    ),
    RVLSDKLib("card",
        [
            Object(NonMatching, "card/CARDBios.c"),
            Object(NonMatching, "card/CARDUnlock.c"),
            Object(NonMatching, "card/CARDRdwr.c"),
            Object(NonMatching, "card/CARDBlock.c"),
            Object(NonMatching, "card/CARDDir.c"),
            Object(NonMatching, "card/CARDCheck.c"),
            Object(NonMatching, "card/CARDMount.c"),
            Object(NonMatching, "card/CARDFormat.c"),
            Object(NonMatching, "card/CARDOpen.c"),
            Object(NonMatching, "card/CARDCreate.c"),
            Object(NonMatching, "card/CARDRead.c"),
            Object(NonMatching, "card/CARDWrite.c"),
            Object(NonMatching, "card/CARDDelete.c"),
            Object(NonMatching, "card/CARDStatEx.c"),
            Object(NonMatching, "card/CARDNet.c"),
        ]
    ),
    RVLSDKLib("nand",
        [
            Object(NonMatching, "nand/nand.c"),
            Object(NonMatching, "nand/NANDOpenClose.c"),
            Object(NonMatching, "nand/NANDCore.c"),
            Object(NonMatching, "nand/NANDSecret.c"),
            Object(NonMatching, "nand/NANDLogging.c"),
        ]
    ),
    RVLSDKLib("sc",
        [
            Object(NonMatching, "sc/scsystem.c"),
            Object(NonMatching, "sc/scapi.c"),
            Object(NonMatching, "sc/scapi_prdinfo.c"),
        ]
    ),
    RVLSDKLib("wenc",
        [
            Object(NonMatching, "wenc/wenc.c"),
        ]
    ),
    RVLSDKLib("enc",
        [
            Object(NonMatching, "enc/encutility.c"),
            Object(NonMatching, "enc/encunicode.c"),
            Object(NonMatching, "enc/encjapanese.c"),
            Object(NonMatching, "enc/enclatin.c"),
            Object(NonMatching, "enc/encconvert.c"),
            Object(NonMatching, "enc/encchinese.c"),
            Object(NonMatching, "enc/enckorean.c"),
        ]
    ),
    RVLSDKLib("arc",
        [
            Object(Matching, "arc/arc.c"),
        ]
    ),
    RVLSDKLib("esp",
        [
            Object(NonMatching, "esp/esp.c"),
        ]
    ),
    EGGLib(
        [
            Object(NonMatching, "eggAllocator.cpp"),
            Object(NonMatching, "eggAudioArcPlayerMgr.cpp"),
        ]
    ),
    RuntimeLib("Runtime.PPCEABI.H",
        [
            Object(Matching,    "__mem.c"),
            Object(Matching,    "__va_arg.c"),
            Object(Matching,    "global_destructor_chain.c"),
            Object(Matching,    "runtime.c"),
            Object(Matching,    "__init_cpp_exceptions.cpp"),
        ]
    ),
]

config.progress_categories = [
    ProgressCategory("main",        "System Menu Code"),
    ProgressCategory("rvlmwm",      "Revolution Middleware"),
    ProgressCategory("rvlfacelib",  "Revolution Face Library"),
    ProgressCategory("revoex",      "Revolution Extension"),
    ProgressCategory("nw4r",        "NintendoWare For Revolution"),
    ProgressCategory("rvlsdk",      "Revolution SDK"),
    ProgressCategory("egg",         "EGG Library"),
    ProgressCategory("mw",          "Metroworks"),
]
config.progress_each_module = args.verbose

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)
elif args.mode == "progress":
    # Print progress and write progress.json
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)
