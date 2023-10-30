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
            checksum: "330a02654bd7b5e7995d4b821a57aa785ea7854e1ffa812f90c5d1bbf392c780"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.0/ServiceChat.xcframework.zip",
            checksum: "982f473adde43c14565d119a73486576646d316666a90a951b80e47c7c41b757"
        )
    ]
)
