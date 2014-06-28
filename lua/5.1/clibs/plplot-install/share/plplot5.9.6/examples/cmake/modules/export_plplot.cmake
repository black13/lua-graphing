# Generated by CMake 2.8.10.2

IF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   MESSAGE(FATAL_ERROR "CMake >= 2.6.0 required")
ENDIF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
CMAKE_POLICY(PUSH)
CMAKE_POLICY(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Create imported target csirocsa
ADD_LIBRARY(csirocsa SHARED IMPORTED)

# Create imported target qsastime
ADD_LIBRARY(qsastime SHARED IMPORTED)

# Create imported target plplotd
ADD_LIBRARY(plplotd SHARED IMPORTED)

# Create imported target plplotcxxd
ADD_LIBRARY(plplotcxxd SHARED IMPORTED)

# Create imported target plplotqtd
ADD_LIBRARY(plplotqtd SHARED IMPORTED)

# Create imported target cairo
ADD_LIBRARY(cairo MODULE IMPORTED)

# Create imported target qt
ADD_LIBRARY(qt MODULE IMPORTED)

# Create imported target mem
ADD_LIBRARY(mem MODULE IMPORTED)

# Create imported target null
ADD_LIBRARY(null MODULE IMPORTED)

# Create imported target ps
ADD_LIBRARY(ps MODULE IMPORTED)

# Create imported target svg
ADD_LIBRARY(svg MODULE IMPORTED)

# Create imported target xfig
ADD_LIBRARY(xfig MODULE IMPORTED)

# Load information for each installed configuration.
GET_FILENAME_COMPONENT(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
FILE(GLOB CONFIG_FILES "${_DIR}/export_plplot-*.cmake")
FOREACH(f ${CONFIG_FILES})
  INCLUDE(${f})
ENDFOREACH(f)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
CMAKE_POLICY(POP)