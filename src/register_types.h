#ifndef GODOT_VST_EXTENSION_REGISTER_TYPES_H
#define GODOT_VST_EXTENSION_REGISTER_TYPES_H

#include <godot_cpp/core/defs.hpp>
#include <godot_cpp/godot.hpp>

namespace godot {

void initialize_vst_extension_module(ModuleInitializationLevel p_level);
void uninitialize_vst_extension_module(ModuleInitializationLevel p_level);

} // namespace godot

#endif // GODOT_VST_EXTENSION_REGISTER_TYPES_H
