cmake_minimum_required (VERSION 3.8)

project(PONG)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS off)

if(NOT PNG AND WIN32 AND NOT MSVC)
  SET(PNG_LIBRARY "C:/Program Files (x86)/libpng")
  SET(PNG_INCLUDE_DIR "C:/Program Files (x86)/libpng/include")
endif()

if(NOT JPEG AND WIN32 AND NOT MSVC)
  SET(JPEG_LIBRARY "C:/Program Files (x86)/jpeg")
  SET(JPEG_INCLUDE_DIR "C:/Program Files (x86)/jpeg/include")
endif()

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(GLM REQUIRED)
find_package(EnTT REQUIRED)


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
  PUBLIC ${PROJECT_SOURCE_DIR}/assets
  PUBLIC ${PROJECT_SOURCE_DIR}/src/Game
  PUBLIC ${PROJECT_SOURCE_DIR}/src/Pong
  PUBLIC ${PROJECT_SOURCE_DIR}/src/ECS
  PUBLIC ${PROJECT_SOURCE_DIR}/src/Scene
  PUBLIC ${SDL2_INCLUDE_DIRS}
  PUBLIC ${SDL2IMAGE_INCLUDE_DIRS}
  PUBLIC ${GLM_INCLUDE_DIRS}
  PUBLIC ${EnTT_INCLUDE_DIRS}
)

target_link_libraries(
  ${PROJECT_NAME}
  ${SDL2_LIBRARIES}
  ${SDL2_IMAGE_LIBRARIES}
  SDL2_image::SDL2_image
  glm::glm
  EnTT::EnTT
)