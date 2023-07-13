/*
 * krInitStaticTbl.cpp
 *
 *  Created on: Sep, 30 2022
 *      Author: Marco Dau
 */

// module include
#include "krInitStaticTbl.h"

// lib include
#include "mpfw_code_libs_fw2_wrapper_resources/common/src/tb/kr/krInit/v_01/krInitStaticTbl.h"
#include "app/krInitStaticTbl.h"

namespace fw2 { namespace core { namespace core {

krInitStaticTbl::InitFunction_t* krInitStaticTbl::krInitStaticPtr2Array[] = {
    fw2:: wrapper::resources::   krInitStaticTbl::krInitStaticPtrArray	,
    mpfw::apps::                 krInitStaticTbl::krInitStaticPtrArray	,
	nullptr
};

} } }	// namespace fw2::core::core

