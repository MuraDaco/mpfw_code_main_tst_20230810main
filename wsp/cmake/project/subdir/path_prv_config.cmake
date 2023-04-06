##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################
# root folder: relative path of "code" directory (project root folder) respect CMakeLists.txt project folder
set(RELATIVE_PATH__CODE             ../../../../../..                        )

# app folder: relative path of "tst_20221206" directory from CMakeLists.txt project folder
set(RELATIVE_PATH__APP              ../../../..                              )


##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################
# linker needs the following definitions to set library path

# root folder: relative path of "code" directory (project root folder) respect project build folder
set(BUILD_RELATIVE_PATH__CODE      ../../../../../../../../../../../../..    )

# wsp folder: relative path of "wsp" app directory from project build folder
set(BUILD_RELATIVE_PATH__WSP       ../../../../../../../../../..             )






