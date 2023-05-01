## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_APP_TB
)

set(CODE_APP_TB_COMMON
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krThread/v_01/krThreadTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krInit/v_01/krInitStaticTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krTimer/v_01/krTimerTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/sv/svStateMachine/v_01/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${RELATIVE_PATH__SRC}/main.cpp
    ${CODE_APP_TB_COMMON}
)

