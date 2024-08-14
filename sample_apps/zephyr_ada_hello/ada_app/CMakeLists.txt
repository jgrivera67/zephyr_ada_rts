# SPDX-License-Identifier: Apache-2.0

include(ExternalProject)

set(libname libada_app )

ExternalProject_Add(
  ${libname}_external_project
  PREFIX     ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
  BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}
  CONFIGURE_COMMAND ""    # Skip configuring the project, e.g. with autoconf
  BUILD_ALWAYS 1
  #BUILD_COMMAND gprbuild -p -P ${CMAKE_CURRENT_SOURCE_DIR}/${libname}.gpr -XBUILD_DIR=${CMAKE_CURRENT_BINARY_DIR} -XBUILD_TYPE=${CMAKE_BUILD_TYPE}
  BUILD_COMMAND alr --chdir=${CMAKE_CURRENT_SOURCE_DIR} build
  INSTALL_COMMAND ""      # This particular build system has no install command
  #BUILD_BYPRODUCTS ${CMAKE_CURRENT_BINARY_DIR}/lib${libname}.a ${CMAKE_CURRENT_BINARY_DIR}/libgnat.a
  BUILD_BYPRODUCTS ${CMAKE_CURRENT_SOURCE_DIR}/lib/${libname}.a ${CMAKE_CURRENT_SOURCE_DIR}/../../../lib/libgnat.a
  )

# Create a wrapper CMake library that our app can link with
add_library(${libname} STATIC IMPORTED GLOBAL)
add_dependencies(
  ${libname}
  ${libname}_external_project
  ada_runtime
  )

target_link_libraries( ${libname} INTERFACE ada_runtime )

#set_target_properties(${libname} PROPERTIES IMPORTED_LOCATION             ${CMAKE_CURRENT_BINARY_DIR}/lib${libname}.a)
set_target_properties(${libname} PROPERTIES IMPORTED_LOCATION             ${CMAKE_CURRENT_SOURCE_DIR}/lib/${libname}.a)
set_target_properties(${libname} PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR})

add_library(ada_runtime STATIC IMPORTED GLOBAL)
set_target_properties(ada_runtime PROPERTIES IMPORTED_LOCATION            ${CMAKE_CURRENT_SOURCE_DIR}/../../../lib/libgnat.a)

#TODO: This does not work
#set_directory_properties( PROPERTIES ADDITIONAL_CLEAN_FILES "${CMAKE_CURRENT_SOURCE_DIR}/obj/*;${CMAKE_CURRENT_SOURCE_DIR}/lib/*" )
