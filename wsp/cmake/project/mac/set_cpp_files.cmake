## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_APP_TB
)

set(CODE_APP_TB_COMMON
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krThread/v_01/krThreadTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krInit/v_01/krInitStaticTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/kr/krTimer/v_01/krTimerTbl.cpp
    ${MAIN_XXX_SRC_COMMON_DIR}/tb/tb/sv/svStateMachine/v_01/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${MAIN_XXX_SRC_DIR}/main.cpp
    ${CODE_APP_TB_COMMON}
)

