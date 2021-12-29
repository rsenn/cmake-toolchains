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
#set(CMAKE_C_COMPILER /opt/arm-linux-androideabi/bin/arm-linux-androideabi-gcc)
#set(CMAKE_CXX_COMPILER /opt/arm-linux-androideabi/bin/arm-linux-androideabi-g++)
#set(CMAKE_AR /opt/arm-linux-androideabi/bin/arm-linux-androideabi-ar)
#set(CMAKE_C_COMPILER_AR /opt/arm-linux-androideabi/bin/arm-linux-androideabi-gcc-ar)
#set(CMAKE_C_COMPILER_RANLIB /opt/arm-linux-androideabi/bin/arm-linux-androideabi-gcc-ranlib)
#set(CMAKE_CXX_COMPILER_AR /opt/arm-linux-androideabi/bin/arm-linux-androideabi-gcc-ar)
#set(CMAKE_CXX_COMPILER_RANLIB /opt/arm-linux-androideabi/bin/arm-linux-androideabi-gcc-ranlib)
#set(CMAKE_RANLIB /opt/arm-linux-androideabi/bin/arm-linux-androideabi-ranlib)
#set(PKG_CONFIG_EXECUTABLE /usr/local/bin/arm-linux-androideabi-pkgconfig)

set(CMAKE_C_COMPILER /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi23-clang)
set(CMAKE_CXX_COMPILER /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi23-clang++)
set(CMAKE_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_C_COMPILER_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_C_COMPILER_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)
set(CMAKE_CXX_COMPILER_AR /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar)
set(CMAKE_CXX_COMPILER_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)
set(CMAKE_RANLIB /opt/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ranlib)
set(PKG_CONFIG_EXECUTABLE /usr/local/bin/arm-linux-androideabi-pkgconfig)

#set(CMAKE_SYSTEM_NAME Android)
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

set(CMAKE_SYSROOT "/opt/arm-linux-androideabi/sysroot")
set(CMAKE_INSTALL_PREFIX "/opt/arm-linux-androideabi/sysroot/usr")
#-nostdlib


set(CMAKE_PREFIX_PATH "/opt/bzip2-android;/opt/curl-android;/opt/libffi-android;/opt/openssl-android;/opt/quickjs-android;/opt/xz-android;/opt/zlib-android;/opt/zstd-android")
set(CMAKE_INCLUDE_PATH "/opt/bzip2-android/include;/opt/curl-android/include;/opt/libffi-android/include;/opt/libwebsockets-android/include;/opt/openssl-android/include;/opt/quickjs-android/include;/opt/xz-android/include;/opt/zlib-android/include;/opt/zstd-android/include")
set(CMAKE_LIBRARY_PATH "/opt/bzip2-android/lib;/opt/curl-android/lib;/opt/libffi-android/lib;/opt/libwebsockets-android/lib;/opt/openssl-android/lib;/opt/quickjs-android/lib;/opt/xz-android/lib;/opt/zlib-android/lib;/opt/zstd-android/lib")

set(CMAKE_SYSTEM_PREFIX_PATH "/opt/arm-linux-androideabi/sysroot/usr")
set(CMAKE_SYSTEM_INCLUDE_PATH "/opt/arm-linux-androideabi/sysroot/usr/include")
set(CMAKE_SYSTEM_LIBRARY_PATH "/opt/arm-linux-androideabi/sysroot/usr/lib")

# Where to look for the target environment. (More paths can be added here)
#set(CMAKE_FIND_ROOT_PATH "")

# Adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search headers and libraries in the target environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


