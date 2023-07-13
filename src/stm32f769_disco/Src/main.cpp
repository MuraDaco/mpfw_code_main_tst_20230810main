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

#include <app/krInitStaticTbl.h>
using namespace mpfw::apps;


int main(void) {
    // ***************************************************************************
    krInitStaticManager::LoopOnUnits();
    rsSerial::Tx(rsSerial::endl);

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

