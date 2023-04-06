/*
 * krThreadTbl.cpp
 *
 *  Created on: Sep, 19 2022
 *      Author: Marco Dau
 */

// lib include
#include "fw2/core/core/src/tb/kr/krThread/v_04/krThreadTbl.h"
#include "tst_20221206/src/tb/kr/krThread/v_02/krThreadTbl.h"

namespace fw2 {namespace wrapper {namespace core	{

krThreadTbl::ThreadLoopFunction_t* krThreadTbl::LoopFunctionArray2[] = {
    fw2:: core::core        ::krThreadTbl::LoopFunctionArray,
    mpfw::libs::tst_20221206::krThreadTbl::LoopFunctionArray,
    nullptr
};

} } } // namespace fw2::wrapper::core

