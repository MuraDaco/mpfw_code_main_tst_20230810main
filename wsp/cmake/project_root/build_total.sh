#!/bin/bash

function echo_chk_clrd {
    echo -e "\033[$1;$2m""dbg msg - `basename $0` -> $3""\033[0;0m" > /dev/stderr
}

path_code="../../../../.."

[ "$1" = -v ] && {
    shift
    verbose_cmake="-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON"
} || {
    verbose_cmake="-DCMAKE_VERBOSE_MAKEFILE:BOOL=OFF"
}

[ "$1" = -c ] && {
    shift
    clean_cmake="--clean-first"
} || {
    clean_cmake=
}

case "$1" in
    "nxp" | "mac")
        platform="$1"
        shift
    ;;
    "rls" | "dbg")
        build_type="$1"
        shift
    ;;
    *)
        [ "$1" ] && {
            echo_chk_clrd 1 31 "wrong parameter"
            exit 1
        } || {
            platform="nxp"
            build_type="rls"
        }
    ;;
esac


case "$1" in
    "nxp" | "mac")
        [ ! "$platform" ] && platform="$1" || { 
            echo_chk_clrd 1 31  "Error - 2nd parameter is wrong: \"platform\" is already set"
            exit 1 
        }
        shift
    ;;
    "rls" | "dbg")
        [ ! "$build_type" ] && build_type="$1" || {
            echo_chk_clrd 1 31  "Error - 2nd parameter is wrong: \"build_type\" is already set"
            exit 1
        }
        shift
    ;;
    *)
        [ "$1" ] && {
            echo_chk_clrd 1 31  "2nd parameter is wrong"
            exit 1
        } || {
            [ "$platform" ] && {
                build_type="rls"
            } || {
                [ "$build_type" ] && platform="nxp"
            }
        }
    ;;
esac

[ "$build_type" = "rls" ] && build_type_cmake="-DCMAKE_BUILD_TYPE=Release"
[ "$build_type" = "dbg" ] && build_type_cmake="-DCMAKE_BUILD_TYPE=Debug"

[ "$platform" = "nxp" ] && {
    platform_cmake="-DWP_PLATFORM_NXP=ON"
    toolchain_cmake="-DCMAKE_TOOLCHAIN_FILE=./cmake/arm-none-eabi-gcc.cmake"
}
[ "$platform" = "mac" ] && platform_cmake="-DWP_PLATFORM_MAC=ON"


{
    [ -f "$path_code/CMakeLists.txt" ] &&
    [ -f "$path_code/cmake/arm-none-eabi-gcc.cmake" ]
} && (
    cd $path_code

    cmake -S . -B main/mpfw_code_main_tst_20221229/wsp/cmake/build_as_lib/$platform/$build_type -G "Unix Makefiles" $toolchain_cmake $platform_cmake -DMAIN_NAME=tst_20221229 -DAPP_NAME=tst_20221206 $build_type_cmake $verbose_cmake && {
        cp main/mpfw_code_main_tst_20221229/wsp/cmake/project/link_script/$build_type/*.ld main/mpfw_code_main_tst_20221229/wsp/cmake/build_as_lib/$platform/$build_type/main/mpfw_code_main_tst_20221229/wsp/cmake/project/subdir/v_01 && {
            cmake --build main/mpfw_code_main_tst_20221229/wsp/cmake/build_as_lib/$platform/$build_type $clean_cmake -- -j 1
        }
    }

    echo
    echo_chk_clrd 1 33 "path_code: $path_code"
    echo_chk_clrd 1 33 "PWD:       $PWD"
    echo
    echo_chk_clrd 1 33 "cmake -S . -B main/mpfw_code_main_tst_20221229/wsp/cmake/build_as_lib/$platform/$build_type -G \"Unix Makefiles\" $toolchain_cmake $platform_cmake -DMAIN_NAME=tst_20221229 -DAPP_NAME=tst_20221206 $build_type_cmake $verbose_cmake"
    echo_chk_clrd 1 33 "cmake --build main/mpfw_code_main_tst_20221229/wsp/cmake/build_as_lib/$platform/$build_type $clean_cmake -- -j 1"
    echo        

) || {
    echo "ERROR - \"CMakeLists.txt\" or \"./cmake/arm-none-eabi-gcc.cmake\" files do not exist"
}

echo
echo_chk_clrd 1 32 "platform:           $platform"
echo_chk_clrd 1 32 "platform_cmake:     $platform_cmake"
echo_chk_clrd 1 32 "toolchain_cmake:    $toolchain_cmake"
echo_chk_clrd 1 32 "build_type:         $build_type"
echo_chk_clrd 1 32 "build_type_cmake:   $build_type_cmake"
echo


