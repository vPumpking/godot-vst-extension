
cmake_minimum_required(VERSION 3.25.0)

project(smtg-vst3-again
    VERSION ${vstsdk_VERSION}.0
    DESCRIPTION "Steinberg VST 3 AGain example"
)

if(NOT SMTG_ENABLE_VSTGUI_SUPPORT)
    return()
endif()

set(again_sources
    source/again.cpp
    source/again.h
    source/againcids.h
    source/againcontroller.cpp
    source/againcontroller.h
    source/againentry.cpp
    source/againparamids.h
    source/againprocess.h
    source/againsidechain.cpp
    source/againsidechain.h
    source/againuimessagecontroller.h
    source/version.h
    resource/again.uidesc
)

set(again_simple_sources
    ${SDK_ROOT}/public.sdk/source/vst/vstsinglecomponenteffect.cpp
    ${SDK_ROOT}/public.sdk/source/vst/vstsinglecomponenteffect.h
    source/againparamids.h
    source/againsimple.cpp
    source/againsimple.h
    source/version.h
)

set(target again)

smtg_add_vst3plugin(${target} ${again_sources})
smtg_target_configure_version_file(${target})

#smtg_add_vst3plugin(${target} PACKAGE_NAME "A Gain" SOURCES_LIST ${again_sources})
set_target_properties(${target} 
    PROPERTIES
        ${SDK_IDE_PLUGIN_EXAMPLES_FOLDER}
)

target_compile_features(${target}
    PUBLIC
        cxx_std_17
)

target_link_libraries(${target}
    PRIVATE
        sdk
        vstgui_support
)
smtg_target_add_plugin_resources(${target}
    RESOURCES
        resource/again.uidesc
        resource/background.png
        resource/slider_background.png
        resource/slider_handle.png
        resource/slider_handle_2.0x.png
        resource/vu_on.png
        resource/vu_off.png
)

smtg_target_add_plugin_snapshots (${target}
    RESOURCES
        resource/84E8DE5F92554F5396FAE4133C935A18_snapshot.png
        resource/84E8DE5F92554F5396FAE4133C935A18_snapshot_2.0x.png
        resource/41347FD6FED64094AFBB12B7DBA1D441_snapshot.png
        resource/41347FD6FED64094AFBB12B7DBA1D441_snapshot_2.0x.png
)

if(SMTG_MAC)
    smtg_target_set_bundle(${target}
        BUNDLE_IDENTIFIER "com.steinberg.vst3.${target}"
        COMPANY_NAME "Steinberg Media Technologies"
    )
elseif(SMTG_WIN)
    target_sources(${target}
        PRIVATE
            resource/again.rc
    )
endif(SMTG_MAC)

# Add an AUv2 target
if (SMTG_MAC AND XCODE AND SMTG_ENABLE_AUV2_BUILDS)
	include(SMTG_AddVST3AuV2)
	smtg_target_add_auv2(again-au
		BUNDLE_NAME again
		BUNDLE_IDENTIFIER com.steinberg.vst3plugin.again.audiounit
		INFO_PLIST_TEMPLATE ${CMAKE_CURRENT_SOURCE_DIR}/resource/au-info.plist
		VST3_PLUGIN_TARGET again)
endif(SMTG_MAC AND XCODE AND SMTG_ENABLE_AUV2_BUILDS)

if(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)
    set(target again_ios)
    smtg_add_ios_vst3plugin(${target} "${SMTG_CODE_SIGN_IDENTITY_IOS}" "${target}" "${again_sources}")
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
            resource/again.uidesc
            resource/background.png
            resource/slider_background.png
            resource/slider_handle.png
            resource/slider_handle_2.0x.png
            resource/vu_on.png
            resource/vu_off.png
    )

    smtg_target_set_bundle(${target}
        BUNDLE_IDENTIFIER "com.steinberg.vst3.again"
        COMPANY_NAME "Steinberg Media Technologies"
    )
    target_sources(${target} 
        PRIVATE 
            ${SMTG_VSTGUI_SOURCE_DIR}/vstgui/vstgui_uidescription.cpp
            ${SMTG_VSTGUI_SOURCE_DIR}/vstgui/vstgui_ios.mm
            ${SMTG_VSTGUI_SOURCE_DIR}/vstgui/plugin-bindings/vst3editor.cpp
            ${SDK_ROOT}/public.sdk/source/vst/vstguieditor.cpp
    )
	target_compile_features(${target} PUBLIC cxx_std_17)
endif(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)

set(targetsimple again-simple)
smtg_add_vst3plugin(${targetsimple} ${again_simple_sources})
smtg_target_configure_version_file(${targetsimple})
set_target_properties(${targetsimple}
    PROPERTIES
        ${SDK_IDE_PLUGIN_EXAMPLES_FOLDER})
target_link_libraries(${targetsimple}
    PUBLIC
        sdk
        vstgui_support
)

smtg_target_add_plugin_resources(${targetsimple}
    RESOURCES
        resource/again.uidesc
        resource/background.png
        resource/slider_background.png
        resource/slider_handle.png
        resource/slider_handle_2.0x.png
        resource/vu_on.png
        resource/vu_off.png
)

target_compile_features(${targetsimple}
    PUBLIC
        cxx_std_17
)

if(SMTG_MAC)
    smtg_target_set_bundle(${targetsimple}
        BUNDLE_IDENTIFIER "com.steinberg.vst3.again-simple"
        COMPANY_NAME "Steinberg Media Technologies"
    )
elseif(SMTG_WIN)
    target_sources(${targetsimple}
        PRIVATE
            resource/again.rc
    )
endif(SMTG_MAC)

