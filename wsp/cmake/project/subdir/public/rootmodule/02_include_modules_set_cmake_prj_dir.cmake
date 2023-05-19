##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################

include(libs/mpfw_code_libs_sdk_${WP_PLATFORM_STR}/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_core/common/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_core_core/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_resources/common/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(apps/mpfw_code_apps_${APP_NAME}/wsp/cmake/project/public/set_root_dirs.cmake                        )
##
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02a_set_root_dirs.cmake )


include(libs/mpfw_code_libs_sdk_${WP_PLATFORM_STR}/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_core/common/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_core_core/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_resources/common/wsp/cmake/project/public/set_prj_dir.cmake )
include(apps/mpfw_code_apps_${APP_NAME}/wsp/cmake/project/public/set_prj_dir.cmake                          )
##
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02b_set_prj_dir.cmake )

include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02c_set_src_dir.cmake )
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02d_include_set_conf_dirs.cmake )
