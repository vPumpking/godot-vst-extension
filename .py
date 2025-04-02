#!/usr/bin/env python
import os
import sys

from methods import print_error

libname = "godot-vst-extension"
projectdir = "demo"

localEnv = Environment(tools=["default"], PLATFORM="")

customs = ["custom.py"]
customs = [os.path.abspath(path) for path in customs]

opts = Variables(customs, ARGUMENTS)
opts.Update(localEnv)

Help(opts.GenerateHelpText(localEnv))

env = localEnv.Clone()

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

env = SConscript("godot-cpp/SConstruct", {"env": env, "customs": customs})

# Function to recursively collect all header directories
def get_all_include_dirs(base_dir):
    include_dirs = []
    for root, dirs, files in os.walk(base_dir):
        include_dirs.append(os.path.abspath(root))
    return include_dirs

# Set up paths for VST3 SDK
VST3_SDK_PATH = os.path.abspath("vst3_sdk")  # Adjust this path if needed
VST3_INCLUDE_DIRS = get_all_include_dirs(VST3_SDK_PATH)  # Recursively get all header directories

# Include directories for compilation
env.Append(CPPPATH=[
    "src/",  # Your source files
    "godot-cpp/include",  # Godot GDExtension bindings
] + VST3_INCLUDE_DIRS)  # Add all VST3 SDK include directories

# Link VST3 SDK libraries
env.Append(LIBPATH=[os.path.join(VST3_SDK_PATH, "build/lib")])  # Adjust if necessary
env.Append(LIBS=["vst3sdk", "pluginterfaces", "base"])

env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")

if env["target"] in ["editor", "template_debug"]:
    try:
        doc_data = env.GodotCPPDocData("src/gen/doc_data.gen.cpp", source=Glob("doc_classes/*.xml"))
        sources.append(doc_data)
    except AttributeError:
        print("Not including class reference as we're targeting a pre-4.3 baseline.")

file = "{}{}{}".format(libname, env["suffix"], env["SHLIBSUFFIX"])
filepath = ""

if env["platform"] == "macos" or env["platform"] == "ios":
    filepath = "{}.framework/".format(env["platform"])
    file = "{}{}".format(libname, env["suffix"])

libraryfile = "bin/{}/{}{}".format(env["platform"], filepath, file)
library = env.SharedLibrary(
    libraryfile,
    source=sources,
)

copy = env.InstallAs("{}/bin/{}/{}lib{}".format(projectdir, env["platform"], filepath, file), library)

default_args = [library, copy]
Default(*default_args)
