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

# Utility rule file for ExperimentalSubmit.

# Include the progress variables for this target.
include tests/CMakeFiles/ExperimentalSubmit.dir/progress.make

tests/CMakeFiles/ExperimentalSubmit:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && /opt/clion-2019.3.4/bin/cmake/linux/bin/ctest -D ExperimentalSubmit

ExperimentalSubmit: tests/CMakeFiles/ExperimentalSubmit
ExperimentalSubmit: tests/CMakeFiles/ExperimentalSubmit.dir/build.make

.PHONY : ExperimentalSubmit

# Rule to build all files generated by this target.
tests/CMakeFiles/ExperimentalSubmit.dir/build: ExperimentalSubmit

.PHONY : tests/CMakeFiles/ExperimentalSubmit.dir/build

tests/CMakeFiles/ExperimentalSubmit.dir/clean:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalSubmit.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ExperimentalSubmit.dir/clean

tests/CMakeFiles/ExperimentalSubmit.dir/depend:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/tests/CMakeFiles/ExperimentalSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ExperimentalSubmit.dir/depend

