# step 1 - 1st level path definition
include(path_prv_config.cmake)

# step 2 - 2nd level path definition of depended modules
include(${CODE_CMAKE_MODULES_DIR}/public_config_libs_sdk_${WP_PLATFORM_STR}.cmake     )
include(${CODE_CMAKE_MODULES_DIR}/public_config_libs_common.cmake                     )
include(${CODE_CMAKE_MODULES_DIR}/public_config_libs_fw2_core_core.cmake              )
include(${CODE_CMAKE_MODULES_DIR}/public_config_libs_fw2_wrapper_core.cmake           )
include(${CODE_CMAKE_MODULES_DIR}/public_config_libs_fw2_wrapper_resources.cmake      )
include(${CODE_CMAKE_MODULES_DIR}/public_config_apps_${APP_NAME}.cmake                )

# step 3 - 2nd level path definition of current modules
include(path_prv_config.cmake)
include(path_pub_config.cmake)

# step 4 - calling cmake files of each depended modules
include(${RELATIVE_PATH__LIBS_SDK_PLATFORM_PUBLIC}/module_lib_sdk_${WP_PLATFORM_STR}_config.cmake               )
include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PUBLIC}/module_lib_fw2_core_core_config.cmake                       )
include(${RELATIVE_PATH__LIBS_FW2_WP_KR_PUBLIC}/module_lib_fw2_wrapper_core_config.cmake                        )
include(${RELATIVE_PATH__LIBS_FW2_WP_RS_PUBLIC}/module_lib_fw2_wrapper_resources_config.cmake                   )
include(${RELATIVE_PATH__APPS_PUBLIC}/module_app_${APP_NAME}_config.cmake                                       )

# step 5 - calling cmake files of current module
include(../../${WP_PLATFORM_STR}/public_config.cmake                                                            )

# debug section: some testing messages
message(STATUS "fw2 cmake files folder: ${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}")
message(STATUS "app name: ${APP_NAME}")

## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} 
    ${CODE_APP_SOURCE_MAIN}
)

include(${RELATIVE_PATH__LIBS_SDK_PLATFORM_PUBLIC}/compile_option_${WP_PLATFORM_STR}.cmake                      )
include(${RELATIVE_PATH__APPS_PUBLIC}/module_app_${APP_NAME}_compile_def.cmake                                  )

target_include_directories(${EXECUTABLE} PRIVATE
    ${CODE_DIR_APP_SOURCE_MAIN_INCLUDE}
)

target_link_libraries(${EXECUTABLE} PRIVATE 
    ${APP_NAME}_lib
    fw2_wp_rs_lib
    fw2_wp_kr_lib
    fw2_lib
    ${LIB_SDK_PLATFORM}
)

include(../../${WP_PLATFORM_STR}/tool_cmd.cmake)

