##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################


# app folder: relative path of "tst_20221206" directory from CMakeLists.txt project folder
set(RELATIVE_PATH__MAIN_APP         ../../../../..                             )
set(RELATIVE_PATH__MAIN             ${RELATIVE_PATH__MAIN_APP}/..               )
# root folder: relative path of "code" directory (project root folder) respect CMakeLists.txt project folder
set(RELATIVE_PATH__CODE             ${RELATIVE_PATH__MAIN}/..                   )
set(RELATIVE_PATH__CODE_CMAKE       ${RELATIVE_PATH__CODE}/cmake                )
set(RELATIVE_PATH__APPS             ${RELATIVE_PATH__CODE}/apps                 )
set(RELATIVE_PATH__LIBS             ${RELATIVE_PATH__CODE}/libs                 )



##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################
# linker needs the following definitions to set library path

# root folder: relative path of "code" directory (project root folder) respect project build folder
set(BUILD_RELATIVE_PATH__CODE      ../../../../../../../../../../../../../..    )

# wsp folder: relative path of "wsp" app directory from project build folder
set(BUILD_RELATIVE_PATH__WSP       ../../../../../../../../../../..             )



