if(LIBS_SDK_PLATFORM_PRJ_DIR)
    add_subdirectory(${LIBS_SDK_PLATFORM_PRJ_DIR})
endif()

add_subdirectory(${LIBS_FW2_CORE_CORE_PRJ_DIR})

add_subdirectory(${LIBS_FW2_WRAPPER_CORE_PRJ_DIR})

add_subdirectory(${LIBS_FW2_WRAPPER_RESOURCES_PRJ_DIR})

add_subdirectory(${APPS_XXX_PRJ_DIR})

add_subdirectory(${MAIN_XXX_DIR_PRJ})
