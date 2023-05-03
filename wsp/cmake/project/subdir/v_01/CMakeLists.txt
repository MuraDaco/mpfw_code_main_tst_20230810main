message(STATUS "---- start section of <module_main_${MAIN_NAME}> module ")

# step 1 - 1st level path definition
include(set_code_build_dirs.cmake )
set(CODE_CMAKE_MODULES_DIR      ${CODE_DIR}/${CMAKE_MODULES_RPATH} )
include(${CODE_CMAKE_MODULES_DIR}/set_apps_libs_dirs.cmake )


# step 2 - 2nd level path definition of depended modules
include(include_dependencies.cmake           )

# step 3 - set cpp sources files
include(../../${WP_PLATFORM_STR}/set_cpp_files.cmake                        )

# step 4 - post build parameter (copy executable file into development environment build directory )
include(../../${WP_PLATFORM_STR}/set_dev_environment_build_dir.cmake        )


## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} 
    ${CODE_APP_SOURCE_MAIN}
)

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

include(${LIBS_SDK_PLATFORM_CMAKE_PUBLIC_DIR}/compile_option_${WP_PLATFORM_STR}.cmake                      )
include(${APPS_XXX_PUBLIC_DIR}/module_app_${APP_NAME}_compile_def.cmake                                  )
include(../../${WP_PLATFORM_STR}/tool_cmd.cmake)

message(STATUS "---- end   section of <module_main_${MAIN_NAME}> module ")
