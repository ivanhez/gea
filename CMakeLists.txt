cmake_minimum_required (VERSION 3.8)

project(PONG)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS off)

find_package(SDL2 REQUIRED)

file(
  GLOB_RECURSE
  SOURCES
  CONFIGURE_DEPENDS
  "${PROJECT_SOURCE_DIR}/src/*.cpp"
)

add_executable(
  ${PROJECT_NAME}
  src/main.cpp
  ${SOURCES}
)

target_include_directories(
  ${PROJECT_NAME}
  PRIVATE ${PROJECT_SOURCE_DIR}/include
  PRIVATE ${PROJECT_SOURCE_DIR}/src/Game
  PRIVATE ${PROJECT_SOURCE_DIR}/src/Pong
  PRIVATE ${PROJECT_SOURCE_DIR}/src/ECS
  PRIVATE ${PROJECT_SOURCE_DIR}/src/Scene
  PUBLIC ${SDL2_INCLUDE_DIRS}
)

target_link_libraries(
  ${PROJECT_NAME}
  ${SDL2_LIBRARIES}
)