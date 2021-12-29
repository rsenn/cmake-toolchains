# for the reason of ggcc DONOT need to be installed, make sure aarch64-linux-gnu-gcc and aarch64-linux-gnu-g++ can be found in $PATH: 
set(CMAKE_C_COMPILER /usr/bin/musl-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/musl-gcc)
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
set(CMAKE_FIND_ROOT_PATH /opt/musl)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_SYSTEM_LIBRARY_PATH /opt/musl/lib /usr/lib/x86_64-linux-musl)
set(CMAKE_SYSTEM_PREFIX_PATH /opt/musl)
set(CMAKE_SYSTEM_INCLUDE_PATH /opt/musl/include /usr/include/x86_64-linux-musl)


# set ${CMAKE_C_FLAGS} and ${CMAKE_CXX_FLAGS}flag for cross-compiled process
set(CMAKE_EXE_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)
set(CMAKE_EXE_LINKER_FLAGS -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)
set(CMAKE_MODULE_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)
set(CMAKE_MODULE_LINKER_FLAGS -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)
set(CMAKE_SHARED_LINKER_FLAGS_INIT -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)
set(CMAKE_SHARED_LINKER_FLAGS -Wl,-rpath-link=/opt/musl/lib,-rpath=/opt/musl/lib)

set(MUSL TRUE)

set(PKG_CONFIG_EXECUTABLE /usr/bin/musl-pkg-config)
