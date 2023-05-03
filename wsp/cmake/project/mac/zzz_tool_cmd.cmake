add_definitions(
    -Wfatal-errors
    -std=gnu++14
    )

# add_compile_options(-std=gnu++14)

target_link_options(${EXECUTABLE} PRIVATE
    -O3 
    -Wall 
    -Wextra 
    -pedantic 
    -lncurses
)

add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMENT "mac - Platform selected: ${WP_PLATFORM_STR} - Config fw2_lib folder: ${FW2_LIB_CONFIG_DIR}"
)

# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMAND size ${EXECUTABLE}
)
