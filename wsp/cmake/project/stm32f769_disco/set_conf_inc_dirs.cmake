##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################

## platform indepenedent
set(FW2_WRAPPER_CORE_CONF_RPATH       ${MAIN_XXX_SRC_COMMON_RPATH}/cg/libs/fw2_wrapper_core )

## platform dependent
set(SDK_PLATFORM_CONF_RPATH       ${MAIN_XXX_SRC_PLATFORM_RPATH}/Inc/sdk_conf )
set(SDK_PLATFORM_FREERTOS_CONF_RPATH       ${MAIN_XXX_SRC_PLATFORM_RPATH}/Inc/freertos )
set(SDK_PLATFORM_INTERRUPT_CONF_RPATH       ${MAIN_XXX_SRC_PLATFORM_RPATH}/Inc/interrupt )
set(SDK_PLATFORM_SDK_CONF_RPATH       ${MAIN_XXX_SRC_PLATFORM_RPATH}/Inc/sdk_conf )
set(SDK_PLATFORM_UART_CONF_RPATH       ${MAIN_XXX_SRC_PLATFORM_RPATH}/Inc/uart )
