####################
# PLATFORM MAC BUILD
####################
# cmake -S . -B ../../build_as_prj/mac/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_MAC=ON -DFW2_CMAKE_VERSION=   -DFW2_LIB_CONFIG_DIR=libs/tst_20221206/src -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake -S . -B ../../build_as_prj/mac/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_MAC=ON -DFW2_CMAKE_VERSION=   -DFW2_LIB_CONFIG_DIR=                      -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake -S . -B ../../build_as_prj/mac/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_MAC=ON -DFW2_CMAKE_VERSION=01 -DFW2_LIB_CONFIG_DIR=                      -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake --build ../../build_as_prj/mac/rls --clean-first -- -j 4
# ../../build_as_prj/mac/rls/tst_20221229.out

####################
# PLATFORM NXP BUILD
####################
# cmake -S . -B ../../build_as_prj/nxp/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_NXP=ON -DFW2_CMAKE_VERSION=   -DFW2_LIB_CONFIG_DIR=libs/tst_20221206/src -DCMAKE_TOOLCHAIN_FILE=./arm-none-eabi-gcc.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake -S . -B ../../build_as_prj/nxp/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_NXP=ON -DFW2_CMAKE_VERSION=   -DFW2_LIB_CONFIG_DIR=                      -DCMAKE_TOOLCHAIN_FILE=./arm-none-eabi-gcc.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake -S . -B ../../build_as_prj/nxp/rls -G "Unix Makefiles" -DAPP_NAME=tst_20221229 -DWP_PLATFORM_NXP=ON -DFW2_CMAKE_VERSION=01 -DFW2_LIB_CONFIG_DIR=                      -DCMAKE_TOOLCHAIN_FILE=./arm-none-eabi-gcc.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
# cmake --build ../../build_as_prj/nxp/rls --clean-first -- -j 4
# ../../build_as_prj/nxp/rls/tst_20221229.out



cmake_minimum_required(VERSION 3.15.3)

project(${APP_NAME})

enable_language(C ASM)
# set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)


## ******************************************************************
## __________________________________________________________________
## PLATFORM Definitions

if(WP_PLATFORM_LINUX)
    if(DEFINED WP_PLATFORM_STR)
        message(FATAL_ERROR "TOO MANY PLATFORM selected !!!!" )
    else()
        set(WP_PLATFORM_STR     linux   )
    endif()
endif()

if(WP_PLATFORM_MAC)
    if(DEFINED WP_PLATFORM_STR)
        message(FATAL_ERROR "TOO MANY PLATFORM selected !!!!" )
    else()
        set(WP_PLATFORM_STR     mac   )
    endif()
endif()

if(WP_PLATFORM_NXP)
    if(DEFINED WP_PLATFORM_STR)
        message(FATAL_ERROR "TOO MANY PLATFORM selected !!!!" )
    else()
        set(WP_PLATFORM_STR     nxp   )
    endif()
endif()

if(WP_PLATFORM_STM)
    if(DEFINED WP_PLATFORM_STR)
        message(FATAL_ERROR "TOO MANY PLATFORM selected !!!!" )
    else()
        set(WP_PLATFORM_STR     stm   )
    endif()
endif()

if(NOT DEFINED WP_PLATFORM_STR)
    message(FATAL_ERROR "NO PLATFORM selected !!!!" )
endif()

## ******************************************************************
## __________________________________________________________________
## cmake subdirectories versions

if(FW2_CMAKE_VERSION)
    set(STR_FW2_CMAKE_VERSION v_${FW2_CMAKE_VERSION})
endif()


## ******************************************************************
## __________________________________________________________________
## Load configuration directory

include(../path_config.cmake)
include(path_config.cmake)

if(WP_PLATFORM_NXP)
    include(${RELATIVE_PATH__SDK_NXP_PRJ}/ver_config.cmake)
    include(${RELATIVE_PATH__SDK_NXP_PRJ}/dir_config.cmake)
    include(${RELATIVE_PATH__SDK_NXP_PRJ}/file_config.cmake)
    include(${RELATIVE_PATH__SDK_NXP_PRJ}/include_config.cmake)
    
    include(../nxp/dir_config.cmake)
    include(../nxp/file_config.cmake)
    include(../nxp/include_config.cmake)

endif()

if(WP_PLATFORM_MAC)
    include(../mac/file_config.cmake)
endif()

message(STATUS "fw2 cmake files folder: ${RELATIVE_PATH__FW2_LIB_PRJ}")
include(${RELATIVE_PATH__FW2_LIB_PRJ}/ver_config.cmake)
include(${RELATIVE_PATH__FW2_LIB_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__FW2_LIB_PRJ}/file_config.cmake)
include(${RELATIVE_PATH__FW2_LIB_PRJ}/include_config.cmake)

include(${RELATIVE_PATH__TST_LIB_PRJ}/dir_config.cmake)
include(${RELATIVE_PATH__TST_LIB_PRJ}/file_config.cmake)
include(${RELATIVE_PATH__TST_LIB_PRJ}/include_config.cmake)


## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} 


    $<$<BOOL:${WP_PLATFORM_NXP}>: ${CODE_FILES_SDK_NXP_CPP}>
    ${CODE_CPP_FILES_FW2_LIB}
    ${CODE_CPP_FILES_TST_LIB}
    ${CODE_APP_SOURCE_MAIN}

)

if(WP_PLATFORM_NXP)
    include(${RELATIVE_PATH__SDK_NXP_PRJ}/compile_option.cmake)
    add_compile_definitions(
        TST_20221206
        WP_PLATFORM_NXP
    )

    add_definitions(
        -Wfatal-errors
    )
endif()

if(WP_PLATFORM_MAC)
    include(${RELATIVE_PATH__FW2_LIB_PRJ}/compile_option.cmake)
    add_compile_definitions(TST_20221206)
endif()

target_include_directories(${EXECUTABLE} PRIVATE

    $<$<BOOL:${WP_PLATFORM_NXP}>: ${CODE_DIR_LIB_SDK_NXP_INCLUDE}>
    ${CODE_DIR_LIB_FW2_INCLUDE}
    ${CODE_DIR_LIB_TST_INCLUDE}
    ${CODE_DIR_APP_SOURCE_MAIN_INCLUDE}

)

if(WP_PLATFORM_LINUX)
    include(tool_cmd.cmake)
endif()

if(WP_PLATFORM_MAC)
    include(../mac/tool_cmd.cmake)
endif()

if(WP_PLATFORM_NXP)
    include(../nxp/tool_cmd.cmake)
endif()


