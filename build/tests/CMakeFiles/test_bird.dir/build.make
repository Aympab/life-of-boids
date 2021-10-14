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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_bird.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_bird.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_bird.dir/flags.make

tests/CMakeFiles/test_bird.dir/test_bird.cpp.o: tests/CMakeFiles/test_bird.dir/flags.make
tests/CMakeFiles/test_bird.dir/test_bird.cpp.o: ../tests/test_bird.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_bird.dir/test_bird.cpp.o"
	cd /data/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_bird.dir/test_bird.cpp.o -c /data/tests/test_bird.cpp

tests/CMakeFiles/test_bird.dir/test_bird.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_bird.dir/test_bird.cpp.i"
	cd /data/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/tests/test_bird.cpp > CMakeFiles/test_bird.dir/test_bird.cpp.i

tests/CMakeFiles/test_bird.dir/test_bird.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_bird.dir/test_bird.cpp.s"
	cd /data/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/tests/test_bird.cpp -o CMakeFiles/test_bird.dir/test_bird.cpp.s

# Object files for target test_bird
test_bird_OBJECTS = \
"CMakeFiles/test_bird.dir/test_bird.cpp.o"

# External object files for target test_bird
test_bird_EXTERNAL_OBJECTS =

tests/test_bird: tests/CMakeFiles/test_bird.dir/test_bird.cpp.o
tests/test_bird: tests/CMakeFiles/test_bird.dir/build.make
tests/test_bird: src/resources/libmyBirds.a
tests/test_bird: src/lib/myLaws/libmyLaws.a
tests/test_bird: src/lib/myMath/libmyMath.a
tests/test_bird: /home/conan/.conan/data/gtest/1.10.0/_/_/package/7320405f83ec32d8556b524cdda87ee295bb7b84/lib/libgtest_main.a
tests/test_bird: /home/conan/.conan/data/gtest/1.10.0/_/_/package/7320405f83ec32d8556b524cdda87ee295bb7b84/lib/libgmock_main.a
tests/test_bird: /home/conan/.conan/data/gtest/1.10.0/_/_/package/7320405f83ec32d8556b524cdda87ee295bb7b84/lib/libgmock.a
tests/test_bird: /home/conan/.conan/data/gtest/1.10.0/_/_/package/7320405f83ec32d8556b524cdda87ee295bb7b84/lib/libgtest.a
tests/test_bird: tests/CMakeFiles/test_bird.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_bird"
	cd /data/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_bird.dir/link.txt --verbose=$(VERBOSE)
	cd /data/build/tests && /usr/bin/cmake -D TEST_TARGET=test_bird -D TEST_EXECUTABLE=/data/build/tests/test_bird -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/data/build/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_bird_TESTS -D CTEST_FILE=/data/build/tests/test_bird[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.18/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/test_bird.dir/build: tests/test_bird

.PHONY : tests/CMakeFiles/test_bird.dir/build

tests/CMakeFiles/test_bird.dir/clean:
	cd /data/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_bird.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_bird.dir/clean

tests/CMakeFiles/test_bird.dir/depend:
	cd /data/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data /data/tests /data/build /data/build/tests /data/build/tests/CMakeFiles/test_bird.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_bird.dir/depend
