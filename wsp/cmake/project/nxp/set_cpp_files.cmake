## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_NXP_FILES_TST_C_MN_AP
    ${MAIN_XXX_SRC_DIR}/ds3231.c
    ${MAIN_XXX_SRC_DIR}/ds3231_low_level.c
    ${MAIN_XXX_SRC_DIR}/freertos.c
    ${MAIN_XXX_SRC_DIR}/semihost_hardfault.c
)

set(CODE_NXP_FILES_TST_CPP_MN_AP
    ${MAIN_XXX_SRC_DIR}/LPC54608_tst_freertos.cpp
    ${MAIN_XXX_SRC_DIR}/cpp_config.cpp
)

set(CODE_APP_TB_COMMON
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krThread/v_${TB_KR_THREAD_VER}/krThreadTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krInit/v_${TB_KR_INIT_VER}/krInitStaticTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krTimer/v_${TB_KR_TIMER_VER}/krTimerTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/sv/svStateMachine/v_${TB_SV_STATE_MACHINE_VER}/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${CODE_NXP_FILES_TST_C_MN_AP}
    ${CODE_NXP_FILES_TST_CPP_MN_AP}
    ${CODE_APP_TB_COMMON}
)


