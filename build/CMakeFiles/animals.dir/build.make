# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = "/home/silkfinik/VS Code/rgr2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/silkfinik/VS Code/rgr2/build"

# Include any dependencies generated for this target.
include CMakeFiles/animals.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/animals.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/animals.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/animals.dir/flags.make

CMakeFiles/animals.dir/src/KPolynomial.cpp.o: CMakeFiles/animals.dir/flags.make
CMakeFiles/animals.dir/src/KPolynomial.cpp.o: ../src/KPolynomial.cpp
CMakeFiles/animals.dir/src/KPolynomial.cpp.o: CMakeFiles/animals.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/silkfinik/VS Code/rgr2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/animals.dir/src/KPolynomial.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/animals.dir/src/KPolynomial.cpp.o -MF CMakeFiles/animals.dir/src/KPolynomial.cpp.o.d -o CMakeFiles/animals.dir/src/KPolynomial.cpp.o -c "/home/silkfinik/VS Code/rgr2/src/KPolynomial.cpp"

CMakeFiles/animals.dir/src/KPolynomial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/animals.dir/src/KPolynomial.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/silkfinik/VS Code/rgr2/src/KPolynomial.cpp" > CMakeFiles/animals.dir/src/KPolynomial.cpp.i

CMakeFiles/animals.dir/src/KPolynomial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/animals.dir/src/KPolynomial.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/silkfinik/VS Code/rgr2/src/KPolynomial.cpp" -o CMakeFiles/animals.dir/src/KPolynomial.cpp.s

CMakeFiles/animals.dir/src/main.cpp.o: CMakeFiles/animals.dir/flags.make
CMakeFiles/animals.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/animals.dir/src/main.cpp.o: CMakeFiles/animals.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/silkfinik/VS Code/rgr2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/animals.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/animals.dir/src/main.cpp.o -MF CMakeFiles/animals.dir/src/main.cpp.o.d -o CMakeFiles/animals.dir/src/main.cpp.o -c "/home/silkfinik/VS Code/rgr2/src/main.cpp"

CMakeFiles/animals.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/animals.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/silkfinik/VS Code/rgr2/src/main.cpp" > CMakeFiles/animals.dir/src/main.cpp.i

CMakeFiles/animals.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/animals.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/silkfinik/VS Code/rgr2/src/main.cpp" -o CMakeFiles/animals.dir/src/main.cpp.s

# Object files for target animals
animals_OBJECTS = \
"CMakeFiles/animals.dir/src/KPolynomial.cpp.o" \
"CMakeFiles/animals.dir/src/main.cpp.o"

# External object files for target animals
animals_EXTERNAL_OBJECTS =

animals: CMakeFiles/animals.dir/src/KPolynomial.cpp.o
animals: CMakeFiles/animals.dir/src/main.cpp.o
animals: CMakeFiles/animals.dir/build.make
animals: CMakeFiles/animals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/silkfinik/VS Code/rgr2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable animals"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/animals.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/animals.dir/build: animals
.PHONY : CMakeFiles/animals.dir/build

CMakeFiles/animals.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/animals.dir/cmake_clean.cmake
.PHONY : CMakeFiles/animals.dir/clean

CMakeFiles/animals.dir/depend:
	cd "/home/silkfinik/VS Code/rgr2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/silkfinik/VS Code/rgr2" "/home/silkfinik/VS Code/rgr2" "/home/silkfinik/VS Code/rgr2/build" "/home/silkfinik/VS Code/rgr2/build" "/home/silkfinik/VS Code/rgr2/build/CMakeFiles/animals.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/animals.dir/depend
