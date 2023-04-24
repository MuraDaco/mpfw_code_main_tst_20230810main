
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from build folder where the executable file (.out) is created  ##
##################################################################################

# after build process the executable file (.out) is copied into xpresso build folder to be available to upload to micro via st-link
set(BUILD_RELATIVE_PATH__XPRESSO_PRJ    ${BUILD_RELATIVE_PATH__WSP}/xpresso/${MAIN_NAME}/${CMAKE_BUILD_TYPE}      )
