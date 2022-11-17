cmake_minimum_required(VERSION 3.19)
project(cnn)
set(CMAKE_CXX_STANDARD 17)

# 添加编译选项
set(CMAKE_CXX_FLAGS "-O2")

set(PROJECT_SOURCE_DIR ./)

# 生成文件的输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

# include 目录
include_directories(SYSTEM ${CMAKE_CURRENT_SOURCE_DIR}/include)

# 添加可执行文件
add_executable(
  cnn
  src/cnn.cpp
  # src/grad_cam.cpp
  # src/test/test.cpp
  # src/inference.cpp
  src/pipeline.cpp
  src/data_format.cpp
  src/relu.cpp
  src/linear.cpp
  src/conv2d.cpp
  src/func.cpp
  src/pool2d.cpp
  src/batchnorm2d.cpp
  src/metrics.cpp
  src/architectures.cpp
  src/alexnet.cpp
  src/dropout.cpp)

# # Get Boost
# set(BOOST_ROOT /usr/local/opt/)
# find_package(
#   Boost
#   COMPONENTS filesystem
#   REQUIRED)
# include_directories(${Boost_INCLUDE_DIRS})
# 
# 
# if(Boost_FOUND)
#   message(STATUS "Boost_INCLUDE_DIRS = ${Boost_INCLUDE_DIRS}.")
#   message(STATUS "Boost_LIBRARIES = ${Boost_LIBRARIES}.")
#   message(STATUS "Boost_LIB_VERSION = ${Boost_LIB_VERSION}.")
# endif()

set(OpenCV_DIR "/usr/local/opt/opencv/")
# 寻找 opencv 的库
find_package(OpenCV COMPONENTS core highgui imgproc imgcodecs)
# 添加 opencv 的头文件
include_directories(${OpenCV_INCLUDE_DIRS})
# 链接 opencv 动态库路径
link_directories(${OpenCV_LIBRARY_DIRS})

# 设置库文件
# target_link_libraries(cnn ${OpenCV_LIBS} ${Boost_LIBRARIES})
target_link_libraries(cnn ${OpenCV_LIBS})
