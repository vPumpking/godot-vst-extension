
if(NOT SMTG_ENABLE_VSTGUI_SUPPORT)
    return()
endif()

cmake_minimum_required(VERSION 3.25.0)

project(smtg-vst3-noteexpressionsynth
    VERSION ${vstsdk_VERSION}.0
    DESCRIPTION "Steinberg VST 3 Note Expression Synth example"
)

set(noteexpressionsynth_sources
    source/brownnoise.h
    source/factory.cpp
    source/filter.h
    source/note_expression_synth_controller.cpp
    source/note_expression_synth_controller.h
    source/note_expression_synth_processor.cpp
    source/note_expression_synth_processor.h
    source/note_expression_synth_ui.cpp
    source/note_expression_synth_ui.h
    source/note_expression_synth_voice.cpp
    source/note_expression_synth_voice.h
    source/note_touch_controller.cpp
    source/note_touch_controller.h
    source/version.h
    ${SMTG_VSTGUI_SOURCE_DIR}/vstgui/contrib/keyboardview.cpp
    ${SMTG_VSTGUI_SOURCE_DIR}/vstgui/contrib/keyboardview.h
    resource/note_expression_synth.uidesc
)

smtg_add_vst3plugin(note-expression-synth 
    ${noteexpressionsynth_sources}
)

target_link_libraries(note-expression-synth
    PRIVATE
        vstgui_support
)

smtg_target_add_plugin_resources(note-expression-synth
    RESOURCES
        resource/note_expression_synth.uidesc
        resource/about.png
        resource/background.png
        resource/groupframe.png
        resource/knob.png
        resource/knob2.png
        "resource/knob big.png"
        resource/vst3_logo_small.png
)

smtg_target_add_plugin_snapshots(note-expression-synth
    RESOURCES
        resource/41466D9BB0654576B641098F686371B3_snapshot.png
        resource/41466D9BB0654576B641098F686371B3_snapshot_2.0x.png
)

smtg_target_setup_as_vst3_example(note-expression-synth)

# Add an AUv2 target
if (SMTG_MAC AND XCODE AND SMTG_ENABLE_AUV2_BUILDS)
	include(SMTG_AddVST3AuV2)
	smtg_target_add_auv2(note-expression-synth-au
		BUNDLE_NAME noteexpressionsynth
		BUNDLE_IDENTIFIER com.steinberg.vst3sdk.noteexpressionsynth.auv2
		INFO_PLIST_TEMPLATE ${CMAKE_CURRENT_SOURCE_DIR}/resource/au-info.plist
		VST3_PLUGIN_TARGET note-expression-synth
	)
endif(SMTG_MAC AND XCODE AND SMTG_ENABLE_AUV2_BUILDS)

if(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)
    set(target note-expression-synth-ios)
    smtg_add_ios_vst3plugin(${target} "${SMTG_CODE_SIGN_IDENTITY_IOS}" "${target}" "${noteexpressionsynth_sources}")
    smtg_target_configure_version_file(${target})

    set_target_properties(${target}
        PROPERTIES
            ${SDK_IDE_PLUGIN_EXAMPLES_FOLDER}
    )
    target_include_directories(${target}
        PUBLIC
            ${SMTG_VSTGUI_SOURCE_DIR}
    )
    target_link_libraries(${target}
        PRIVATE
            base_ios 
            sdk_ios
            "-framework UIKit"
            "-framework CoreGraphics" 
            "-framework QuartzCore" 
            "-framework CoreText" 
            "-framework Accelerate" 
            "-framework ImageIO" 
            "-framework MobileCoreServices" 
    )
    smtg_target_add_plugin_resources(${target}
        RESOURCES
            "resource/note_expression_synth.uidesc"
            "resource/about.png"
            "resource/background.png"
            "resource/groupframe.png"
            "resource/knob.png"
            "resource/knob2.png"
            "resource/knob big.png"
            "resource/vst3_logo_small.png"
    )
    smtg_target_set_bundle(${target}
        BUNDLE_IDENTIFIER "com.steinberg.${target}"
        COMPANY_NAME "Steinberg Media Technologies"
    )
    target_sources(${target}
        PRIVATE 
            "${SMTG_VSTGUI_SOURCE_DIR}/vstgui/vstgui_uidescription.cpp"
            "${SMTG_VSTGUI_SOURCE_DIR}/vstgui/vstgui_ios.mm"
            "${SMTG_VSTGUI_SOURCE_DIR}/vstgui/plugin-bindings/vst3editor.cpp"
            "${SMTG_VSTGUI_SOURCE_DIR}/vstgui/plugin-bindings/vst3groupcontroller.cpp"
            "${SMTG_VSTGUI_SOURCE_DIR}/vstgui/plugin-bindings/vst3padcontroller.cpp"
            "${SDK_ROOT}/public.sdk/source/vst/vstguieditor.cpp"
    )
	target_compile_features(${target} PUBLIC cxx_std_17)
endif(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)
