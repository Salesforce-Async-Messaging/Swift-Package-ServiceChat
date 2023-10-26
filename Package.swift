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
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.0/ServiceCore.xcframework.zip",
            checksum: "2eb05bc655e4588e8ba200e1fba67e3998af03e56b7880f37751f85f9be3b93c"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.0/ServiceChat.xcframework.zip",
            checksum: "58bbdd54fe5c5009a0e85c019549d04e640859f7265130d3fb9992d3c023c0e6"
        )
    ]
)
