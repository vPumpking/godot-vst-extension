#ifndef VST_HOST_H
#define VST_HOST_H

#include <godot_cpp/classes/node.hpp>
#include <pluginterfaces/vst/ivstcomponent.h>
#include <pluginterfaces/vst/ivstaudioprocessor.h>
#include <pluginterfaces/vst/ivsteditcontroller.h>

namespace godot {

class VSTHost : public Node {
    GDCLASS(VSTHost, Node)

private:
    Steinberg::Vst::IComponent* vst_component = nullptr;
    Steinberg::Vst::IAudioProcessor* vst_processor = nullptr;
    Steinberg::Vst::IEditController* vst_controller = nullptr;

protected:
    static void _bind_methods();

public:
    void load_vst(String path);
    void unload_vst();
    void process_audio();
    
    VSTHost();
    ~VSTHost();
};

} // namespace godot

#endif // VST_HOST_H
