
option(SMTG_MDA_VST3_VST2_COMPATIBLE "Build the MDA examples as a replacement for their VST2 counterpart" ON)

cmake_minimum_required(VERSION 3.25.0)

project(smtg-vst3-mda
    VERSION ${vstsdk_VERSION}.0
    DESCRIPTION "Steinberg VST 3 MDA plug-ins example"
)

if(SMTG_MDA_VST3_VST2_COMPATIBLE)
    set(COMPATIBILITY_FILE resource/vst3_compatibility.json)
else()
    set(COMPATIBILITY_FILE resource/vst2_compatibility.json)
endif()

smtg_add_vst3plugin(mda-vst3
	MODULEINFO_COMPATIBILITY
		${COMPATIBILITY_FILE}
	SOURCES_LIST
		source/helpers.h
		source/mdaAmbienceController.cpp
		source/mdaAmbienceController.h
		source/mdaAmbienceProcessor.cpp
		source/mdaAmbienceProcessor.h
		source/mdaBandistoController.cpp
		source/mdaBandistoController.h
		source/mdaBandistoProcessor.cpp
		source/mdaBandistoProcessor.h
		source/mdaBaseController.cpp
		source/mdaBaseController.h
		source/mdaBaseProcessor.cpp
		source/mdaBaseProcessor.h
		source/mdaBeatBoxController.cpp
		source/mdaBeatBoxController.h
		source/mdaBeatBoxProcessor.cpp
		source/mdaBeatBoxProcessor.h
		source/mdaComboController.cpp
		source/mdaComboController.h
		source/mdaComboProcessor.cpp
		source/mdaComboProcessor.h
		source/mdaDeEsserController.cpp
		source/mdaDeEsserController.h
		source/mdaDeEsserProcessor.cpp
		source/mdaDeEsserProcessor.h
		source/mdaDegradeController.cpp
		source/mdaDegradeController.h
		source/mdaDegradeProcessor.cpp
		source/mdaDegradeProcessor.h
		source/mdaDelayController.cpp
		source/mdaDelayController.h
		source/mdaDelayProcessor.cpp
		source/mdaDelayProcessor.h
		source/mdaDetuneController.cpp
		source/mdaDetuneController.h
		source/mdaDetuneProcessor.cpp
		source/mdaDetuneProcessor.h
		source/mdaDitherController.cpp
		source/mdaDitherController.h
		source/mdaDitherProcessor.cpp
		source/mdaDitherProcessor.h
		source/mdaDubDelayController.cpp
		source/mdaDubDelayController.h
		source/mdaDubDelayProcessor.cpp
		source/mdaDubDelayProcessor.h
		source/mdaDX10Controller.cpp
		source/mdaDX10Controller.h
		source/mdaDX10Processor.cpp
		source/mdaDX10Processor.h
		source/mdaDynamicsController.cpp
		source/mdaDynamicsController.h
		source/mdaDynamicsProcessor.cpp
		source/mdaDynamicsProcessor.h
		source/mdaEPianoController.cpp
		source/mdaEPianoController.h
		source/mdaEPianoData.h
		source/mdaEPianoProcessor.cpp
		source/mdaEPianoProcessor.h
		source/mdafactory.cpp
		source/mdaImageController.cpp
		source/mdaImageController.h
		source/mdaImageProcessor.cpp
		source/mdaImageProcessor.h
		source/mdaJX10Controller.cpp
		source/mdaJX10Controller.h
		source/mdaJX10Processor.cpp
		source/mdaJX10Processor.h
		source/mdaLeslieController.cpp
		source/mdaLeslieController.h
		source/mdaLeslieProcessor.cpp
		source/mdaLeslieProcessor.h
		source/mdaLimiterController.cpp
		source/mdaLimiterController.h
		source/mdaLimiterProcessor.cpp
		source/mdaLimiterProcessor.h
		source/mdaLoudnessController.cpp
		source/mdaLoudnessController.h
		source/mdaLoudnessProcessor.cpp
		source/mdaLoudnessProcessor.h
		source/mdaMultiBandController.cpp
		source/mdaMultiBandController.h
		source/mdaMultiBandProcessor.cpp
		source/mdaMultiBandProcessor.h
		source/mdaOverdriveController.cpp
		source/mdaOverdriveController.h
		source/mdaOverdriveProcessor.cpp
		source/mdaOverdriveProcessor.h
		source/mdaParameter.cpp
		source/mdaParameter.h
		source/mdaPianoController.cpp
		source/mdaPianoController.h
		source/mdaPianoData.h
		source/mdaPianoProcessor.cpp
		source/mdaPianoProcessor.h
		source/mdaRePsychoController.cpp
		source/mdaRePsychoController.h
		source/mdaRePsychoProcessor.cpp
		source/mdaRePsychoProcessor.h
		source/mdaRezFilterController.cpp
		source/mdaRezFilterController.h
		source/mdaRezFilterProcessor.cpp
		source/mdaRezFilterProcessor.h
		source/mdaRingModController.cpp
		source/mdaRingModController.h
		source/mdaRingModProcessor.cpp
		source/mdaRingModProcessor.h
		source/mdaRoundPanController.cpp
		source/mdaRoundPanController.h
		source/mdaRoundPanProcessor.cpp
		source/mdaRoundPanProcessor.h
		source/mdaShepardController.cpp
		source/mdaShepardController.h
		source/mdaShepardProcessor.cpp
		source/mdaShepardProcessor.h
		source/mdaSpecMeterController.cpp
		source/mdaSpecMeterController.h
		source/mdaSpecMeterProcessor.cpp
		source/mdaSpecMeterProcessor.h
		source/mdaSplitterController.cpp
		source/mdaSplitterController.h
		source/mdaSplitterProcessor.cpp
		source/mdaSplitterProcessor.h
		source/mdaStereoController.cpp
		source/mdaStereoController.h
		source/mdaStereoProcessor.cpp
		source/mdaStereoProcessor.h
		source/mdaSubSynthController.cpp
		source/mdaSubSynthController.h
		source/mdaSubSynthProcessor.cpp
		source/mdaSubSynthProcessor.h
		source/mdaTalkBoxController.cpp
		source/mdaTalkBoxController.h
		source/mdaTalkBoxProcessor.cpp
		source/mdaTalkBoxProcessor.h
		source/mdaTestToneController.cpp
		source/mdaTestToneController.h
		source/mdaTestToneProcessor.cpp
		source/mdaTestToneProcessor.h
		source/mdaThruZeroController.cpp
		source/mdaThruZeroController.h
		source/mdaThruZeroProcessor.cpp
		source/mdaThruZeroProcessor.h
		source/mdaTrackerController.cpp
		source/mdaTrackerController.h
		source/mdaTrackerProcessor.cpp
		source/mdaTrackerProcessor.h
		source/version.h
)

smtg_target_setup_as_vst3_example(mda-vst3)

if(SMTG_MDA_VST3_VST2_COMPATIBLE)
    target_compile_definitions(mda-vst3
        PUBLIC
            SMTG_MDA_VST2_COMPATIBILITY
    )
endif(SMTG_MDA_VST3_VST2_COMPATIBLE)

