# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/martin/vst3_sdk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/martin/vst3_sdk/build

# Include any dependencies generated for this target.
include public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/compiler_depend.make

# Include the progress variables for this target.
include public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/progress.make

# Include the compile flags for this target's objects.
include public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/flags.make

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/flags.make
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o: /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidprocessor.cpp
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/martin/vst3_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o -MF CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o.d -o CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o -c /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidprocessor.cpp

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.i"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidprocessor.cpp > CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.i

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.s"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidprocessor.cpp -o CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.s

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/flags.make
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o: /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidcontroller.cpp
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/martin/vst3_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o -MF CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o.d -o CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o -c /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidcontroller.cpp

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.i"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidcontroller.cpp > CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.i

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.s"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidcontroller.cpp -o CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.s

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/flags.make
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o: /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidentry.cpp
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/martin/vst3_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o -MF CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o.d -o CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o -c /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidentry.cpp

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.i"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidentry.cpp > CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.i

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.s"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/source/remapparamidentry.cpp -o CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.s

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/flags.make
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o: /home/martin/vst3_sdk/public.sdk/source/main/linuxmain.cpp
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/martin/vst3_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o -MF CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o.d -o CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o -c /home/martin/vst3_sdk/public.sdk/source/main/linuxmain.cpp

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.i"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/vst3_sdk/public.sdk/source/main/linuxmain.cpp > CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.i

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.s"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/vst3_sdk/public.sdk/source/main/linuxmain.cpp -o CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.s

# Object files for target remap-paramid
remap__paramid_OBJECTS = \
"CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o" \
"CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o" \
"CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o" \
"CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o"

# External object files for target remap-paramid
remap__paramid_EXTERNAL_OBJECTS =

VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidprocessor.cpp.o
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidcontroller.cpp.o
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/source/remapparamidentry.cpp.o
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/__/__/__/source/main/linuxmain.cpp.o
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/build.make
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: lib/Release/libsdk.a
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: lib/Release/libsdk_common.a
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: lib/Release/libbase.a
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: lib/Release/libpluginterfaces.a
VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so: public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/martin/vst3_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared module ../../../../VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so"
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/cmake -E make_directory /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3/Contents/Resources
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remap-paramid.dir/link.txt --verbose=$(VERBOSE)
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/strip --strip-debug --strip-unneeded /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so
	cd /home/martin/vst3_sdk/build/bin/Release && /home/martin/vst3_sdk/build/bin/Release/moduleinfotool -create -version 3.7.13.0 -path /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3 -compat /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid/resource/vst_compatibility.json -output /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3/Contents/Resources/moduleinfo.json
	cd /home/martin/vst3_sdk/build/bin/Release && /usr/bin/cmake -E echo [SMTG] Validator started...
	cd /home/martin/vst3_sdk/build/bin/Release && /home/martin/vst3_sdk/build/bin/Release/validator  /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3
	cd /home/martin/vst3_sdk/build/bin/Release && /usr/bin/cmake -E echo [SMTG] Validator finished.
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && /usr/bin/cmake -E make_directory /home/martin/.vst3
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && ln -svfF /home/martin/vst3_sdk/build/VST3/Release/remap-paramid.vst3 /home/martin/.vst3

# Rule to build all files generated by this target.
public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/build: VST3/Release/remap-paramid.vst3/Contents/x86_64-linux/remap-paramid.so
.PHONY : public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/build

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/clean:
	cd /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid && $(CMAKE_COMMAND) -P CMakeFiles/remap-paramid.dir/cmake_clean.cmake
.PHONY : public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/clean

public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/depend:
	cd /home/martin/vst3_sdk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/martin/vst3_sdk /home/martin/vst3_sdk/public.sdk/samples/vst/remap_paramid /home/martin/vst3_sdk/build /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid /home/martin/vst3_sdk/build/public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public.sdk/samples/vst/remap_paramid/CMakeFiles/remap-paramid.dir/depend

