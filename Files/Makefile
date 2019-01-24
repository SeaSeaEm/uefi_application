all: show_env build

clean: show_env clean_build

macro_definition:
UDK_DIR=C:\uefi_development_kit\UDK_DIR
UEFI_ARCH=X64
BUILD_TYPE=RELEASE
TOOLSET=VS2015x86
UDK_TOOLS_DIR=$(UDK_DIR)\BaseTools\Bin\Win32
PKG_OUTPUT_DIR=C:\Projetos\caiuxo\uefi_app\Build

set_env:
	set WORKSPACE=$(UDK_DIR)
	set EDK_TOOLS_PATH=$(UDK_DIR)\BaseTools
    set PACKAGES_PATH=C:\Projetos\caiuxo\uefi_app\Files
#	The space at the end of the line below is necessary to avoid backslash being 
#	used as a escape character. Do not remove it!
	set VS2015_PREFIX=C:\Program Files (x86)\Microsoft Visual Studio 14.0\ 


show_env: set_env
	@echo.
	@echo ====== Environment Information ======
	@echo.
	@echo UDK_DIR = $(UDK_DIR)
	@echo UEFI_ARCH = $(UEFI_ARCH)
	@echo BUILD_TYPE = $(BUILD_TYPE)
	@echo TOOLSET = $(TOOLSET)
	@echo UDK_TOOLS_DIR = $(UDK_TOOLS_DIR)
	@echo PKG_OUTPUT_DIR = $(PKG_OUTPUT_DIR)
	@echo.
	@echo WORKSPACE = %%WORKSPACE%%
	@echo EDK_TOOLS_PATH = %%EDK_TOOLS_PATH%%
	@echo.
	@echo =====================================

build:
	@echo Calling edksetup
			
	call $(UDK_DIR)\edksetup.bat --nt32
	
	@echo Calling UEFI build tool
	
	call $(UDK_TOOLS_DIR)\build.exe -p MyHelloWorld.dsc -m MyHelloWorld.inf -a $(UEFI_ARCH) -b $(BUILD_TYPE) -t $(TOOLSET) -D PKG_OUTPUT_DIR=$(PKG_OUTPUT_DIR)
