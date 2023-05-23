/Users/work/Tools/stm/cube_1_10_1/arm_toolchain/ver_10_3_2021_10/tools/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/bin/ld: ../../../../../../../libs/mpfw_code_libs_sdk_stm32f769_disco/wsp/cmake/project/libsdk_stm32f769_disco_lib.a(port.c.obj): in function `SVC_Handler':
port.c:(.text.SVC_Handler+0x0): multiple definition of `SVC_Handler'; CMakeFiles/tst_20230522.out.dir/__/__/__/__/__/src/stm32f769_disco/Src/interrupt/stm32f7xx_it.c.obj:stm32f7xx_it.c:(.text.SVC_Handler+0x0): first defined here

/Users/work/Tools/stm/cube_1_10_1/arm_toolchain/ver_10_3_2021_10/tools/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/bin/ld: ../../../../../../../libs/mpfw_code_libs_sdk_stm32f769_disco/wsp/cmake/project/libsdk_stm32f769_disco_lib.a(port.c.obj): in function `PendSV_Handler':
port.c:(.text.PendSV_Handler+0x0): multiple definition of `PendSV_Handler'; CMakeFiles/tst_20230522.out.dir/__/__/__/__/__/src/stm32f769_disco/Src/interrupt/stm32f7xx_it.c.obj:stm32f7xx_it.c:(.text.PendSV_Handler+0x0): first defined here

/Users/work/Tools/stm/cube_1_10_1/arm_toolchain/ver_10_3_2021_10/tools/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/bin/ld: ../../../../../../../libs/mpfw_code_libs_sdk_stm32f769_disco/wsp/cmake/project/libsdk_stm32f769_disco_lib.a(port.c.obj): in function `SysTick_Handler':
port.c:(.text.SysTick_Handler+0x0): multiple definition of `SysTick_Handler'; CMakeFiles/tst_20230522.out.dir/__/__/__/__/__/src/stm32f769_disco/Src/interrupt/stm32f7xx_it.c.obj:stm32f7xx_it.c:(.text.SysTick_Handler+0x0): first defined here

