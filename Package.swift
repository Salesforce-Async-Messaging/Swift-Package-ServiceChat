// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-ServiceChat",
    products: [
        .library(
            name: "Swift-ServiceChat",
            targets: ["ServiceCoreWrapper", "ServiceChatWrapper"]),
    ],
    targets: [
        .target(
            name: "ServiceChatWrapper",
            dependencies: [
                .target(name: "ServiceChat")
            ]
        ),
        .target(
            name: "ServiceCoreWrapper",
            dependencies: [
                .target(name: "ServiceCore")
            ]
        ),
        .binaryTarget(
            name: "ServiceCore",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.1/ServiceCore.xcframework.zip",
            checksum: "716a61fa1f28a0555cb64008e5b825444bda3c6d3868fd22ecffb0293b705304"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.1/ServiceChat.xcframework.zip",
            checksum: "a4cb48187a47fa97860f43abd3787cf7911507b1f270549ae90d3777f2566bcf"
        )
    ]
)
