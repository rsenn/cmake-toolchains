# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

# which compilers to use for C and C++
include(CMakeForceCompiler)
set(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++)
#cmake_force_c_compiler(x86_64-w64-mingw32-gcc GNU)
#cmake_force_cxx_compiler(x86_64-w64-mingw32-g++ GNU)
set(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)
set(CMAKE_RC_FLAGS -DGCC_WINDRES)

# here is the target environment located
set(CMAKE_FIND_ROOT_PATH
  /usr/x86_64-w64-mingw32/sys-root/mingw64
  /usr/x86_64-w64-mingw32/sys-root/mingw64
  /usr/x86_64-w64-mingw32
#  $ENV{PWD}/download-mingw-rpm/usr/x86_64-w64-mingw32/sys-root/mingw64
#  $ENV{PWD}/mingw-install
#  $ENV{HOME}/mingw-install
  )
#SET (CMAKE_SYSROOT /usr/x86_64-w64-mingw32/sys-root)
SET (CMAKE_PREFIX_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64)
SET (CMAKE_FIND_ROOT_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64)
set(CMAKE_SYSTEM_INCLUDE_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64/include)
set(CMAKE_SYSTEM_LIBRARY_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64/lib)
set(CMAKE_SYSTEM_MODULE_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64/lib/cmake)
set(CMAKE_MODULE_PATH /usr/x86_64-w64-mingw32/sys-root/mingw64/lib/cmake)

set(ENV{PKG_CONFIG_PATH} /usr/x86_64-w64-mingw32/sys-root/mingw64/lib/pkgconfig)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_FIND_LIBRARY_PREFIXES "lib" "")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".dll" ".dll.a" ".lib" ".a")
