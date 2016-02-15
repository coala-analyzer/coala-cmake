# Path to this file.
# TODO Do I need this one???
set(COALA_CMAKE_MACRO_DIR ${CMAKE_CURRENT_LIST_DIR})

LIST(APPEND CMAKE_MODULE_PATH "${COALA_CMAKE_MACRO_DIR}")

# Include the cmake files containing the macros and other stuff.
# include(${COALA_CMAKE_MACRO_DIR}/FindCoala.cmake)

# TODO Create another directory called "macros" or so where I put this stuff
#      into?
