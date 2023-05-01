include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_libs_common.cmake                              )

##

include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_libs_sdk_${WP_PLATFORM_STR}.cmake              )

include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_libs_fw2_wrapper_core.cmake                    )

include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_libs_fw2_core_core.cmake                       )

include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_libs_fw2_wrapper_resources.cmake               )

include(${CODE_CMAKE_MODULES_DIR}/set_public_include_src_ver_apps_${APP_NAME}.cmake                         )

##

include(include_ver_set_inc_src_dirs.cmake                                                                  )
