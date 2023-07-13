/*
 * krTimerTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "svStateMachineTbl.h"

// lib include
#include <app/svStateMachineTbl.h>


namespace fw2 { namespace core { namespace core {

svStateMachine** svStateMachineTbl::UnitsArray2[] = {
    mpfw::apps::svStateMachineTbl::UnitsArray	,
	nullptr
};

} } }	// namespace fw2::core::core

