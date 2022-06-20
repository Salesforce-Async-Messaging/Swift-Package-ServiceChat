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
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/238.0.0/ServiceCore.xcframework.zip",
            checksum: "4d1830bcc43f86c3776c49f4cc31298d51a500ed4f9cddb72bdcccdc5e1eeb89"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/238.0.0/ServiceChat.xcframework.zip",
            checksum: "26c6c82e9b98dd20a19534b1ab4f38dbb85db58f61160285a74d87791dce9453"
        )
    ]
)
