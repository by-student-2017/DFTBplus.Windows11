#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dftd4::dftd4-lib" for configuration "RelWithDebInfo"
set_property(TARGET dftd4::dftd4-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(dftd4::dftd4-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "Fortran"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libdftd4.a"
  )

list(APPEND _cmake_import_check_targets dftd4::dftd4-lib )
list(APPEND _cmake_import_check_files_for_dftd4::dftd4-lib "${_IMPORT_PREFIX}/lib/libdftd4.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
