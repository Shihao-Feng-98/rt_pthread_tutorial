# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/feng_shihao/.local/lib/python3.6/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/feng_shihao/.local/lib/python3.6/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/feng_shihao/fsh_file/rt_pthread_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/feng_shihao/fsh_file/rt_pthread_tutorial/build

# Include any dependencies generated for this target.
include CMakeFiles/multi_thread_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/multi_thread_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multi_thread_example.dir/flags.make

CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o: CMakeFiles/multi_thread_example.dir/flags.make
CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o: ../src/multi_thread_example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feng_shihao/fsh_file/rt_pthread_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o -c /home/feng_shihao/fsh_file/rt_pthread_tutorial/src/multi_thread_example.cpp

CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feng_shihao/fsh_file/rt_pthread_tutorial/src/multi_thread_example.cpp > CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.i

CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feng_shihao/fsh_file/rt_pthread_tutorial/src/multi_thread_example.cpp -o CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.s

# Object files for target multi_thread_example
multi_thread_example_OBJECTS = \
"CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o"

# External object files for target multi_thread_example
multi_thread_example_EXTERNAL_OBJECTS =

multi_thread_example: CMakeFiles/multi_thread_example.dir/src/multi_thread_example.cpp.o
multi_thread_example: CMakeFiles/multi_thread_example.dir/build.make
multi_thread_example: CMakeFiles/multi_thread_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/feng_shihao/fsh_file/rt_pthread_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multi_thread_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi_thread_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multi_thread_example.dir/build: multi_thread_example

.PHONY : CMakeFiles/multi_thread_example.dir/build

CMakeFiles/multi_thread_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multi_thread_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multi_thread_example.dir/clean

CMakeFiles/multi_thread_example.dir/depend:
	cd /home/feng_shihao/fsh_file/rt_pthread_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/feng_shihao/fsh_file/rt_pthread_tutorial /home/feng_shihao/fsh_file/rt_pthread_tutorial /home/feng_shihao/fsh_file/rt_pthread_tutorial/build /home/feng_shihao/fsh_file/rt_pthread_tutorial/build /home/feng_shihao/fsh_file/rt_pthread_tutorial/build/CMakeFiles/multi_thread_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multi_thread_example.dir/depend

