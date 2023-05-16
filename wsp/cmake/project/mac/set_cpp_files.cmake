## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_APP_TB
)

set(CODE_APP_TB_COMMON
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krThread/v_${TB_KR_THREAD_VER}/krThreadTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krInit/v_${TB_KR_INIT_VER}/krInitStaticTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krTimer/v_${TB_KR_TIMER_VER}/krTimerTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/sv/svStateMachine/v_${TB_SV_STATE_MACHINE_VER}/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${MAIN_XXX_SRC_DIR}/main.cpp
    ${CODE_APP_TB_COMMON}
)

