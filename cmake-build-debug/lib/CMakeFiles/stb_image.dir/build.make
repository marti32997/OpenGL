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
include lib/CMakeFiles/stb_image.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/stb_image.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/stb_image.dir/flags.make

lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o: lib/CMakeFiles/stb_image.dir/flags.make
lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o: ../lib/stb_image/stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o -c /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/lib/stb_image/stb_image.cpp

lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.i"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/lib/stb_image/stb_image.cpp > CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.i

lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.s"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/lib/stb_image/stb_image.cpp -o CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.s

# Object files for target stb_image
stb_image_OBJECTS = \
"CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o"

# External object files for target stb_image
stb_image_EXTERNAL_OBJECTS =

lib/libstb_image.a: lib/CMakeFiles/stb_image.dir/stb_image/stb_image.cpp.o
lib/libstb_image.a: lib/CMakeFiles/stb_image.dir/build.make
lib/libstb_image.a: lib/CMakeFiles/stb_image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libstb_image.a"
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && $(CMAKE_COMMAND) -P CMakeFiles/stb_image.dir/cmake_clean_target.cmake
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stb_image.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/stb_image.dir/build: lib/libstb_image.a

.PHONY : lib/CMakeFiles/stb_image.dir/build

lib/CMakeFiles/stb_image.dir/clean:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib && $(CMAKE_COMMAND) -P CMakeFiles/stb_image.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/stb_image.dir/clean

lib/CMakeFiles/stb_image.dir/depend:
	cd /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/lib /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib /home/yosua/Projects/CSCI251/A2/Shapes2D/OpenGL/cmake-build-debug/lib/CMakeFiles/stb_image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/stb_image.dir/depend

