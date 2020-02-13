all: show_env build

clean: show_env clean_build

macro_definition:
UDK_DIR=C:\uefi_development_kit\UDK_DIR
UEFI_ARCH=X64
BUILD_TYPE=RELEASE
TOOLSET=VS2015x86
UDK_TOOLS_DIR=$(UDK_DIR)\BaseTools\Bin\Win32
PKG_OUTPUT_DIR=C:\Projetos\caiuxo\uefi_application\Build
APPLICATION_NAME=MyHelloWorld

set_env:
	set PACKAGES_PATH=C:\Projetos\caiuxo\uefi_application\Files
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
	@echo =====================================

build:
	@echo Calling edksetup

	call $(UDK_DIR)\edksetup.bat --nt32

	@echo Calling UEFI build tool

	call $(UDK_TOOLS_DIR)\build.exe -p MyHelloWorld.dsc -m MyHelloWorld.inf -a $(UEFI_ARCH) -b $(BUILD_TYPE) -t $(TOOLSET) -D PKG_OUTPUT_DIR=$(PKG_OUTPUT_DIR)

generate_media:
	@cd $(MEDIA_PATH)
	@if not exist $(MEDIA_PATH)EFI mkdir $(MEDIA_PATH)EFI
	@cd $(MEDIA_PATH)EFI
	@if not exist $(MEDIA_PATH)EFI\BOOT mkdir $(MEDIA_PATH)EFI\BOOT
	@cd $(MEDIA_PATH)EFI\BOOT
	@echo Ready to copy shell from:
	@echo $(UDK_DIR)\ShellBinPkg\UefiShell\$(UEFI_ARCH)\Shell.efi
	@echo To:
	@echo $(MEDIA_PATH)EFI\BOOT\BOOT$(UEFI_ARCH).efi
	@copy /Y $(UDK_DIR)\ShellBinPkg\UefiShell\$(UEFI_ARCH)\Shell.efi $(MEDIA_PATH)EFI\BOOT\BOOT$(UEFI_ARCH).efi
	@echo Ready to copy Application from:
	@echo $(PKG_OUTPUT_DIR)\$(BUILD_TYPE)_$(TOOLSET)\$(UEFI_ARCH)\$(APPLICATION_NAME).efi
	@copy /Y $(PKG_OUTPUT_DIR)\$(BUILD_TYPE)_$(TOOLSET)\$(UEFI_ARCH)\$(APPLICATION_NAME).efi $(MEDIA_PATH)
