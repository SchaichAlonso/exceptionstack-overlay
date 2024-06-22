vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/ExceptionStack
    REF "${VERSION}"
    SHA512 82bbcf805862b10a4ea627467f3f8b8084e5200855e0289f67a0ad5c92e5bb272af89273dcf9f3fcae1b810151442db38408bcbaf804b6f51ea529ec80feb2af
    REF d5cd82a72eb2931d01d1afe207b29d25195b77c6
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share"
                    "${CURRENT_PACKAGES_DIR}/debug/include"
)
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.md")
