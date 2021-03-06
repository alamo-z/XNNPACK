workspace(name = "xnnpack")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Google Test framework, used by most unit-tests.
http_archive(
     name = "com_google_googletest",
     urls = ["https://github.com/google/googletest/archive/master.zip"],
     strip_prefix = "googletest-master",
)

# Google Benchmark library, used in micro-benchmarks.
http_archive(
    name = "com_google_benchmark",
    urls = [
        "https://github.com/google/benchmark/archive/master.zip"
    ],
    strip_prefix = "benchmark-master",
    build_file = "@//third_party:benchmark.BUILD",
)

# FP16 library, used for half-precision conversions
http_archive(
    name = "FP16",
    strip_prefix = "FP16-ba1d31f5eed2eb4a69e4dea3870a68c7c95f998f",
    sha256 = "9764297a339ad73b0717331a2c3e9c42a52105cd04cab62cb160e2b4598d2ea6",
    urls = [
        "https://github.com/Maratyszcza/FP16/archive/ba1d31f5eed2eb4a69e4dea3870a68c7c95f998f.tar.gz",
    ],
    build_file = "@//third_party:FP16.BUILD",
)

# FXdiv library, used for repeated integer division by the same factor
http_archive(
    name = "FXdiv",
    strip_prefix = "FXdiv-f8c5354679ec2597792bc70a9e06eff50c508b9a",
    sha256 = "7d3215bea832fe77091ec5666200b91156df6724da1e348205078346325fc45e",
    urls = [
        "https://github.com/Maratyszcza/FXdiv/archive/f8c5354679ec2597792bc70a9e06eff50c508b9a.tar.gz",
    ],
    build_file = "@//third_party:FXdiv.BUILD",
)

# pthreadpool library, used for parallelization
http_archive(
    name = "pthreadpool",
    strip_prefix = "pthreadpool-fa67ff531c0f9999c742d500a4fa061b96937297",
    sha256 = "6d9ead083d4f7f9efb0b7b1a2d212816f65eb536cef4a0bf640403309b793a15",
    urls = [
        "https://github.com/Maratyszcza/pthreadpool/archive/fa67ff531c0f9999c742d500a4fa061b96937297.tar.gz",
    ],
    build_file = "@//third_party:pthreadpool.BUILD",
)

# clog library, used for logging
http_archive(
    name = "clog",
    strip_prefix = "cpuinfo-d5e37adf1406cf899d7d9ec1d317c47506ccb970",
    sha256 = "3f2dc1970f397a0e59db72f9fca6ff144b216895c1d606f6c94a507c1e53a025",
    urls = [
        "https://github.com/pytorch/cpuinfo/archive/d5e37adf1406cf899d7d9ec1d317c47506ccb970.tar.gz",
    ],
    build_file = "@//third_party:clog.BUILD",
)

# cpuinfo library, used for detecting processor characteristics
http_archive(
    name = "cpuinfo",
    strip_prefix = "cpuinfo-0cc563acb9baac39f2c1349bc42098c4a1da59e3",
    sha256 = "80625d0b69a3d69b70c2236f30db2c542d0922ccf9bb51a61bc39c49fac91a35",
    urls = [
        "https://github.com/pytorch/cpuinfo/archive/0cc563acb9baac39f2c1349bc42098c4a1da59e3.tar.gz",
    ],
    build_file = "@//third_party:cpuinfo.BUILD",
)

# psimd library, used for fallback 128-bit SIMD micro-kernels
http_archive(
    name = "psimd",
    strip_prefix = "psimd-88882f601f8179e1987b7e7cf4a8012c9080ad44",
    sha256 = "c621f9bb1ff9ab8f0fa4a04f3239d13b345a6e865318d7b464aa80531a1abb2c",
    urls = [
        "https://github.com/Maratyszcza/psimd/archive/88882f601f8179e1987b7e7cf4a8012c9080ad44.tar.gz",
    ],
    build_file = "@//third_party:psimd.BUILD",
)

# Ruy library, used to benchmark against
http_archive(
   name = "ruy",
   strip_prefix = "ruy-3d62e9545bd15c5df9ccfdd8453b93d64a6dd8eb",
   sha256 = "ca3024739684d5aba3612072511f508e88b34231ac8d19c8c3cc6598b6bb535d",
   urls = [
       "https://github.com/google/ruy/archive/3d62e9545bd15c5df9ccfdd8453b93d64a6dd8eb.zip",
   ],
)

# Android NDK location and version is auto-detected from $ANDROID_NDK_HOME environment variable
android_ndk_repository(name = "androidndk")

# Android SDK location and API is auto-detected from $ANDROID_HOME environment variable
android_sdk_repository(name = "androidsdk")
