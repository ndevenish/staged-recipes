cmake_minimum_required(VERSION 3.29)

project(cpp-base64 LANGUAGES CXX VERSION 2.0.8)

add_library(base64 base64.cpp)

set_target_properties(base64 PROPERTIES PUBLIC_HEADER base64.h)

add_executable(test test.cpp)
target_link_libraries(test PRIVATE base64)

install(TARGETS base64
    EXPORT CPPBase64Targets
    PUBLIC_HEADER
    LIBRARY
    ARCHIVE
)
install(
    EXPORT CPPBase64Targets
    DESTINATION lib/cmake/CPPBase64
    NAMESPACE CPPBase64::
)
include(CMakePackageConfigHelpers)
configure_package_config_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/CPPBase64Config.cmake"
    INSTALL_DESTINATION "lib/cmake/CPPBase64"
    NO_SET_AND_CHECK_MACRO
    NO_CHECK_REQUIRED_COMPONENTS_MACRO
)
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/CPPBase64ConfigVersion.cmake"
    VERSION "${CMAKE_PROJECT_VERSION}"
    COMPATIBILITY SameMajorVersion
)
install(
    FILES
    ${CMAKE_CURRENT_BINARY_DIR}/CPPBase64Config.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/CPPBase64ConfigVersion.cmake
    DESTINATION lib/cmake/CPPBase64
)
export(
    EXPORT CPPBase64Targets
    FILE "${CMAKE_CURRENT_BINARY_DIR}CPPBase64Targets.cmake"
)