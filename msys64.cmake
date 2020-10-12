# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

# which compilers to use for C and C++
include(CMakeForceCompiler)
cmake_force_c_compiler(x86_64-pc-msys-gcc GNU)
cmake_force_cxx_compiler(x86_64-pc-msys-g++ GNU)
set(CMAKE_RC_COMPILER x86_64-pc-msys-windres)
set(CMAKE_RC_FLAGS -DGCC_WINDRES)

# here is the target environment located
set(CMAKE_FIND_ROOT_PATH
  /usr/x86_64-pc-msys/sysroot/usr
  /usr/x86_64-pc-msys/sysroot/usr
  /usr/x86_64-pc-msys
#  $ENV{PWD}/usr-install
#  $ENV{HOME}/usr-install
  )
set(CMAKE_MODULE_PATH /usr/x86_64-pc-msys/sysroot/usr/lib/cmake)
set(CMAKE_PREFIX_PATH /usr/x86_64-pc-msys/sysroot/usr)
set(CMAKE_SYSTEM_PREFIX_PATH /usr/x86_64-pc-msys/sysroot/usr)

SET (CMAKE_SYSROOT /usr/x86_64-pc-msys/sysroot)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_FIND_LIBRARY_PREFIXES "lib" "")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".dll" ".dll.a" ".lib" ".a")
