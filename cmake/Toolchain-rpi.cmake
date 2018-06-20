SET(RASPCROSS_DIR $ENV{HOME}/raspberrypi)
SET(PIROOT ${RASPCROSS_DIR}/rootfs)

SET(CMAKE_SYSTEM_NAME Linux) 
SET(CMAKE_SYSTEM_VERSION 1) 

# specify the cross compiler 
SET(CMAKE_C_COMPILER   ${RASPCROSS_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER ${RASPCROSS_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++)


# where is the target environment 
SET(FLAGS "-Wl,-rpath-link,${PIROOT}/opt/vc/lib -Wl,-rpath-link,${PIROOT}/lib/arm-linux-gnueabihf -Wl,-rpath-link,${PIROOT}/usr/lib/arm-linux-gnueabihf -Wl,-rpath-link,${PIROOT}/usr/local/lib")

UNSET(CMAKE_C_FLAGS CACHE)
UNSET(CMAKE_CXX_FLAGS CACHE)

SET(CMAKE_CXX_FLAGS ${FLAGS} CACHE STRING "" FORCE)
SET(CMAKE_C_FLAGS ${FLAGS} CACHE STRING "" FORCE)

SET(CMAKE_SYSROOT ${PIROOT})
SET(CMAKE_FIND_ROOT_PATH ${PIROOT})
 
#INCLUDE_DIRECTORIES(${RASPCROSS_DIR}/rootfs/opt/vs/lib)

# search for programs in the build host directories 
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories 
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY) 
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

