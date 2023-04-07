/*
 * krTimerTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "svStateMachineTbl.h"

// lib include
#include "mpfw_code_apps_tst_20221206/src/tb/sv/svStateMachine/v_02/svStateMachineTbl.h"

namespace fw2 { namespace core { namespace core {

svStateMachine** svStateMachineTbl::UnitsArray2[] = {
    mpfw::libs::   tst_20221206::svStateMachineTbl::UnitsArray	,
	nullptr
};

} } }	// namespace fw2::core::core

