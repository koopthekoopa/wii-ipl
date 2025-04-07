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
config.compilers_tag = "latest"
config.dtk_tag = "v1.4.1"
config.objdiff_tag = "v2.7.1"
config.sjiswrap_tag = "v1.2.0"
config.wibo_tag = "0.6.16"
config.bstool_tag = "v1.0.1"

def getFirstFile(path_find):
    for filename in Path(path_find).iterdir():
        if filename.is_file() and filename.suffix == '.wad':
            return Path(filename)
# Project
config.wad_path = getFirstFile(Path("orig") / config.version)
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

cflags_includes = [
    "-i include",
    "-i include/decomp",
    "-i libs/MetroTRK/include",
    "-i libs/Runtime/include",
    "-i libs/MSL/include",
    "-i libs/RVL_SDK/include",
    "-i libs/RevoEX/include",
    "-i libs/NW4R/include",
    "-i libs/RVLFaceLib/include",
    "-i libs/EGG/include",
    f"-i build/{config.version}/include",
]

# Base flags
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    # "-W all",
    "-O4,p",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI off",
    "-fp_contract on",
    "-str reuse",
    *cflags_includes,
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
    "-ipa file",
    "-gccinc",
    "-fp_contract off",
    "-O4,s",
    "-enc SJIS",
]

# Common SDK flags
cflags_sdk = [
    *cflags_base,
    "-ipa file",
    "-fp_contract off",
    "-O4,p",
]

# NW4R flags
cflags_nw4r = [
    *cflags_base,
    "-ipa file",
    "-fp_contract off",
    "-Cpp_exceptions off",
    "-O4,p",
]

# Common SDK flags (with exceptions on)
cflags_sdk_except = [
    *cflags_base,
    "-ipa file",
    "-fp_contract off",
    "-Cpp_exceptions on",
    "-O4,p",
]

# Runtime & MSL library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-fp_contract off",
    "-gccinc",
    "-D_IEEE_LIBM",
    "-O4,p",
]

# MetroTRK library flags
cflags_trk = [
    *cflags_runtime,
    "-inline deferred",
    "-sdata 0",
]

config.linker_version = "GC/3.0a5.2"

# Helper function for IPL
def IPLSection(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_ipl,
        "progress_category": "main",
        "objects": objects,
    }

# Helper function for Zi Corp libraries
def ZI8Lib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_sdk_except,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/eZiText/src",
    }


# Helper function for ATOK library
def ATOKLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/ATOKDict/src",
    }

# Helper function for RVLFaceLib library
def RVLFaceLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "RVLFaceLib",
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "rvlfacelib",
        "objects": objects,
        "src_dir": "libs/RVLFaceLib/src",
    }

# Helper function for TMC_JPEG library
def TMCJpegLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "TMC_JPEG",
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "rvlmwm",
        "objects": objects,
        "src_dir": "libs/RVLMiddleware/TMC_JPEG/src",
    }

# Helper function for NW4R libraries
def NW4RLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_nw4r,
        "progress_category": "nw4r",
        "objects": objects,
        "src_dir": "libs/NW4R/src",
    }

# Helper function for EGG library
def EGGLib(objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": "EGG",
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "egg",
        "objects": objects,
        "src_dir": "libs/EGG/src",
    }

# Helper function for RVL_SDK libraries
def RVLSDKLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "rvlsdk",
        "objects": objects,
        "src_dir": "libs/RVL_SDK/src",
    }

# Helper function for RevoEX libraries
def RevoEXLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_sdk,
        "progress_category": "revoex",
        "objects": objects,
        "src_dir": "libs/RevoEX/src",
    }

# Helper function for Runtime
def RuntimeLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "progress_category": "mw",
        "objects": objects,
        "src_dir": "libs/Runtime/src",
    }

# Helper function for MSL
def MSLLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/3.0a3",
        "cflags": cflags_runtime,
        "progress_category": "mw",
        "objects": objects,
        "src_dir": "libs/MSL/src",
    }
 
 # Helper function for MetroTRK
def TRKLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/2.7",
        "cflags": cflags_trk,
        "progress_category": "mw",
        "objects": objects,
        "src_dir": "libs/MetroTRK/src",
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
            Object(Matching,    "system/iplNand.cpp"),
            Object(NonMatching, "system/iplNandShared.cpp"),
            Object(Matching,    "system/iplNandMeta.cpp"),
            Object(Matching,    "system/iplNandManager.cpp"),
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
            Object(Matching,    "system/iplDialogWindow.cpp"),
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
            Object(Matching,    "system/iplBS2Manager.cpp"),
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
            Object(Matching,    "scene/health/iplHealth.cpp"),
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
            Object(Matching, "scene/limitOver/iplLimitOver.cpp"),
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
            Object(Matching,    "scene/saveDataEdit/iplWiiBannerFileInfo.cpp"),
        ]
    ),
    IPLSection("memoryCard",
        [
            Object(NonMatching, "scene/memoryCard/iplMemoryCard.cpp"),
            Object(NonMatching, "scene/memoryCard/iplMemoryCardBase.cpp"),
            Object(NonMatching, "scene/memoryCard/iplMemoryCardManager.cpp"),
            Object(NonMatching, "scene/memoryCard/iplGCSaveData.cpp"),
            Object(NonMatching, "scene/memoryCard/iplGCWindow.cpp"),
        ]
    ),
    IPLSection("textBalloon",
        [
            Object(NonMatching, "scene/textBalloon/iplBalloon.cpp"),
        ]
    ),
    IPLSection("cardSequence",
        [
            Object(NonMatching, "scene/cardSequence/CardSequence.cpp"),
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
        ]
    ),
    IPLSection("settingSelect",
        [
            Object(Matching,    "scene/settingSelect/iplSettingBg.cpp"),
            Object(Matching,    "scene/settingSelect/iplSettingButton.cpp"),
            Object(NonMatching, "scene/settingSelect/iplSettingSelect.cpp"),
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
            Object(NonMatching, "MonPE/ApJAC.c"),
        ]
    ),
    # eZiText (for 4.3U and 4.3E only)
    ZI8Lib("eZiText",
        [
            Object(NonMatching, "eztx.c"),
            Object(NonMatching, "zi8address.c"),
            Object(NonMatching, "zi8convert.c"),
            Object(NonMatching, "zi8letter.c"),
            Object(NonMatching, "zi8alpha.c"),
            Object(NonMatching, "zi8alt.c"),
            Object(NonMatching, "zi8cand.c"),
            Object(NonMatching, "zi8cinfo.c"),
            Object(NonMatching, "zi8copy.c"),
            Object(NonMatching, "zi8matchrom.c"),
            Object(NonMatching, "zi8getcand.c"),
            Object(NonMatching, "zi8init.c"),
            Object(NonMatching, "zi8is.c"),
            Object(NonMatching, "zi8match.c"),
            Object(NonMatching, "zi8utils.c"),
            Object(NonMatching, "zi8pud.c"),
            Object(NonMatching, "zi8punct.c"),
            Object(NonMatching, "zi8uwd.c"),
            Object(NonMatching, "zi8dawg.c"),
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
            Object(Matching,    "vf/api/pf_clib.c"),
            Object(Matching,    "vf/api/pf_code.c"),
            Object(Matching,    "vf/api/pf_service.c"),
            Object(NonMatching, "vf/api/pf_str.c"),
            Object(Matching,    "vf/api/pf_w_clib.c"),
            Object(NonMatching, "vf/api/pf_driver.c"),
            Object(NonMatching, "vf/api/pdm_bpb.c"),
            Object(NonMatching, "vf/api/pdm_disk.c"),
            Object(NonMatching, "vf/api/pdm_partition.c"),
            Object(NonMatching, "vf/api/pdm_mbr.c"),
            Object(NonMatching, "vf/api/pdm_dskmng.c"),
            Object(NonMatching, "vf/api/pf_cache.c"),
            Object(NonMatching, "vf/api/pf_cluster.c"),
            Object(NonMatching, "vf/api/pf_dir.c"),
            Object(NonMatching, "vf/api/pf_entry.c"),
            Object(NonMatching, "vf/api/pf_entry_iterator.c"),
            Object(NonMatching, "vf/api/pf_fat.c"),
            Object(NonMatching, "vf/api/pf_fat12.c"),
            Object(NonMatching, "vf/api/pf_fat16.c"),
            Object(NonMatching, "vf/api/pf_fat32.c"),
            Object(NonMatching, "vf/api/pf_fatfs.c"),
            Object(NonMatching, "vf/api/pf_file.c"),
            Object(NonMatching, "vf/api/pf_path.c"),
            Object(NonMatching, "vf/api/pf_sector.c"),
            Object(NonMatching, "vf/api/pf_volume.c"),
            Object(NonMatching, "vf/api/pf_cp932.c"),
            Object(NonMatching, "vf/api/pf_attach.c"),
            Object(NonMatching, "vf/api/pf_chdir.c"),
            Object(NonMatching, "vf/api/pf_create.c"),
            Object(NonMatching, "vf/api/pf_detach.c"),
            Object(NonMatching, "vf/api/pf_errnum.c"),
            Object(NonMatching, "vf/api/pf_fclose.c"),
            Object(NonMatching, "vf/api/pf_finfo.c"),
            Object(NonMatching, "vf/api/pf_fopen.c"),
            Object(NonMatching, "vf/api/pf_format.c"),
            Object(NonMatching, "vf/api/pf_fread.c"),
            Object(NonMatching, "vf/api/pf_fseek.c"),
            Object(NonMatching, "vf/api/pf_fsfirst.c"),
            Object(NonMatching, "vf/api/pf_fsnext.c"),
            Object(NonMatching, "vf/api/pf_fwrite.c"),
            Object(NonMatching, "vf/api/pf_getdev.c"),
            Object(NonMatching, "vf/api/pf_init_prfile2.c"),
            Object(NonMatching, "vf/api/pf_mkdir.c"),
            Object(NonMatching, "vf/api/pf_remove.c"),
            Object(NonMatching, "vf/api/pf_rmdir.c"),
            Object(NonMatching, "vf/api/pf_sync.c"),
            Object(NonMatching, "vf/api/pf_unmount.c"),
            Object(NonMatching, "vf/api/pf_filelock.c"),
            Object(NonMatching, "vf/api/pf_system.c"),
            Object(NonMatching, "vf/d_vf.c"),
            Object(NonMatching, "vf/d_vf_sys.c"),
            Object(NonMatching, "vf/d_hash.c"),
            Object(NonMatching, "vf/d_time.c"),
            Object(NonMatching, "vf/d_common.c"),
            Object(NonMatching, "vf/driver/nand_drv.c"),
            Object(NonMatching, "vf/driver/sd_drv.c"),
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
    # TMC JPEG
    TMCJpegLib(
        [
            Object(NonMatching, "buffer/mkhdec3.c"),
            Object(NonMatching, "buffer/buffer_system.c"),
            Object(NonMatching, "buffer/getcode.c"),
            Object(NonMatching, "buffer/idct_block_var.c"),
            Object(NonMatching, "buffer/decapi.c"),

            Object(NonMatching, "api/decapi.c"),

            Object(NonMatching, "jpegdec/jdec.c"),
            Object(NonMatching, "jpegdec/jdec_main.c"),
            Object(NonMatching, "jpegdec/jpformat.c"),

            Object(NonMatching, "exif/exif_parse.c"),

            Object(NonMatching, "reschange/iqdec_resolution_change_a3.c"),
            Object(NonMatching, "reschange/idct_resolution_change_var.c"),

            Object(NonMatching, "texturecvtr/Texture_MCUtoY8U8V8.c"),
            Object(NonMatching, "texturecvtr/Texture_MCUtoRGB565.c"),
            Object(NonMatching, "texturecvtr/Texture_MCUtoRGBA8.c"),

            Object(NonMatching, "b65/iqdec_b65_frv32.c"),
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
            Object(Matching,    "math/math_triangular.cpp"),
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
    # RVL_SDK
    RVLSDKLib("base",
        [
            Object(Matching,    "base/PPCArch.c"),
        ]
    ),
    RVLSDKLib("os",
        [
            Object(Matching,    "os/OS.c"),
            Object(Matching,    "os/OSAlarm.c"),
            Object(Matching,    "os/OSAlloc.c"),
            Object(Matching,    "os/OSArena.c"),
            Object(Matching,    "os/OSAudioSystem.c"),
            Object(Matching,    "os/OSCache.c"),
            Object(Matching,    "os/OSContext.c"),
            Object(Matching,    "os/OSError.c"),
            Object(Matching,    "os/OSExec.c"),
            Object(Matching,    "os/OSFont.c"),
            Object(Matching,    "os/OSInterrupt.c"),
            Object(Matching,    "os/OSLink.c"),
            Object(Matching,    "os/OSMessage.c"),
            Object(Matching,    "os/OSMemory.c"),
            Object(Matching,    "os/OSMutex.c"),
            Object(Matching,    "os/OSReset.c"),
            Object(Matching,    "os/OSRtc.c"),
            Object(Matching,    "os/OSSemaphore.c"),
            Object(Matching,    "os/OSSync.c"),
            Object(Matching,    "os/OSThread.c"),
            Object(Matching,    "os/OSTime.c"),
            Object(Matching,    "os/OSUtf.c"),
            Object(Matching,    "os/OSIpc.c"),
            Object(Matching,    "os/OSStateTM.c"),
            Object(Matching,    "os/time.dolphin.c"),
            Object(Matching,    "os/OSPlayRecord.c"),
            Object(Matching,    "os/OSStateFlags.c"),
            Object(Matching,    "os/OSNet.c"),
            Object(Matching,    "os/OSNandbootInfo.c"),
            Object(Matching,    "os/OSPlayTime.c"),
            Object(Matching,    "os/__ppc_eabi_init.cpp"),
        ]
    ),
    RVLSDKLib("exi",
        [
            Object(Matching, "exi/EXIBios.c", extra_cflags=["-schedule off -volatileasm"]),
            Object(Matching, "exi/EXIUart.c"),
            Object(Matching, "exi/EXICommon.c"),
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
            Object(Matching,    "dvd/dvdFatal.c"),
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
            Object(Matching,    "ax/AXSPB.c"),
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
    RVLSDKLib("ipc",
        [
            Object(NonMatching, "ipc/ipcMain.c"),
            Object(NonMatching, "ipc/ipcclt.c"),
            Object(NonMatching, "ipc/memory.c"),
            Object(NonMatching, "ipc/ipcProfile.c"),
        ]
    ),
    RVLSDKLib("fs",
        [
            Object(NonMatching, "fs/fs.c"),
        ]
    ),
    RVLSDKLib("pad",
        [
            Object(NonMatching, "pad/Pad.c"),
        ]
    ),
    RVLSDKLib("wpad",
        [
            Object(NonMatching, "wpad/WPAD.c"),
            Object(NonMatching, "wpad/WPADHIDParser.c"),
            Object(NonMatching, "wpad/WPADMem.c"),
            Object(NonMatching, "wpad/WPADEncrypt.c"),
            Object(NonMatching, "wpad/WPADEncrypt.c"),
            Object(NonMatching, "wpad/debug_msg.c"),
        ]
    ),
    RVLSDKLib("kpad",
        [
            Object(NonMatching, "kpad/KPAD.c"),
        ]
    ),
    RVLSDKLib("euart",
        [
            Object(Matching,    "euart/euart.c"),
        ]
    ),
    RVLSDKLib("usb",
        [
            Object(NonMatching, "usb/usb.c"),
        ]
    ),
    RVLSDKLib("wud",
        [
            Object(NonMatching, "wud/WUD.c"),
            Object(NonMatching, "wud/WUDHidHost.c"),
            Object(NonMatching, "wud/debug_msg.c"),
        ]
    ),
    RVLSDKLib("bte",
        [
            Object(NonMatching, "bte/gki_buffer.c"),
            Object(NonMatching, "bte/gki_time.c"),
            Object(NonMatching, "bte/gki_ppc.c"),

            Object(NonMatching, "bte/hcisu_h2.c"),
            Object(NonMatching, "bte/uusb_ppc.c"),
            Object(NonMatching, "bte/bta_dm_cfg.c"),
            Object(NonMatching, "bte/bta_hh_cfg.c"),
            Object(NonMatching, "bte/bta_sys_cfg.c"),
            Object(NonMatching, "bte/bte_hcisu.c"),
            Object(NonMatching, "bte/bte_init.c"),
            Object(NonMatching, "bte/bte_logmsg.c"),
            Object(NonMatching, "bte/bte_main.c"),
            Object(NonMatching, "bte/btu_task1.c"),
            Object(NonMatching, "bte/bd.c"),
            Object(NonMatching, "bte/bta_sys_conn.c"),
            Object(NonMatching, "bte/bta_sys_main.c"),
            Object(NonMatching, "bte/ptim.c"),
            Object(NonMatching, "bte/utl.c"),

            Object(NonMatching, "bte/bta_dm_act.c"),
            Object(NonMatching, "bte/bta_dm_api.c"),
            Object(NonMatching, "bte/bta_dm_main.c"),
            Object(NonMatching, "bte/bta_dm_pm.c"),

            Object(NonMatching, "bte/bta_hh_act.c"),
            Object(NonMatching, "bte/bta_hh_api.c"),
            Object(NonMatching, "bte/bta_hh_main.c"),
            Object(NonMatching, "bte/bta_hh_utils.c"),

            Object(NonMatching, "bte/btm_acl.c"),
            Object(NonMatching, "bte/btm_dev.c"),
            Object(NonMatching, "bte/btm_devctl.c"),
            Object(NonMatching, "bte/btm_discovery.c"),
            Object(NonMatching, "bte/btm_inq.c"),
            Object(NonMatching, "bte/btm_main.c"),
            Object(NonMatching, "bte/btm_pm.c"),
            Object(NonMatching, "bte/btm_sco.c"),
            Object(NonMatching, "bte/btm_sec.c"),

            Object(NonMatching, "bte/btu_hcif.c"),
            Object(NonMatching, "bte/btu_init.c"),

            Object(NonMatching, "bte/wbt_ext.c"),

            Object(NonMatching, "bte/gap_api.c"),
            Object(NonMatching, "bte/gap_conn.c"),
            Object(NonMatching, "bte/gap_utils.c"),

            Object(NonMatching, "bte/hcicmds.c"),

            Object(NonMatching, "bte/hidd_api.c"),
            Object(NonMatching, "bte/hidd_conn.c"),
            Object(NonMatching, "bte/hidd_mgmt.c"),
            Object(NonMatching, "bte/hidd_pm.c"),
            Object(NonMatching, "bte/hidh_api.c"),
            Object(NonMatching, "bte/hidh_conn.c"),

            Object(NonMatching, "bte/l2c_api.c"),
            Object(NonMatching, "bte/l2c_csm.c"),
            Object(NonMatching, "bte/l2c_link.c"),
            Object(NonMatching, "bte/l2c_main.c"),
            Object(NonMatching, "bte/l2c_utils.c"),

            Object(NonMatching, "bte/port_api.c"),
            Object(NonMatching, "bte/port_rfc.c"),
            Object(NonMatching, "bte/port_utils.c"),

            Object(NonMatching, "bte/rfc_l2cap_if.c"),
            Object(NonMatching, "bte/rfc_mx_fsm.c"),
            Object(NonMatching, "bte/rfc_port_fsm.c"),
            Object(NonMatching, "bte/rfc_port_if.c"),
            Object(NonMatching, "bte/rfc_ts_frames.c"),
            Object(NonMatching, "bte/rfc_utils.c"),

            Object(NonMatching, "bte/sdp_api.c"),
            Object(NonMatching, "bte/sdp_db.c"),
            Object(NonMatching, "bte/sdp_discovery.c"),
            Object(NonMatching, "bte/sdp_main.c"),
            Object(NonMatching, "bte/sdp_server.c"),
            Object(NonMatching, "bte/sdp_utils.c"),
        ]
    ),
    RVLSDKLib("TPL",
        [
            Object(Matching,    "tpl/TPL.c"),
        ]
    ),
    RVLSDKLib("rso",
        [
            Object(NonMatching, "rso/RSOLink.c"),
        ]
    ),
    RVLSDKLib("es",
        [
            Object(NonMatching, "es/es.c"),
        ]
    ),
    RVLSDKLib("wad",
        [
            Object(Matching,    "wad/certs.c"),
            Object(NonMatching, "wad/wad.c"),
        ]
    ),
    RVLSDKLib("cnt",
        [
            Object(NonMatching, "cnt/cnt.c"),
        ]
    ),
    RVLSDKLib("fa",
        [
            Object(NonMatching, "fa/api/pf_clib.c"),
            Object(NonMatching, "fa/api/pf_code.c"),
            Object(NonMatching, "fa/api/pf_service.c"),
            Object(NonMatching, "fa/api/pf_str.c"),
            Object(NonMatching, "fa/api/pf_driver.c"),

            Object(NonMatching, "fa/api/pdm_api.c"),
            Object(NonMatching, "fa/api/pdm_bpb.c"),
            Object(NonMatching, "fa/api/pdm_disk.c"),
            Object(NonMatching, "fa/api/pdm_partition.c"),

            Object(NonMatching, "fa/api/pf_cache.c"),
            Object(NonMatching, "fa/api/pf_cluster.c"),
            Object(NonMatching, "fa/api/pf_dir.c"),
            Object(NonMatching, "fa/api/pf_entry.c"),
            Object(NonMatching, "fa/api/pf_entry_iterator.c"),
            Object(NonMatching, "fa/api/pf_fat.c"),
            Object(NonMatching, "fa/api/pf_fat12.c"),
            Object(NonMatching, "fa/api/pf_fat16.c"),
            Object(NonMatching, "fa/api/pf_fat32.c"),
            Object(NonMatching, "fa/api/pf_fatfs.c"),
            Object(NonMatching, "fa/api/pf_file.c"),
            Object(NonMatching, "fa/api/pf_path.c"),
            Object(NonMatching, "fa/api/pf_sector.c"),
            Object(NonMatching, "fa/api/pf_volume.c"),
            Object(NonMatching, "fa/api/pf_volume_apiadd.c"),
            Object(NonMatching, "fa/api/pf_cp932.c"),
            Object(NonMatching, "fa/api/pf_api_util.c"),

            Object(NonMatching, "fa/api/pf_attach.c"),
            Object(NonMatching, "fa/api/pf_buffering.c"),
            Object(NonMatching, "fa/api/pf_cdelete.c"),
            Object(NonMatching, "fa/api/pf_chdir.c"),
            Object(NonMatching, "fa/api/pf_chdmod.c"),
            Object(NonMatching, "fa/api/pf_chmod.c"),
            Object(NonMatching, "fa/api/pf_cinsert.c"),
            Object(NonMatching, "fa/api/pf_closedir.c"),
            Object(NonMatching, "fa/api/pf_combine.c"),
            Object(NonMatching, "fa/api/pf_create.c"),
            Object(NonMatching, "fa/api/pf_createdir.c"),
            Object(NonMatching, "fa/api/pf_cut.c"),
            Object(NonMatching, "fa/api/pf_derrnum.c"),
            Object(NonMatching, "fa/api/pf_detach.c"),
            Object(NonMatching, "fa/api/pf_divide.c"),
            Object(NonMatching, "fa/api/pf_errnum.c"),
            Object(NonMatching, "fa/api/pf_fadjust.c"),
            Object(NonMatching, "fa/api/pf_fappend.c"),
            Object(NonMatching, "fa/api/pf_fchdir.c"),
            Object(NonMatching, "fa/api/pf_fclose.c"),
            Object(NonMatching, "fa/api/pf_fconcat.c"),
            Object(NonMatching, "fa/api/pf_feof.c"),
            Object(NonMatching, "fa/api/pf_ferror.c"),
            Object(NonMatching, "fa/api/pf_finfo.c"),
            Object(NonMatching, "fa/api/pf_flock.c"),
            Object(NonMatching, "fa/api/pf_fopen.c"),
            Object(NonMatching, "fa/api/pf_format.c"),
            Object(NonMatching, "fa/api/pf_fread.c"),
            Object(NonMatching, "fa/api/pf_fseek.c"),
            Object(NonMatching, "fa/api/pf_fsetclstlink.c"),
            Object(NonMatching, "fa/api/pf_fsexec.c"),
            Object(NonMatching, "fa/api/pf_fsfirst.c"),
            Object(NonMatching, "fa/api/pf_fsnext.c"),
            Object(NonMatching, "fa/api/pf_fstat.c"),
            Object(NonMatching, "fa/api/pf_fsync.c"),
            Object(NonMatching, "fa/api/pf_fwrite.c"),
            Object(NonMatching, "fa/api/pf_getdev.c"),
            Object(NonMatching, "fa/api/pf_getvol.c"),
            Object(NonMatching, "fa/api/pf_getvolcfg.c"),
            Object(NonMatching, "fa/api/pf_init_prfile2.c"),
            Object(NonMatching, "fa/api/pf_insert.c"),
            Object(NonMatching, "fa/api/pf_iswriteprotected.c"),
            Object(NonMatching, "fa/api/pf_mkdir.c"),
            Object(NonMatching, "fa/api/pf_mount.c"),
            Object(NonMatching, "fa/api/pf_move.c"),
            Object(NonMatching, "fa/api/pf_opendir.c"),
            Object(NonMatching, "fa/api/pf_readdir.c"),
            Object(NonMatching, "fa/api/pf_regctx.c"),
            Object(NonMatching, "fa/api/pf_remove.c"),
            Object(NonMatching, "fa/api/pf_rename.c"),
            Object(NonMatching, "fa/api/pf_rewinddir.c"),
            Object(NonMatching, "fa/api/pf_rmdir.c"),
            Object(NonMatching, "fa/api/pf_rmvvol.c"),
            Object(NonMatching, "fa/api/pf_seekdir.c"),
            Object(NonMatching, "fa/api/pf_setclstlink.c"),
            Object(NonMatching, "fa/api/pf_setcode.c"),
            Object(NonMatching, "fa/api/pf_setencode.c"),
            Object(NonMatching, "fa/api/pf_settailbuf.c"),
            Object(NonMatching, "fa/api/pf_setupfsi.c"),
            Object(NonMatching, "fa/api/pf_setvol.c"),
            Object(NonMatching, "fa/api/pf_setvolcfg.c"),
            Object(NonMatching, "fa/api/pf_sync.c"),
            Object(NonMatching, "fa/api/pf_telldir.c"),
            Object(NonMatching, "fa/api/pf_unmount.c"),
            Object(NonMatching, "fa/api/pf_unregctx.c"),
            Object(NonMatching, "fa/api/pf_xdivide.c"),

            Object(NonMatching, "fa/api/pf_w_api_util.c"),
            Object(NonMatching, "fa/api/pf_w_cdelete.c"),
            Object(NonMatching, "fa/api/pf_w_chdir.c"),
            Object(NonMatching, "fa/api/pf_w_chdmod.c"),
            Object(NonMatching, "fa/api/pf_w_chmod.c"),
            Object(NonMatching, "fa/api/pf_w_cinsert.c"),
            Object(NonMatching, "fa/api/pf_w_combine.c"),
            Object(NonMatching, "fa/api/pf_w_create.c"),
            Object(NonMatching, "fa/api/pf_w_createdir.c"),
            Object(NonMatching, "fa/api/pf_w_cut.c"),
            Object(NonMatching, "fa/api/pf_w_divide.c"),
            Object(NonMatching, "fa/api/pf_w_fconcat.c"),
            Object(NonMatching, "fa/api/pf_w_fopen.c"),
            Object(NonMatching, "fa/api/pf_w_fsexec.c"),
            Object(NonMatching, "fa/api/pf_w_fsfirst.c"),
            Object(NonMatching, "fa/api/pf_w_fsnext.c"),
            Object(NonMatching, "fa/api/pf_w_fstat.c"),
            Object(NonMatching, "fa/api/pf_w_insert.c"),
            Object(NonMatching, "fa/api/pf_w_mkdir.c"),
            Object(NonMatching, "fa/api/pf_w_move.c"),
            Object(NonMatching, "fa/api/pf_w_opendir.c"),
            Object(NonMatching, "fa/api/pf_w_remove.c"),
            Object(NonMatching, "fa/api/pf_w_rename.c"),
            Object(NonMatching, "fa/api/pf_w_rmdir.c"),
            Object(NonMatching, "fa/api/pf_w_xdivide.c"),
            Object(NonMatching, "fa/api/pf_filelock.c"),

            Object(NonMatching, "fa/api/pf_stub.c"),
            Object(NonMatching, "fa/api/pf_system.c"),
            Object(NonMatching, "fa/api/pf_stub_standard.c"),
            Object(NonMatching, "fa/api/pfs_attach.c"),
            Object(NonMatching, "fa/api/pfs_buffering.c"),
            Object(NonMatching, "fa/api/pfs_create.c"),
            Object(NonMatching, "fa/api/pfs_createdir.c"),
            Object(NonMatching, "fa/api/pfs_detach.c"),
            Object(NonMatching, "fa/api/pfs_errnum.c"),
            Object(NonMatching, "fa/api/pfs_fclose.c"),
            Object(NonMatching, "fa/api/pfs_finfot.c"),
            Object(NonMatching, "fa/api/pfs_fopen.c"),
            Object(NonMatching, "fa/api/pfs_format.c"),
            Object(NonMatching, "fa/api/pfs_fread.c"),
            Object(NonMatching, "fa/api/pfs_fseek.c"),
            Object(NonMatching, "fa/api/pfs_fsfirst.c"),
            Object(NonMatching, "fa/api/pfs_fsnext.c"),
            Object(NonMatching, "fa/api/pfs_fstat.c"),
            Object(NonMatching, "fa/api/pfs_fwrite.c"),
            Object(NonMatching, "fa/api/pfs_getdev.c"),
            Object(NonMatching, "fa/api/pfs_init_prfile2.c"),
            Object(NonMatching, "fa/api/pfs_mount.c"),
            Object(NonMatching, "fa/api/pfs_remove.c"),
            Object(NonMatching, "fa/api/pfs_unmount.c"),
            Object(NonMatching, "fa/api/pf_stub_unicode.c"),

            Object(NonMatching, "fa/FAAttach.c"),
            Object(NonMatching, "fa/FABuffering.c"),
            Object(NonMatching, "fa/FACreate.c"),
            Object(NonMatching, "fa/FACreatedir.c"),
            Object(NonMatching, "fa/FADetach.c"),
            Object(NonMatching, "fa/FAErrnum.c"),
            Object(NonMatching, "fa/FAFclose.c"),
            Object(NonMatching, "fa/FAFinfo.c"),
            Object(NonMatching, "fa/FAFopen.c"),
            Object(NonMatching, "fa/FAFormat.c"),
            Object(NonMatching, "fa/FAFread.c"),
            Object(NonMatching, "fa/FAFseek.c"),
            Object(NonMatching, "fa/FAFsfirst.c"),
            Object(NonMatching, "fa/FAFsnext.c"),
            Object(NonMatching, "fa/FAFstat.c"),
            Object(NonMatching, "fa/FAFwrite.c"),
            Object(NonMatching, "fa/FAGetdev.c"),
            Object(NonMatching, "fa/FAInit.c"),
            Object(NonMatching, "fa/FAInitDiskManager.c"),
            Object(NonMatching, "fa/FAMount.c"),
            Object(NonMatching, "fa/FARegistCB.c"),
            Object(NonMatching, "fa/FARemove.c"),
            Object(NonMatching, "fa/FASetThreadPriority.c"),
            Object(NonMatching, "fa/FAUnmount.c"),

            Object(NonMatching, "fa/kernel/pfk_api.c"),

            Object(NonMatching, "fa/driver/nand_drv.c"),
            Object(NonMatching, "fa/driver/sd_drv.c"),

            Object(NonMatching, "fa/driver/pfd_cmn.c"),

            Object(NonMatching, "fa/driver/msc_drv.c"),

            Object(NonMatching, "fa/msc/puh_msc.c"),
            Object(NonMatching, "fa/msc/puh_msc_cmd.c"),
            Object(NonMatching, "fa/msc/puh_msc_blk.c"),
        ]
    ),
    RVLSDKLib("sdi",
        [
            Object(NonMatching, "sdi/sdi_api.c"),
        ]
    ),
    RVLSDKLib("nup",
        [
            Object(NonMatching, "nup/nup.cpp"),
            Object(NonMatching, "nup/nup_nhttp.cpp"),
            Object(NonMatching, "nup/nup_mem.cpp"),
        ]
    ),
    RVLSDKLib("scutil",
        [
            Object(NonMatching, "scutil/idToIsoA2.c"),
        ]
    ),
    RVLSDKLib("usbcmn",
        [
            Object(NonMatching, "usbcmn/puh_ker_mem.c"),
            Object(NonMatching, "usbcmn/puh_ker_msg.c"),
            Object(NonMatching, "usbcmn/puh_ker_sem.c"),
            Object(NonMatching, "usbcmn/puh_ker_tsk.c"),
        ]
    ),
    RVLSDKLib("kbd",
        [
            Object(NonMatching, "kbd/kbd_lib.c"),
            Object(NonMatching, "kbd/kbd_lib_map_jp.c"),
            Object(NonMatching, "kbd/kbd_lib_map_us.c"),
            Object(NonMatching, "kbd/kbd_lib_map_eu.c"),
        ]
    ),
    RVLSDKLib("kpr",
        [
            Object(NonMatching, "kpr/kpr_lib.c"),
        ]
    ),
    RVLSDKLib("usbkbd",
        [
            Object(NonMatching, "usbkbd/usb_kbd.c"),
        ]
    ),
    RVLSDKLib("cntcache",
        [
            Object(NonMatching, "cntcache/cntcache.c"),
        ]
    ),
    # EGG library (for Nintendo EAD software)
    EGGLib(
        [
            Object(NonMatching, "core/eggAllocator.cpp"),
            Object(NonMatching, "core/eggAudioArcPlayerMgr.cpp"),
            Object(NonMatching, "core/eggAudioExpMgr.cpp"),
            Object(NonMatching, "core/eggAudioFxMgr.cpp"),
            Object(NonMatching, "core/eggAudioMgr.cpp"),
            Object(NonMatching, "core/eggAudioHeapMgr.cpp"),
            Object(NonMatching, "core/eggColorFader.cpp"),
            Object(NonMatching, "core/eggDisposer.cpp"),
            Object(NonMatching, "core/eggExpHeap.cpp"),
            Object(NonMatching, "core/eggFrmHeap.cpp"),
            Object(NonMatching, "core/eggGraphicsFifo.cpp"),
            Object(NonMatching, "core/eggHeap.cpp"),
            Object(NonMatching, "core/eggTaskThread.cpp"),
            Object(NonMatching, "core/eggThread.cpp"),
            Object(NonMatching, "core/eggUnitHeap.cpp"),

            Object(NonMatching, "prim/eggAssert.cpp"),
        ]
    ),
    # Runtime library
    RuntimeLib("Runtime.PPCEABI.H",
        [
            Object(Matching,    "__mem.c"),
            Object(Matching,    "__va_arg.c"),
            Object(Matching,    "global_destructor_chain.c"),
            Object(Matching,    "NMWException.cpp"),
            Object(Matching,    "ptmf.c"),
            Object(Matching,    "runtime.c"),
            Object(Matching,    "__init_cpp_exceptions.cpp"),
            Object(Matching,    "Gecko_setjmp.c"),
            Object(Matching,    "Gecko_ExceptionPPC.c"),
            Object(Matching,    "GCN_mem_alloc.c"),
        ]
    ),
    # MSL Library
    MSLLib("MSL_C.PPCEABI.bare.H",
        [
            Object(NonMatching, "alloc.c"),
            Object(NonMatching, "errno.c"),
            Object(NonMatching, "ansi_files.c"),
            Object(NonMatching, "ansi_fp.c"),
            Object(NonMatching, "ctype.c"),
            Object(NonMatching, "locale.c"),
            Object(NonMatching, "arith.c"),
            Object(NonMatching, "bsearch.c"),
            Object(NonMatching, "buffer_io.c"),
            Object(NonMatching, "direct_io.c"),
            Object(NonMatching, "file_io.c"),
            Object(NonMatching, "FILE_POS.c"),
            Object(NonMatching, "mbstring.c"),
            Object(NonMatching, "mem.c"),
            Object(NonMatching, "mem_funcs.c"),
            Object(NonMatching, "math_api.c"),
            Object(NonMatching, "misc_io.c"),
            Object(NonMatching, "printf.c"),
            Object(NonMatching, "qsort.c"),
            Object(NonMatching, "rand.c"),
            Object(NonMatching, "scanf.c"),
            Object(NonMatching, "signal.c"),
            Object(NonMatching, "string.c"),
            Object(NonMatching, "strtold.c"),
            Object(NonMatching, "strtoul.c"),
            Object(NonMatching, "float.c"),
            Object(NonMatching, "time.c"),
            Object(NonMatching, "wctype.c"),
            Object(NonMatching, "wmem.c"),
            Object(NonMatching, "wprintf.c"),
            Object(NonMatching, "wstring.c"),
            Object(NonMatching, "wchar_io.c"),
            Object(NonMatching, "time.dolphin.c"),
            Object(NonMatching, "sysenv.GCN.c"),
            Object(NonMatching, "uart_console_io_gcn.c"),
            Object(NonMatching, "abort_exit_ppc_eabi.c"),
            Object(NonMatching, "math_sun.c"),
            Object(NonMatching, "extras.c"),

            Object(NonMatching, "math/e_acos.c"),
            Object(NonMatching, "math/e_asin.c"),
            Object(NonMatching, "math/e_atan2.c"),
            Object(NonMatching, "math/e_exp.c"),
            Object(NonMatching, "math/e_fmod.c"),
            Object(NonMatching, "math/e_log.c"),
            Object(NonMatching, "math/e_pow.c"),
            Object(NonMatching, "math/e_rem_pio2.c"),
            Object(NonMatching, "math/fminmaxdim.c"),
            Object(NonMatching, "math/s_fmax.c"),
            Object(NonMatching, "math/k_cos.c"),
            Object(NonMatching, "math/k_rem_pio2.c"),
            Object(NonMatching, "math/k_sin.c"),
            Object(NonMatching, "math/k_tan.c"),
            Object(NonMatching, "math/s_atan.c"),
            Object(NonMatching, "math/s_ceil.c"),
            Object(NonMatching, "math/s_copysign.c"),
            Object(NonMatching, "math/s_cos.c"),
            Object(NonMatching, "math/s_floor.c"),
            Object(NonMatching, "math/s_frexp.c"),
            Object(NonMatching, "math/s_ldexp.c"),
            Object(NonMatching, "math/s_sin.c"),
            Object(NonMatching, "math/s_tan.c"),
            Object(NonMatching, "math/w_acos.c"),
            Object(NonMatching, "math/w_asin.c"),
            Object(NonMatching, "math/w_atan2.c"),
            Object(NonMatching, "math/w_exp.c"),
            Object(NonMatching, "math/w_fmod.c"),
            Object(NonMatching, "math/w_log.c"),
            Object(NonMatching, "math/w_pow.c"),
            Object(NonMatching, "math/e_sqrt.c"),
            Object(NonMatching, "math/math_ppc.c"),
            Object(NonMatching, "math/w_sqrt.c"),
        ]
    ),
    # MetroTRK library
    TRKLib("TRK_Hollywood_Revolution",
        [
            Object(Matching,    "Portable/msghndlr.c"),

            Object(Matching,    "Export/targsupp.c"),
            Object(Matching,    "Export/mslsupp.c"),

            Object(Matching,    "dolphin_Os/dolphin_trk.c"),
            Object(Matching,    "dolphin_Os/dolphin_trk_glue.c"),
            Object(Matching,    "dolphin_Os/target_options.c"),
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
