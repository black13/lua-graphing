#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "csirocsa" for configuration "Release"
SET_PROPERTY(TARGET csirocsa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(csirocsa PROPERTIES
  IMPORTED_IMPLIB_RELEASE "c:/temp/plplot-install/lib/csirocsa.lib"
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/bin/csirocsa.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS csirocsa )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_csirocsa "c:/temp/plplot-install/lib/csirocsa.lib" "c:/temp/plplot-install/bin/csirocsa.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "qsastime" for configuration "Release"
SET_PROPERTY(TARGET qsastime APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(qsastime PROPERTIES
  IMPORTED_IMPLIB_RELEASE "c:/temp/plplot-install/lib/qsastime.lib"
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/bin/qsastime.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS qsastime )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_qsastime "c:/temp/plplot-install/lib/qsastime.lib" "c:/temp/plplot-install/bin/qsastime.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "plplotd" for configuration "Release"
SET_PROPERTY(TARGET plplotd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(plplotd PROPERTIES
  IMPORTED_IMPLIB_RELEASE "c:/temp/plplot-install/lib/plplotd.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "csirocsa;qsastime"
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/bin/plplotd.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS plplotd )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_plplotd "c:/temp/plplot-install/lib/plplotd.lib" "c:/temp/plplot-install/bin/plplotd.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "plplotcxxd" for configuration "Release"
SET_PROPERTY(TARGET plplotcxxd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(plplotcxxd PROPERTIES
  IMPORTED_IMPLIB_RELEASE "c:/temp/plplot-install/lib/plplotcxxd.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "plplotd"
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/bin/plplotcxxd.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS plplotcxxd )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_plplotcxxd "c:/temp/plplot-install/lib/plplotcxxd.lib" "c:/temp/plplot-install/bin/plplotcxxd.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "plplotqtd" for configuration "Release"
SET_PROPERTY(TARGET plplotqtd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(plplotqtd PROPERTIES
  IMPORTED_IMPLIB_RELEASE "c:/temp/plplot-install/lib/plplotqtd.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "plplotd;C:/Qt/4.8.5/lib/QtSvg4.lib;C:/Qt/4.8.5/lib/QtGui4.lib;C:/Qt/4.8.5/lib/QtXml4.lib;C:/Qt/4.8.5/lib/QtCore4.lib"
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/bin/plplotqtd.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS plplotqtd )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_plplotqtd "c:/temp/plplot-install/lib/plplotqtd.lib" "c:/temp/plplot-install/bin/plplotqtd.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "cairo" for configuration "Release"
SET_PROPERTY(TARGET cairo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(cairo PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/cairo.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS cairo )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_cairo "c:/temp/plplot-install/lib/plplot5.9.6/driversd/cairo.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "qt" for configuration "Release"
SET_PROPERTY(TARGET qt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(qt PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/qt.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS qt )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_qt "c:/temp/plplot-install/lib/plplot5.9.6/driversd/qt.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "mem" for configuration "Release"
SET_PROPERTY(TARGET mem APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(mem PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/mem.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS mem )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_mem "c:/temp/plplot-install/lib/plplot5.9.6/driversd/mem.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "null" for configuration "Release"
SET_PROPERTY(TARGET null APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(null PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/null.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS null )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_null "c:/temp/plplot-install/lib/plplot5.9.6/driversd/null.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "ps" for configuration "Release"
SET_PROPERTY(TARGET ps APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(ps PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/ps.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS ps )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_ps "c:/temp/plplot-install/lib/plplot5.9.6/driversd/ps.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "svg" for configuration "Release"
SET_PROPERTY(TARGET svg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(svg PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/svg.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS svg )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_svg "c:/temp/plplot-install/lib/plplot5.9.6/driversd/svg.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "xfig" for configuration "Release"
SET_PROPERTY(TARGET xfig APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(xfig PROPERTIES
  IMPORTED_LOCATION_RELEASE "c:/temp/plplot-install/lib/plplot5.9.6/driversd/xfig.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS xfig )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_xfig "c:/temp/plplot-install/lib/plplot5.9.6/driversd/xfig.dll" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
