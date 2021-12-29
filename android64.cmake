#
# CMake Toolchain file for crosscompiling Android / arm
#
# This can be used when running cmake in the following way:
#  cd build/
#  cmake .. -DCMAKE_TOOLCHAIN_FILE=../cross-arm-android.cmake
#

# Target operating system name.
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Name of C compiler.
#set(CMAKE_C_COMPILER /opt/aarch64-linux-android/bin/aarch64-linux-android-gcc)
#set(CMAKE_CXX_COMPILER /opt/aarch64-linux-android/bin/aarch64-linux-android-g++)
#set(CMAKE_AR /opt/aarch64-linux-android/bin/aarch64-linux-android-ar)
#set(CMAKE_C_COMPILER_AR /opt/aarch64-linux-android/bin/aarch64-linux-android-gcc-ar)
#set(CMAKE_C_COMPILER_RANLIB /opt/aarch64-linux-android/bin/aarch64-linux-android-gcc-ranlib)
#set(CMAKE_CXX_COMPILER_AR /opt/aarch64-linux-android/bin/aarch64-linux-android-gcc-ar)
#set(CMAKE_CXX_COMPILER_RANLIB /opt/aarch64-linux-android/bin/aarch64-linux-android-gcc-ranlib)
#set(CMAKE_RANLIB /opt/aarch64-linux-android/bin/aarch64-linux-android-ranlib)
set(PKG_CONFIG_EXECUTABLE /usr/local/bin/aarch64-linux-android-pkgconfig)

set(CMAKE_C_COMPILER /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang)
set(CMAKE_CXX_COMPILER /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++)
set(CMAKE_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_C_COMPILER_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_C_COMPILER_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)
set(CMAKE_CXX_COMPILER_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_CXX_COMPILER_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)
set(CMAKE_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)

set(ANDROID 1)

#
# Different build system distros set release optimization level to different
# things according to their local policy, eg, Fedora is -O2 and Ubuntu is -O3
# here.  Actually the build system's local policy is completely unrelated to
# our desire for cross-build release optimization policy for code built to run
# on a completely different target than the build system itself.
#
# Since this goes last on the compiler commandline we have to override it to a
# sane value for cross-build here.  Notice some gcc versions enable broken
# optimizations with -O3.
#
if (CMAKE_BUILD_TYPE MATCHES RELEASE OR CMAKE_BUILD_TYPE MATCHES Release OR CMAKE_BUILD_TYPE MATCHES release)
	set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O2")
	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O2")
endif()

set(CMAKE_SYSROOT "/opt/aarch64-linux-android/sysroot")
set(CMAKE_INSTALL_PREFIX "/opt/aarch64-linux-android/sysroot/usr")
#-nostdlib


set(CMAKE_SYSTEM_PREFIX_PATH "/opt/aarch64-linux-android/sysroot/usr")
set(CMAKE_SYSTEM_INCLUDE_PATH "/opt/aarch64-linux-android/sysroot/usr/include")
set(CMAKE_SYSTEM_LIBRARY_PATH "/opt/aarch64-linux-android/sysroot/usr/lib")

# Where to look for the target environment. (More paths can be added here)
#set(CMAKE_FIND_ROOT_PATH "")

# Adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search headers and libraries in the target environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


