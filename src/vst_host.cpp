#include "vst_host.h"
#include <godot_cpp/variant/utility_functions.hpp>
#include <godot_cpp/classes/engine.hpp>
#include <public.sdk/source/vst/hosting/module.h>
#include <pluginterfaces/vst/ivstcomponent.h>
#include <pluginterfaces/vst/ivstaudioprocessor.h>

using namespace godot;
using namespace Steinberg;
using namespace Steinberg::Vst;
using namespace VST3::Hosting;

// FUID to VST3::UID conversion
static VST3::UID convertFUIDToUID(const FUID& fuid) {
    const uint8_t* bytes = reinterpret_cast<const uint8_t*>(&fuid);
    return VST3::UID(
        *reinterpret_cast<const uint32_t*>(bytes),
        *reinterpret_cast<const uint32_t*>(bytes + 4),
        *reinterpret_cast<const uint32_t*>(bytes + 8),
        *reinterpret_cast<const uint32_t*>(bytes + 12)
    );
}

void VSTHost::_bind_methods() {
    ClassDB::bind_method(D_METHOD("load_vst", "path"), &VSTHost::load_vst);
    ClassDB::bind_method(D_METHOD("process_audio"), &VSTHost::process_audio);
}

VSTHost::VSTHost() {
    vst_component = nullptr;
    vst_processor = nullptr;
}

VSTHost::~VSTHost() {
    if (vst_processor) {
        vst_processor->release();
    }
    if (vst_component) {
        vst_component->release();
    }
}

void VSTHost::load_vst(String path) {
    if (vst_component) {
        vst_component->release();
        vst_component = nullptr;
    }
    
    std::string error;
    Module::Ptr module = Module::create(path.utf8().get_data(), error);
    if (!module) {
        UtilityFunctions::print("Failed to load VST module: ", error.c_str());
        return;
    }

    // Convert FUID and create instance
    VST3::UID componentUID = convertFUIDToUID(IComponent::iid);
    IPtr<IComponent> component = module->getFactory().createInstance<IComponent>(componentUID);
    
    if (!component) {
        UtilityFunctions::print("Failed to create VST instance");
        return;
    }

    vst_component = component.get();
    vst_component->addRef();

    if (vst_component->initialize(nullptr) != kResultOk) {
        UtilityFunctions::print("Failed to initialize VST");
        vst_component->release();
        vst_component = nullptr;
        return;
    }

    UtilityFunctions::print("Successfully loaded VST: ", path);
}

void VSTHost::process_audio() {
    if (!vst_processor) {
        UtilityFunctions::print("No VST processor available");
        return;
    }
}
