# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug

# Utility rule file for ContinuousStart.

# Include the progress variables for this target.
include tests/CMakeFiles/ContinuousStart.dir/progress.make

tests/CMakeFiles/ContinuousStart:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && /opt/clion-2019.3.4/bin/cmake/linux/bin/ctest -D ContinuousStart

ContinuousStart: tests/CMakeFiles/ContinuousStart
ContinuousStart: tests/CMakeFiles/ContinuousStart.dir/build.make

.PHONY : ContinuousStart

# Rule to build all files generated by this target.
tests/CMakeFiles/ContinuousStart.dir/build: ContinuousStart

.PHONY : tests/CMakeFiles/ContinuousStart.dir/build

tests/CMakeFiles/ContinuousStart.dir/clean:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousStart.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ContinuousStart.dir/clean

tests/CMakeFiles/ContinuousStart.dir/depend:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests/CMakeFiles/ContinuousStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ContinuousStart.dir/depend

