## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions



set(CODE_APP_TB_COMMON
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krThread/v_${TB_KR_THREAD_VER}/krThreadTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krInit/v_${TB_KR_INIT_VER}/krInitStaticTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krTimer/v_${TB_KR_TIMER_VER}/krTimerTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/sv/svStateMachine/v_${TB_SV_STATE_MACHINE_VER}/svStateMachineTbl.cpp
)

set(CODE_APP_STARTUP_ASM
    ${MAIN_XXX_SRC_DIR}/startup/startup_stm32f769xx.s
)

set(CODE_APP_SRC
    ${MAIN_XXX_SRC_DIR}/main.cpp
    ${MAIN_XXX_SRC_DIR}/freertos/freertos.c
    # ${MAIN_XXX_SRC_DIR}/freertos/port.c
    ${MAIN_XXX_SRC_DIR}/interrupt/stm32f7xx_it.c
    ${MAIN_XXX_SRC_DIR}/startup/system_stm32f7xx.c
    ${MAIN_XXX_SRC_DIR}/uart/stm32f7xx_hal_msp.c
)


set(CODE_APP_SOURCE_MAIN
    ${CODE_APP_STARTUP_ASM}
    ${CODE_APP_SRC}
    ${CODE_APP_TB_COMMON}
)

