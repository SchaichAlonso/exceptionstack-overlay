vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/ExceptionStack
    REF "${VERSION}"
    SHA512 55ec2a891ec36504befe4cd42dc9424808c936ba5bc3053eb0178c690c304a4168b5924cd07b2ca67f5a113cc718d1757d5eb681476d10276d2e57c100a0f296
    REF 7e8aca259f561c5e4c85f157b4259989131884e9
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()
vcpkg_cmake_config_fixup(CONFIG_PATH "share/cmake/Exceptions")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share"
                    "${CURRENT_PACKAGES_DIR}/debug/include"
)
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.md")
