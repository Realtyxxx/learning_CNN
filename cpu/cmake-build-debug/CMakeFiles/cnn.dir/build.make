# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\software\editor\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\software\editor\CLion\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\work\crane\deep_learning\cnn\cpu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cnn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cnn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cnn.dir/flags.make

CMakeFiles/cnn.dir/src/cnn.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/cnn.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/cnn.cpp.obj: ../src/cnn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cnn.dir/src/cnn.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\cnn.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\cnn.cpp

CMakeFiles/cnn.dir/src/cnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/cnn.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\cnn.cpp > CMakeFiles\cnn.dir\src\cnn.cpp.i

CMakeFiles/cnn.dir/src/cnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/cnn.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\cnn.cpp -o CMakeFiles\cnn.dir\src\cnn.cpp.s

CMakeFiles/cnn.dir/src/pipeline.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/pipeline.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/pipeline.cpp.obj: ../src/pipeline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cnn.dir/src/pipeline.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\pipeline.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\pipeline.cpp

CMakeFiles/cnn.dir/src/pipeline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/pipeline.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\pipeline.cpp > CMakeFiles\cnn.dir\src\pipeline.cpp.i

CMakeFiles/cnn.dir/src/pipeline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/pipeline.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\pipeline.cpp -o CMakeFiles\cnn.dir\src\pipeline.cpp.s

CMakeFiles/cnn.dir/src/data_format.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/data_format.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/data_format.cpp.obj: ../src/data_format.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cnn.dir/src/data_format.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\data_format.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\data_format.cpp

CMakeFiles/cnn.dir/src/data_format.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/data_format.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\data_format.cpp > CMakeFiles\cnn.dir\src\data_format.cpp.i

CMakeFiles/cnn.dir/src/data_format.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/data_format.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\data_format.cpp -o CMakeFiles\cnn.dir\src\data_format.cpp.s

CMakeFiles/cnn.dir/src/relu.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/relu.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/relu.cpp.obj: ../src/relu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cnn.dir/src/relu.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\relu.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\relu.cpp

CMakeFiles/cnn.dir/src/relu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/relu.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\relu.cpp > CMakeFiles\cnn.dir\src\relu.cpp.i

CMakeFiles/cnn.dir/src/relu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/relu.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\relu.cpp -o CMakeFiles\cnn.dir\src\relu.cpp.s

CMakeFiles/cnn.dir/src/linear.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/linear.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/linear.cpp.obj: ../src/linear.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cnn.dir/src/linear.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\linear.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\linear.cpp

CMakeFiles/cnn.dir/src/linear.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/linear.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\linear.cpp > CMakeFiles\cnn.dir\src\linear.cpp.i

CMakeFiles/cnn.dir/src/linear.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/linear.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\linear.cpp -o CMakeFiles\cnn.dir\src\linear.cpp.s

CMakeFiles/cnn.dir/src/conv2d.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/conv2d.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/conv2d.cpp.obj: ../src/conv2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cnn.dir/src/conv2d.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\conv2d.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\conv2d.cpp

CMakeFiles/cnn.dir/src/conv2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/conv2d.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\conv2d.cpp > CMakeFiles\cnn.dir\src\conv2d.cpp.i

CMakeFiles/cnn.dir/src/conv2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/conv2d.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\conv2d.cpp -o CMakeFiles\cnn.dir\src\conv2d.cpp.s

CMakeFiles/cnn.dir/src/func.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/func.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/func.cpp.obj: ../src/func.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cnn.dir/src/func.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\func.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\func.cpp

CMakeFiles/cnn.dir/src/func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/func.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\func.cpp > CMakeFiles\cnn.dir\src\func.cpp.i

CMakeFiles/cnn.dir/src/func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/func.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\func.cpp -o CMakeFiles\cnn.dir\src\func.cpp.s

CMakeFiles/cnn.dir/src/pool2d.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/pool2d.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/pool2d.cpp.obj: ../src/pool2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/cnn.dir/src/pool2d.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\pool2d.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\pool2d.cpp

CMakeFiles/cnn.dir/src/pool2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/pool2d.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\pool2d.cpp > CMakeFiles\cnn.dir\src\pool2d.cpp.i

CMakeFiles/cnn.dir/src/pool2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/pool2d.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\pool2d.cpp -o CMakeFiles\cnn.dir\src\pool2d.cpp.s

CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj: ../src/batchnorm2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\batchnorm2d.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\batchnorm2d.cpp

CMakeFiles/cnn.dir/src/batchnorm2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/batchnorm2d.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\batchnorm2d.cpp > CMakeFiles\cnn.dir\src\batchnorm2d.cpp.i

CMakeFiles/cnn.dir/src/batchnorm2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/batchnorm2d.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\batchnorm2d.cpp -o CMakeFiles\cnn.dir\src\batchnorm2d.cpp.s

CMakeFiles/cnn.dir/src/metrics.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/metrics.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/metrics.cpp.obj: ../src/metrics.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/cnn.dir/src/metrics.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\metrics.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\metrics.cpp

CMakeFiles/cnn.dir/src/metrics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/metrics.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\metrics.cpp > CMakeFiles\cnn.dir\src\metrics.cpp.i

CMakeFiles/cnn.dir/src/metrics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/metrics.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\metrics.cpp -o CMakeFiles\cnn.dir\src\metrics.cpp.s

CMakeFiles/cnn.dir/src/architectures.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/architectures.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/architectures.cpp.obj: ../src/architectures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/cnn.dir/src/architectures.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\architectures.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\architectures.cpp

CMakeFiles/cnn.dir/src/architectures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/architectures.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\architectures.cpp > CMakeFiles\cnn.dir\src\architectures.cpp.i

CMakeFiles/cnn.dir/src/architectures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/architectures.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\architectures.cpp -o CMakeFiles\cnn.dir\src\architectures.cpp.s

CMakeFiles/cnn.dir/src/alexnet.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/alexnet.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/alexnet.cpp.obj: ../src/alexnet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/cnn.dir/src/alexnet.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\alexnet.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\alexnet.cpp

CMakeFiles/cnn.dir/src/alexnet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/alexnet.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\alexnet.cpp > CMakeFiles\cnn.dir\src\alexnet.cpp.i

CMakeFiles/cnn.dir/src/alexnet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/alexnet.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\alexnet.cpp -o CMakeFiles\cnn.dir\src\alexnet.cpp.s

CMakeFiles/cnn.dir/src/dropout.cpp.obj: CMakeFiles/cnn.dir/flags.make
CMakeFiles/cnn.dir/src/dropout.cpp.obj: CMakeFiles/cnn.dir/includes_CXX.rsp
CMakeFiles/cnn.dir/src/dropout.cpp.obj: ../src/dropout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/cnn.dir/src/dropout.cpp.obj"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cnn.dir\src\dropout.cpp.obj -c D:\work\crane\deep_learning\cnn\cpu\src\dropout.cpp

CMakeFiles/cnn.dir/src/dropout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cnn.dir/src/dropout.cpp.i"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\work\crane\deep_learning\cnn\cpu\src\dropout.cpp > CMakeFiles\cnn.dir\src\dropout.cpp.i

CMakeFiles/cnn.dir/src/dropout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cnn.dir/src/dropout.cpp.s"
	D:\environments\C++\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\work\crane\deep_learning\cnn\cpu\src\dropout.cpp -o CMakeFiles\cnn.dir\src\dropout.cpp.s

# Object files for target cnn
cnn_OBJECTS = \
"CMakeFiles/cnn.dir/src/cnn.cpp.obj" \
"CMakeFiles/cnn.dir/src/pipeline.cpp.obj" \
"CMakeFiles/cnn.dir/src/data_format.cpp.obj" \
"CMakeFiles/cnn.dir/src/relu.cpp.obj" \
"CMakeFiles/cnn.dir/src/linear.cpp.obj" \
"CMakeFiles/cnn.dir/src/conv2d.cpp.obj" \
"CMakeFiles/cnn.dir/src/func.cpp.obj" \
"CMakeFiles/cnn.dir/src/pool2d.cpp.obj" \
"CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj" \
"CMakeFiles/cnn.dir/src/metrics.cpp.obj" \
"CMakeFiles/cnn.dir/src/architectures.cpp.obj" \
"CMakeFiles/cnn.dir/src/alexnet.cpp.obj" \
"CMakeFiles/cnn.dir/src/dropout.cpp.obj"

# External object files for target cnn
cnn_EXTERNAL_OBJECTS =

bin/cnn.exe: CMakeFiles/cnn.dir/src/cnn.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/pipeline.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/data_format.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/relu.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/linear.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/conv2d.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/func.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/pool2d.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/batchnorm2d.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/metrics.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/architectures.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/alexnet.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/src/dropout.cpp.obj
bin/cnn.exe: CMakeFiles/cnn.dir/build.make
bin/cnn.exe: D:/environments/C++/OpenCV/opencv-4.5.2/build_TDM-GCC/install/x64/mingw/lib/libopencv_highgui452.dll.a
bin/cnn.exe: D:/environments/C++/OpenCV/opencv-4.5.2/build_TDM-GCC/install/x64/mingw/lib/libopencv_videoio452.dll.a
bin/cnn.exe: D:/environments/C++/OpenCV/opencv-4.5.2/build_TDM-GCC/install/x64/mingw/lib/libopencv_imgcodecs452.dll.a
bin/cnn.exe: D:/environments/C++/OpenCV/opencv-4.5.2/build_TDM-GCC/install/x64/mingw/lib/libopencv_imgproc452.dll.a
bin/cnn.exe: D:/environments/C++/OpenCV/opencv-4.5.2/build_TDM-GCC/install/x64/mingw/lib/libopencv_core452.dll.a
bin/cnn.exe: CMakeFiles/cnn.dir/linklibs.rsp
bin/cnn.exe: CMakeFiles/cnn.dir/objects1.rsp
bin/cnn.exe: CMakeFiles/cnn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable bin\cnn.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cnn.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cnn.dir/build: bin/cnn.exe

.PHONY : CMakeFiles/cnn.dir/build

CMakeFiles/cnn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cnn.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cnn.dir/clean

CMakeFiles/cnn.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\work\crane\deep_learning\cnn\cpu D:\work\crane\deep_learning\cnn\cpu D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug D:\work\crane\deep_learning\cnn\cpu\cmake-build-debug\CMakeFiles\cnn.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cnn.dir/depend

