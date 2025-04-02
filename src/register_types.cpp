#include "register_types.h"
#include "vst_host.h"
#include <godot_cpp/core/class_db.hpp>

namespace godot {

void initialize_vst_extension_module(ModuleInitializationLevel p_level) {
    if (p_level == MODULE_INITIALIZATION_LEVEL_SCENE) {
        ClassDB::register_class<VSTHost>();
    }
}

void uninitialize_vst_extension_module(ModuleInitializationLevel p_level) {
    if (p_level == MODULE_INITIALIZATION_LEVEL_SCENE) {
        // Cleanup if needed
    }
}

} // namespace godot

extern "C" {

void initialize_vst_extension(godot::ModuleInitializationLevel p_level) {
    godot::initialize_vst_extension_module(p_level);
}

void uninitialize_vst_extension(godot::ModuleInitializationLevel p_level) {
    godot::uninitialize_vst_extension_module(p_level);
}

GDExtensionBool GDE_EXPORT vst_extension_init(
    GDExtensionInterfaceGetProcAddress p_get_proc_address,
    GDExtensionClassLibraryPtr p_library,
    GDExtensionInitialization *r_initialization
) {
    godot::GDExtensionBinding::InitObject init_obj(p_get_proc_address, p_library, r_initialization);
    
    init_obj.register_initializer(initialize_vst_extension);
    init_obj.register_terminator(uninitialize_vst_extension);
    init_obj.set_minimum_library_initialization_level(godot::MODULE_INITIALIZATION_LEVEL_SCENE);
    
    return init_obj.init();
}

} // extern "C"
