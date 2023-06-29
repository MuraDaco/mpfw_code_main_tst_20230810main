
---

Wednesday, 28th June 2023

- il problema compare quando si compilano le tabelle dei timer e quindi si usa la funzione delay del freertor


- risoluzione del problema
    - bisogna capire bene come vengono gestiti
        - SysTick
        - Timer
    - nei progetti che usano il FreeRTOS
        - stm_202230504
            - stm
                - qui nel file FreeRTOSConfig.h è ATTIVA la define "#define xPortSysTickHandler SysTick_Handler"
        - FreeRTOS_ThreadCreation
            - stm
                - qui nel file FreeRTOSConfig.h è COMMENTATA la define "#define xPortSysTickHandler SysTick_Handler"
        - tst_20221229
            - nxp
                - qui nel file FreeRTOSConfig.h è ATTIVA la define "#define xPortSysTickHandler SysTick_Handler"
    - la "define xPortSysTickHandler" definisce l'handler del "SysTick"
    - da capire dove e come FreeRTOS attiva l'interrupt SysTick
        - SysTick_CTRL_TICKINT abilita l'interrupt del SysTick

- define not-commented
    - arm-none-eabi-size   stm_20230504.elf 
    -    text	   data	    bss	    dec	    hex	filename
    -   34140	    344	  39800	  74284	  1222c	stm_20230504.elf
    - Finished building: default.size.stdout

- define commented
    - arm-none-eabi-size   stm_20230504.elf 
    -    text	   data	    bss	    dec	    hex	filename
    -   34092	    344	  39800	  74236	  121fc	stm_20230504.elf
    - Finished building: default.size.stdout
- main
    - osKernelStart
    - krThreadManager.cpp
        - vTaskStartScheduler
            - xPortStartScheduler
                - vPortSetupTimerInterrupt
                    - /* Configure SysTick to interrupt at the requested rate. */
                      portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
                      portNVIC_SYSTICK_CTRL_REG = ( portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT );

- FreeRTOS_ThreadCreation ["#define xPortSysTickHandler" COMMENTED]
    - stm32f7xx_it.c
        - SysTick_Handler
            - osSystickHandler
                - xPortSysTickHandler

- tst_20230504 ["#define xPortSysTickHandler" NOT COMMENTED]
    - stm32f7xx_it.c
        - SysTick_Handler

- tst_20230522 ["#define xPortSysTickHandler" NOT COMMENTED]
    - stm32f7xx_it.c
        - SysTick_Handler


---

Tuesday, 27th June 2023

- risoluzione del problema
    - l'idea che mi sono fatto è la seguente
        - per usare il FreeRTOS si deve configurare il SysTick timer, per questa cosa c'è un file sorgente di template
        - qualora non venga definito esplicitamente il SysTick timer viene preso uno di default 

- gestione interrupt
    - è necessario impostare sempre la priorità di un interrupt
    - stabilire quali sono gli interrupt usati dal freertos
        - sembrerebbe
            - SVCall
            - PendSV

- FreeRTOS_ThreadCreation project
    - gerarchia delle chiamate
        - void SysTick_Handler(void)
            - osSystickHandler()
                - xPortSysTickHandler()


void xPortSysTickHandler( void )
{
	/* The SysTick runs at the lowest interrupt priority, so when this interrupt
	executes all interrupts must be unmasked.  There is therefore no need to
	save and then restore the interrupt mask value as its value is already
	known. */
	portDISABLE_INTERRUPTS();
	{
		/* Increment the RTOS tick. */
		if( xTaskIncrementTick() != pdFALSE )
		{
			/* A context switch is required.  Context switching is performed in
			the PendSV interrupt.  Pend the PendSV interrupt. */
			portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
		}
	}
	portENABLE_INTERRUPTS();
}


---

Monday, 26th June 2023

- esclude directory from search
    - main/mpfw_code_main_stm_20230420, main/mpfw_code_main_stm_20230424, main/mpfw_code_main_stm_20230501, libs/mpfw_code_libs_sdk_stm32f769_disco/src/v_00
- scopo
    - far girare i moduli fw2_wrapper_core, fw2_wrapper_resources sulla piattaforma stm32f769_disco
        - la main_app "stm_20230504" implementata un applicazione "nulla" in cui viene inizializzato il freertos ed in cui viene implementato il modulo "fw2_wrapper_core"
        - la main_app "stm_20230505" implementata un applicazione che gestisce la seriale in cui viene inizializzato il freertos
        - le main_app "stm_20230516" e "stm_20230520" implementano il modulo "fw2_wrapper_resources"
        - il passo successivo è quello di inglobare il modulo app "tst_20221206"
        - questo passo è compiuto con la main_app "tst_20230522"
            - ci sono problemi però con la gestione del modulo "fw2_wrapper_core"
                - sembra che lo scheduler del freertos parta subito o comunque il timer che lo gestisce è attivato prima di impostare/inizializzare i threads

- funzioni da analizzare
    - MPU_Config();
        - the same
        - HAL_MPU_Disable();
        - HAL_MPU_ConfigRegion(&MPU_InitStruct);
        - HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);
    - CPU_CACHE_Enable();
    - HAL_Init();
        - #if (ART_ACCELERATOR_ENABLE != 0)
            -   __HAL_FLASH_ART_ENABLE();
        - #if (PREFETCH_ENABLE != 0U)
            -  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
        - HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
        - HAL_InitTick(TICK_INT_PRIORITY);
        - HAL_MspInit();
            - questa funzione viene eseguita solo dalla main_app "stm_20230504" nel file "stm32f7xx_hal_msp.c" presente nel proprio modulo
                -  __HAL_RCC_PWR_CLK_ENABLE();
                -  __HAL_RCC_SYSCFG_CLK_ENABLE();
                -  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
                    - __NVIC_PRIO_BITS definita di default per la scheda di sviluppo
                        - nxp la definisce mentre stm no
    - SystemClock_Config();
    - InitUART();
        - the same

- cosa sono
    - SVCall & PendSV: system service call via SWI instruction
        - vedere "pm0253-stm32f7-series-and-stm32h7-series-cortexm7-processor-programming-manual-stmicroelectronics.pdf"

- sdk_uart_prv.c
    - SystemClock_Config
        - ret = HAL_PWREx_EnableOverDrive(); [stm32f7xx_hal_pwr_ex.c]
            - __HAL_RCC_PWR_CLK_ENABLE
        - ret = HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7);
- InitUART();
    - HAL_GPIO_Init
        - __HAL_RCC_SYSCFG_CLK_ENABLE

- BSP_PB_Init() [funzio che abilita gli interrupt]

- stm_20230504
    - stm32f7xx_hal_timebase_tim.c
        - HAL_InitTick

---

Friday, 26th May 2023

- sono rimasto che ho testato la main_app stm_20230504 (quella con linizializzazione di quasi tutti i moduli hal) mettendo un ciclo while infinito prima della definizione e poi creazione del thread 
    - ho avviato e non si è bloccato o comunque il systick non ha dato errore
        - l'erroere rammento è dovuto al fatto che risulta una lista non vuota mentre lo è
            - xTaskIncrementTick
            - task.c: riga 2702 -> 				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
        - si potrebbe provare a mettere un breackpoint nel systick per vedere se vi entra 
