# -*- mode: cmake -*-
# This file used to configure CMake variables that are used to build the
# installed examples.
# Identify that this is the build system for the installed examples.
set(BUILD_TEST ON)
set(CORE_BUILD OFF)

# =======================================================================
# pkg-config support as well as macros to put link flags in standard
# *.pc (pkg-config) form as well as standard fullpath form used by cmake.
# PKG_CONFIG_EXECUTABLE can be used to discover whether pkg-config was
# found or not.
# =======================================================================
include(pkg-config)

set(LIB_TAG "d")
set(INCLUDE_DIR "c:/temp/plplot-install/include/plplot")
set(MATH_LIB )

set(language_info_LIST ada:ada:a;c:c:c;cxx:c++:cxx;d:d:d;f77:f77:f;f95:f95:f95;java:java:j;lua:lua:lua;ocaml:ocaml:ocaml;octave:octave:o;pdl:perl:pdl;python:python:p;tcl:tcl:t)

# This list of set commands must be consistent with language_info_LIST
# set in examples/CMakeLists.txt and configured just above.  Thus,
# some consistent maintenance of that list and the current list of set
# commands must be done on the rare occasions when a language is added
# to PLplot.  Cannot make the list of set commands automatically with
# a foreach loop because explicit configuration of each name is required.
set(ENABLE_ada OFF)
set(ENABLE_c ON)
set(ENABLE_cxx ON)
set(ENABLE_d OFF)
set(ENABLE_f77 OFF)
set(ENABLE_f95 OFF)
set(ENABLE_java OFF)
set(ENABLE_lua OFF)
set(ENABLE_ocaml OFF)
set(ENABLE_octave OFF)
set(ENABLE_pdl OFF)
set(ENABLE_python OFF)
set(ENABLE_pyqt4 OFF)
set(ENABLE_tcl OFF)

# Interactive bindings
set(ENABLE_tk OFF)
set(ENABLE_gnome2 OFF)
set(ENABLE_wxwidgets OFF)
set(ENABLE_qt ON)
if(ENABLE_python)
  set(ENABLE_pygcw OFF)
endif(ENABLE_python)

# Check for all officially supported CMake compilers that we use with
# soft-landing support.
include(language_support)

# First field is lower-case language string, second field is
# mixed-case language string used for official CMake variables, third
# field is language string to be used in output messages, and final
# field is whether it is a fatal error if this language is missing/not
# working.
set(COMPILED_LANGUAGE_INFO_LIST
"c:C:C:ON"
"ada:Ada:Ada:OFF"
"cxx:CXX:C++:OFF"
"d:D:D:OFF"
"f77:Fortran:Fortran:OFF"
"f95:Fortran:Fortran:OFF"
"java:Java:Java:OFF"
)

foreach(COMPILED_LANGUAGE_INFO ${COMPILED_LANGUAGE_INFO_LIST})
  string(REGEX REPLACE "^(.*):.*:.*:.*$" "\\1" language ${COMPILED_LANGUAGE_INFO})
  string(REGEX REPLACE "^.*:(.*):.*:.*$" "\\1" Language ${COMPILED_LANGUAGE_INFO})
  string(REGEX REPLACE "^.*:.*:(.*):.*$" "\\1" language_output ${COMPILED_LANGUAGE_INFO})
  string(REGEX REPLACE "^.*:.*:.*:(.*)$" "\\1" fatal_language ${COMPILED_LANGUAGE_INFO})
  if(ENABLE_${language} AND NOT PLPLOT_${Language}_COMPILER_WORKS)
    workaround_9220(${Language} PLPLOT_${Language}_COMPILER_WORKS)
    if(NOT PLPLOT_${Language}_COMPILER_WORKS)
      if(fatal_language)
	message(FATAL_ERROR "${language_output} compiler absolutely required to build this project.")
      endif(fatal_language)
      message(STATUS "WARNING: no working ${language_output} compiler so disabling ${language} examples.")
      set(ENABLE_${language} OFF CACHE BOOL "Enable ${language} bindings" FORCE)
    endif(NOT PLPLOT_${Language}_COMPILER_WORKS)
  endif(ENABLE_${language} AND NOT PLPLOT_${Language}_COMPILER_WORKS)

  if(ENABLE_${language})
    # Find and check ${Language} compiler
    enable_language(${Language} OPTIONAL)
    if(NOT CMAKE_${Language}_COMPILER_WORKS)
      if(fatal_language)
	message(FATAL_ERROR "${language_output} compiler absolutely required to build this project.")
      endif(fatal_language)
      message(STATUS "WARNING: no working ${language_output} compiler so disabling ${language} examples.")
      set(ENABLE_${language} OFF CACHE BOOL "Enable ${language} bindings" FORCE)
    endif(NOT CMAKE_${Language}_COMPILER_WORKS)
  endif(ENABLE_${language})
endforeach(COMPILED_LANGUAGE_INFO ${COMPILED_LANGUAGE_INFO_LIST})

if(ENABLE_ada)
  set(ADA_INCLUDE_DIR "c:/temp/plplot-install/share/ada/adainclude/plplotadad")
  set(ADA_LIB_DIR "c:/temp/plplot-install/lib/ada/adalib/plplotadad")
endif(ENABLE_ada)

if(ENABLE_f77 OR ENABLE_f95)
  set(STATIC_OPTS )
endif(ENABLE_f77 OR ENABLE_f95)

if(ENABLE_f95)
  set(F95_MOD_DIR "")
endif(ENABLE_f95)

if(ENABLE_java)
  find_package(JNI)
  set(JAR_DIR "")
endif(ENABLE_java)

if(ENABLE_ocaml)
  set(OCAMLC OCAMLC-NOTFOUND)
  set(OCAMLOPT )
  set(OCAMLFIND )
  set(OCAML_HAS_CAIRO OFF)
  set(OCAML_HAS_GTK OFF)
  set(CMAKE_INSTALL_LIBDIR "c:/temp/plplot-install/lib")
  set(OCAML_INSTALL_DIR "")
endif(ENABLE_ocaml)

if(ENABLE_tcl OR ENABLE_tk)
  set(TCL_TCLSH TCL_TCLSH-NOTFOUND)
  set(MKTCLINDEX )
  set(MKTCLINDEX_ARGS )
endif(ENABLE_tcl OR ENABLE_tk)

if(ENABLE_tk)
  set(ENABLE_itk OFF)
  set(TCL_INCLUDE_PATH TCL_INCLUDE_PATH-NOTFOUND)
  set(TK_INCLUDE_PATH TK_INCLUDE_PATH-NOTFOUND)
endif(ENABLE_tk)

if(ENABLE_wxwidgets)
  # Use identical compile and link flags to build wxwidgets application.
  set(wxwidgets_COMPILE_FLAGS "")
  set(wxwidgets_LINK_FLAGS )
endif(ENABLE_wxwidgets)

if(ENABLE_qt)
  set(CORE_QT_VERSION_MAJOR 4)
  set(CORE_QT_VERSION_MINOR 8)
  set(CORE_QT_VERSION_PATCH 5)
endif(ENABLE_qt)

set(ENABLE_DYNDRIVERS ON)

set(FILE_DEVICES_LIST pdfcairo:cairo:OFF;pngcairo:cairo:ON;pscairo:cairo:OFF;svgcairo:cairo:ON;epsqt:qt:ON;pdfqt:qt:ON;bmpqt:qt:ON;jpgqt:qt:ON;pngqt:qt:ON;ppmqt:qt:ON;tiffqt:qt:ON;svgqt:qt:ON;ps:ps:OFF;svg:svg:ON;xfig:xfig:ON)
# This list of set commands must be consistent with the above list which
# implies a maintenance issue.
set(PLD_pdfcairo ON)
set(PLD_pngcairo ON)
set(PLD_pscairo ON)
set(PLD_svgcairo ON)
set(PLD_cgm OFF)
set(PLD_dg300 )
set(PLD_epsqt ON)
set(PLD_pdfqt ON)
set(PLD_bmpqt ON)
set(PLD_jpgqt ON)
set(PLD_pngqt ON)
set(PLD_ppmqt ON)
set(PLD_tiffqt ON)
set(PLD_svgqt ON)
set(PLD_gif OFF)
set(PLD_jpeg OFF)
set(PLD_png OFF)
set(PLD_hp7470 )
set(PLD_hp7580 )
set(PLD_lj_hpgl )
set(PLD_imp )
set(PLD_ljii )
set(PLD_ljiip )
set(PLD_pbm )
set(PLD_pdf OFF)
set(PLD_ps ON)
set(PLD_pstex OFF)
set(PLD_psttf OFF)
set(PLD_svg ON)
set(PLD_tek4010f )
set(PLD_tek4107f )
set(PLD_wxpng OFF)
set(PLD_xfig ON)

# These only used for testing, but not core build
set(PLD_psc ON)
set(PLD_psttfc OFF)

set(INTERACTIVE_DEVICES_LIST wincairo:cairo;qtwidget:qt)
# Set interactive devices that are needed to build certain examples.  This
# list should be consistent with INTERACTIVE_DEVICES_LIST which implies a
# maintenance issue.

set(PLD_aqt OFF)
set(PLD_gcw OFF)
set(PLD_ntk OFF)
set(PLD_qtwidget ON)
set(PLD_tk OFF)
set(PLD_wincairo ON)
set(PLD_wingcc OFF)
set(PLD_wxwidgets OFF)
set(PLD_xcairo OFF)
set(PLD_xwin OFF)

# Set external devices that are needed to build certain examples.
set(PLD_extcairo ON)
set(PLD_extqt ON)

# Needed to check if diff and tail on system for test_diff_psc target.

set(DIFF_EXECUTABLE DIFF_EXECUTABLE-NOTFOUND)
set(TAIL_EXECUTABLE TAIL_EXECUTABLE-NOTFOUND)
set(CMP_EXECUTABLE )
