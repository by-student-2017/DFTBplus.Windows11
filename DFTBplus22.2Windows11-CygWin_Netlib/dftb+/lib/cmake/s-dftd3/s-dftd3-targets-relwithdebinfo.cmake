#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "s-dftd3::s-dftd3-lib" for configuration "RelWithDebInfo"
set_property(TARGET s-dftd3::s-dftd3-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(s-dftd3::s-dftd3-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "Fortran"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libs-dftd3.a"
  )

list(APPEND _cmake_import_check_targets s-dftd3::s-dftd3-lib )
list(APPEND _cmake_import_check_files_for_s-dftd3::s-dftd3-lib "${_IMPORT_PREFIX}/lib/libs-dftd3.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
