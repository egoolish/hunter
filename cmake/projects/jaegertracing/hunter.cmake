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
    SHA1 "8c940764cb026922a4bd9a4a9233ef9984446062")

hunter_cmake_args(jaegertracing CMAKE_ARGS
    BUILD_TESTING=OFF)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jaegertracing)
hunter_download(PACKAGE_NAME jaegertracing)
