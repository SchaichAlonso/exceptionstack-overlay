vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/ExceptionStack
    REF "${VERSION}"
    SHA512 d11b4cc9ad655e77d610a1ee4eb5acc4fa903266978e08973445becc334383dcf99327f794490ff719cb401ae8b6e15fc84bc5ffe19973aa34ff1c82c13049f7
    REF 95ff54266945e40a567c5b40ce07ce5784ff148d
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
