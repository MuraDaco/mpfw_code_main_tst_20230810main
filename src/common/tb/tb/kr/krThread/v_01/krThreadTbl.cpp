/*
 * krThreadTbl.cpp
 *
 *  Created on: Sep, 19 2022
 *      Author: Marco Dau
 */

// lib include
#include "mpfw_code_libs_fw2_core_core/src/tb/kr/krThread/v_04/krThreadTbl.h"
#include "app/krThreadTbl.h"

namespace fw2 {namespace wrapper {namespace core	{

krThreadTbl::ThreadLoopFunction_t* krThreadTbl::LoopFunctionArray2[] = {
    fw2:: core::core        ::krThreadTbl::LoopFunctionArray,
    mpfw::apps::krThreadTbl::LoopFunctionArray,
    nullptr
};

} } } // namespace fw2::wrapper::core

