# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Misha\CLionProjects\seminarclient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client.dir/flags.make

CMakeFiles/Client.dir/main.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Client.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\main.cpp.obj -c C:\Users\Misha\CLionProjects\seminarclient\main.cpp

CMakeFiles/Client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Misha\CLionProjects\seminarclient\main.cpp > CMakeFiles\Client.dir\main.cpp.i

CMakeFiles/Client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Misha\CLionProjects\seminarclient\main.cpp -o CMakeFiles\Client.dir\main.cpp.s

CMakeFiles/Client.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/Client.dir/main.cpp.obj.requires

CMakeFiles/Client.dir/main.cpp.obj.provides: CMakeFiles/Client.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Client.dir\build.make CMakeFiles/Client.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Client.dir/main.cpp.obj.provides

CMakeFiles/Client.dir/main.cpp.obj.provides.build: CMakeFiles/Client.dir/main.cpp.obj


CMakeFiles/Client.dir/NetworkServices.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/NetworkServices.cpp.obj: ../NetworkServices.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Client.dir/NetworkServices.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\NetworkServices.cpp.obj -c C:\Users\Misha\CLionProjects\seminarclient\NetworkServices.cpp

CMakeFiles/Client.dir/NetworkServices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/NetworkServices.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Misha\CLionProjects\seminarclient\NetworkServices.cpp > CMakeFiles\Client.dir\NetworkServices.cpp.i

CMakeFiles/Client.dir/NetworkServices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/NetworkServices.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Misha\CLionProjects\seminarclient\NetworkServices.cpp -o CMakeFiles\Client.dir\NetworkServices.cpp.s

CMakeFiles/Client.dir/NetworkServices.cpp.obj.requires:

.PHONY : CMakeFiles/Client.dir/NetworkServices.cpp.obj.requires

CMakeFiles/Client.dir/NetworkServices.cpp.obj.provides: CMakeFiles/Client.dir/NetworkServices.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Client.dir\build.make CMakeFiles/Client.dir/NetworkServices.cpp.obj.provides.build
.PHONY : CMakeFiles/Client.dir/NetworkServices.cpp.obj.provides

CMakeFiles/Client.dir/NetworkServices.cpp.obj.provides.build: CMakeFiles/Client.dir/NetworkServices.cpp.obj


CMakeFiles/Client.dir/ClientNetwork.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/ClientNetwork.cpp.obj: ../ClientNetwork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Client.dir/ClientNetwork.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\ClientNetwork.cpp.obj -c C:\Users\Misha\CLionProjects\seminarclient\ClientNetwork.cpp

CMakeFiles/Client.dir/ClientNetwork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/ClientNetwork.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Misha\CLionProjects\seminarclient\ClientNetwork.cpp > CMakeFiles\Client.dir\ClientNetwork.cpp.i

CMakeFiles/Client.dir/ClientNetwork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/ClientNetwork.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Misha\CLionProjects\seminarclient\ClientNetwork.cpp -o CMakeFiles\Client.dir\ClientNetwork.cpp.s

CMakeFiles/Client.dir/ClientNetwork.cpp.obj.requires:

.PHONY : CMakeFiles/Client.dir/ClientNetwork.cpp.obj.requires

CMakeFiles/Client.dir/ClientNetwork.cpp.obj.provides: CMakeFiles/Client.dir/ClientNetwork.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Client.dir\build.make CMakeFiles/Client.dir/ClientNetwork.cpp.obj.provides.build
.PHONY : CMakeFiles/Client.dir/ClientNetwork.cpp.obj.provides

CMakeFiles/Client.dir/ClientNetwork.cpp.obj.provides.build: CMakeFiles/Client.dir/ClientNetwork.cpp.obj


CMakeFiles/Client.dir/ClientAction.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/ClientAction.cpp.obj: ../ClientAction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Client.dir/ClientAction.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\ClientAction.cpp.obj -c C:\Users\Misha\CLionProjects\seminarclient\ClientAction.cpp

CMakeFiles/Client.dir/ClientAction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/ClientAction.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Misha\CLionProjects\seminarclient\ClientAction.cpp > CMakeFiles\Client.dir\ClientAction.cpp.i

CMakeFiles/Client.dir/ClientAction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/ClientAction.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Misha\CLionProjects\seminarclient\ClientAction.cpp -o CMakeFiles\Client.dir\ClientAction.cpp.s

CMakeFiles/Client.dir/ClientAction.cpp.obj.requires:

.PHONY : CMakeFiles/Client.dir/ClientAction.cpp.obj.requires

CMakeFiles/Client.dir/ClientAction.cpp.obj.provides: CMakeFiles/Client.dir/ClientAction.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Client.dir\build.make CMakeFiles/Client.dir/ClientAction.cpp.obj.provides.build
.PHONY : CMakeFiles/Client.dir/ClientAction.cpp.obj.provides

CMakeFiles/Client.dir/ClientAction.cpp.obj.provides.build: CMakeFiles/Client.dir/ClientAction.cpp.obj


CMakeFiles/Client.dir/EncDEcrypt.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/EncDEcrypt.cpp.obj: ../EncDEcrypt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Client.dir/EncDEcrypt.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\EncDEcrypt.cpp.obj -c C:\Users\Misha\CLionProjects\seminarclient\EncDEcrypt.cpp

CMakeFiles/Client.dir/EncDEcrypt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/EncDEcrypt.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Misha\CLionProjects\seminarclient\EncDEcrypt.cpp > CMakeFiles\Client.dir\EncDEcrypt.cpp.i

CMakeFiles/Client.dir/EncDEcrypt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/EncDEcrypt.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Misha\CLionProjects\seminarclient\EncDEcrypt.cpp -o CMakeFiles\Client.dir\EncDEcrypt.cpp.s

CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.requires:

.PHONY : CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.requires

CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.provides: CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Client.dir\build.make CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.provides.build
.PHONY : CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.provides

CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.provides.build: CMakeFiles/Client.dir/EncDEcrypt.cpp.obj


# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/main.cpp.obj" \
"CMakeFiles/Client.dir/NetworkServices.cpp.obj" \
"CMakeFiles/Client.dir/ClientNetwork.cpp.obj" \
"CMakeFiles/Client.dir/ClientAction.cpp.obj" \
"CMakeFiles/Client.dir/EncDEcrypt.cpp.obj"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

Client.exe: CMakeFiles/Client.dir/main.cpp.obj
Client.exe: CMakeFiles/Client.dir/NetworkServices.cpp.obj
Client.exe: CMakeFiles/Client.dir/ClientNetwork.cpp.obj
Client.exe: CMakeFiles/Client.dir/ClientAction.cpp.obj
Client.exe: CMakeFiles/Client.dir/EncDEcrypt.cpp.obj
Client.exe: CMakeFiles/Client.dir/build.make
Client.exe: CMakeFiles/Client.dir/linklibs.rsp
Client.exe: CMakeFiles/Client.dir/objects1.rsp
Client.exe: CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Client.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client.dir/build: Client.exe

.PHONY : CMakeFiles/Client.dir/build

CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/main.cpp.obj.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/NetworkServices.cpp.obj.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/ClientNetwork.cpp.obj.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/ClientAction.cpp.obj.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/EncDEcrypt.cpp.obj.requires

.PHONY : CMakeFiles/Client.dir/requires

CMakeFiles/Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Client.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Client.dir/clean

CMakeFiles/Client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Misha\CLionProjects\seminarclient C:\Users\Misha\CLionProjects\seminarclient C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug C:\Users\Misha\CLionProjects\seminarclient\cmake-build-debug\CMakeFiles\Client.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Client.dir/depend

