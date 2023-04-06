## ******************************************************************
## __________________________________________________________________
## TST/APP CPP FILES Definitions

set(CODE_NXP_FILES_TST_C_MN_AP
    ${RELATIVE_PATH__SRC}/ds3231.c
    ${RELATIVE_PATH__SRC}/ds3231_low_level.c
    ${RELATIVE_PATH__SRC}/semihost_hardfault.c
)

set(CODE_NXP_FILES_TST_CPP_MN_AP
    ${RELATIVE_PATH__SRC}/LPC54608_tst_freertos.cpp
    ${RELATIVE_PATH__SRC}/cpp_config.cpp
)

set(CODE_APP_TB_COMMON
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krThread/v_01/krThreadTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krInit/v_01/krInitStaticTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/kr/krTimer/v_01/krTimerTbl.cpp
    ${RELATIVE_PATH__COMMON}/tb/tb/sv/svStateMachine/v_01/svStateMachineTbl.cpp
)

set(CODE_APP_SOURCE_MAIN
    ${CODE_NXP_FILES_TST_C_MN_AP}
    ${CODE_NXP_FILES_TST_CPP_MN_AP}
    ${CODE_APP_TB_COMMON}
)


