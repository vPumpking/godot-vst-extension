#!/usr/bin/env python
import os
import sys
from methods import print_error

# ===== Configuration =====
libname = "godot-vst-extension"
projectdir = "demo"
VST3_SDK_PATH = os.path.abspath("vst3_sdk")

# ===== Environment Setup =====
localEnv = Environment(tools=["default"])

# ===== Platform Detection =====
if 'platform' not in localEnv:
    import platform as sys_platform
    system = sys_platform.system().lower()
    if system == 'windows':
        localEnv['platform'] = 'windows'
    elif system == 'darwin':
        localEnv['platform'] = 'macos'
    else:
        localEnv['platform'] = 'linux'

platform = localEnv['platform']
print(f"\nBuilding for platform: {platform}\n")

# ===== VST3 SDK Configuration =====
if not os.path.isdir(VST3_SDK_PATH):
    print_error(f"VST3 SDK not found at: {VST3_SDK_PATH}")
    sys.exit(1)

# Include paths
VST3_INCLUDE_DIRS = [
    os.path.join(VST3_SDK_PATH),
    os.path.join(VST3_SDK_PATH, "public.sdk", "source", "vst"),
    os.path.join(VST3_SDK_PATH, "pluginterfaces", "vst"),
    os.path.join(VST3_SDK_PATH, "base", "source"),
    os.path.join(VST3_SDK_PATH, "public.sdk", "source", "vst", "utility"),
    os.path.join(VST3_SDK_PATH, "public.sdk", "source", "common"),
]

print("VST3 Include Paths:")
for path in VST3_INCLUDE_DIRS:
    print(f"  - {path}")
    if not os.path.exists(path):
        print_error(f"Path does not exist: {path}")
        sys.exit(1)

# ===== Library Configuration =====
VST3_LIB_PATH = os.path.join(VST3_SDK_PATH, "build", "lib", "Release")
if not os.path.isdir(VST3_LIB_PATH):
    print_error(f"VST3 libraries not found at: {VST3_LIB_PATH}")
    sys.exit(1)

# Using the exact library names from your directory listing
VST3_LIBS = ["sdk", "base", "pluginterfaces"]

print("Using VST3 static libraries:")
for lib in VST3_LIBS:
    lib_file = f"lib{lib}.a"
    lib_path = os.path.join(VST3_LIB_PATH, lib_file)
    if not os.path.exists(lib_path):
        print_error(f"Library not found: {lib_path}")
        sys.exit(1)
    print(f"  - {lib_file}")

# ===== Environment Configuration =====
env = localEnv.Clone()

# Include paths
env.Append(CPPPATH=VST3_INCLUDE_DIRS + [
    "src/",
    "godot-cpp/include",
    "godot-cpp/include/core",
    "godot-cpp/include/gen",
])

# Library configuration
env.Append(
    LIBPATH=[VST3_LIB_PATH],
    LIBS=VST3_LIBS,
    CCFLAGS=["-std=c++17", "-fPIC"]
)

# Platform-specific linker flags
if platform == "linux":
    env.Append(LINKFLAGS=[
        "-Wl,-rpath,$ORIGIN",
        "-lpthread",
        "-ldl"
    ])
elif platform == "macos":
    env.Append(LINKFLAGS=[
        "-framework CoreFoundation",
        "-framework CoreServices"
    ])

# ===== Godot-CPP Submodule Check =====
submodule_initialized = False
dir_name = 'godot-cpp'
if os.path.isdir(dir_name):
    if os.listdir(dir_name):
        submodule_initialized = True

if not submodule_initialized:
    print_error("""godot-cpp is not available within this folder, as Git submodules haven't been initialized.
Run the following command to download godot-cpp:

    git submodule update --init --recursive""")
    sys.exit(1)

# ===== Build Godot-CPP Bindings =====
env = SConscript("godot-cpp/SConstruct", {"env": env})

# ===== Source Files =====
env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")

# Documentation generation (optional)
if env.get("target", "") in ["editor", "template_debug"]:
    try:
        doc_data = env.GodotCPPDocData("src/gen/doc_data.gen.cpp", source=Glob("doc_classes/*.xml"))
        sources.append(doc_data)
    except AttributeError:
        print("Not including class reference as we're targeting a pre-4.3 baseline.")

# ===== Build Target =====
file = "{}{}{}".format(libname, env["suffix"], env["SHLIBSUFFIX"])
filepath = ""

if platform == "macos":
    filepath = "{}.framework/".format(platform)
    file = "{}{}".format(libname, env["suffix"])

libraryfile = "bin/{}/{}{}".format(platform, filepath, file)
library = env.SharedLibrary(
    libraryfile,
    source=sources,
)

# ===== Installation =====
copy = env.InstallAs("{}/bin/{}/{}lib{}".format(projectdir, platform, filepath, file), library)
Default(library, copy)

print("\nBuild configuration complete. Run 'scons' to compile.\n")
