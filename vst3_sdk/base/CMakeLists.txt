
cmake_minimum_required(VERSION 3.25.0)

project(smtg_base)

add_library(base STATIC
    source/baseiids.cpp
    source/classfactoryhelpers.h
    source/fbuffer.cpp
    source/fbuffer.h
    source/fcleanup.h
    source/fcommandline.h
    source/fdebug.cpp
    source/fdebug.h
    source/fdynlib.cpp
    source/fdynlib.h
    source/fobject.cpp
    source/fobject.h
    source/fstreamer.cpp
    source/fstreamer.h
    source/fstring.cpp
    source/fstring.h
    source/timer.cpp
    source/timer.h
    source/updatehandler.cpp
    source/updatehandler.h
    thread/include/fcondition.h
    thread/include/flock.h
    thread/source/fcondition.cpp
    thread/source/flock.cpp
)

# Additional sources for other usage
if(FULL_BASE)
    target_sources(base
        PRIVATE
            source/basefwd.h
            source/classfactory.cpp
            source/classfactory.h
            source/fbitset.cpp
            source/fbitset.h
            source/fcontainer.h
            source/fcpu.cpp
            source/fcpu.h
            source/fcriticalperformance.cpp
            source/fcriticalperformance.h
            source/finitializer.cpp
            source/finitializer.h
            source/fmemory.cpp
            source/fmemory.h
            source/fpoint.cpp
            source/fpoint.h
            source/frect.cpp
            source/frect.h
            source/fregion.cpp
            source/fregion.h
            source/fstdmethods.h
            source/fstringmethods.h
            source/fstringstream.h
            source/funknownfactory.h
            source/hexbinary.h
            source/istreamwrapper.cpp
            source/istreamwrapper.h
            source/tringbuffer.h    
            thread/include/fatomic.h
            thread/include/forwarddeclarations.h
            thread/include/frwlock_generic.h
            thread/include/frwlock_macosx.h
            thread/include/frwlock_windows.h
            thread/include/fthread.h
            thread/source/fatomic.cpp
            thread/source/fthread.cpp
    )
endif(FULL_BASE)

target_include_directories(base
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/..
)

# Compiler switches are PUBLIC and will be populated.
target_compile_options(base 
    PUBLIC
        "$<$<CONFIG:Debug>:-DDEVELOPMENT=1>"
        "$<$<CONFIG:Release>:-DRELEASE=1>"
        "$<$<CONFIG:RelWithDebInfo>:-DRELEASE=1>"
)

target_compile_features(base
    PUBLIC
        cxx_std_17
)

if(MSVC)
    set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /IGNORE:4221")
endif(MSVC)

smtg_target_setup_universal_binary(base)

# iOS target
if(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)
    get_target_property(BASE_SOURCES base SOURCES)
    add_library(base_ios
        STATIC
            ${BASE_SOURCES}
    )
    smtg_target_set_platform_ios(base_ios)
    
    # Compiler switches are PUBLIC and will be populated.
    target_compile_options(base_ios 
        PUBLIC
            "$<$<CONFIG:Debug>:-DDEVELOPMENT=1>"
            "$<$<CONFIG:Release>:-DRELEASE=1>"
            "$<$<CONFIG:RelWithDebInfo>:-DRELEASE=1>"
    )
	target_compile_features(base_ios PUBLIC cxx_std_17)
endif(SMTG_MAC AND XCODE AND SMTG_ENABLE_IOS_TARGETS)
