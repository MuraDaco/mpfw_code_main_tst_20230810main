##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################


# app folder: relative path of "tst_20221206" directory from CMakeLists.txt project folder
set(RELATIVE_PATH__MAIN_APP         ../../../../..                                                  )
set(RELATIVE_PATH__MAIN             ${RELATIVE_PATH__MAIN_APP}/..                                   )
# root folder: relative path of "code" directory (project root folder) respect CMakeLists.txt project folder
set(RELATIVE_PATH__CODE             ${RELATIVE_PATH__MAIN}/..                                       )
set(RELATIVE_PATH__CODE_CMAKE       ${RELATIVE_PATH__CODE}/${MAIN_CMAKE_FILES_PATH}                 )
set(RELATIVE_PATH__APPS             ${RELATIVE_PATH__CODE}/apps                                     )
set(RELATIVE_PATH__LIBS             ${RELATIVE_PATH__CODE}/libs                                     )



##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################
# linker needs the following definitions to set library path

# root folder: relative path of "code" directory (project root folder) respect project build folder
# it is necessary when a library obj file has to be linked
# it is necessary to define the library obj path respect the build directory (the folder where the executable file will be created) to give to linker
# it is directly used in path_pub_config.cmake file of all sub-project that have a library obj file (library already compiled and without sources)
set(BUILD_RELATIVE_PATH__CODE      ../../../../../../../../../../../../../..    )

# wsp folder: relative path of "wsp" app directory from project build folder
# it is necessary to define the "cube" executable path respect the build directory (the folder where the executable file will be created) to give to post command of copy 
# it is used in the copy post command to copy the executable file to build directory of "stm cube" project, here the mentioned executable file can be upload to device 
set(BUILD_RELATIVE_PATH__WSP       ../../../../../../../../../../..             )



