
cmake_minimum_required(VERSION 3.25.0)

project(smtg-vst3-prefetchable
    VERSION ${vstsdk_VERSION}.0
    DESCRIPTION "Steinberg VST 3 Prefetchable example"
)

smtg_add_vst3plugin(prefetchable 
    source/plug.cpp
    source/plug.h
    source/plugcids.h
    source/plugcontroller.cpp
    source/plugcontroller.h
    source/plugentry.cpp
    source/plugparamids.h
    source/version.h
)

smtg_target_setup_as_vst3_example(prefetchable)
