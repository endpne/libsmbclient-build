// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libsmbclient",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libsmbclient",
            targets: ["_Libsmbclient"]
        ),
        .library(
            name: "Libsmbclient-ios",
            targets: ["_Libsmbclient-ios"]
        ),
        .library(
            name: "Libsmbclient-tvos",
            targets: ["_Libsmbclient-tvos"]
        ),
        .library(
            name: "Libsmbclient-macos",
            targets: ["_Libsmbclient-macos"]
        ),
        .library(
            name: "Libsmbclient-xros",
            targets: ["_Libsmbclient-xros"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libsmbclient",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient"],
            path: "Sources/_Libsmbclient"
        ),
        .target(
            name: "_Libsmbclient-ios",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-ios"],
            path: "Sources/_Libsmbclient-ios"
        ),
        .target(
            name: "_Libsmbclient-tvos",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-tvos"],
            path: "Sources/_Libsmbclient-tvos"
        ),
        .target(
            name: "_Libsmbclient-macos",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-macos"],
            path: "Sources/_Libsmbclient-macos"
        ),
        .target(
            name: "_Libsmbclient-xros",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-xros"],
            path: "Sources/_Libsmbclient-xros"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/gmp.xcframework.zip",
            checksum: "3778324f9f0eb3612eff3cf40184b99c13ba59c9715d5b1cb1b4fed2a6e9d986"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/nettle.xcframework.zip",
            checksum: "5896222340532fe813f889baa33fe36e701ea7bf771c3bb4b2a8c92609718d0b"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/hogweed.xcframework.zip",
            checksum: "1803b8d70321419026b357ea1a32c208808cc5deea5f2a2fbb1caaff53b72ef3"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/gnutls.xcframework.zip",
            checksum: "1a09c17f4c7ff96d74062def690ff5ed21f9e28f0f096d1c4d1427247fbc76e8"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "7d5588e8e9bee7ac11b8a417071ea1076d96ef6fa26522da0dd4845c403c2b7d"
        ),
        .binaryTarget(
            name: "Libsmbclient-ios",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient-ios.xcframework.zip",
            checksum: "d42a732017fefed121f3d0e54645ce73974cfe1beace725f730e3a5942fae2c2"
        ),
        .binaryTarget(
            name: "Libsmbclient-tvos",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient-tvos.xcframework.zip",
            checksum: "88ed2052a86eaaf204e2e8d5c41f560b52cf39f8cc90e652f8076878a23ceebf"
        ),
        .binaryTarget(
            name: "Libsmbclient-macos",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient-macos.xcframework.zip",
            checksum: "2587ab4e1177b9cd540e7ca9a3ab40624e85b4791c9fae8bc38bc324ba8140ca"
        ),
        .binaryTarget(
            name: "Libsmbclient-xros",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient-xros.xcframework.zip",
            checksum: "f1fd8c7ea883a0e21232eb1d5042f88978a486a6dc4ebf8266f769bbd9581f0e"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
