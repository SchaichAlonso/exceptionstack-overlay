vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/ExceptionStack
    REF "${VERSION}"
    SHA512 7515c16ace109f3e6bea31dbe04d01c218e2f765f768d54a7208841a085276f395403402827d16d6d068a954b613bdbd0439685fc89706f0181c7fadf30441d9
    REF a055c1b65c55a653bf877704312052754bbde124
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
