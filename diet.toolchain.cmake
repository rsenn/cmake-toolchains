set(CMAKE_C_COMPILER_LAUNCHER /usr/bin/diet)

set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/gcc)
set(CMAKE_AR /usr/bin/ar)
set(CMAKE_RANLIB /usr/bin/ranlib)
set(CMAKE_ADDR2LINE /usr/bin/addr2line)
set(CMAKE_AR /usr/bin/ar)
set(CMAKE_CXX_COMPILER_AR /usr/bin/ar)
set(CMAKE_CXX_COMPILER_RANLIB /usr/bin/ranlib)
set(CMAKE_C_COMPILER_AR /usr/bin/ar)
set(CMAKE_C_COMPILER_RANLIB /usr/bin/ranlib)
set(CMAKE_LINKER /usr/bin/ld)
set(CMAKE_NM /usr/bin/nm)
set(CMAKE_OBJCOPY /usr/bin/objcopy)
set(CMAKE_OBJDUMP /usr/bin/objdump)
set(CMAKE_RANLIB /usr/bin/ranlib)
set(CMAKE_READELF /usr/bin/readelf)
set(CMAKE_STRIP /usr/bin/strip)
set(GIT_EXECUTABLE /usr/bin/git)

# set searching rules for cross-compiler
set(CMAKE_FIND_ROOT_PATH /opt/diet)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_SYSTEM_LIBRARY_PATH /opt/diet/lib-x86_64 /usr/lib/x86_64-linux-diet)
set(CMAKE_SYSTEM_PREFIX_PATH /opt/diet)
set(CMAKE_SYSTEM_INCLUDE_PATH /opt/diet/include /usr/include/x86_64-linux-diet)


# set ${CMAKE_C_FLAGS} and ${CMAKE_CXX_FLAGS}flag for cross-compiled process
set(CMAKE_EXE_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)
set(CMAKE_EXE_LINKER_FLAGS -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)
set(CMAKE_MODULE_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)
set(CMAKE_MODULE_LINKER_FLAGS -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)
set(CMAKE_SHARED_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)
set(CMAKE_SHARED_LINKER_FLAGS -Wl,-rpath-link=/opt/diet/lib-x86_64,-rpath=/opt/diet/lib-x86_64)

set(DIET TRUE)

set(PKG_CONFIG_EXECUTABLE /opt/diet/bin/pkg-config)
