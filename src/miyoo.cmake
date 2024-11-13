execute_process(
    COMMAND /opt/miyoo/usr/bin/arm-linux-cc --print-sysroot
    OUTPUT_VARIABLE SYSROOT
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -DMIYOO" CACHE STRING "Flags for the C compiler" FORCE)
set(CMAKE_C_COMPILER "/opt/miyoo/usr/bin/arm-linux-cc" CACHE STRING "C Compiler")
set(SDL2 "${SYSROOT}/usr" CACHE STRING "SDL2 is set" FORCE)