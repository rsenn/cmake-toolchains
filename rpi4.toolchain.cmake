# set cross-compiled system type, it's better not use the type which cmake cannot recognized.
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR aarch64)

# for the reason of aarch64-linux-gnu-gcc DONOT need to be installed, make sure aarch64-linux-gnu-gcc and aarch64-linux-gnu-g++ can be found in $PATH: 
SET(CMAKE_C_COMPILER /usr/bin/aarch64-linux-gnu-gcc)
SET(CMAKE_CXX_COMPILER /usr/bin/aarch64-linux-gnu-g++)
SET(CMAKE_AR /usr/bin/aarch64-linux-gnu-ar)
SET(CMAKE_RANLIB /usr/bin/aarch64-linux-gnu-ranlib)
set(CMAKE_ADDR2LINE /usr/bin/aarch64-linux-gnu-addr2line)
set(CMAKE_AR /usr/bin/aarch64-linux-gnu-ar)
set(CMAKE_CXX_COMPILER_AR /usr/bin/aarch64-linux-gnu-gcc-ar)
set(CMAKE_CXX_COMPILER_RANLIB /usr/bin/aarch64-linux-gnu-gcc-ranlib)
set(CMAKE_C_COMPILER_AR /usr/bin/aarch64-linux-gnu-gcc-ar)
set(CMAKE_C_COMPILER_RANLIB /usr/bin/aarch64-linux-gnu-gcc-ranlib)
set(CMAKE_LINKER /usr/bin/aarch64-linux-gnu-ld)
set(CMAKE_NM /usr/bin/aarch64-linux-gnu-nm)
set(CMAKE_OBJCOPY /usr/bin/aarch64-linux-gnu-objcopy)
set(CMAKE_OBJDUMP /usr/bin/aarch64-linux-gnu-objdump)
set(CMAKE_RANLIB /usr/bin/aarch64-linux-gnu-ranlib)
set(CMAKE_READELF /usr/bin/aarch64-linux-gnu-readelf)
set(CMAKE_STRIP /usr/bin/aarch64-linux-gnu-strip)
set(GIT_EXECUTABLE /usr/bin/git)
set(FIND_PACKAGE_MESSAGE_DETAILS_PythonInterp "[/usr/bin/python3][v(3.2)]")
set(_Python2_EXECUTABLE "/usr/bin/python2")

# set searching rules for cross-compiler
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
SET(CMAKE_SYSROOT /mnt/rpi4)
SET(CMAKE_SYSTEM_LIBRARY_PATH ${CMAKE_SYSROOT}/lib ${CMAKE_SYSROOT}/lib/aarch64-linux-gnu ${CMAKE_SYSROOT}/usr/lib ${CMAKE_SYSROOT}/usr/lib/aarch64-linux-gnu)

# set ${CMAKE_C_FLAGS} and ${CMAKE_CXX_FLAGS}flag for cross-compiled process
SET(CMAKE_C_FLAGS "-mcpu=cortex-a72 ${CMAKE_C_FLAGS}")
SET(CMAKE_CXX_FLAGS "-mcpu=cortex-a72 ${CMAKE_CXX_FLAGS}")
SET(CMAKE_EXE_LINKER_FLAGS_INIT -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)
SET(CMAKE_EXE_LINKER_FLAGS -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)
SET(CMAKE_MODULE_LINKER_FLAGS_INIT -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)
SET(CMAKE_MODULE_LINKER_FLAGS -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)
SET(CMAKE_SHARED_LINKER_FLAGS_INIT -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)
SET(CMAKE_SHARED_LINKER_FLAGS -Wl,-rpath-link=${CMAKE_SYSROOT}/usr/lib,-rpath=${CMAKE_SYSROOT}/usr/lib)

# other settings
add_definitions(-D__ARM_NEON)
add_definitions(-DLINUX)
SET(LINUX TRUE)
SET(RPI TRUE)
