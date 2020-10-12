# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

# which compilers to use for C and C++
include(CMakeForceCompiler)
cmake_force_c_compiler(i686-w64-mingw32-gcc GNU)
cmake_force_cxx_compiler(i686-w64-mingw32-g++ GNU)
set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
set(CMAKE_RC_FLAGS -DGCC_WINDRES)

# here is the target environment located
set(CMAKE_FIND_ROOT_PATH
  /usr/i686-w64-mingw32
  $ENV{PWD}/download-mingw-rpm/usr/i686-w64-mingw32/sys-root/mingw
  $ENV{PWD}/mingw-install
  $ENV{HOME}/mingw-install)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_FIND_LIBRARY_PREFIXES "lib" "")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".dll" ".dll.a" ".lib" ".a")
