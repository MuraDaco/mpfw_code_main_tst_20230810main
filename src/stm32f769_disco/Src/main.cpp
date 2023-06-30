/**
  ******************************************************************************
  * @file    UART/UART_TwoBoards_ComDMA/Src/main.c 
  * @author  MCD Application Team
  * @brief   This sample code shows how to use UART HAL API to transmit
  *          and receive a data buffer with a communication process based on
  *          DMA transfer. 
  *          The communication is done using 2 Boards.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2016 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/// lib include
#include "krInitStaticManager.h"
using namespace fw2::core::core;

#include "krThreadManager.h"
using namespace fw2::wrapper::core;

#include "rsSerial.h"
using namespace fw2::wrapper::resources;

// tst include
#include "mn/mg/tt_MainManager.h"
#include "sv/svSync/v_01/mn/tt_mn_svSyncMain.h"

// tst/tb include
#include "tb/kr/krInit/v_02/krInitStaticTbl.h"
#include "tb/kr/krThread/v_02/krThreadTbl.h"
#include "tb/kr/krTimer/v_02/krTimerTbl.h"
#include "tb/sv/svStateMachine/v_02/svStateMachineTbl.h"
using namespace mpfw::libs::tst_20221206;

#include "stm32f7xx_hal.h"

uint8_t rx_buffer[6];

int main(void) {
//    // ***************************************************************************
//    rsSerial::Tx("START  - Init static functions"); rsSerial::Tx(rsSerial::endl);
//    rsSerial::Tx(rsSerial::endl);
    krInitStaticManager::LoopOnUnits();
    //rsSerial::Init2();
    rsSerial::Tx(rsSerial::endl);

    // /* attach 12 MHz clock to FLEXCOMM8 (I2C master) */
    // CLOCK_AttachClk(kFRO12M_to_FLEXCOMM8);
    // /* reset FLEXCOMM for I2C */
    // RESET_PeripheralReset(kFC8_RST_SHIFT_RSTn);
    // BOARD_InitBootPins();

    // ***************************************************************************
    // ...........1234567890123456789012345678901234567890
    rsSerial::Tx("START  - Main"); rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    // ...........1234567890123456789012345678901234567890
    rsSerial::Tx("START  - Setup Timer Service"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    // ...........1234567890123456789012345678901234567890
    rsSerial::Tx("START  - Setup State Machine Service"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("START  - Threads definition and then run them"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    krThreadManager::InitThenRun();

    while (1) {

    }


    return 0 ;
}

