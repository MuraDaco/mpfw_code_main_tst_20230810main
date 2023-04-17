
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################

# root folder: relative path of "src" (project root folder) respect project build folder
# linker needs the following definitions to set library path
set(BUILD_RELATIVE_PATH__SDK_NXP        ${BUILD_RELATIVE_PATH__CODE}/libs/mpfw_code_libs_sdk_nxp/src/v_${SDK_NXP_LIB_VER}                  )

# after build process the executable file (.out) is copied into xpresso build folder to be available to upload to micro via st-link
set(BUILD_RELATIVE_PATH__XPRESSO_PRJ    ${BUILD_RELATIVE_PATH__WSP}/xpresso/${APP_NAME}/${CMAKE_BUILD_TYPE}      )
