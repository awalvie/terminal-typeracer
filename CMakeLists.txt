cmake_minimum_required(VERSION 3.5.0)
project(terminal_racer LANGUAGES C)

# include ncurses
find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

include_directories(${CMAKE_SOURCE_DIR}/src})


file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*.c)
file(GLOB HEADERS ${CMAKE_SOURCE_DIR}/src/*.h)

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS} )
target_link_libraries(${PROJECT_NAME} ${CURSES_LIBRARY})