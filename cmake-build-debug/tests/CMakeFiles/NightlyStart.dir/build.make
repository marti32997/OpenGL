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

# Utility rule file for NightlyStart.

# Include the progress variables for this target.
include tests/CMakeFiles/NightlyStart.dir/progress.make

tests/CMakeFiles/NightlyStart:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && /opt/clion-2019.3.4/bin/cmake/linux/bin/ctest -D NightlyStart

NightlyStart: tests/CMakeFiles/NightlyStart
NightlyStart: tests/CMakeFiles/NightlyStart.dir/build.make

.PHONY : NightlyStart

# Rule to build all files generated by this target.
tests/CMakeFiles/NightlyStart.dir/build: NightlyStart

.PHONY : tests/CMakeFiles/NightlyStart.dir/build

tests/CMakeFiles/NightlyStart.dir/clean:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/NightlyStart.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/NightlyStart.dir/clean

tests/CMakeFiles/NightlyStart.dir/depend:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests/CMakeFiles/NightlyStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/NightlyStart.dir/depend
