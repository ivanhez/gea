# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Admin\Desktop\pong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Admin\Desktop\pong\build

# Include any dependencies generated for this target.
include CMakeFiles/PONG.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PONG.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PONG.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PONG.dir/flags.make

CMakeFiles/PONG.dir/src/main.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/main.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/main.cpp.obj: C:/Users/Admin/Desktop/pong/src/main.cpp
CMakeFiles/PONG.dir/src/main.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PONG.dir/src/main.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/main.cpp.obj -MF CMakeFiles\PONG.dir\src\main.cpp.obj.d -o CMakeFiles\PONG.dir\src\main.cpp.obj -c C:\Users\Admin\Desktop\pong\src\main.cpp

CMakeFiles/PONG.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/main.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\main.cpp > CMakeFiles\PONG.dir\src\main.cpp.i

CMakeFiles/PONG.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/main.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\main.cpp -o CMakeFiles\PONG.dir\src\main.cpp.s

CMakeFiles/PONG.dir/src/Game/Game.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Game/Game.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Game/Game.cpp.obj: C:/Users/Admin/Desktop/pong/src/Game/Game.cpp
CMakeFiles/PONG.dir/src/Game/Game.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PONG.dir/src/Game/Game.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Game/Game.cpp.obj -MF CMakeFiles\PONG.dir\src\Game\Game.cpp.obj.d -o CMakeFiles\PONG.dir\src\Game\Game.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Game\Game.cpp

CMakeFiles/PONG.dir/src/Game/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Game/Game.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Game\Game.cpp > CMakeFiles\PONG.dir\src\Game\Game.cpp.i

CMakeFiles/PONG.dir/src/Game/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Game/Game.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Game\Game.cpp -o CMakeFiles\PONG.dir\src\Game\Game.cpp.s

CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj: C:/Users/Admin/Desktop/pong/src/Game/Graphics/Texture.cpp
CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj -MF CMakeFiles\PONG.dir\src\Game\Graphics\Texture.cpp.obj.d -o CMakeFiles\PONG.dir\src\Game\Graphics\Texture.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Game\Graphics\Texture.cpp

CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Game\Graphics\Texture.cpp > CMakeFiles\PONG.dir\src\Game\Graphics\Texture.cpp.i

CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Game\Graphics\Texture.cpp -o CMakeFiles\PONG.dir\src\Game\Graphics\Texture.cpp.s

CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj: C:/Users/Admin/Desktop/pong/src/Game/Graphics/TextureManager.cpp
CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj -MF CMakeFiles\PONG.dir\src\Game\Graphics\TextureManager.cpp.obj.d -o CMakeFiles\PONG.dir\src\Game\Graphics\TextureManager.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Game\Graphics\TextureManager.cpp

CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Game\Graphics\TextureManager.cpp > CMakeFiles\PONG.dir\src\Game\Graphics\TextureManager.cpp.i

CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Game\Graphics\TextureManager.cpp -o CMakeFiles\PONG.dir\src\Game\Graphics\TextureManager.cpp.s

CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj: C:/Users/Admin/Desktop/pong/src/Pong/Pong.cpp
CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj -MF CMakeFiles\PONG.dir\src\Pong\Pong.cpp.obj.d -o CMakeFiles\PONG.dir\src\Pong\Pong.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Pong\Pong.cpp

CMakeFiles/PONG.dir/src/Pong/Pong.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Pong/Pong.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Pong\Pong.cpp > CMakeFiles\PONG.dir\src\Pong\Pong.cpp.i

CMakeFiles/PONG.dir/src/Pong/Pong.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Pong/Pong.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Pong\Pong.cpp -o CMakeFiles\PONG.dir\src\Pong\Pong.cpp.s

CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj: C:/Users/Admin/Desktop/pong/src/Pong/Systems.cpp
CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj -MF CMakeFiles\PONG.dir\src\Pong\Systems.cpp.obj.d -o CMakeFiles\PONG.dir\src\Pong\Systems.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Pong\Systems.cpp

CMakeFiles/PONG.dir/src/Pong/Systems.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Pong/Systems.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Pong\Systems.cpp > CMakeFiles\PONG.dir\src\Pong\Systems.cpp.i

CMakeFiles/PONG.dir/src/Pong/Systems.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Pong/Systems.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Pong\Systems.cpp -o CMakeFiles\PONG.dir\src\Pong\Systems.cpp.s

CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj: CMakeFiles/PONG.dir/flags.make
CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj: CMakeFiles/PONG.dir/includes_CXX.rsp
CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj: C:/Users/Admin/Desktop/pong/src/Scene/Scene.cpp
CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj: CMakeFiles/PONG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj -MF CMakeFiles\PONG.dir\src\Scene\Scene.cpp.obj.d -o CMakeFiles\PONG.dir\src\Scene\Scene.cpp.obj -c C:\Users\Admin\Desktop\pong\src\Scene\Scene.cpp

CMakeFiles/PONG.dir/src/Scene/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PONG.dir/src/Scene/Scene.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\Desktop\pong\src\Scene\Scene.cpp > CMakeFiles\PONG.dir\src\Scene\Scene.cpp.i

CMakeFiles/PONG.dir/src/Scene/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PONG.dir/src/Scene/Scene.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\Desktop\pong\src\Scene\Scene.cpp -o CMakeFiles\PONG.dir\src\Scene\Scene.cpp.s

# Object files for target PONG
PONG_OBJECTS = \
"CMakeFiles/PONG.dir/src/main.cpp.obj" \
"CMakeFiles/PONG.dir/src/Game/Game.cpp.obj" \
"CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj" \
"CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj" \
"CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj" \
"CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj" \
"CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj"

# External object files for target PONG
PONG_EXTERNAL_OBJECTS =

PONG.exe: CMakeFiles/PONG.dir/src/main.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Game/Game.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Game/Graphics/Texture.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Game/Graphics/TextureManager.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Pong/Pong.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Pong/Systems.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/src/Scene/Scene.cpp.obj
PONG.exe: CMakeFiles/PONG.dir/build.make
PONG.exe: C:/Program\ Files\ (x86)/SDL2/lib/libSDL2main.a
PONG.exe: C:/Program\ Files\ (x86)/SDL2_image/lib/libSDL2_image.dll.a
PONG.exe: C:/Program\ Files\ (x86)/SDL2/lib/libSDL2.dll.a
PONG.exe: CMakeFiles/PONG.dir/linkLibs.rsp
PONG.exe: CMakeFiles/PONG.dir/objects1.rsp
PONG.exe: CMakeFiles/PONG.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Admin\Desktop\pong\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable PONG.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PONG.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PONG.dir/build: PONG.exe
.PHONY : CMakeFiles/PONG.dir/build

CMakeFiles/PONG.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PONG.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PONG.dir/clean

CMakeFiles/PONG.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Admin\Desktop\pong C:\Users\Admin\Desktop\pong C:\Users\Admin\Desktop\pong\build C:\Users\Admin\Desktop\pong\build C:\Users\Admin\Desktop\pong\build\CMakeFiles\PONG.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/PONG.dir/depend
