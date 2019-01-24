[Defines]
  DSC_SPECIFICATION = 0x0001001A
  PLATFORM_GUID = e5283e93-e43a-4991-87e1-dbbccbb406f9
  PLATFORM_VERSION = 0.01
  PLATFORM_NAME = MyHelloWorld
  SKUID_IDENTIFIER = DEFAULT
  SUPPORTED_ARCHITECTURES = IA32|X64
  BUILD_TARGETS = DEBUG|RELEASE|NOOPT
  OUTPUT_DIRECTORY = $(PKG_OUTPUT_DIR)

[LibraryClasses]
  #
  # Basic
  #
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  PrintLib|MdePkg\Library\BasePrintLib\BasePrintLib.inf
  
  #
  # UEFI & PI
  #
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  
  #
  # Misc
  #
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  PcdLib|MdePkg\Library\BasePcdLibNull\BasePcdLibNull.inf
  DevicePathLib|MdePkg\Library\UefiDevicePathLib\UefiDevicePathLib.inf

[Components]
  MyHelloWorld.inf
