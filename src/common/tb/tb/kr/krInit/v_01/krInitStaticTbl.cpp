/*
 * krInitStaticTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "krInitStaticTbl.h"

// lib include
#include "fw2/wrapper/resources/common/src/tb/kr/krInit/v_01/krInitStaticTbl.h"
#include "tst_20221206/src/tb/kr/krInit/v_02/krInitStaticTbl.h"

namespace fw2 { namespace core { namespace core {

krInitStaticTbl::InitFunction_t* krInitStaticTbl::krInitStaticPtr2Array[] = {
    fw2:: wrapper::resources::   krInitStaticTbl::krInitStaticPtrArray	,
    mpfw::libs::   tst_20221206::krInitStaticTbl::krInitStaticPtrArray	,
	nullptr
};

} } }	// namespace fw2::core::core

