/*
 * krTimerTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "krTimerTbl.h"

// lib include
#include "tst_20221206/src/tb/kr/krTimer/v_02/krTimerTbl.h"

namespace fw2 { namespace core { namespace core {

krTimer** krTimerTbl::krTimerPtr2Array[] = {
    mpfw::libs::   tst_20221206::krTimerTbl::TimerPtrArray	,
	nullptr
};

} } }	// namespace fw2::core::core

