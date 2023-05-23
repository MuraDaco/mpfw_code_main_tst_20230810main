/*

cmake -S . -B build/cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON

cmake --build build/cmake --clean-first -- -j 4      

gdb -batch -ex "disassemble /m <function name>" <path/to/exe file> > <text file name .lst>
gdb -batch -ex "disassemble /m thread_interrupt" ../build/cmake/cncrncy_tsts.out > thread_interrupt.cpp.lst
gdb -batch -ex "disassemble /s thread_interrupt" ../build/cmake/cncrncy_tsts.out > thread_interrupt.cpp.lst

*/

// system include
#include <thread>
#include <pthread.h>
using namespace std::this_thread;     // sleep_for, sleep_until
using namespace std::chrono_literals; // ns, us, ms, s, h, etc.

// module include
#include "main.h"

// lib include
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
#include "tb/kr/krThread/v_02/krThreadTbl.h"
#include "tb/kr/krTimer/v_02/krTimerTbl.h"
#include "tb/sv/svStateMachine/v_02/svStateMachineTbl.h"
using namespace mpfw::libs::tst_20221206;


int main()
{
    // ***************************************************************************
    rsSerial::Tx("START  - Init static functions"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    krInitStaticManager::LoopOnUnits();
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("START  - Main"); rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("START  - Setup Timer Service"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("START  - Setup State Machine Service"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("START  - Threads definition and then run them"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
        krThreadManager::InitThenRun();
    rsSerial::Tx(rsSerial::endl);

    do {
        sleep_for(10ms);
    } while (tt_mn_svSyncMain::CheckRaceConditionCounter(10));
    
    // ***************************************************************************
    krThreadManager::Exit();
    rsSerial::Tx("EXIT  - from Main Loop"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);

    // ***************************************************************************
    rsSerial::Tx("SHOW  - Tests results"); rsSerial::Tx(rsSerial::endl);
    rsSerial::Tx(rsSerial::endl);
    tt_MainManager::LoopOnUnits();
    rsSerial::Tx(rsSerial::endl);


}

