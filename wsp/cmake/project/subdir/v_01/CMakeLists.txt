## ******************************************************************
## __________________________________________________________________
## Load configuration directory

include(path_prv_config.cmake)
include(${RELATIVE_PATH__CODE}/path_pub_config.cmake)
include(path_prv_config.cmake)
include(../../path_pub_config.cmake)

if(WP_PLATFORM_NXP)
    include(${RELATIVE_PATH__LIBS_SDK_NXP_PRJ}/ver_config.cmake)
    include(${RELATIVE_PATH__LIBS_SDK_NXP_PRJ}/path_pub_config.cmake)
    include(${RELATIVE_PATH__LIBS_SDK_NXP_PRJ}/dir_config.cmake)
    include(${RELATIVE_PATH__LIBS_SDK_NXP_PRJ}/include_config.cmake)
    
    include(../../nxp/path_pub_config.cmake)
    include(../../nxp/dir_config.cmake)
    include(../../nxp/file_config.cmake)
    include(../../nxp/include_config.cmake)

endif()

if(WP_PLATFORM_MAC)
    include(../../mac/file_config.cmake)
    include(../../mac/include_config.cmake)
endif()


message(STATUS "fw2 cmake files folder: ${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}")
include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}/ver_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}/path_pub_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}/include_config.cmake)

include(${RELATIVE_PATH__LIBS_FW2_WP_RS_PRJ}/ver_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_RS_PRJ}/path_pub_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_RS_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_RS_PRJ}/include_config.cmake)

include(${RELATIVE_PATH__LIBS_FW2_WP_KR_PRJ}/ver_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_KR_PRJ}/path_pub_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_KR_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__LIBS_FW2_WP_KR_PRJ}/include_config.cmake)

include(${RELATIVE_PATH__APPS_XXX_PRJ}/path_pub_config.cmake)
include(${RELATIVE_PATH__APPS_XXX_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__APPS_XXX_PRJ}/include_config.cmake)


## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} 

    ${CODE_APP_SOURCE_MAIN}
)


if(WP_PLATFORM_NXP)
    include(${RELATIVE_PATH__LIBS_SDK_NXP_PRJ}/compile_option.cmake)
    add_compile_definitions(
        TST_20221206
        WP_PLATFORM_NXP
    )

    add_definitions(
        -Wfatal-errors
    )
endif()

if(WP_PLATFORM_MAC)
    include(${RELATIVE_PATH__LIBS_FW2_CORE_CORE_PRJ}/compile_option.cmake)
    add_compile_definitions(TST_20221206)
endif()


target_include_directories(${EXECUTABLE} PRIVATE

    $<$<BOOL:${WP_PLATFORM_NXP}>: ${CODE_DIR_LIB_SDK_NXP_INCLUDE}>
    #${CODE_DIR_LIB_FW2_INCLUDE}
    
    #${CODE_DIR_LIB_FW2_WP_RS_INCLUDE}


    ${CODE_DIR_APP_SOURCE_MAIN_INCLUDE}

)


target_link_libraries(${EXECUTABLE} PRIVATE 
    tst_20221206_lib
    fw2_wp_rs_lib
    fw2_wp_kr_lib
    fw2_lib
    $<$<BOOL:${WP_PLATFORM_NXP}>: sdk_nxp_lib>
)

if(WP_PLATFORM_LINUX)
    include(tool_cmd.cmake)
endif()

if(WP_PLATFORM_MAC)
    include(../../mac/tool_cmd.cmake)
endif()

if(WP_PLATFORM_NXP)
    include(../../nxp/tool_cmd.cmake)
endif()


