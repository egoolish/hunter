# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME jaegertracing
    VERSION "0.7.1"
    URL "https://github.com/egoolish/jaeger-client-cpp/archive/refs/tags/v0.7.1_custom.tar.gz"
    SHA1 "7b732257dac7a9a8f512f51cb7cb5793a1f4f8c0")

hunter_cmake_args(jaegertracing CMAKE_ARGS
    BUILD_TESTING=OFF)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jaegertracing)
hunter_download(PACKAGE_NAME jaegertracing)
