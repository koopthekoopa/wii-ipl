NULL		=
NONE		= none

DEFRULES	= mainrules

AS			= powerpc-eabi-as
AS_MWCC		= mwasmeppc.exe
CC			= mwcceppc.exe
LD			= mwldeppc.exe

CW_GC_27	= $(TOOLS_ROOT)/GC/2.7
CW_GC_30A3	= $(TOOLS_ROOT)/GC/3.0a3
CW_GC_30A32 = $(TOOLS_ROOT)/GC/3.0a3.2
CW_GC_30A33	= $(TOOLS_ROOT)/GC/3.0a3.3
CW_GC_30A34 = $(TOOLS_ROOT)/GC/3.0a3.4
CW_GC_30A5	= $(TOOLS_ROOT)/GC/3.0a5
CW_GC_30A52	= $(TOOLS_ROOT)/GC/3.0a5.2
CW_WII_10	= $(TOOLS_ROOT)/Wii/1.0
CW_WII_11	= $(TOOLS_ROOT)/Wii/1.1
CW_WII_13	= $(TOOLS_ROOT)/Wii/1.3

COMMON_INCLUDES	=	$(INCLUDE_ROOT)/decomp \
					$(RUNTIME_ROOT)/$(INCLUDE_ROOT) \
					$(METROTRK_ROOT)/$(INCLUDE_ROOT) \
					$(MSL_ROOT)/$(INCLUDE_ROOT) \
					$(REVOLUTION_SDK_ROOT)/$(INCLUDE_ROOT) \
					$(REVOLUTION_EXT_ROOT)/$(INCLUDE_ROOT) \
					$(NW4R_ROOT)/$(INCLUDE_ROOT) \
					$(EGG_ROOT)/$(INCLUDE_ROOT) \
					$(RVLFACELIB_ROOT)/$(INCLUDE_ROOT)

COMMON_ASFLAGS		=	-mgekko
COMMON_MWCC_ASFLAGS =	-proc gekko

# Common Compiler Flags for Nintendo's libraries and the application
COMMON_CCFLAGS =	-enum int \
					-inline auto \
					-Cpp_exceptions off \
					-proc gekko \
					-fp hard \
					-RTTI off

# Common Compiler Flags for Metrowork's libraries
COMMON_MW_CCFLAGS =	-enum int \
					-inline auto \
					-Cpp_exceptions off \
					-proc gekko \
					-fp hard \
					-use_lmw_stmw on \
					-rostr

COMMON_LDFLAGS	=	-proc gekko \
					-fp hardware \
					-unused \
					-mapunused \
					-nofail


