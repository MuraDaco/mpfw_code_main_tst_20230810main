## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_NXP_FILES_TST_C_MN_AP
    ${MAIN_XXX_SRC_DIR}/ds3231.c
    ${MAIN_XXX_SRC_DIR}/ds3231_low_level.c
    ${MAIN_XXX_SRC_DIR}/semihost_hardfault.c
)

set(CODE_NXP_FILES_TST_CPP_MN_AP
    ${MAIN_XXX_SRC_DIR}/LPC54608_tst_freertos.cpp
    ${MAIN_XXX_SRC_DIR}/cpp_config.cpp
)

set(CODE_APP_TB_COMMON
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krThread/v_01/krThreadTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krInit/v_01/krInitStaticTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krTimer/v_01/krTimerTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/sv/svStateMachine/v_01/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${CODE_NXP_FILES_TST_C_MN_AP}
    ${CODE_NXP_FILES_TST_CPP_MN_AP}
    ${CODE_APP_TB_COMMON}
)


