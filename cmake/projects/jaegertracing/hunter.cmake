# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME jaegertracing
    VERSION "0.7.1"
    URL "https://github.com/egoolish/jaeger-client-cpp/archive/refs/tags/v0.7.1.tar.gz"
    SHA1 "5912e493a1d27495a3c2e0b011a5c1845af07ee6")

hunter_cmake_args(jaegertracing CMAKE_ARGS
    BUILD_TESTING=OFF)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jaegertracing)
hunter_download(PACKAGE_NAME jaegertracing)
