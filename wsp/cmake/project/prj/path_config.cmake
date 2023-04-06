
## __________________________________________________________________
## RELATIVE PATH Definitions

# linker needs the following definitions to set library path
# root folder: relative path of "src" (project root folder) respect project build folder
set(BUILD_RELATIVE_PATH__CODE       ../../../../../../..                                                    )
set(BUILD_RELATIVE_PATH__SDK_NXP    ${BUILD_RELATIVE_PATH__CODE}/libs/sdk_nxp/src/v_${SDK_NXP_LIB_VER}      )

set(BUILD_RELATIVE_PATH__XPRESSO_PRJ       ../../../../xpresso/workaspace/${APP_NAME}/${CMAKE_BUILD_TYPE}   )


