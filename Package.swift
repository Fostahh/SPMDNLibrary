// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DNLibrary",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "DNLibrary", targets: ["DNLibrary"])
    ],
    targets: [
        .binaryTarget(
            name: "DNLibrary",
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.11.0/DNLibrary.zip",
            checksum: "cebd6cb5b01dec6e1acb94fc4569fe99392133f2e4d0015c27ed3b5cf0fc11a5"
        )
    ]
)
