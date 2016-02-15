# TODO Look up about naming conventions, placement and accessibility of "Find"
#      macros.
#      Alright looks like it just needs to be inside CMAKE_MODULE_PATH.
#      example:
#      set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

find_program(COALA_EXECUTABLE
             NAMES coala
             DOC "coala - Static code analysis made easy (http://coala-analyzer.org)")

if(COALA_EXECUTABLE)
    execute_process(COMMAND ${COALA_EXECUTABLE} "--version"
                    OUTPUT_VARIABLE COALA_VERSION
                    OUTPUT_STRIP_TRAILING_WHITESPACE)
endif()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(coala
                                  REQUIRED_VARS COALA_EXECUTABLE
                                  VERSION_VAR COALA_VERSION)
