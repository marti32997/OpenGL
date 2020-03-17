# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yosua/Projects/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yosua/Projects/OpenGL/build

# Include any dependencies generated for this target.
include src/CMakeFiles/Vertex_Array.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Vertex_Array.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Vertex_Array.dir/flags.make

src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o: src/CMakeFiles/Vertex_Array.dir/flags.make
src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o: ../src/Vertex_Array.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yosua/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o"
	cd /home/yosua/Projects/OpenGL/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o -c /home/yosua/Projects/OpenGL/src/Vertex_Array.cpp

src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.i"
	cd /home/yosua/Projects/OpenGL/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yosua/Projects/OpenGL/src/Vertex_Array.cpp > CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.i

src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.s"
	cd /home/yosua/Projects/OpenGL/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yosua/Projects/OpenGL/src/Vertex_Array.cpp -o CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.s

# Object files for target Vertex_Array
Vertex_Array_OBJECTS = \
"CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o"

# External object files for target Vertex_Array
Vertex_Array_EXTERNAL_OBJECTS =

src/libVertex_Array.a: src/CMakeFiles/Vertex_Array.dir/Vertex_Array.cpp.o
src/libVertex_Array.a: src/CMakeFiles/Vertex_Array.dir/build.make
src/libVertex_Array.a: src/CMakeFiles/Vertex_Array.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yosua/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libVertex_Array.a"
	cd /home/yosua/Projects/OpenGL/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Vertex_Array.dir/cmake_clean_target.cmake
	cd /home/yosua/Projects/OpenGL/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Vertex_Array.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Vertex_Array.dir/build: src/libVertex_Array.a

.PHONY : src/CMakeFiles/Vertex_Array.dir/build

src/CMakeFiles/Vertex_Array.dir/clean:
	cd /home/yosua/Projects/OpenGL/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Vertex_Array.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Vertex_Array.dir/clean

src/CMakeFiles/Vertex_Array.dir/depend:
	cd /home/yosua/Projects/OpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/OpenGL /home/yosua/Projects/OpenGL/src /home/yosua/Projects/OpenGL/build /home/yosua/Projects/OpenGL/build/src /home/yosua/Projects/OpenGL/build/src/CMakeFiles/Vertex_Array.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Vertex_Array.dir/depend

