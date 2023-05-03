
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################

# after build process the executable file (.out) is copied into "stm cube" build folder to be available to upload to micro via st-link
# this variable is used in "tool_cmd.cmake" file
set(PLATFORM_ENVIRONMENT_BUILD_DIR    ${WSP_DIR__FROM_BUILD}/xpresso/${MAIN_NAME}/${CMAKE_BUILD_TYPE}       )
#  for example:
#  - main/mpfw_code_main_stm_20230424/wsp/cube/project/stm32f769_disco/stm_20230424/Debug

# after build process the executable file (.out) is copied into xpresso build folder to be available to upload to micro via st-link
set(PLATFORM_ENVIRONMENT_BUILD_DIR    ${PLATFORM_ENVIRONMENT_BUILD_DIR}      )

