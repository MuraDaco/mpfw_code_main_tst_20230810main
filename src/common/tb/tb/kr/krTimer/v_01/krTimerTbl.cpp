/*
 * krTimerTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "krTimerTbl.h"

// lib include
#include <app/krTimerTbl.h>

namespace fw2 { namespace core { namespace core {

krTimer** krTimerTbl::krTimerPtr2Array[] = {
    mpfw::apps::krTimerTbl::TimerPtrArray	,
	nullptr
};

} } }	// namespace fw2::core::core

