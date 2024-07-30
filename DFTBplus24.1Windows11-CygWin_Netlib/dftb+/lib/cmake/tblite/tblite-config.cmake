
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was template.cmake                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set("tblite_WITH_OpenMP" ON)
set("tblite_WITH_API" FALSE)
set(
  "tblite_INCLUDE_DIRS"
  "/home/manab/dftbplus-24.1/dftb+ -Wno-dev/include"
  "/home/manab/dftbplus-24.1/dftb+ -Wno-dev/include/tblite/GNU-12.4.0"
)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

if(NOT TARGET "tblite::tblite")
  include("${CMAKE_CURRENT_LIST_DIR}/tblite-targets.cmake")

  include(CMakeFindDependencyMacro)

  if(NOT TARGET "OpenMP::OpenMP_Fortran" AND "tblite_WITH_OpenMP")
    find_dependency("OpenMP")
  endif()

  if(NOT TARGET "LAPACK::LAPACK")
    find_dependency("LAPACK")
  endif()

  if(NOT TARGET "mctc-lib::mctc-lib")
    find_dependency("mctc-lib")
  endif()

  if(NOT TARGET "toml-f::toml-f")
    find_dependency("toml-f")
  endif()

  if(NOT TARGET "s-dftd3::s-dftd3")
    find_dependency("s-dftd3")
  endif()

  if(NOT TARGET "dftd4::dftd4")
    find_dependency("dftd4")
  endif()
endif()
