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
            checksum: "03fdfe4219c6f058c1d9322e447c63e635f6b62ab9d5bc1e6f3b2b1ddf91be72"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.0/ServiceChat.xcframework.zip",
            checksum: "9cf151680285a8ec6b31f86dcb6155bae0cf47706549abc0d2dade7b5ff87d89"
        )
    ]
)
