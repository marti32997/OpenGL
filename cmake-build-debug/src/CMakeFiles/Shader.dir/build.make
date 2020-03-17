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

# Include any dependencies generated for this target.
include src/CMakeFiles/Shader.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Shader.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Shader.dir/flags.make

src/CMakeFiles/Shader.dir/Shader.cpp.o: src/CMakeFiles/Shader.dir/flags.make
src/CMakeFiles/Shader.dir/Shader.cpp.o: ../src/Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/Shader.dir/Shader.cpp.o"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shader.dir/Shader.cpp.o -c /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/src/Shader.cpp

src/CMakeFiles/Shader.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shader.dir/Shader.cpp.i"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/src/Shader.cpp > CMakeFiles/Shader.dir/Shader.cpp.i

src/CMakeFiles/Shader.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shader.dir/Shader.cpp.s"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/src/Shader.cpp -o CMakeFiles/Shader.dir/Shader.cpp.s

# Object files for target Shader
Shader_OBJECTS = \
"CMakeFiles/Shader.dir/Shader.cpp.o"

# External object files for target Shader
Shader_EXTERNAL_OBJECTS =

src/libShader.a: src/CMakeFiles/Shader.dir/Shader.cpp.o
src/libShader.a: src/CMakeFiles/Shader.dir/build.make
src/libShader.a: src/CMakeFiles/Shader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libShader.a"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Shader.dir/cmake_clean_target.cmake
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Shader.dir/build: src/libShader.a

.PHONY : src/CMakeFiles/Shader.dir/build

src/CMakeFiles/Shader.dir/clean:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Shader.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Shader.dir/clean

src/CMakeFiles/Shader.dir/depend:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/src /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/src/CMakeFiles/Shader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Shader.dir/depend

