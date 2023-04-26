## ******************************************************************
## __________________________________________________________________
## Load configuration directory

include(path_prv_config.cmake                                                                                   )
include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/public_config.cmake                                 )
include(path_prv_config.cmake                                                                                   )
include(path_pub_config.cmake                                                                                   )

include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/module_lib_sdk_${WP_PLATFORM_STR}_config.cmake      )
include(../../${WP_PLATFORM_STR}/public_config.cmake                                                            )

message(STATUS "fw2 cmake files folder: ${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}")
message(STATUS "app name: ${APP_NAME}")

include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/module_lib_fw2_core_core_config.cmake               )
include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/module_lib_fw2_wrapper_resources_config.cmake       )
include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/module_lib_fw2_wrapper_core_config.cmake            )
include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/module_app_${APP_NAME}_config.cmake                 )


## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} 
    ${CODE_APP_SOURCE_MAIN}
)

include(${RELATIVE_PATH__CODE}/${GLOBAL_CMAKE_MODULES_PATH}/compile_option_${WP_PLATFORM_STR}.cmake)

add_compile_definitions(
    TST_20221206
)

target_include_directories(${EXECUTABLE} PRIVATE
    ${CODE_DIR_APP_SOURCE_MAIN_INCLUDE}
)

target_link_libraries(${EXECUTABLE} PRIVATE 
    tst_20221206_lib
    fw2_wp_rs_lib
    fw2_wp_kr_lib
    fw2_lib
    ${LIB_SDK_PLATFORM}
)

include(../../${WP_PLATFORM_STR}/tool_cmd.cmake)

