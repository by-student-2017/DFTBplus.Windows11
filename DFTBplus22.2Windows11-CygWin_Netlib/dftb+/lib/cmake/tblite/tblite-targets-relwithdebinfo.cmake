#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tblite::tblite-lib" for configuration "RelWithDebInfo"
set_property(TARGET tblite::tblite-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(tblite::tblite-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "Fortran"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libtblite.a"
  )

list(APPEND _cmake_import_check_targets tblite::tblite-lib )
list(APPEND _cmake_import_check_files_for_tblite::tblite-lib "${_IMPORT_PREFIX}/lib/libtblite.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
