
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was dftbplus-config.cmake.in                            ########

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

# Global DFTB+ config options
set(DftbPlus_WITH_OMP ON)
set(DftbPlus_WITH_MPI OFF)
set(DftbPlus_WITH_ELSI OFF)
set(DftbPlus_ELSI_WITH_PEXSI )
set(DftbPlus_WITH_GPU OFF)
set(DftbPlus_WITH_TRANSPORT ON)
set(DftbPlus_WITH_SOCKETS OFF)
set(DftbPlus_WITH_ARPACK ON)
set(DftbPlus_WITH_MBD OFF)
set(DftbPlus_WITH_PLUMED OFF)
set(DftbPlus_WITH_SDFTD3 ON)
set(DftbPlus_WITH_TBLITE ON)
set(DftbPlus_WITH_CHIMES OFF)

include(CMakeFindDependencyMacro)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/Modules)

if(NOT TARGET DftbPlus::DftbPlus)

  if(DftbPlus_WITH_OMP AND NOT TARGET OpenMP::OpenMP_Fortran)
    find_dependency(OpenMP)
  else()
    # DFTB+ uses dummy target for non-OMP compilation
    add_library(OpenMP::OpenMP_Fortran INTERFACE IMPORTED)
  endif()

  if(NOT TARGET BLAS::BLAS)
    find_dependency(CustomBlas)
  endif()

  if(NOT TARGET LAPACK::LAPACK)
    find_dependency(CustomLapack)
  endif()

  if(DftbPlus_WITH_MPI)
    if(NOT TARGET ScalapackFx::ScalapackFx)
      find_dependency(ScalapackFx)
    endif()
    if(NOT TARGET MpiFx::MpiFx)
      find_dependency(MpiFx)
    endif()
  endif()

  if(DftbPlus_WITH_ELSI AND NOT TARGET elsi::elsi)
    find_dependency(elsi)
  endif()

  if(DftbPlus_WITH_GPU AND NOT TARGET Magma::Magma)
    find_dependency(CustomMagma)
  endif()

  if(DftbPlus_WITH_ARPACK AND NOT TARGET Arpack::Arpack)
    find_dependency(CustomArpack)
  endif()

  if(DftbPlus_WITH_PLUMED AND NOT TARGET Plumed::Plumed)
    find_dependency(CustomPlumed)
  endif()

  if(DftbPlus_WITH_MBD AND NOT TARGET Mbd::Mbd)
    find_dependency(Mbd)
  endif()

  if(DftbPlus_WITH_TRANSPORT AND NOT TARGET Negf::Negf)
    find_dependency(Negf)
  endif()

  if(DftbPlus_WITH_SDFTD3 AND NOT TARGET s-dftd3::s-dftd3)
    find_dependency(s-dftd3)
  endif()

  if(DftbPlus_WITH_TBLITE AND NOT TARGET tblite::tblite)
    find_dependency(tblite)
  endif()

  if(DftbPlus_WITH_CHIMES AND NOT TARGET ChimesCalc::ChimesCalc_Fortran)
    find_dependency(ChimesCalc)
  endif()

  include("${CMAKE_CURRENT_LIST_DIR}/dftbplus-targets.cmake")

endif()
