# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dictator/Pop-The-Ball

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dictator/Pop-The-Ball/build

# Include any dependencies generated for this target.
include CMakeFiles/Pop-The-Ball.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Pop-The-Ball.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Pop-The-Ball.dir/flags.make

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o: ../src/ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o -c /home/dictator/Pop-The-Ball/src/ball.cpp

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/ball.cpp > CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/ball.cpp -o CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o: ../src/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o -c /home/dictator/Pop-The-Ball/src/color.cpp

CMakeFiles/Pop-The-Ball.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/color.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/color.cpp > CMakeFiles/Pop-The-Ball.dir/src/color.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/color.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/color.cpp -o CMakeFiles/Pop-The-Ball.dir/src/color.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o: ../src/enemy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o -c /home/dictator/Pop-The-Ball/src/enemy.cpp

CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/enemy.cpp > CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/enemy.cpp -o CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o: ../src/input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o -c /home/dictator/Pop-The-Ball/src/input.cpp

CMakeFiles/Pop-The-Ball.dir/src/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/input.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/input.cpp > CMakeFiles/Pop-The-Ball.dir/src/input.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/input.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/input.cpp -o CMakeFiles/Pop-The-Ball.dir/src/input.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o -c /home/dictator/Pop-The-Ball/src/main.cpp

CMakeFiles/Pop-The-Ball.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/main.cpp > CMakeFiles/Pop-The-Ball.dir/src/main.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/main.cpp -o CMakeFiles/Pop-The-Ball.dir/src/main.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o: ../src/nonedit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o -c /home/dictator/Pop-The-Ball/src/nonedit.cpp

CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/nonedit.cpp > CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/nonedit.cpp -o CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o: ../src/other_handlers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o -c /home/dictator/Pop-The-Ball/src/other_handlers.cpp

CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/other_handlers.cpp > CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/other_handlers.cpp -o CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o: ../src/porcupine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o -c /home/dictator/Pop-The-Ball/src/porcupine.cpp

CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/porcupine.cpp > CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/porcupine.cpp -o CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o: ../src/rectangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o -c /home/dictator/Pop-The-Ball/src/rectangle.cpp

CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/rectangle.cpp > CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/rectangle.cpp -o CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o: ../src/semicircle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o -c /home/dictator/Pop-The-Ball/src/semicircle.cpp

CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/semicircle.cpp > CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/semicircle.cpp -o CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o: ../src/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o -c /home/dictator/Pop-The-Ball/src/timer.cpp

CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/timer.cpp > CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/timer.cpp -o CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o


CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o: CMakeFiles/Pop-The-Ball.dir/flags.make
CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o: ../src/triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o -c /home/dictator/Pop-The-Ball/src/triangle.cpp

CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dictator/Pop-The-Ball/src/triangle.cpp > CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.i

CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dictator/Pop-The-Ball/src/triangle.cpp -o CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.s

CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.requires:

.PHONY : CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.requires

CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.provides: CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.requires
	$(MAKE) -f CMakeFiles/Pop-The-Ball.dir/build.make CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.provides.build
.PHONY : CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.provides

CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.provides.build: CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o


# Object files for target Pop-The-Ball
Pop__The__Ball_OBJECTS = \
"CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o" \
"CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o"

# External object files for target Pop-The-Ball
Pop__The__Ball_EXTERNAL_OBJECTS =

Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/build.make
Pop-The-Ball: CMakeFiles/Pop-The-Ball.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dictator/Pop-The-Ball/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable Pop-The-Ball"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Pop-The-Ball.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Pop-The-Ball.dir/build: Pop-The-Ball

.PHONY : CMakeFiles/Pop-The-Ball.dir/build

CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/ball.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/color.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/enemy.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/input.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/main.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/nonedit.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/other_handlers.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/porcupine.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/rectangle.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/semicircle.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/timer.cpp.o.requires
CMakeFiles/Pop-The-Ball.dir/requires: CMakeFiles/Pop-The-Ball.dir/src/triangle.cpp.o.requires

.PHONY : CMakeFiles/Pop-The-Ball.dir/requires

CMakeFiles/Pop-The-Ball.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Pop-The-Ball.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Pop-The-Ball.dir/clean

CMakeFiles/Pop-The-Ball.dir/depend:
	cd /home/dictator/Pop-The-Ball/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dictator/Pop-The-Ball /home/dictator/Pop-The-Ball /home/dictator/Pop-The-Ball/build /home/dictator/Pop-The-Ball/build /home/dictator/Pop-The-Ball/build/CMakeFiles/Pop-The-Ball.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Pop-The-Ball.dir/depend

