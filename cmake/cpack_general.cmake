# general CPack options

set(PROJECT_VERSION ${APPIMAGE_USER_TOOL_VERSION})
set(CPACK_GENERATOR "DEB")

# make sure to only package APPIMAGE_USER_TOOL component
set(CPACK_COMPONENTS_ALL APPIMAGE_USER_TOOL)
# package them all in a single package, otherwise cpack would generate one package per component by default
# https://cmake.org/cmake/help/v3.0/module/CPackComponent.html#variable:CPACK_COMPONENTS_GROUPING
set(CPACK_COMPONENTS_GROUPING ALL_COMPONENTS_IN_ONE)

# global options
set(CPACK_PACKAGE_CONTACT "Alexis Lopez Zubieta")
set(CPACK_PACKAGE_HOMEPAGE "https://github.com/azubieta/appimage-user-tools")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.md")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE")

# versioning
# it appears setting CPACK_DEBIAN_PACKAGE_VERSION doesn't work, hence setting CPACK_PACKAGE_VERSION
set(CPACK_PACKAGE_VERSION ${APPIMAGE_USER_TOOL_VERSION})

# TODO: insert some useful description
set(CPACK_COMPONENT_APPIMAGE_USER_TOOL_PACKAGE_DESCRIPTION "AppImage User Tools")

# find more suitable section for package
set(CPACK_COMPONENT_APPIMAGE_USER_TOOL_PACKAGE_SECTION misc)
