### To cross-compile using this toolchain file, use
###     cmake .. -DCMAKE_TOOLCHAIN_FILE=../cmake/Toolchain-mingw.cmake
### command. This file is prepared for Ubuntu 14.10.
### You may need to write your own toolchain file, 
### depending on your operating system and compiler.

# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Windows)

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER i686-w64-mingw32-gcc-posix)
SET(CMAKE_CXX_COMPILER i686-w64-mingw32-g++-posix)
SET(CMAKE_RC_COMPILER i686-w64-mingw32-windres)

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH /usr/i686-w64-mingw32 ${PROJECT_SOURCE_DIR}/dependencies)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)